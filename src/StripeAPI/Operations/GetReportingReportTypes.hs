{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.GetReportingReportTypes where

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
-- GET /v1/reporting/report_types
getReportingReportTypes :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                         StripeAPI.Common.SecurityScheme s) =>
                           StripeAPI.Common.Configuration s ->
                           GHC.Maybe.Maybe GHC.Base.String ->
                           GetReportingReportTypesRequestBody ->
                           m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                 (Network.HTTP.Client.Types.Response GetReportingReportTypesResponse))
getReportingReportTypes config
                        expand
                        body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetReportingReportTypesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetReportingReportTypesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                       GetReportingReportTypesResponseBody200)
                                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetReportingReportTypesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/reporting/report_types") ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                 StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
getReportingReportTypesRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                            StripeAPI.Common.SecurityScheme s) =>
                              StripeAPI.Common.Configuration s ->
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GetReportingReportTypesRequestBody ->
                              m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                    (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getReportingReportTypesRaw config
                           expand
                           body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/reporting/report_types") ((Data.Text.pack "expand",
                                                                                                                                                                                            StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
getReportingReportTypesM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                          StripeAPI.Common.SecurityScheme s) =>
                            GHC.Maybe.Maybe GHC.Base.String ->
                            GetReportingReportTypesRequestBody ->
                            Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                               m
                                                               (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                   (Network.HTTP.Client.Types.Response GetReportingReportTypesResponse))
getReportingReportTypesM expand
                         body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetReportingReportTypesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetReportingReportTypesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                        GetReportingReportTypesResponseBody200)
                                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetReportingReportTypesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/reporting/report_types") ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                            StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
getReportingReportTypesRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                             StripeAPI.Common.SecurityScheme s) =>
                               GHC.Maybe.Maybe GHC.Base.String ->
                               GetReportingReportTypesRequestBody ->
                               Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                  m
                                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getReportingReportTypesRawM expand
                            body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/reporting/report_types") ((Data.Text.pack "expand",
                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
data GetReportingReportTypesRequestBody
    = GetReportingReportTypesRequestBody {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetReportingReportTypesRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetReportingReportTypesRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetReportingReportTypesRequestBody" (\obj -> GHC.Base.pure GetReportingReportTypesRequestBody)

data GetReportingReportTypesResponse
    = GetReportingReportTypesResponseError GHC.Base.String
    | GetReportingReportTypesResponse200 GetReportingReportTypesResponseBody200
    | GetReportingReportTypesResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetReportingReportTypesResponseBody200
    = GetReportingReportTypesResponseBody200 {getReportingReportTypesResponseBody200Data :: ([] Reporting'reportType),
                                              getReportingReportTypesResponseBody200HasMore :: GHC.Types.Bool,
                                              getReportingReportTypesResponseBody200Object :: GetReportingReportTypesResponseBody200Object',
                                              getReportingReportTypesResponseBody200Url :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetReportingReportTypesResponseBody200Object'
    = GetReportingReportTypesResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetReportingReportTypesResponseBody200Object'EnumTyped GHC.Base.String
    | GetReportingReportTypesResponseBody200Object'EnumStringList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetReportingReportTypesResponseBody200Object'
    where toJSON (GetReportingReportTypesResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetReportingReportTypesResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetReportingReportTypesResponseBody200Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"
instance Data.Aeson.FromJSON GetReportingReportTypesResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
                                          then GetReportingReportTypesResponseBody200Object'EnumStringList
                                          else GetReportingReportTypesResponseBody200Object'EnumOther val)
instance Data.Aeson.ToJSON GetReportingReportTypesResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getReportingReportTypesResponseBody200Data obj) : (Data.Aeson..=) "has_more" (getReportingReportTypesResponseBody200HasMore obj) : (Data.Aeson..=) "object" (getReportingReportTypesResponseBody200Object obj) : (Data.Aeson..=) "url" (getReportingReportTypesResponseBody200Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getReportingReportTypesResponseBody200Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (getReportingReportTypesResponseBody200HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (getReportingReportTypesResponseBody200Object obj) GHC.Base.<> (Data.Aeson..=) "url" (getReportingReportTypesResponseBody200Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetReportingReportTypesResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetReportingReportTypesResponseBody200" (\obj -> (((GHC.Base.pure GetReportingReportTypesResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
