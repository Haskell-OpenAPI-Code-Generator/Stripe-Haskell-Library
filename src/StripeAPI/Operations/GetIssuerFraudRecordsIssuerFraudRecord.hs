{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.GetIssuerFraudRecordsIssuerFraudRecord where

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
-- GET /v1/issuer_fraud_records/{issuer_fraud_record}
getIssuerFraudRecordsIssuerFraudRecord :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                        StripeAPI.Common.SecurityScheme s) =>
                                          StripeAPI.Common.Configuration s ->
                                          GHC.Maybe.Maybe GHC.Base.String ->
                                          GHC.Base.String ->
                                          GetIssuerFraudRecordsIssuerFraudRecordRequestBody ->
                                          m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                (Network.HTTP.Client.Types.Response GetIssuerFraudRecordsIssuerFraudRecordResponse))
getIssuerFraudRecordsIssuerFraudRecord config
                                       expand
                                       issuerFraudRecord
                                       body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetIssuerFraudRecordsIssuerFraudRecordResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetIssuerFraudRecordsIssuerFraudRecordResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    IssuerFraudRecord)
                                                                                                                                                                                                                              | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetIssuerFraudRecordsIssuerFraudRecordResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/issuer_fraud_records/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel issuerFraudRecord)) GHC.Base.++ ""))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
getIssuerFraudRecordsIssuerFraudRecordRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                           StripeAPI.Common.SecurityScheme s) =>
                                             StripeAPI.Common.Configuration s ->
                                             GHC.Maybe.Maybe GHC.Base.String ->
                                             GHC.Base.String ->
                                             GetIssuerFraudRecordsIssuerFraudRecordRequestBody ->
                                             m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                   (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getIssuerFraudRecordsIssuerFraudRecordRaw config
                                          expand
                                          issuerFraudRecord
                                          body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/issuer_fraud_records/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel issuerFraudRecord)) GHC.Base.++ ""))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
getIssuerFraudRecordsIssuerFraudRecordM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                         StripeAPI.Common.SecurityScheme s) =>
                                           GHC.Maybe.Maybe GHC.Base.String ->
                                           GHC.Base.String ->
                                           GetIssuerFraudRecordsIssuerFraudRecordRequestBody ->
                                           Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                              m
                                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                  (Network.HTTP.Client.Types.Response GetIssuerFraudRecordsIssuerFraudRecordResponse))
getIssuerFraudRecordsIssuerFraudRecordM expand
                                        issuerFraudRecord
                                        body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetIssuerFraudRecordsIssuerFraudRecordResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetIssuerFraudRecordsIssuerFraudRecordResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     IssuerFraudRecord)
                                                                                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetIssuerFraudRecordsIssuerFraudRecordResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/issuer_fraud_records/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel issuerFraudRecord)) GHC.Base.++ ""))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
getIssuerFraudRecordsIssuerFraudRecordRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                            StripeAPI.Common.SecurityScheme s) =>
                                              GHC.Maybe.Maybe GHC.Base.String ->
                                              GHC.Base.String ->
                                              GetIssuerFraudRecordsIssuerFraudRecordRequestBody ->
                                              Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                 m
                                                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getIssuerFraudRecordsIssuerFraudRecordRawM expand
                                           issuerFraudRecord
                                           body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/issuer_fraud_records/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel issuerFraudRecord)) GHC.Base.++ ""))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
data GetIssuerFraudRecordsIssuerFraudRecordRequestBody
    = GetIssuerFraudRecordsIssuerFraudRecordRequestBody {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetIssuerFraudRecordsIssuerFraudRecordRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetIssuerFraudRecordsIssuerFraudRecordRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetIssuerFraudRecordsIssuerFraudRecordRequestBody" (\obj -> GHC.Base.pure GetIssuerFraudRecordsIssuerFraudRecordRequestBody)

data GetIssuerFraudRecordsIssuerFraudRecordResponse
    = GetIssuerFraudRecordsIssuerFraudRecordResponseError GHC.Base.String
    | GetIssuerFraudRecordsIssuerFraudRecordResponse200 IssuerFraudRecord
    | GetIssuerFraudRecordsIssuerFraudRecordResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
