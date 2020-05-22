{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postTerminalConnectionTokens
module StripeAPI.Operations.PostTerminalConnectionTokens where

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

-- | > POST /v1/terminal/connection_tokens
-- 
-- \<p>To connect to a reader the Stripe Terminal SDK needs to retrieve a short-lived connection token from Stripe, proxied through your server. On your backend, add an endpoint that creates and returns a connection token.\<\/p>
postTerminalConnectionTokens :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> PostTerminalConnectionTokensRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostTerminalConnectionTokensResponse)) -- ^ Monad containing the result of the operation
postTerminalConnectionTokens config
                             body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostTerminalConnectionTokensResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTerminalConnectionTokensResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      Terminal'connectionToken)
                                                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTerminalConnectionTokensResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/terminal/connection_tokens") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/terminal/connection_tokens
-- 
-- The same as 'postTerminalConnectionTokens' but returns the raw 'Data.ByteString.Char8.ByteString'
postTerminalConnectionTokensRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                 StripeAPI.Common.SecurityScheme s) =>
                                   StripeAPI.Common.Configuration s ->
                                   PostTerminalConnectionTokensRequestBody ->
                                   m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postTerminalConnectionTokensRaw config
                                body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/terminal/connection_tokens") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/terminal/connection_tokens
-- 
-- Monadic version of 'postTerminalConnectionTokens' (use with 'StripeAPI.Common.runWithConfiguration')
postTerminalConnectionTokensM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                               StripeAPI.Common.SecurityScheme s) =>
                                 PostTerminalConnectionTokensRequestBody ->
                                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                    m
                                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                        (Network.HTTP.Client.Types.Response PostTerminalConnectionTokensResponse))
postTerminalConnectionTokensM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostTerminalConnectionTokensResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTerminalConnectionTokensResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                       Terminal'connectionToken)
                                                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTerminalConnectionTokensResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/terminal/connection_tokens") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/terminal/connection_tokens
-- 
-- Monadic version of 'postTerminalConnectionTokensRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postTerminalConnectionTokensRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                  StripeAPI.Common.SecurityScheme s) =>
                                    PostTerminalConnectionTokensRequestBody ->
                                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                       m
                                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postTerminalConnectionTokensRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/terminal/connection_tokens") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postTerminalConnectionTokensRequestBody
-- 
-- 
data PostTerminalConnectionTokensRequestBody = PostTerminalConnectionTokensRequestBody {
  -- | expand: Specifies which fields in the response should be expanded.
  postTerminalConnectionTokensRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | location: The id of the location that this connection token is scoped to. If specified the connection token will only be usable with readers assigned to that location, otherwise the connection token will be usable with all readers.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postTerminalConnectionTokensRequestBodyLocation :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTerminalConnectionTokensRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "expand" (postTerminalConnectionTokensRequestBodyExpand obj) : (Data.Aeson..=) "location" (postTerminalConnectionTokensRequestBodyLocation obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "expand" (postTerminalConnectionTokensRequestBodyExpand obj) GHC.Base.<> (Data.Aeson..=) "location" (postTerminalConnectionTokensRequestBodyLocation obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostTerminalConnectionTokensRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTerminalConnectionTokensRequestBody" (\obj -> (GHC.Base.pure PostTerminalConnectionTokensRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "location"))
-- | Represents a response of the operation 'postTerminalConnectionTokens'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostTerminalConnectionTokensResponseError' is used.
data PostTerminalConnectionTokensResponse =                           
   PostTerminalConnectionTokensResponseError GHC.Base.String          -- ^ Means either no matching case available or a parse error
  | PostTerminalConnectionTokensResponse200 Terminal'connectionToken  -- ^ Successful response.
  | PostTerminalConnectionTokensResponseDefault Error                 -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
