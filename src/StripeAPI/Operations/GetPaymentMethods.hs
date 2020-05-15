{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.GetPaymentMethods where

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
-- GET /v1/payment_methods
getPaymentMethods :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                   StripeAPI.Common.SecurityScheme s) =>
                     StripeAPI.Common.Configuration s ->
                     GHC.Base.String ->
                     GHC.Maybe.Maybe GHC.Base.String ->
                     GHC.Maybe.Maybe GHC.Base.String ->
                     GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                     GHC.Maybe.Maybe GHC.Base.String ->
                     GHC.Base.String ->
                     GetPaymentMethodsRequestBody ->
                     m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                           (Network.HTTP.Client.Types.Response GetPaymentMethodsResponse))
getPaymentMethods config
                  customer
                  endingBefore
                  expand
                  limit
                  startingAfter
                  type'
                  body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetPaymentMethodsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetPaymentMethodsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                     GetPaymentMethodsResponseBody200)
                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetPaymentMethodsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/payment_methods") ((Data.Text.pack "customer",
                                                                                                                                                                                                                                                                                                                                                                                                                              GHC.Base.Just GHC.Base.$ StripeAPI.Common.stringifyModel customer) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : ((Data.Text.pack "type",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           GHC.Base.Just GHC.Base.$ StripeAPI.Common.stringifyModel type') : [])))))) body StripeAPI.Common.RequestBodyEncodingFormData)
getPaymentMethodsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        StripeAPI.Common.Configuration s ->
                        GHC.Base.String ->
                        GHC.Maybe.Maybe GHC.Base.String ->
                        GHC.Maybe.Maybe GHC.Base.String ->
                        GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                        GHC.Maybe.Maybe GHC.Base.String ->
                        GHC.Base.String ->
                        GetPaymentMethodsRequestBody ->
                        m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getPaymentMethodsRaw config
                     customer
                     endingBefore
                     expand
                     limit
                     startingAfter
                     type'
                     body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/payment_methods") ((Data.Text.pack "customer",
                                                                                                                                                                               GHC.Base.Just GHC.Base.$ StripeAPI.Common.stringifyModel customer) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : ((Data.Text.pack "type",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            GHC.Base.Just GHC.Base.$ StripeAPI.Common.stringifyModel type') : [])))))) body StripeAPI.Common.RequestBodyEncodingFormData)
getPaymentMethodsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                    StripeAPI.Common.SecurityScheme s) =>
                      GHC.Base.String ->
                      GHC.Maybe.Maybe GHC.Base.String ->
                      GHC.Maybe.Maybe GHC.Base.String ->
                      GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                      GHC.Maybe.Maybe GHC.Base.String ->
                      GHC.Base.String ->
                      GetPaymentMethodsRequestBody ->
                      Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                         m
                                                         (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                             (Network.HTTP.Client.Types.Response GetPaymentMethodsResponse))
getPaymentMethodsM customer
                   endingBefore
                   expand
                   limit
                   startingAfter
                   type'
                   body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetPaymentMethodsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetPaymentMethodsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                      GetPaymentMethodsResponseBody200)
                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetPaymentMethodsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/payment_methods") ((Data.Text.pack "customer",
                                                                                                                                                                                                                                                                                                                                                                                                                         GHC.Base.Just GHC.Base.$ StripeAPI.Common.stringifyModel customer) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : ((Data.Text.pack "type",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      GHC.Base.Just GHC.Base.$ StripeAPI.Common.stringifyModel type') : [])))))) body StripeAPI.Common.RequestBodyEncodingFormData)
getPaymentMethodsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                       StripeAPI.Common.SecurityScheme s) =>
                         GHC.Base.String ->
                         GHC.Maybe.Maybe GHC.Base.String ->
                         GHC.Maybe.Maybe GHC.Base.String ->
                         GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                         GHC.Maybe.Maybe GHC.Base.String ->
                         GHC.Base.String ->
                         GetPaymentMethodsRequestBody ->
                         Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                            m
                                                            (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getPaymentMethodsRawM customer
                      endingBefore
                      expand
                      limit
                      startingAfter
                      type'
                      body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/payment_methods") ((Data.Text.pack "customer",
                                                                                                                                                                          GHC.Base.Just GHC.Base.$ StripeAPI.Common.stringifyModel customer) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : ((Data.Text.pack "type",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       GHC.Base.Just GHC.Base.$ StripeAPI.Common.stringifyModel type') : [])))))) body StripeAPI.Common.RequestBodyEncodingFormData)
data GetPaymentMethodsRequestBody
    = GetPaymentMethodsRequestBody {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetPaymentMethodsRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetPaymentMethodsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetPaymentMethodsRequestBody" (\obj -> GHC.Base.pure GetPaymentMethodsRequestBody)

data GetPaymentMethodsResponse
    = GetPaymentMethodsResponseError GHC.Base.String
    | GetPaymentMethodsResponse200 GetPaymentMethodsResponseBody200
    | GetPaymentMethodsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetPaymentMethodsResponseBody200
    = GetPaymentMethodsResponseBody200 {getPaymentMethodsResponseBody200Data :: ([] PaymentMethod),
                                        getPaymentMethodsResponseBody200HasMore :: GHC.Types.Bool,
                                        getPaymentMethodsResponseBody200Object :: GetPaymentMethodsResponseBody200Object',
                                        getPaymentMethodsResponseBody200Url :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetPaymentMethodsResponseBody200Object'
    = GetPaymentMethodsResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetPaymentMethodsResponseBody200Object'EnumTyped GHC.Base.String
    | GetPaymentMethodsResponseBody200Object'EnumStringList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetPaymentMethodsResponseBody200Object'
    where toJSON (GetPaymentMethodsResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetPaymentMethodsResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetPaymentMethodsResponseBody200Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"
instance Data.Aeson.FromJSON GetPaymentMethodsResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
                                          then GetPaymentMethodsResponseBody200Object'EnumStringList
                                          else GetPaymentMethodsResponseBody200Object'EnumOther val)
instance Data.Aeson.ToJSON GetPaymentMethodsResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getPaymentMethodsResponseBody200Data obj) : (Data.Aeson..=) "has_more" (getPaymentMethodsResponseBody200HasMore obj) : (Data.Aeson..=) "object" (getPaymentMethodsResponseBody200Object obj) : (Data.Aeson..=) "url" (getPaymentMethodsResponseBody200Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getPaymentMethodsResponseBody200Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (getPaymentMethodsResponseBody200HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (getPaymentMethodsResponseBody200Object obj) GHC.Base.<> (Data.Aeson..=) "url" (getPaymentMethodsResponseBody200Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetPaymentMethodsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetPaymentMethodsResponseBody200" (\obj -> (((GHC.Base.pure GetPaymentMethodsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
