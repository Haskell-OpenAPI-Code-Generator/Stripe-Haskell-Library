{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.GetTaxRates where

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
-- GET /v1/tax_rates
getTaxRates :: forall m s . (StripeAPI.Common.MonadHTTP m,
                             StripeAPI.Common.SecurityScheme s) =>
               StripeAPI.Common.Configuration s ->
               GHC.Maybe.Maybe GHC.Types.Bool ->
               GHC.Maybe.Maybe GHC.Base.String ->
               GHC.Maybe.Maybe GHC.Base.String ->
               GHC.Maybe.Maybe GHC.Base.String ->
               GHC.Maybe.Maybe GHC.Types.Bool ->
               GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
               GHC.Maybe.Maybe GHC.Base.String ->
               GetTaxRatesRequestBody ->
               m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                     (Network.HTTP.Client.Types.Response GetTaxRatesResponse))
getTaxRates config
            active
            created
            endingBefore
            expand
            inclusive
            limit
            startingAfter
            body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetTaxRatesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetTaxRatesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                   GetTaxRatesResponseBody200)
                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetTaxRatesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/tax_rates") ((Data.Text.pack "active",
                                                                                                                                                                                                                                                                                                                                                                                                            StripeAPI.Common.stringifyModel Data.Functor.<$> active) : ((Data.Text.pack "created",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> created) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "inclusive",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> inclusive) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : []))))))) body StripeAPI.Common.RequestBodyEncodingFormData)
getTaxRatesRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                StripeAPI.Common.SecurityScheme s) =>
                  StripeAPI.Common.Configuration s ->
                  GHC.Maybe.Maybe GHC.Types.Bool ->
                  GHC.Maybe.Maybe GHC.Base.String ->
                  GHC.Maybe.Maybe GHC.Base.String ->
                  GHC.Maybe.Maybe GHC.Base.String ->
                  GHC.Maybe.Maybe GHC.Types.Bool ->
                  GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                  GHC.Maybe.Maybe GHC.Base.String ->
                  GetTaxRatesRequestBody ->
                  m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getTaxRatesRaw config
               active
               created
               endingBefore
               expand
               inclusive
               limit
               startingAfter
               body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/tax_rates") ((Data.Text.pack "active",
                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> active) : ((Data.Text.pack "created",
                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> created) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "inclusive",
                                                                                                                                                                                                                                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> inclusive) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : []))))))) body StripeAPI.Common.RequestBodyEncodingFormData)
getTaxRatesM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                              StripeAPI.Common.SecurityScheme s) =>
                GHC.Maybe.Maybe GHC.Types.Bool ->
                GHC.Maybe.Maybe GHC.Base.String ->
                GHC.Maybe.Maybe GHC.Base.String ->
                GHC.Maybe.Maybe GHC.Base.String ->
                GHC.Maybe.Maybe GHC.Types.Bool ->
                GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                GHC.Maybe.Maybe GHC.Base.String ->
                GetTaxRatesRequestBody ->
                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                   m
                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                       (Network.HTTP.Client.Types.Response GetTaxRatesResponse))
getTaxRatesM active
             created
             endingBefore
             expand
             inclusive
             limit
             startingAfter
             body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetTaxRatesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetTaxRatesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                    GetTaxRatesResponseBody200)
                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetTaxRatesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/tax_rates") ((Data.Text.pack "active",
                                                                                                                                                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> active) : ((Data.Text.pack "created",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> created) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "inclusive",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> inclusive) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : []))))))) body StripeAPI.Common.RequestBodyEncodingFormData)
getTaxRatesRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                 StripeAPI.Common.SecurityScheme s) =>
                   GHC.Maybe.Maybe GHC.Types.Bool ->
                   GHC.Maybe.Maybe GHC.Base.String ->
                   GHC.Maybe.Maybe GHC.Base.String ->
                   GHC.Maybe.Maybe GHC.Base.String ->
                   GHC.Maybe.Maybe GHC.Types.Bool ->
                   GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                   GHC.Maybe.Maybe GHC.Base.String ->
                   GetTaxRatesRequestBody ->
                   Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                      m
                                                      (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getTaxRatesRawM active
                created
                endingBefore
                expand
                inclusive
                limit
                startingAfter
                body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/tax_rates") ((Data.Text.pack "active",
                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> active) : ((Data.Text.pack "created",
                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> created) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "inclusive",
                                                                                                                                                                                                                                                                                                                                                                                                                 StripeAPI.Common.stringifyModel Data.Functor.<$> inclusive) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : []))))))) body StripeAPI.Common.RequestBodyEncodingFormData)
data GetTaxRatesRequestBody
    = GetTaxRatesRequestBody {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetTaxRatesRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetTaxRatesRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTaxRatesRequestBody" (\obj -> GHC.Base.pure GetTaxRatesRequestBody)

data GetTaxRatesResponse
    = GetTaxRatesResponseError GHC.Base.String
    | GetTaxRatesResponse200 GetTaxRatesResponseBody200
    | GetTaxRatesResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetTaxRatesResponseBody200
    = GetTaxRatesResponseBody200 {getTaxRatesResponseBody200Data :: ([] TaxRate),
                                  getTaxRatesResponseBody200HasMore :: GHC.Types.Bool,
                                  getTaxRatesResponseBody200Object :: GetTaxRatesResponseBody200Object',
                                  getTaxRatesResponseBody200Url :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetTaxRatesResponseBody200Object'
    = GetTaxRatesResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetTaxRatesResponseBody200Object'EnumTyped GHC.Base.String
    | GetTaxRatesResponseBody200Object'EnumStringList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetTaxRatesResponseBody200Object'
    where toJSON (GetTaxRatesResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetTaxRatesResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetTaxRatesResponseBody200Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"
instance Data.Aeson.FromJSON GetTaxRatesResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
                                          then GetTaxRatesResponseBody200Object'EnumStringList
                                          else GetTaxRatesResponseBody200Object'EnumOther val)
instance Data.Aeson.ToJSON GetTaxRatesResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getTaxRatesResponseBody200Data obj) : (Data.Aeson..=) "has_more" (getTaxRatesResponseBody200HasMore obj) : (Data.Aeson..=) "object" (getTaxRatesResponseBody200Object obj) : (Data.Aeson..=) "url" (getTaxRatesResponseBody200Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getTaxRatesResponseBody200Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (getTaxRatesResponseBody200HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (getTaxRatesResponseBody200Object obj) GHC.Base.<> (Data.Aeson..=) "url" (getTaxRatesResponseBody200Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetTaxRatesResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTaxRatesResponseBody200" (\obj -> (((GHC.Base.pure GetTaxRatesResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
