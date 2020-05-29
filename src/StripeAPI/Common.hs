{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE UndecidableInstances #-}

-- | This module serves the purpose of defining common functionality which remains the same across all OpenAPI specifications.
module StripeAPI.Common
  ( Configuration (..),
    doCallWithConfiguration,
    doCallWithConfigurationM,
    doBodyCallWithConfiguration,
    doBodyCallWithConfigurationM,
    runWithConfiguration,
    MonadHTTP (..),
    stringifyModel,
    StringifyModel,
    SecurityScheme (..),
    AnonymousSecurityScheme (..),
    textToByte,
    JsonByteString (..),
    JsonDateTime (..),
    RequestBodyEncoding (..),
  )
where

import qualified Control.Exception as Exception
import qualified Control.Monad.Reader as MR
import qualified Control.Monad.Trans.Class as MT
import qualified Data.Aeson as Aeson
import qualified Data.Bifunctor as BF
import qualified Data.ByteString.Char8 as B8
import qualified Data.HashMap.Strict as HMap
import qualified Data.Maybe as Maybe
import qualified Data.Scientific as Scientific
import qualified Data.Text as T
import Data.Text (Text)
import qualified Data.Time.LocalTime as Time
import qualified Data.Vector as Vector
import GHC.Generics
import qualified Network.HTTP.Client as HC
import qualified Network.HTTP.Simple as HS

-- | Abstracts the usage of 'Network.HTTP.Simple.httpBS' away,
--  so that it can be used for testing
class Monad m => MonadHTTP m where
  httpBS :: HS.Request -> m (Either HS.HttpException (HS.Response B8.ByteString))

-- | This instance is the default instance used for production code
instance MonadHTTP IO where
  httpBS request =
    BF.first (\e -> e :: HS.HttpException)
      <$> Exception.try (HS.httpBS request)

instance MonadHTTP m => MonadHTTP (MR.ReaderT r m) where
  httpBS = MT.lift . httpBS

-- | An operation can and must be configured with data, which may be common
-- for many operations.
--
-- This configuration consists of information about the server URL and the used security scheme.
--
-- In OpenAPI these information can be defined
--
-- * Root level
-- * Path level
-- * Operation level
--
-- To get started, the 'StripeAPI.Configuration.defaultConfiguration' can be used and changed accordingly.
--
-- Note that it is possible that @BearerAuthenticationSecurityScheme@ is not available because it is not a security scheme in the OpenAPI specification.
--
-- > defaultConfiguration
-- >   { configSecurityScheme = BearerAuthenticationSecurityScheme "token" }
data Configuration s
  = Configuration
      { configBaseURL :: Text,
        configSecurityScheme :: s
      }
  deriving (Show, Ord, Eq, Generic)

-- | Defines how a request body is encoded
data RequestBodyEncoding
  = -- | Encode the body as JSON
    RequestBodyEncodingJSON
  | -- | Encode the body as form data
    RequestBodyEncodingFormData

-- | Allows to specify an authentication scheme for requests done with 'doCallWithConfiguration'
--
-- This can be used to define custom schemes as well
class SecurityScheme s where
  authenticateRequest :: s -> HS.Request -> HS.Request

-- | The default authentication scheme which does not add any authentication information
data AnonymousSecurityScheme = AnonymousSecurityScheme

-- | Instance for the anonymous scheme which does not alter the request in any way
instance SecurityScheme AnonymousSecurityScheme where
  authenticateRequest = const id

-- | Run the 'MR.ReaderT' monad with a specified configuration
--
-- Note: This is just @'flip' 'MR.runReaderT'@.
runWithConfiguration :: SecurityScheme s => Configuration s -> MR.ReaderT (Configuration s) m a -> m a
runWithConfiguration = flip MR.runReaderT

-- | This is the main functionality of this module
--
--   It makes a concrete Call to a Server without a body
doCallWithConfiguration ::
  (MonadHTTP m, SecurityScheme s) =>
  -- | Configuration options like base URL and security scheme
  Configuration s ->
  -- | HTTP method (GET, POST, etc.)
  Text ->
  -- | Path to append to the base URL (path parameters should already be replaced)
  Text ->
  -- | Query parameters
  [(Text, Maybe String)] ->
  -- | The raw response from the server
  m (Either HS.HttpException (HS.Response B8.ByteString))
doCallWithConfiguration config method path queryParams =
  httpBS $ createBaseRequest config method path queryParams

-- | Same as 'doCallWithConfiguration' but run in a 'MR.ReaderT' environment which contains the configuration.
-- This is useful if multiple calls have to be executed with the same configuration.
doCallWithConfigurationM ::
  (MonadHTTP m, SecurityScheme s) =>
  Text ->
  Text ->
  [(Text, Maybe String)] ->
  MR.ReaderT (Configuration s) m (Either HS.HttpException (HS.Response B8.ByteString))
doCallWithConfigurationM method path queryParams = do
  config <- MR.ask
  MT.lift $ doCallWithConfiguration config method path queryParams

-- | This is the main functionality of this module
--
--   It makes a concrete Call to a Server with a body
doBodyCallWithConfiguration ::
  (MonadHTTP m, SecurityScheme s, Aeson.ToJSON body) =>
  -- | Configuration options like base URL and security scheme
  Configuration s ->
  -- | HTTP method (GET, POST, etc.)
  Text ->
  -- | Path to append to the base URL (path parameters should already be replaced)
  Text ->
  -- | Query parameters
  [(Text, Maybe String)] ->
  -- | Request body
  Maybe body ->
  -- | JSON or form data deepobjects
  RequestBodyEncoding ->
  -- | The raw response from the server
  m (Either HS.HttpException (HS.Response B8.ByteString))
doBodyCallWithConfiguration config method path queryParams Nothing _ = doCallWithConfiguration config method path queryParams
doBodyCallWithConfiguration config method path queryParams (Just body) RequestBodyEncodingJSON =
  httpBS $ HS.setRequestMethod (textToByte method) $ HS.setRequestBodyJSON body baseRequest
  where
    baseRequest = createBaseRequest config method path queryParams
doBodyCallWithConfiguration config method path queryParams (Just body) RequestBodyEncodingFormData =
  httpBS $ HS.setRequestMethod (textToByte method) $ HS.setRequestBodyURLEncoded byteStringData baseRequest
  where
    baseRequest = createBaseRequest config method path queryParams
    byteStringData = createFormData body

-- | Same as 'doBodyCallWithConfiguration' but run in a 'MR.ReaderT' environment which contains the configuration.
-- This is useful if multiple calls have to be executed with the same configuration.
doBodyCallWithConfigurationM ::
  (MonadHTTP m, SecurityScheme s, Aeson.ToJSON body) =>
  Text ->
  Text ->
  [(Text, Maybe String)] ->
  Maybe body ->
  RequestBodyEncoding ->
  MR.ReaderT (Configuration s) m (Either HS.HttpException (HS.Response B8.ByteString))
doBodyCallWithConfigurationM method path queryParams body encoding = do
  config <- MR.ask
  MT.lift $ doBodyCallWithConfiguration config method path queryParams body encoding

-- | Creates a Base Request
createBaseRequest ::
  SecurityScheme s =>
  -- | Common configuration Options
  Configuration s ->
  -- | HTTP Method (GET,POST,etc.)
  Text ->
  -- | The path for which the placeholders have already been replaced
  Text ->
  -- | Query Parameters
  [(Text, Maybe String)] ->
  -- | The Response from the server
  HS.Request
createBaseRequest config method path queryParams =
  authenticateRequest (configSecurityScheme config)
    $ HS.setRequestMethod (textToByte method)
    $ HS.setRequestQueryString query
    $ HS.setRequestPath
      (B8.pack (T.unpack $ byteToText basePathModifier <> path))
      baseRequest
  where
    baseRequest = parseURL $ configBaseURL config
    basePath = HC.path baseRequest
    basePathModifier =
      if basePath == B8.pack "/" && T.isPrefixOf "/" path
        then ""
        else basePath
    -- filters all maybe
    query = [(textToByte a, Just $ B8.pack b) | (a, Just b) <- queryParams]

-- | creates form data bytestring array
createFormData :: (Aeson.ToJSON a) => a -> [(B8.ByteString, B8.ByteString)]
createFormData body =
  let formData = jsonToFormData $ Aeson.toJSON body
   in fmap (BF.bimap textToByte textToByte) formData

-- | Convert a 'B8.ByteString' to 'Text'
byteToText :: B8.ByteString -> Text
byteToText = T.pack . B8.unpack

-- | Convert 'Text' a to 'B8.ByteString'
textToByte :: Text -> B8.ByteString
textToByte = B8.pack . T.unpack

parseURL :: Text -> HS.Request
parseURL url =
  Maybe.fromMaybe HS.defaultRequest
    $ HS.parseRequest
    $ T.unpack url

jsonToFormData :: Aeson.Value -> [(Text, Text)]
jsonToFormData = jsonToFormDataPrefixed ""

jsonToFormDataPrefixed :: Text -> Aeson.Value -> [(Text, Text)]
jsonToFormDataPrefixed prefix (Aeson.Number a) = case Scientific.toBoundedInteger a :: Maybe Int of
  Just myInt -> [(prefix, T.pack $ show myInt)]
  Nothing -> [(prefix, T.pack $ show a)]
jsonToFormDataPrefixed prefix (Aeson.Bool True) = [(prefix, T.pack "true")]
jsonToFormDataPrefixed prefix (Aeson.Bool False) = [(prefix, T.pack "false")]
jsonToFormDataPrefixed _ Aeson.Null = []
jsonToFormDataPrefixed prefix (Aeson.String a) = [(prefix, a)]
jsonToFormDataPrefixed "" (Aeson.Object object) =
  HMap.toList object >>= uncurry jsonToFormDataPrefixed
jsonToFormDataPrefixed prefix (Aeson.Object object) =
  HMap.toList object >>= (\(x, y) -> jsonToFormDataPrefixed (prefix <> "[" <> x <> "]") y)
jsonToFormDataPrefixed prefix (Aeson.Array vector) =
  Vector.toList vector >>= jsonToFormDataPrefixed (prefix <> "[]")

-- | This type class makes the code generation for URL parameters easier as it allows to stringify a value
--
-- The 'Show' class is not sufficient as strings should not be stringified with quotes.
class Show a => StringifyModel a where
  -- | Stringifies a showable value
  --
  -- >>> stringifyModel "Test"
  -- "Test"
  --
  -- >>> stringifyModel 123
  -- "123"
  stringifyModel :: a -> String

instance StringifyModel String where
  -- stringifyModel :: String -> String
  stringifyModel = id

instance StringifyModel Text where
  -- stringifyModel :: Text -> String
  stringifyModel = T.unpack

instance {-# OVERLAPS #-} Show a => StringifyModel a where
  -- stringifyModel :: Show a => a -> String
  stringifyModel = show

-- | Wraps a 'B8.ByteString' to implement 'Aeson.ToJSON' and 'Aeson.FromJSON'
newtype JsonByteString = JsonByteString B8.ByteString
  deriving (Show, Eq, Ord)

instance Aeson.ToJSON JsonByteString where
  toJSON (JsonByteString s) = Aeson.toJSON $ B8.unpack s

instance Aeson.FromJSON JsonByteString where
  parseJSON (Aeson.String s) = pure $ JsonByteString $ textToByte s
  parseJSON _ = fail "Value cannot be converted to a 'JsonByteString'"

-- | Wraps a 'Time.ZonedTime' to implement 'Aeson.ToJSON' and 'Aeson.FromJSON'
newtype JsonDateTime = JsonDateTime Time.ZonedTime
  deriving (Show)

instance Eq JsonDateTime where
  (JsonDateTime d1) == (JsonDateTime d2) = Time.zonedTimeToUTC d1 == Time.zonedTimeToUTC d2

instance Ord JsonDateTime where
  (JsonDateTime d1) <= (JsonDateTime d2) = Time.zonedTimeToUTC d1 <= Time.zonedTimeToUTC d2

instance Aeson.ToJSON JsonDateTime where
  toJSON (JsonDateTime d) = Aeson.toJSON d

instance Aeson.FromJSON JsonDateTime where
  parseJSON o = JsonDateTime <$> Aeson.parseJSON o
