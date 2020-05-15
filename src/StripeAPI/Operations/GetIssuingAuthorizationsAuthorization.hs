{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.GetIssuingAuthorizationsAuthorization where

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
-- GET /v1/issuing/authorizations/{authorization}
getIssuingAuthorizationsAuthorization :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                       StripeAPI.Common.SecurityScheme s) =>
                                         StripeAPI.Common.Configuration s ->
                                         GHC.Base.String ->
                                         GHC.Maybe.Maybe GHC.Base.String ->
                                         GetIssuingAuthorizationsAuthorizationRequestBody ->
                                         m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                               (Network.HTTP.Client.Types.Response GetIssuingAuthorizationsAuthorizationResponse))
getIssuingAuthorizationsAuthorization config
                                      authorization
                                      expand
                                      body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetIssuingAuthorizationsAuthorizationResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetIssuingAuthorizationsAuthorizationResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 Issuing'authorization)
                                                                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetIssuingAuthorizationsAuthorizationResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/issuing/authorizations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel authorization)) GHC.Base.++ ""))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
getIssuingAuthorizationsAuthorizationRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                          StripeAPI.Common.SecurityScheme s) =>
                                            StripeAPI.Common.Configuration s ->
                                            GHC.Base.String ->
                                            GHC.Maybe.Maybe GHC.Base.String ->
                                            GetIssuingAuthorizationsAuthorizationRequestBody ->
                                            m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getIssuingAuthorizationsAuthorizationRaw config
                                         authorization
                                         expand
                                         body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/issuing/authorizations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel authorization)) GHC.Base.++ ""))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
getIssuingAuthorizationsAuthorizationM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                        StripeAPI.Common.SecurityScheme s) =>
                                          GHC.Base.String ->
                                          GHC.Maybe.Maybe GHC.Base.String ->
                                          GetIssuingAuthorizationsAuthorizationRequestBody ->
                                          Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                             m
                                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                 (Network.HTTP.Client.Types.Response GetIssuingAuthorizationsAuthorizationResponse))
getIssuingAuthorizationsAuthorizationM authorization
                                       expand
                                       body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetIssuingAuthorizationsAuthorizationResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetIssuingAuthorizationsAuthorizationResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  Issuing'authorization)
                                                                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetIssuingAuthorizationsAuthorizationResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/issuing/authorizations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel authorization)) GHC.Base.++ ""))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
getIssuingAuthorizationsAuthorizationRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                           StripeAPI.Common.SecurityScheme s) =>
                                             GHC.Base.String ->
                                             GHC.Maybe.Maybe GHC.Base.String ->
                                             GetIssuingAuthorizationsAuthorizationRequestBody ->
                                             Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                m
                                                                                (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                    (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getIssuingAuthorizationsAuthorizationRawM authorization
                                          expand
                                          body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/issuing/authorizations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel authorization)) GHC.Base.++ ""))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
data GetIssuingAuthorizationsAuthorizationRequestBody
    = GetIssuingAuthorizationsAuthorizationRequestBody {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetIssuingAuthorizationsAuthorizationRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetIssuingAuthorizationsAuthorizationRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetIssuingAuthorizationsAuthorizationRequestBody" (\obj -> GHC.Base.pure GetIssuingAuthorizationsAuthorizationRequestBody)

data GetIssuingAuthorizationsAuthorizationResponse
    = GetIssuingAuthorizationsAuthorizationResponseError GHC.Base.String
    | GetIssuingAuthorizationsAuthorizationResponse200 Issuing'authorization
    | GetIssuingAuthorizationsAuthorizationResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
