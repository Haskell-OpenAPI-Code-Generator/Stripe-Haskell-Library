{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation deleteWebhookEndpointsWebhookEndpoint
module StripeAPI.Operations.DeleteWebhookEndpointsWebhookEndpoint where

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
import qualified Data.Vector
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

-- | > DELETE /v1/webhook_endpoints/{webhook_endpoint}
-- 
-- \<p>You can also delete webhook endpoints via the \<a href=\"https:\/\/dashboard.stripe.com\/account\/webhooks\">webhook endpoint management\<\/a> page of the Stripe dashboard.\<\/p>
deleteWebhookEndpointsWebhookEndpoint :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text                                                                                                                           -- ^ webhook_endpoint | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe DeleteWebhookEndpointsWebhookEndpointRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response DeleteWebhookEndpointsWebhookEndpointResponse)) -- ^ Monad containing the result of the operation
deleteWebhookEndpointsWebhookEndpoint config
                                      webhookEndpoint
                                      body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either DeleteWebhookEndpointsWebhookEndpointResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteWebhookEndpointsWebhookEndpointResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 DeletedWebhookEndpoint)
                                                                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteWebhookEndpointsWebhookEndpointResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/v1/webhook_endpoints/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel webhookEndpoint)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/webhook_endpoints/{webhook_endpoint}
-- 
-- The same as 'deleteWebhookEndpointsWebhookEndpoint' but returns the raw 'Data.ByteString.Char8.ByteString'
deleteWebhookEndpointsWebhookEndpointRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                          StripeAPI.Common.SecurityScheme s) =>
                                            StripeAPI.Common.Configuration s ->
                                            Data.Text.Internal.Text ->
                                            GHC.Maybe.Maybe DeleteWebhookEndpointsWebhookEndpointRequestBody ->
                                            m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
deleteWebhookEndpointsWebhookEndpointRaw config
                                         webhookEndpoint
                                         body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/v1/webhook_endpoints/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel webhookEndpoint)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/webhook_endpoints/{webhook_endpoint}
-- 
-- Monadic version of 'deleteWebhookEndpointsWebhookEndpoint' (use with 'StripeAPI.Common.runWithConfiguration')
deleteWebhookEndpointsWebhookEndpointM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                        StripeAPI.Common.SecurityScheme s) =>
                                          Data.Text.Internal.Text ->
                                          GHC.Maybe.Maybe DeleteWebhookEndpointsWebhookEndpointRequestBody ->
                                          Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                             m
                                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                 (Network.HTTP.Client.Types.Response DeleteWebhookEndpointsWebhookEndpointResponse))
deleteWebhookEndpointsWebhookEndpointM webhookEndpoint
                                       body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either DeleteWebhookEndpointsWebhookEndpointResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteWebhookEndpointsWebhookEndpointResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  DeletedWebhookEndpoint)
                                                                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteWebhookEndpointsWebhookEndpointResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/v1/webhook_endpoints/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel webhookEndpoint)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/webhook_endpoints/{webhook_endpoint}
-- 
-- Monadic version of 'deleteWebhookEndpointsWebhookEndpointRaw' (use with 'StripeAPI.Common.runWithConfiguration')
deleteWebhookEndpointsWebhookEndpointRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                           StripeAPI.Common.SecurityScheme s) =>
                                             Data.Text.Internal.Text ->
                                             GHC.Maybe.Maybe DeleteWebhookEndpointsWebhookEndpointRequestBody ->
                                             Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                m
                                                                                (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                    (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
deleteWebhookEndpointsWebhookEndpointRawM webhookEndpoint
                                          body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/v1/webhook_endpoints/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel webhookEndpoint)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema deleteWebhookEndpointsWebhookEndpointRequestBody
-- 
-- 
data DeleteWebhookEndpointsWebhookEndpointRequestBody = DeleteWebhookEndpointsWebhookEndpointRequestBody {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeleteWebhookEndpointsWebhookEndpointRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON DeleteWebhookEndpointsWebhookEndpointRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteWebhookEndpointsWebhookEndpointRequestBody" (\obj -> GHC.Base.pure DeleteWebhookEndpointsWebhookEndpointRequestBody)
-- | Represents a response of the operation 'deleteWebhookEndpointsWebhookEndpoint'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteWebhookEndpointsWebhookEndpointResponseError' is used.
data DeleteWebhookEndpointsWebhookEndpointResponse =                         
   DeleteWebhookEndpointsWebhookEndpointResponseError GHC.Base.String        -- ^ Means either no matching case available or a parse error
  | DeleteWebhookEndpointsWebhookEndpointResponse200 DeletedWebhookEndpoint  -- ^ Successful response.
  | DeleteWebhookEndpointsWebhookEndpointResponseDefault Error               -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
