{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.GetWebhookEndpointsWebhookEndpoint where

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

-- | No summary provided
--
-- GET /v1/webhook_endpoints/{webhook_endpoint}
getWebhookEndpointsWebhookEndpoint :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                    StripeAPI.Common.SecurityScheme s) =>
                                      StripeAPI.Common.Configuration s ->
                                      GHC.Maybe.Maybe GHC.Base.String ->
                                      GHC.Base.String ->
                                      GetWebhookEndpointsWebhookEndpointRequestBody ->
                                      m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                            (Network.HTTP.Client.Types.Response GetWebhookEndpointsWebhookEndpointResponse))
getWebhookEndpointsWebhookEndpoint config
                                   expand
                                   webhookEndpoint
                                   body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetWebhookEndpointsWebhookEndpointResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetWebhookEndpointsWebhookEndpointResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        WebhookEndpoint)
                                                                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetWebhookEndpointsWebhookEndpointResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/webhook_endpoints/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel webhookEndpoint)) GHC.Base.++ ""))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
getWebhookEndpointsWebhookEndpointRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                       StripeAPI.Common.SecurityScheme s) =>
                                         StripeAPI.Common.Configuration s ->
                                         GHC.Maybe.Maybe GHC.Base.String ->
                                         GHC.Base.String ->
                                         GetWebhookEndpointsWebhookEndpointRequestBody ->
                                         m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getWebhookEndpointsWebhookEndpointRaw config
                                      expand
                                      webhookEndpoint
                                      body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/webhook_endpoints/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel webhookEndpoint)) GHC.Base.++ ""))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
getWebhookEndpointsWebhookEndpointM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                     StripeAPI.Common.SecurityScheme s) =>
                                       GHC.Maybe.Maybe GHC.Base.String ->
                                       GHC.Base.String ->
                                       GetWebhookEndpointsWebhookEndpointRequestBody ->
                                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                          m
                                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                              (Network.HTTP.Client.Types.Response GetWebhookEndpointsWebhookEndpointResponse))
getWebhookEndpointsWebhookEndpointM expand
                                    webhookEndpoint
                                    body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetWebhookEndpointsWebhookEndpointResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetWebhookEndpointsWebhookEndpointResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         WebhookEndpoint)
                                                                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetWebhookEndpointsWebhookEndpointResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/webhook_endpoints/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel webhookEndpoint)) GHC.Base.++ ""))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
getWebhookEndpointsWebhookEndpointRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                        StripeAPI.Common.SecurityScheme s) =>
                                          GHC.Maybe.Maybe GHC.Base.String ->
                                          GHC.Base.String ->
                                          GetWebhookEndpointsWebhookEndpointRequestBody ->
                                          Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                             m
                                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                 (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getWebhookEndpointsWebhookEndpointRawM expand
                                       webhookEndpoint
                                       body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/webhook_endpoints/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel webhookEndpoint)) GHC.Base.++ ""))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
data GetWebhookEndpointsWebhookEndpointRequestBody
    = GetWebhookEndpointsWebhookEndpointRequestBody {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetWebhookEndpointsWebhookEndpointRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetWebhookEndpointsWebhookEndpointRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetWebhookEndpointsWebhookEndpointRequestBody" (\obj -> GHC.Base.pure GetWebhookEndpointsWebhookEndpointRequestBody)

data GetWebhookEndpointsWebhookEndpointResponse
    = GetWebhookEndpointsWebhookEndpointResponseError GHC.Base.String
    | GetWebhookEndpointsWebhookEndpointResponse200 WebhookEndpoint
    | GetWebhookEndpointsWebhookEndpointResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
