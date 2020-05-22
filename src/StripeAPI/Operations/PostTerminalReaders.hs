{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postTerminalReaders
module StripeAPI.Operations.PostTerminalReaders where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Generics
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified StripeAPI.Common
import StripeAPI.Types

-- | > POST /v1/terminal/readers
-- 
-- \<p>Creates a new \<code>Reader\<\/code> object.\<\/p>
postTerminalReaders :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> PostTerminalReadersRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostTerminalReadersResponse)) -- ^ Monad containing the result of the operation
postTerminalReaders config
                    body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostTerminalReadersResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTerminalReadersResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                           Terminal'reader)
                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTerminalReadersResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/terminal/readers") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/terminal/readers
-- 
-- The same as 'postTerminalReaders' but returns the raw 'Data.ByteString.Char8.ByteString'
postTerminalReadersRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          StripeAPI.Common.Configuration s ->
                          PostTerminalReadersRequestBody ->
                          m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postTerminalReadersRaw config
                       body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/terminal/readers") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/terminal/readers
-- 
-- Monadic version of 'postTerminalReaders' (use with 'StripeAPI.Common.runWithConfiguration')
postTerminalReadersM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        PostTerminalReadersRequestBody ->
                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                           m
                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response PostTerminalReadersResponse))
postTerminalReadersM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostTerminalReadersResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTerminalReadersResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                            Terminal'reader)
                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTerminalReadersResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/terminal/readers") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/terminal/readers
-- 
-- Monadic version of 'postTerminalReadersRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postTerminalReadersRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                         StripeAPI.Common.SecurityScheme s) =>
                           PostTerminalReadersRequestBody ->
                           Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                              m
                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postTerminalReadersRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/terminal/readers") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postTerminalReadersRequestBody
-- 
-- 
data PostTerminalReadersRequestBody = PostTerminalReadersRequestBody {
  -- | expand: Specifies which fields in the response should be expanded.
  postTerminalReadersRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | label: Custom label given to the reader for easier identification. If no label is specified, the registration code will be used.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postTerminalReadersRequestBodyLabel :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | location: The location to assign the reader to. If no location is specified, the reader will be assigned to the account\'s default location.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postTerminalReadersRequestBodyLocation :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postTerminalReadersRequestBodyMetadata :: (GHC.Maybe.Maybe PostTerminalReadersRequestBodyMetadata')
  -- | registration_code: A code generated by the reader used for registering to an account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postTerminalReadersRequestBodyRegistrationCode :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTerminalReadersRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "expand" (postTerminalReadersRequestBodyExpand obj) : (Data.Aeson..=) "label" (postTerminalReadersRequestBodyLabel obj) : (Data.Aeson..=) "location" (postTerminalReadersRequestBodyLocation obj) : (Data.Aeson..=) "metadata" (postTerminalReadersRequestBodyMetadata obj) : (Data.Aeson..=) "registration_code" (postTerminalReadersRequestBodyRegistrationCode obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "expand" (postTerminalReadersRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "label" (postTerminalReadersRequestBodyLabel obj) GHC.Base.<> ((Data.Aeson..=) "location" (postTerminalReadersRequestBodyLocation obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postTerminalReadersRequestBodyMetadata obj) GHC.Base.<> (Data.Aeson..=) "registration_code" (postTerminalReadersRequestBodyRegistrationCode obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostTerminalReadersRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTerminalReadersRequestBody" (\obj -> ((((GHC.Base.pure PostTerminalReadersRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "location")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "registration_code"))
-- | Defines the data type for the schema postTerminalReadersRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostTerminalReadersRequestBodyMetadata' = PostTerminalReadersRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTerminalReadersRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostTerminalReadersRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTerminalReadersRequestBodyMetadata'" (\obj -> GHC.Base.pure PostTerminalReadersRequestBodyMetadata')
-- | Represents a response of the operation 'postTerminalReaders'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostTerminalReadersResponseError' is used.
data PostTerminalReadersResponse =                   
   PostTerminalReadersResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostTerminalReadersResponse200 Terminal'reader   -- ^ Successful response.
  | PostTerminalReadersResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
