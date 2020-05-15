{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostAccountsAccountCapabilitiesCapability where

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
-- POST /v1/accounts/{account}/capabilities/{capability}
postAccountsAccountCapabilitiesCapability :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                           StripeAPI.Common.SecurityScheme s) =>
                                             StripeAPI.Common.Configuration s ->
                                             GHC.Base.String ->
                                             GHC.Base.String ->
                                             PostAccountsAccountCapabilitiesCapabilityRequestBody ->
                                             m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                   (Network.HTTP.Client.Types.Response PostAccountsAccountCapabilitiesCapabilityResponse))
postAccountsAccountCapabilitiesCapability config
                                          account
                                          capability
                                          body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountsAccountCapabilitiesCapabilityResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountCapabilitiesCapabilityResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             Capability)
                                                                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountCapabilitiesCapabilityResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ("/capabilities/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel capability)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountsAccountCapabilitiesCapabilityRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                              StripeAPI.Common.SecurityScheme s) =>
                                                StripeAPI.Common.Configuration s ->
                                                GHC.Base.String ->
                                                GHC.Base.String ->
                                                PostAccountsAccountCapabilitiesCapabilityRequestBody ->
                                                m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountsAccountCapabilitiesCapabilityRaw config
                                             account
                                             capability
                                             body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ("/capabilities/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel capability)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountsAccountCapabilitiesCapabilityM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                            StripeAPI.Common.SecurityScheme s) =>
                                              GHC.Base.String ->
                                              GHC.Base.String ->
                                              PostAccountsAccountCapabilitiesCapabilityRequestBody ->
                                              Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                 m
                                                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                     (Network.HTTP.Client.Types.Response PostAccountsAccountCapabilitiesCapabilityResponse))
postAccountsAccountCapabilitiesCapabilityM account
                                           capability
                                           body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostAccountsAccountCapabilitiesCapabilityResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountCapabilitiesCapabilityResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              Capability)
                                                                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountCapabilitiesCapabilityResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                Error)
                                                                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ("/capabilities/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel capability)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountsAccountCapabilitiesCapabilityRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                               StripeAPI.Common.SecurityScheme s) =>
                                                 GHC.Base.String ->
                                                 GHC.Base.String ->
                                                 PostAccountsAccountCapabilitiesCapabilityRequestBody ->
                                                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                    m
                                                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountsAccountCapabilitiesCapabilityRawM account
                                              capability
                                              body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ("/capabilities/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel capability)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostAccountsAccountCapabilitiesCapabilityRequestBody
    = PostAccountsAccountCapabilitiesCapabilityRequestBody {postAccountsAccountCapabilitiesCapabilityRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                                            postAccountsAccountCapabilitiesCapabilityRequestBodyRequested :: (GHC.Maybe.Maybe GHC.Types.Bool)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountCapabilitiesCapabilityRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "expand" (postAccountsAccountCapabilitiesCapabilityRequestBodyExpand obj) : (Data.Aeson..=) "requested" (postAccountsAccountCapabilitiesCapabilityRequestBodyRequested obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "expand" (postAccountsAccountCapabilitiesCapabilityRequestBodyExpand obj) GHC.Base.<> (Data.Aeson..=) "requested" (postAccountsAccountCapabilitiesCapabilityRequestBodyRequested obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountCapabilitiesCapabilityRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountCapabilitiesCapabilityRequestBody" (\obj -> (GHC.Base.pure PostAccountsAccountCapabilitiesCapabilityRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "requested"))

data PostAccountsAccountCapabilitiesCapabilityResponse
    = PostAccountsAccountCapabilitiesCapabilityResponseError GHC.Base.String
    | PostAccountsAccountCapabilitiesCapabilityResponse200 Capability
    | PostAccountsAccountCapabilitiesCapabilityResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
