{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.GetCustomersCustomer where

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
-- GET /v1/customers/{customer}
getCustomersCustomer :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        StripeAPI.Common.Configuration s ->
                        GHC.Base.String ->
                        GHC.Maybe.Maybe GHC.Base.String ->
                        GetCustomersCustomerRequestBody ->
                        m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                              (Network.HTTP.Client.Types.Response GetCustomersCustomerResponse))
getCustomersCustomer config
                     customer
                     expand
                     body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetCustomersCustomerResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetCustomersCustomerResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                              GetCustomersCustomerResponseBody200)
                                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetCustomersCustomerResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                Error)
                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ""))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
getCustomersCustomerRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                         StripeAPI.Common.SecurityScheme s) =>
                           StripeAPI.Common.Configuration s ->
                           GHC.Base.String ->
                           GHC.Maybe.Maybe GHC.Base.String ->
                           GetCustomersCustomerRequestBody ->
                           m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                 (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getCustomersCustomerRaw config
                        customer
                        expand
                        body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ""))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
getCustomersCustomerM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                       StripeAPI.Common.SecurityScheme s) =>
                         GHC.Base.String ->
                         GHC.Maybe.Maybe GHC.Base.String ->
                         GetCustomersCustomerRequestBody ->
                         Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                            m
                                                            (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                (Network.HTTP.Client.Types.Response GetCustomersCustomerResponse))
getCustomersCustomerM customer
                      expand
                      body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetCustomersCustomerResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetCustomersCustomerResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                               GetCustomersCustomerResponseBody200)
                                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetCustomersCustomerResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                 Error)
                                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ""))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
getCustomersCustomerRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                          StripeAPI.Common.SecurityScheme s) =>
                            GHC.Base.String ->
                            GHC.Maybe.Maybe GHC.Base.String ->
                            GetCustomersCustomerRequestBody ->
                            Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                               m
                                                               (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                   (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getCustomersCustomerRawM customer
                         expand
                         body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ""))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
data GetCustomersCustomerRequestBody
    = GetCustomersCustomerRequestBody {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerRequestBody" (\obj -> GHC.Base.pure GetCustomersCustomerRequestBody)

data GetCustomersCustomerResponse
    = GetCustomersCustomerResponseError GHC.Base.String
    | GetCustomersCustomerResponse200 GetCustomersCustomerResponseBody200
    | GetCustomersCustomerResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetCustomersCustomerResponseBody200
    = GetCustomersCustomerResponseBody200 {getCustomersCustomerResponseBody200Address :: (GHC.Maybe.Maybe GetCustomersCustomerResponseBody200Address'),
                                           getCustomersCustomerResponseBody200Balance :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                           getCustomersCustomerResponseBody200Created :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                           getCustomersCustomerResponseBody200Currency :: (GHC.Maybe.Maybe GHC.Base.String),
                                           getCustomersCustomerResponseBody200DefaultSource :: (GHC.Maybe.Maybe GetCustomersCustomerResponseBody200DefaultSource'Variants),
                                           getCustomersCustomerResponseBody200Deleted :: (GHC.Maybe.Maybe GetCustomersCustomerResponseBody200Deleted'),
                                           getCustomersCustomerResponseBody200Delinquent :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                           getCustomersCustomerResponseBody200Description :: (GHC.Maybe.Maybe GHC.Base.String),
                                           getCustomersCustomerResponseBody200Discount :: (GHC.Maybe.Maybe GetCustomersCustomerResponseBody200Discount'),
                                           getCustomersCustomerResponseBody200Email :: (GHC.Maybe.Maybe GHC.Base.String),
                                           getCustomersCustomerResponseBody200Id :: (GHC.Maybe.Maybe GHC.Base.String),
                                           getCustomersCustomerResponseBody200InvoicePrefix :: (GHC.Maybe.Maybe GHC.Base.String),
                                           getCustomersCustomerResponseBody200InvoiceSettings :: (GHC.Maybe.Maybe InvoiceSettingCustomerSetting),
                                           getCustomersCustomerResponseBody200Livemode :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                           getCustomersCustomerResponseBody200Metadata :: (GHC.Maybe.Maybe GetCustomersCustomerResponseBody200Metadata'),
                                           getCustomersCustomerResponseBody200Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                           getCustomersCustomerResponseBody200NextInvoiceSequence :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                           getCustomersCustomerResponseBody200Object :: (GHC.Maybe.Maybe GetCustomersCustomerResponseBody200Object'),
                                           getCustomersCustomerResponseBody200Phone :: (GHC.Maybe.Maybe GHC.Base.String),
                                           getCustomersCustomerResponseBody200PreferredLocales :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                           getCustomersCustomerResponseBody200Shipping :: (GHC.Maybe.Maybe GetCustomersCustomerResponseBody200Shipping'),
                                           getCustomersCustomerResponseBody200Sources :: (GHC.Maybe.Maybe GetCustomersCustomerResponseBody200Sources'),
                                           getCustomersCustomerResponseBody200Subscriptions :: (GHC.Maybe.Maybe GetCustomersCustomerResponseBody200Subscriptions'),
                                           getCustomersCustomerResponseBody200TaxExempt :: (GHC.Maybe.Maybe GetCustomersCustomerResponseBody200TaxExempt'),
                                           getCustomersCustomerResponseBody200TaxIds :: (GHC.Maybe.Maybe GetCustomersCustomerResponseBody200TaxIds')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetCustomersCustomerResponseBody200Address'
    = GetCustomersCustomerResponseBody200Address' {getCustomersCustomerResponseBody200Address'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   getCustomersCustomerResponseBody200Address'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   getCustomersCustomerResponseBody200Address'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   getCustomersCustomerResponseBody200Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   getCustomersCustomerResponseBody200Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   getCustomersCustomerResponseBody200Address'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (getCustomersCustomerResponseBody200Address'City obj) : (Data.Aeson..=) "country" (getCustomersCustomerResponseBody200Address'Country obj) : (Data.Aeson..=) "line1" (getCustomersCustomerResponseBody200Address'Line1 obj) : (Data.Aeson..=) "line2" (getCustomersCustomerResponseBody200Address'Line2 obj) : (Data.Aeson..=) "postal_code" (getCustomersCustomerResponseBody200Address'PostalCode obj) : (Data.Aeson..=) "state" (getCustomersCustomerResponseBody200Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (getCustomersCustomerResponseBody200Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (getCustomersCustomerResponseBody200Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (getCustomersCustomerResponseBody200Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (getCustomersCustomerResponseBody200Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (getCustomersCustomerResponseBody200Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (getCustomersCustomerResponseBody200Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerResponseBody200Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerResponseBody200Address'" (\obj -> (((((GHC.Base.pure GetCustomersCustomerResponseBody200Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
data GetCustomersCustomerResponseBody200DefaultSource'Variants
    = GetCustomersCustomerResponseBody200DefaultSource'Variant1 AlipayAccount
    | GetCustomersCustomerResponseBody200DefaultSource'Variant2 BankAccount
    | GetCustomersCustomerResponseBody200DefaultSource'Variant3 BitcoinReceiver
    | GetCustomersCustomerResponseBody200DefaultSource'Variant4 Card
    | GetCustomersCustomerResponseBody200DefaultSource'Variant5 Source
    | GetCustomersCustomerResponseBody200DefaultSource'Variant6 GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200DefaultSource'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON GetCustomersCustomerResponseBody200DefaultSource'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data GetCustomersCustomerResponseBody200Deleted'
    = GetCustomersCustomerResponseBody200Deleted'EnumOther Data.Aeson.Types.Internal.Value
    | GetCustomersCustomerResponseBody200Deleted'EnumTyped GHC.Types.Bool
    | GetCustomersCustomerResponseBody200Deleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200Deleted'
    where toJSON (GetCustomersCustomerResponseBody200Deleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerResponseBody200Deleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerResponseBody200Deleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON GetCustomersCustomerResponseBody200Deleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then GetCustomersCustomerResponseBody200Deleted'EnumBoolTrue
                                          else GetCustomersCustomerResponseBody200Deleted'EnumOther val)
data GetCustomersCustomerResponseBody200Discount'
    = GetCustomersCustomerResponseBody200Discount' {getCustomersCustomerResponseBody200Discount'Coupon :: (GHC.Maybe.Maybe Coupon),
                                                    getCustomersCustomerResponseBody200Discount'Customer :: (GHC.Maybe.Maybe GetCustomersCustomerResponseBody200Discount'Customer'Variants),
                                                    getCustomersCustomerResponseBody200Discount'End :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                    getCustomersCustomerResponseBody200Discount'Object :: (GHC.Maybe.Maybe GetCustomersCustomerResponseBody200Discount'Object'),
                                                    getCustomersCustomerResponseBody200Discount'Start :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                    getCustomersCustomerResponseBody200Discount'Subscription :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetCustomersCustomerResponseBody200Discount'Customer'Variants
    = GetCustomersCustomerResponseBody200Discount'Customer'Variant1 Customer
    | GetCustomersCustomerResponseBody200Discount'Customer'Variant2 DeletedCustomer
    | GetCustomersCustomerResponseBody200Discount'Customer'Variant3 GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200Discount'Customer'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON GetCustomersCustomerResponseBody200Discount'Customer'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data GetCustomersCustomerResponseBody200Discount'Object'
    = GetCustomersCustomerResponseBody200Discount'Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetCustomersCustomerResponseBody200Discount'Object'EnumTyped GHC.Base.String
    | GetCustomersCustomerResponseBody200Discount'Object'EnumStringDiscount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200Discount'Object'
    where toJSON (GetCustomersCustomerResponseBody200Discount'Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerResponseBody200Discount'Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerResponseBody200Discount'Object'EnumStringDiscount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "discount"
instance Data.Aeson.FromJSON GetCustomersCustomerResponseBody200Discount'Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "discount")
                                          then GetCustomersCustomerResponseBody200Discount'Object'EnumStringDiscount
                                          else GetCustomersCustomerResponseBody200Discount'Object'EnumOther val)
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200Discount'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "coupon" (getCustomersCustomerResponseBody200Discount'Coupon obj) : (Data.Aeson..=) "customer" (getCustomersCustomerResponseBody200Discount'Customer obj) : (Data.Aeson..=) "end" (getCustomersCustomerResponseBody200Discount'End obj) : (Data.Aeson..=) "object" (getCustomersCustomerResponseBody200Discount'Object obj) : (Data.Aeson..=) "start" (getCustomersCustomerResponseBody200Discount'Start obj) : (Data.Aeson..=) "subscription" (getCustomersCustomerResponseBody200Discount'Subscription obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "coupon" (getCustomersCustomerResponseBody200Discount'Coupon obj) GHC.Base.<> ((Data.Aeson..=) "customer" (getCustomersCustomerResponseBody200Discount'Customer obj) GHC.Base.<> ((Data.Aeson..=) "end" (getCustomersCustomerResponseBody200Discount'End obj) GHC.Base.<> ((Data.Aeson..=) "object" (getCustomersCustomerResponseBody200Discount'Object obj) GHC.Base.<> ((Data.Aeson..=) "start" (getCustomersCustomerResponseBody200Discount'Start obj) GHC.Base.<> (Data.Aeson..=) "subscription" (getCustomersCustomerResponseBody200Discount'Subscription obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerResponseBody200Discount'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerResponseBody200Discount'" (\obj -> (((((GHC.Base.pure GetCustomersCustomerResponseBody200Discount' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "coupon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "start")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "subscription"))
data GetCustomersCustomerResponseBody200Metadata'
    = GetCustomersCustomerResponseBody200Metadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerResponseBody200Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerResponseBody200Metadata'" (\obj -> GHC.Base.pure GetCustomersCustomerResponseBody200Metadata')
data GetCustomersCustomerResponseBody200Object'
    = GetCustomersCustomerResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetCustomersCustomerResponseBody200Object'EnumTyped GHC.Base.String
    | GetCustomersCustomerResponseBody200Object'EnumStringCustomer
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200Object'
    where toJSON (GetCustomersCustomerResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerResponseBody200Object'EnumStringCustomer) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "customer"
instance Data.Aeson.FromJSON GetCustomersCustomerResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "customer")
                                          then GetCustomersCustomerResponseBody200Object'EnumStringCustomer
                                          else GetCustomersCustomerResponseBody200Object'EnumOther val)
data GetCustomersCustomerResponseBody200Shipping'
    = GetCustomersCustomerResponseBody200Shipping' {getCustomersCustomerResponseBody200Shipping'Address :: (GHC.Maybe.Maybe Address),
                                                    getCustomersCustomerResponseBody200Shipping'Carrier :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    getCustomersCustomerResponseBody200Shipping'Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    getCustomersCustomerResponseBody200Shipping'Phone :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    getCustomersCustomerResponseBody200Shipping'TrackingNumber :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200Shipping'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (getCustomersCustomerResponseBody200Shipping'Address obj) : (Data.Aeson..=) "carrier" (getCustomersCustomerResponseBody200Shipping'Carrier obj) : (Data.Aeson..=) "name" (getCustomersCustomerResponseBody200Shipping'Name obj) : (Data.Aeson..=) "phone" (getCustomersCustomerResponseBody200Shipping'Phone obj) : (Data.Aeson..=) "tracking_number" (getCustomersCustomerResponseBody200Shipping'TrackingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (getCustomersCustomerResponseBody200Shipping'Address obj) GHC.Base.<> ((Data.Aeson..=) "carrier" (getCustomersCustomerResponseBody200Shipping'Carrier obj) GHC.Base.<> ((Data.Aeson..=) "name" (getCustomersCustomerResponseBody200Shipping'Name obj) GHC.Base.<> ((Data.Aeson..=) "phone" (getCustomersCustomerResponseBody200Shipping'Phone obj) GHC.Base.<> (Data.Aeson..=) "tracking_number" (getCustomersCustomerResponseBody200Shipping'TrackingNumber obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerResponseBody200Shipping'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerResponseBody200Shipping'" (\obj -> ((((GHC.Base.pure GetCustomersCustomerResponseBody200Shipping' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "carrier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tracking_number"))
data GetCustomersCustomerResponseBody200Sources'
    = GetCustomersCustomerResponseBody200Sources' {getCustomersCustomerResponseBody200Sources'Data :: ([] GetCustomersCustomerResponseBody200Sources'Data'),
                                                   getCustomersCustomerResponseBody200Sources'HasMore :: GHC.Types.Bool,
                                                   getCustomersCustomerResponseBody200Sources'Object :: GetCustomersCustomerResponseBody200Sources'Object',
                                                   getCustomersCustomerResponseBody200Sources'Url :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetCustomersCustomerResponseBody200Sources'Data'
    = GetCustomersCustomerResponseBody200Sources'Data' {getCustomersCustomerResponseBody200Sources'Data'Account :: (GHC.Maybe.Maybe GetCustomersCustomerResponseBody200Sources'Data'Account'Variants),
                                                        getCustomersCustomerResponseBody200Sources'Data'AccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'AccountHolderType :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'AchCreditTransfer :: (GHC.Maybe.Maybe SourceTypeAchCreditTransfer),
                                                        getCustomersCustomerResponseBody200Sources'Data'AchDebit :: (GHC.Maybe.Maybe SourceTypeAchDebit),
                                                        getCustomersCustomerResponseBody200Sources'Data'Active :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                        getCustomersCustomerResponseBody200Sources'Data'AddressCity :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'AddressCountry :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'AddressLine1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'AddressLine1Check :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'AddressLine2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'AddressState :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'AddressZip :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'AddressZipCheck :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'Alipay :: (GHC.Maybe.Maybe SourceTypeAlipay),
                                                        getCustomersCustomerResponseBody200Sources'Data'Amount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                        getCustomersCustomerResponseBody200Sources'Data'AmountReceived :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                        getCustomersCustomerResponseBody200Sources'Data'AvailablePayoutMethods :: (GHC.Maybe.Maybe ([] GetCustomersCustomerResponseBody200Sources'Data'AvailablePayoutMethods')),
                                                        getCustomersCustomerResponseBody200Sources'Data'Bancontact :: (GHC.Maybe.Maybe SourceTypeBancontact),
                                                        getCustomersCustomerResponseBody200Sources'Data'BankName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'BitcoinAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                        getCustomersCustomerResponseBody200Sources'Data'BitcoinAmountReceived :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                        getCustomersCustomerResponseBody200Sources'Data'BitcoinUri :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'Brand :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'Card :: (GHC.Maybe.Maybe SourceTypeCard),
                                                        getCustomersCustomerResponseBody200Sources'Data'CardPresent :: (GHC.Maybe.Maybe SourceTypeCardPresent),
                                                        getCustomersCustomerResponseBody200Sources'Data'ClientSecret :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'CodeVerification :: (GHC.Maybe.Maybe SourceCodeVerificationFlow),
                                                        getCustomersCustomerResponseBody200Sources'Data'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'Created :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                        getCustomersCustomerResponseBody200Sources'Data'Currency :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'Customer :: (GHC.Maybe.Maybe GetCustomersCustomerResponseBody200Sources'Data'Customer'Variants),
                                                        getCustomersCustomerResponseBody200Sources'Data'CvcCheck :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'DefaultForCurrency :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                        getCustomersCustomerResponseBody200Sources'Data'Description :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'DynamicLast4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'Email :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'Eps :: (GHC.Maybe.Maybe SourceTypeEps),
                                                        getCustomersCustomerResponseBody200Sources'Data'ExpMonth :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                        getCustomersCustomerResponseBody200Sources'Data'ExpYear :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                        getCustomersCustomerResponseBody200Sources'Data'Filled :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                        getCustomersCustomerResponseBody200Sources'Data'Fingerprint :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'Flow :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'Funding :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'Giropay :: (GHC.Maybe.Maybe SourceTypeGiropay),
                                                        getCustomersCustomerResponseBody200Sources'Data'Id :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'Ideal :: (GHC.Maybe.Maybe SourceTypeIdeal),
                                                        getCustomersCustomerResponseBody200Sources'Data'InboundAddress :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'Klarna :: (GHC.Maybe.Maybe SourceTypeKlarna),
                                                        getCustomersCustomerResponseBody200Sources'Data'Last4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'Livemode :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                        getCustomersCustomerResponseBody200Sources'Data'Metadata :: (GHC.Maybe.Maybe GetCustomersCustomerResponseBody200Sources'Data'Metadata'),
                                                        getCustomersCustomerResponseBody200Sources'Data'Multibanco :: (GHC.Maybe.Maybe SourceTypeMultibanco),
                                                        getCustomersCustomerResponseBody200Sources'Data'Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'Object :: (GHC.Maybe.Maybe GetCustomersCustomerResponseBody200Sources'Data'Object'),
                                                        getCustomersCustomerResponseBody200Sources'Data'Owner :: (GHC.Maybe.Maybe GetCustomersCustomerResponseBody200Sources'Data'Owner'),
                                                        getCustomersCustomerResponseBody200Sources'Data'P24 :: (GHC.Maybe.Maybe SourceTypeP24),
                                                        getCustomersCustomerResponseBody200Sources'Data'Payment :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'PaymentAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                        getCustomersCustomerResponseBody200Sources'Data'PaymentCurrency :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'Receiver :: (GHC.Maybe.Maybe SourceReceiverFlow),
                                                        getCustomersCustomerResponseBody200Sources'Data'Recipient :: (GHC.Maybe.Maybe GetCustomersCustomerResponseBody200Sources'Data'Recipient'Variants),
                                                        getCustomersCustomerResponseBody200Sources'Data'Redirect :: (GHC.Maybe.Maybe SourceRedirectFlow),
                                                        getCustomersCustomerResponseBody200Sources'Data'RefundAddress :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'Reusable :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                        getCustomersCustomerResponseBody200Sources'Data'RoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'SepaDebit :: (GHC.Maybe.Maybe SourceTypeSepaDebit),
                                                        getCustomersCustomerResponseBody200Sources'Data'Sofort :: (GHC.Maybe.Maybe SourceTypeSofort),
                                                        getCustomersCustomerResponseBody200Sources'Data'SourceOrder :: (GHC.Maybe.Maybe SourceOrder),
                                                        getCustomersCustomerResponseBody200Sources'Data'StatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'Status :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'ThreeDSecure :: (GHC.Maybe.Maybe SourceTypeThreeDSecure),
                                                        getCustomersCustomerResponseBody200Sources'Data'TokenizationMethod :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'Transactions :: (GHC.Maybe.Maybe GetCustomersCustomerResponseBody200Sources'Data'Transactions'),
                                                        getCustomersCustomerResponseBody200Sources'Data'Type :: (GHC.Maybe.Maybe GetCustomersCustomerResponseBody200Sources'Data'Type'),
                                                        getCustomersCustomerResponseBody200Sources'Data'UncapturedFunds :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                        getCustomersCustomerResponseBody200Sources'Data'Usage :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'Used :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                        getCustomersCustomerResponseBody200Sources'Data'UsedForPayment :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                        getCustomersCustomerResponseBody200Sources'Data'Username :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        getCustomersCustomerResponseBody200Sources'Data'Wechat :: (GHC.Maybe.Maybe SourceTypeWechat)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetCustomersCustomerResponseBody200Sources'Data'Account'Variants
    = GetCustomersCustomerResponseBody200Sources'Data'Account'Variant1 Account
    | GetCustomersCustomerResponseBody200Sources'Data'Account'Variant2 GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200Sources'Data'Account'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON GetCustomersCustomerResponseBody200Sources'Data'Account'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data GetCustomersCustomerResponseBody200Sources'Data'AvailablePayoutMethods'
    = GetCustomersCustomerResponseBody200Sources'Data'AvailablePayoutMethods'EnumOther Data.Aeson.Types.Internal.Value
    | GetCustomersCustomerResponseBody200Sources'Data'AvailablePayoutMethods'EnumTyped GHC.Base.String
    | GetCustomersCustomerResponseBody200Sources'Data'AvailablePayoutMethods'EnumStringInstant
    | GetCustomersCustomerResponseBody200Sources'Data'AvailablePayoutMethods'EnumStringStandard
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200Sources'Data'AvailablePayoutMethods'
    where toJSON (GetCustomersCustomerResponseBody200Sources'Data'AvailablePayoutMethods'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerResponseBody200Sources'Data'AvailablePayoutMethods'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerResponseBody200Sources'Data'AvailablePayoutMethods'EnumStringInstant) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "instant"
          toJSON (GetCustomersCustomerResponseBody200Sources'Data'AvailablePayoutMethods'EnumStringStandard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard"
instance Data.Aeson.FromJSON GetCustomersCustomerResponseBody200Sources'Data'AvailablePayoutMethods'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "instant")
                                          then GetCustomersCustomerResponseBody200Sources'Data'AvailablePayoutMethods'EnumStringInstant
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard")
                                                then GetCustomersCustomerResponseBody200Sources'Data'AvailablePayoutMethods'EnumStringStandard
                                                else GetCustomersCustomerResponseBody200Sources'Data'AvailablePayoutMethods'EnumOther val)
data GetCustomersCustomerResponseBody200Sources'Data'Customer'Variants
    = GetCustomersCustomerResponseBody200Sources'Data'Customer'Variant1 Customer
    | GetCustomersCustomerResponseBody200Sources'Data'Customer'Variant2 DeletedCustomer
    | GetCustomersCustomerResponseBody200Sources'Data'Customer'Variant3 GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200Sources'Data'Customer'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON GetCustomersCustomerResponseBody200Sources'Data'Customer'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data GetCustomersCustomerResponseBody200Sources'Data'Metadata'
    = GetCustomersCustomerResponseBody200Sources'Data'Metadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200Sources'Data'Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerResponseBody200Sources'Data'Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerResponseBody200Sources'Data'Metadata'" (\obj -> GHC.Base.pure GetCustomersCustomerResponseBody200Sources'Data'Metadata')
data GetCustomersCustomerResponseBody200Sources'Data'Object'
    = GetCustomersCustomerResponseBody200Sources'Data'Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetCustomersCustomerResponseBody200Sources'Data'Object'EnumTyped GHC.Base.String
    | GetCustomersCustomerResponseBody200Sources'Data'Object'EnumStringAlipayAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200Sources'Data'Object'
    where toJSON (GetCustomersCustomerResponseBody200Sources'Data'Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerResponseBody200Sources'Data'Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerResponseBody200Sources'Data'Object'EnumStringAlipayAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alipay_account"
instance Data.Aeson.FromJSON GetCustomersCustomerResponseBody200Sources'Data'Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alipay_account")
                                          then GetCustomersCustomerResponseBody200Sources'Data'Object'EnumStringAlipayAccount
                                          else GetCustomersCustomerResponseBody200Sources'Data'Object'EnumOther val)
data GetCustomersCustomerResponseBody200Sources'Data'Owner'
    = GetCustomersCustomerResponseBody200Sources'Data'Owner' {getCustomersCustomerResponseBody200Sources'Data'Owner'Address :: (GHC.Maybe.Maybe GetCustomersCustomerResponseBody200Sources'Data'Owner'Address'),
                                                              getCustomersCustomerResponseBody200Sources'Data'Owner'Email :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              getCustomersCustomerResponseBody200Sources'Data'Owner'Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              getCustomersCustomerResponseBody200Sources'Data'Owner'Phone :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedAddress :: (GHC.Maybe.Maybe GetCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedAddress'),
                                                              getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedPhone :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetCustomersCustomerResponseBody200Sources'Data'Owner'Address'
    = GetCustomersCustomerResponseBody200Sources'Data'Owner'Address' {getCustomersCustomerResponseBody200Sources'Data'Owner'Address'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                      getCustomersCustomerResponseBody200Sources'Data'Owner'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                      getCustomersCustomerResponseBody200Sources'Data'Owner'Address'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                      getCustomersCustomerResponseBody200Sources'Data'Owner'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                      getCustomersCustomerResponseBody200Sources'Data'Owner'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                      getCustomersCustomerResponseBody200Sources'Data'Owner'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200Sources'Data'Owner'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (getCustomersCustomerResponseBody200Sources'Data'Owner'Address'City obj) : (Data.Aeson..=) "country" (getCustomersCustomerResponseBody200Sources'Data'Owner'Address'Country obj) : (Data.Aeson..=) "line1" (getCustomersCustomerResponseBody200Sources'Data'Owner'Address'Line1 obj) : (Data.Aeson..=) "line2" (getCustomersCustomerResponseBody200Sources'Data'Owner'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (getCustomersCustomerResponseBody200Sources'Data'Owner'Address'PostalCode obj) : (Data.Aeson..=) "state" (getCustomersCustomerResponseBody200Sources'Data'Owner'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (getCustomersCustomerResponseBody200Sources'Data'Owner'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (getCustomersCustomerResponseBody200Sources'Data'Owner'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (getCustomersCustomerResponseBody200Sources'Data'Owner'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (getCustomersCustomerResponseBody200Sources'Data'Owner'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (getCustomersCustomerResponseBody200Sources'Data'Owner'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (getCustomersCustomerResponseBody200Sources'Data'Owner'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerResponseBody200Sources'Data'Owner'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerResponseBody200Sources'Data'Owner'Address'" (\obj -> (((((GHC.Base.pure GetCustomersCustomerResponseBody200Sources'Data'Owner'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
data GetCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedAddress'
    = GetCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedAddress' {getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedAddress'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                              getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedAddress'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                              getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedAddress'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                              getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedAddress'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                              getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedAddress'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                              getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedAddress'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedAddress'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedAddress'City obj) : (Data.Aeson..=) "country" (getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedAddress'Country obj) : (Data.Aeson..=) "line1" (getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedAddress'Line1 obj) : (Data.Aeson..=) "line2" (getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedAddress'Line2 obj) : (Data.Aeson..=) "postal_code" (getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedAddress'PostalCode obj) : (Data.Aeson..=) "state" (getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedAddress'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedAddress'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedAddress'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedAddress'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedAddress'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedAddress'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedAddress'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedAddress'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedAddress'" (\obj -> (((((GHC.Base.pure GetCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200Sources'Data'Owner'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (getCustomersCustomerResponseBody200Sources'Data'Owner'Address obj) : (Data.Aeson..=) "email" (getCustomersCustomerResponseBody200Sources'Data'Owner'Email obj) : (Data.Aeson..=) "name" (getCustomersCustomerResponseBody200Sources'Data'Owner'Name obj) : (Data.Aeson..=) "phone" (getCustomersCustomerResponseBody200Sources'Data'Owner'Phone obj) : (Data.Aeson..=) "verified_address" (getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedAddress obj) : (Data.Aeson..=) "verified_email" (getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedEmail obj) : (Data.Aeson..=) "verified_name" (getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedName obj) : (Data.Aeson..=) "verified_phone" (getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedPhone obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (getCustomersCustomerResponseBody200Sources'Data'Owner'Address obj) GHC.Base.<> ((Data.Aeson..=) "email" (getCustomersCustomerResponseBody200Sources'Data'Owner'Email obj) GHC.Base.<> ((Data.Aeson..=) "name" (getCustomersCustomerResponseBody200Sources'Data'Owner'Name obj) GHC.Base.<> ((Data.Aeson..=) "phone" (getCustomersCustomerResponseBody200Sources'Data'Owner'Phone obj) GHC.Base.<> ((Data.Aeson..=) "verified_address" (getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedAddress obj) GHC.Base.<> ((Data.Aeson..=) "verified_email" (getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedEmail obj) GHC.Base.<> ((Data.Aeson..=) "verified_name" (getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedName obj) GHC.Base.<> (Data.Aeson..=) "verified_phone" (getCustomersCustomerResponseBody200Sources'Data'Owner'VerifiedPhone obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerResponseBody200Sources'Data'Owner'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerResponseBody200Sources'Data'Owner'" (\obj -> (((((((GHC.Base.pure GetCustomersCustomerResponseBody200Sources'Data'Owner' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_phone"))
data GetCustomersCustomerResponseBody200Sources'Data'Recipient'Variants
    = GetCustomersCustomerResponseBody200Sources'Data'Recipient'Variant1 Recipient
    | GetCustomersCustomerResponseBody200Sources'Data'Recipient'Variant2 GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200Sources'Data'Recipient'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON GetCustomersCustomerResponseBody200Sources'Data'Recipient'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data GetCustomersCustomerResponseBody200Sources'Data'Transactions'
    = GetCustomersCustomerResponseBody200Sources'Data'Transactions' {getCustomersCustomerResponseBody200Sources'Data'Transactions'Data :: ([] BitcoinTransaction),
                                                                     getCustomersCustomerResponseBody200Sources'Data'Transactions'HasMore :: GHC.Types.Bool,
                                                                     getCustomersCustomerResponseBody200Sources'Data'Transactions'Object :: GetCustomersCustomerResponseBody200Sources'Data'Transactions'Object',
                                                                     getCustomersCustomerResponseBody200Sources'Data'Transactions'Url :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetCustomersCustomerResponseBody200Sources'Data'Transactions'Object'
    = GetCustomersCustomerResponseBody200Sources'Data'Transactions'Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetCustomersCustomerResponseBody200Sources'Data'Transactions'Object'EnumTyped GHC.Base.String
    | GetCustomersCustomerResponseBody200Sources'Data'Transactions'Object'EnumStringList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200Sources'Data'Transactions'Object'
    where toJSON (GetCustomersCustomerResponseBody200Sources'Data'Transactions'Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerResponseBody200Sources'Data'Transactions'Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerResponseBody200Sources'Data'Transactions'Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"
instance Data.Aeson.FromJSON GetCustomersCustomerResponseBody200Sources'Data'Transactions'Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
                                          then GetCustomersCustomerResponseBody200Sources'Data'Transactions'Object'EnumStringList
                                          else GetCustomersCustomerResponseBody200Sources'Data'Transactions'Object'EnumOther val)
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200Sources'Data'Transactions'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getCustomersCustomerResponseBody200Sources'Data'Transactions'Data obj) : (Data.Aeson..=) "has_more" (getCustomersCustomerResponseBody200Sources'Data'Transactions'HasMore obj) : (Data.Aeson..=) "object" (getCustomersCustomerResponseBody200Sources'Data'Transactions'Object obj) : (Data.Aeson..=) "url" (getCustomersCustomerResponseBody200Sources'Data'Transactions'Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getCustomersCustomerResponseBody200Sources'Data'Transactions'Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (getCustomersCustomerResponseBody200Sources'Data'Transactions'HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (getCustomersCustomerResponseBody200Sources'Data'Transactions'Object obj) GHC.Base.<> (Data.Aeson..=) "url" (getCustomersCustomerResponseBody200Sources'Data'Transactions'Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerResponseBody200Sources'Data'Transactions'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerResponseBody200Sources'Data'Transactions'" (\obj -> (((GHC.Base.pure GetCustomersCustomerResponseBody200Sources'Data'Transactions' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
data GetCustomersCustomerResponseBody200Sources'Data'Type'
    = GetCustomersCustomerResponseBody200Sources'Data'Type'EnumOther Data.Aeson.Types.Internal.Value
    | GetCustomersCustomerResponseBody200Sources'Data'Type'EnumTyped GHC.Base.String
    | GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringAchCreditTransfer
    | GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringAchDebit
    | GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringAlipay
    | GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringBancontact
    | GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringCard
    | GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringCardPresent
    | GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringEps
    | GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringGiropay
    | GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringIdeal
    | GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringKlarna
    | GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringMultibanco
    | GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringP24
    | GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringSepaDebit
    | GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringSofort
    | GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringThreeDSecure
    | GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringWechat
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200Sources'Data'Type'
    where toJSON (GetCustomersCustomerResponseBody200Sources'Data'Type'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerResponseBody200Sources'Data'Type'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringAchCreditTransfer) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ach_credit_transfer"
          toJSON (GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringAchDebit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ach_debit"
          toJSON (GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringAlipay) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alipay"
          toJSON (GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringBancontact) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bancontact"
          toJSON (GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringCard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card"
          toJSON (GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringCardPresent) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_present"
          toJSON (GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringEps) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "eps"
          toJSON (GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringGiropay) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "giropay"
          toJSON (GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringIdeal) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ideal"
          toJSON (GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringKlarna) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "klarna"
          toJSON (GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringMultibanco) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "multibanco"
          toJSON (GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringP24) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "p24"
          toJSON (GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringSepaDebit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sepa_debit"
          toJSON (GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringSofort) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sofort"
          toJSON (GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringThreeDSecure) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "three_d_secure"
          toJSON (GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringWechat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "wechat"
instance Data.Aeson.FromJSON GetCustomersCustomerResponseBody200Sources'Data'Type'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ach_credit_transfer")
                                          then GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringAchCreditTransfer
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ach_debit")
                                                then GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringAchDebit
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alipay")
                                                      then GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringAlipay
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bancontact")
                                                            then GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringBancontact
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card")
                                                                  then GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringCard
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_present")
                                                                        then GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringCardPresent
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "eps")
                                                                              then GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringEps
                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "giropay")
                                                                                    then GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringGiropay
                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ideal")
                                                                                          then GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringIdeal
                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "klarna")
                                                                                                then GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringKlarna
                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "multibanco")
                                                                                                      then GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringMultibanco
                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "p24")
                                                                                                            then GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringP24
                                                                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sepa_debit")
                                                                                                                  then GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringSepaDebit
                                                                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sofort")
                                                                                                                        then GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringSofort
                                                                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "three_d_secure")
                                                                                                                              then GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringThreeDSecure
                                                                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "wechat")
                                                                                                                                    then GetCustomersCustomerResponseBody200Sources'Data'Type'EnumStringWechat
                                                                                                                                    else GetCustomersCustomerResponseBody200Sources'Data'Type'EnumOther val)
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200Sources'Data'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account" (getCustomersCustomerResponseBody200Sources'Data'Account obj) : (Data.Aeson..=) "account_holder_name" (getCustomersCustomerResponseBody200Sources'Data'AccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (getCustomersCustomerResponseBody200Sources'Data'AccountHolderType obj) : (Data.Aeson..=) "ach_credit_transfer" (getCustomersCustomerResponseBody200Sources'Data'AchCreditTransfer obj) : (Data.Aeson..=) "ach_debit" (getCustomersCustomerResponseBody200Sources'Data'AchDebit obj) : (Data.Aeson..=) "active" (getCustomersCustomerResponseBody200Sources'Data'Active obj) : (Data.Aeson..=) "address_city" (getCustomersCustomerResponseBody200Sources'Data'AddressCity obj) : (Data.Aeson..=) "address_country" (getCustomersCustomerResponseBody200Sources'Data'AddressCountry obj) : (Data.Aeson..=) "address_line1" (getCustomersCustomerResponseBody200Sources'Data'AddressLine1 obj) : (Data.Aeson..=) "address_line1_check" (getCustomersCustomerResponseBody200Sources'Data'AddressLine1Check obj) : (Data.Aeson..=) "address_line2" (getCustomersCustomerResponseBody200Sources'Data'AddressLine2 obj) : (Data.Aeson..=) "address_state" (getCustomersCustomerResponseBody200Sources'Data'AddressState obj) : (Data.Aeson..=) "address_zip" (getCustomersCustomerResponseBody200Sources'Data'AddressZip obj) : (Data.Aeson..=) "address_zip_check" (getCustomersCustomerResponseBody200Sources'Data'AddressZipCheck obj) : (Data.Aeson..=) "alipay" (getCustomersCustomerResponseBody200Sources'Data'Alipay obj) : (Data.Aeson..=) "amount" (getCustomersCustomerResponseBody200Sources'Data'Amount obj) : (Data.Aeson..=) "amount_received" (getCustomersCustomerResponseBody200Sources'Data'AmountReceived obj) : (Data.Aeson..=) "available_payout_methods" (getCustomersCustomerResponseBody200Sources'Data'AvailablePayoutMethods obj) : (Data.Aeson..=) "bancontact" (getCustomersCustomerResponseBody200Sources'Data'Bancontact obj) : (Data.Aeson..=) "bank_name" (getCustomersCustomerResponseBody200Sources'Data'BankName obj) : (Data.Aeson..=) "bitcoin_amount" (getCustomersCustomerResponseBody200Sources'Data'BitcoinAmount obj) : (Data.Aeson..=) "bitcoin_amount_received" (getCustomersCustomerResponseBody200Sources'Data'BitcoinAmountReceived obj) : (Data.Aeson..=) "bitcoin_uri" (getCustomersCustomerResponseBody200Sources'Data'BitcoinUri obj) : (Data.Aeson..=) "brand" (getCustomersCustomerResponseBody200Sources'Data'Brand obj) : (Data.Aeson..=) "card" (getCustomersCustomerResponseBody200Sources'Data'Card obj) : (Data.Aeson..=) "card_present" (getCustomersCustomerResponseBody200Sources'Data'CardPresent obj) : (Data.Aeson..=) "client_secret" (getCustomersCustomerResponseBody200Sources'Data'ClientSecret obj) : (Data.Aeson..=) "code_verification" (getCustomersCustomerResponseBody200Sources'Data'CodeVerification obj) : (Data.Aeson..=) "country" (getCustomersCustomerResponseBody200Sources'Data'Country obj) : (Data.Aeson..=) "created" (getCustomersCustomerResponseBody200Sources'Data'Created obj) : (Data.Aeson..=) "currency" (getCustomersCustomerResponseBody200Sources'Data'Currency obj) : (Data.Aeson..=) "customer" (getCustomersCustomerResponseBody200Sources'Data'Customer obj) : (Data.Aeson..=) "cvc_check" (getCustomersCustomerResponseBody200Sources'Data'CvcCheck obj) : (Data.Aeson..=) "default_for_currency" (getCustomersCustomerResponseBody200Sources'Data'DefaultForCurrency obj) : (Data.Aeson..=) "description" (getCustomersCustomerResponseBody200Sources'Data'Description obj) : (Data.Aeson..=) "dynamic_last4" (getCustomersCustomerResponseBody200Sources'Data'DynamicLast4 obj) : (Data.Aeson..=) "email" (getCustomersCustomerResponseBody200Sources'Data'Email obj) : (Data.Aeson..=) "eps" (getCustomersCustomerResponseBody200Sources'Data'Eps obj) : (Data.Aeson..=) "exp_month" (getCustomersCustomerResponseBody200Sources'Data'ExpMonth obj) : (Data.Aeson..=) "exp_year" (getCustomersCustomerResponseBody200Sources'Data'ExpYear obj) : (Data.Aeson..=) "filled" (getCustomersCustomerResponseBody200Sources'Data'Filled obj) : (Data.Aeson..=) "fingerprint" (getCustomersCustomerResponseBody200Sources'Data'Fingerprint obj) : (Data.Aeson..=) "flow" (getCustomersCustomerResponseBody200Sources'Data'Flow obj) : (Data.Aeson..=) "funding" (getCustomersCustomerResponseBody200Sources'Data'Funding obj) : (Data.Aeson..=) "giropay" (getCustomersCustomerResponseBody200Sources'Data'Giropay obj) : (Data.Aeson..=) "id" (getCustomersCustomerResponseBody200Sources'Data'Id obj) : (Data.Aeson..=) "ideal" (getCustomersCustomerResponseBody200Sources'Data'Ideal obj) : (Data.Aeson..=) "inbound_address" (getCustomersCustomerResponseBody200Sources'Data'InboundAddress obj) : (Data.Aeson..=) "klarna" (getCustomersCustomerResponseBody200Sources'Data'Klarna obj) : (Data.Aeson..=) "last4" (getCustomersCustomerResponseBody200Sources'Data'Last4 obj) : (Data.Aeson..=) "livemode" (getCustomersCustomerResponseBody200Sources'Data'Livemode obj) : (Data.Aeson..=) "metadata" (getCustomersCustomerResponseBody200Sources'Data'Metadata obj) : (Data.Aeson..=) "multibanco" (getCustomersCustomerResponseBody200Sources'Data'Multibanco obj) : (Data.Aeson..=) "name" (getCustomersCustomerResponseBody200Sources'Data'Name obj) : (Data.Aeson..=) "object" (getCustomersCustomerResponseBody200Sources'Data'Object obj) : (Data.Aeson..=) "owner" (getCustomersCustomerResponseBody200Sources'Data'Owner obj) : (Data.Aeson..=) "p24" (getCustomersCustomerResponseBody200Sources'Data'P24 obj) : (Data.Aeson..=) "payment" (getCustomersCustomerResponseBody200Sources'Data'Payment obj) : (Data.Aeson..=) "payment_amount" (getCustomersCustomerResponseBody200Sources'Data'PaymentAmount obj) : (Data.Aeson..=) "payment_currency" (getCustomersCustomerResponseBody200Sources'Data'PaymentCurrency obj) : (Data.Aeson..=) "receiver" (getCustomersCustomerResponseBody200Sources'Data'Receiver obj) : (Data.Aeson..=) "recipient" (getCustomersCustomerResponseBody200Sources'Data'Recipient obj) : (Data.Aeson..=) "redirect" (getCustomersCustomerResponseBody200Sources'Data'Redirect obj) : (Data.Aeson..=) "refund_address" (getCustomersCustomerResponseBody200Sources'Data'RefundAddress obj) : (Data.Aeson..=) "reusable" (getCustomersCustomerResponseBody200Sources'Data'Reusable obj) : (Data.Aeson..=) "routing_number" (getCustomersCustomerResponseBody200Sources'Data'RoutingNumber obj) : (Data.Aeson..=) "sepa_debit" (getCustomersCustomerResponseBody200Sources'Data'SepaDebit obj) : (Data.Aeson..=) "sofort" (getCustomersCustomerResponseBody200Sources'Data'Sofort obj) : (Data.Aeson..=) "source_order" (getCustomersCustomerResponseBody200Sources'Data'SourceOrder obj) : (Data.Aeson..=) "statement_descriptor" (getCustomersCustomerResponseBody200Sources'Data'StatementDescriptor obj) : (Data.Aeson..=) "status" (getCustomersCustomerResponseBody200Sources'Data'Status obj) : (Data.Aeson..=) "three_d_secure" (getCustomersCustomerResponseBody200Sources'Data'ThreeDSecure obj) : (Data.Aeson..=) "tokenization_method" (getCustomersCustomerResponseBody200Sources'Data'TokenizationMethod obj) : (Data.Aeson..=) "transactions" (getCustomersCustomerResponseBody200Sources'Data'Transactions obj) : (Data.Aeson..=) "type" (getCustomersCustomerResponseBody200Sources'Data'Type obj) : (Data.Aeson..=) "uncaptured_funds" (getCustomersCustomerResponseBody200Sources'Data'UncapturedFunds obj) : (Data.Aeson..=) "usage" (getCustomersCustomerResponseBody200Sources'Data'Usage obj) : (Data.Aeson..=) "used" (getCustomersCustomerResponseBody200Sources'Data'Used obj) : (Data.Aeson..=) "used_for_payment" (getCustomersCustomerResponseBody200Sources'Data'UsedForPayment obj) : (Data.Aeson..=) "username" (getCustomersCustomerResponseBody200Sources'Data'Username obj) : (Data.Aeson..=) "wechat" (getCustomersCustomerResponseBody200Sources'Data'Wechat obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account" (getCustomersCustomerResponseBody200Sources'Data'Account obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_name" (getCustomersCustomerResponseBody200Sources'Data'AccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (getCustomersCustomerResponseBody200Sources'Data'AccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "ach_credit_transfer" (getCustomersCustomerResponseBody200Sources'Data'AchCreditTransfer obj) GHC.Base.<> ((Data.Aeson..=) "ach_debit" (getCustomersCustomerResponseBody200Sources'Data'AchDebit obj) GHC.Base.<> ((Data.Aeson..=) "active" (getCustomersCustomerResponseBody200Sources'Data'Active obj) GHC.Base.<> ((Data.Aeson..=) "address_city" (getCustomersCustomerResponseBody200Sources'Data'AddressCity obj) GHC.Base.<> ((Data.Aeson..=) "address_country" (getCustomersCustomerResponseBody200Sources'Data'AddressCountry obj) GHC.Base.<> ((Data.Aeson..=) "address_line1" (getCustomersCustomerResponseBody200Sources'Data'AddressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "address_line1_check" (getCustomersCustomerResponseBody200Sources'Data'AddressLine1Check obj) GHC.Base.<> ((Data.Aeson..=) "address_line2" (getCustomersCustomerResponseBody200Sources'Data'AddressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "address_state" (getCustomersCustomerResponseBody200Sources'Data'AddressState obj) GHC.Base.<> ((Data.Aeson..=) "address_zip" (getCustomersCustomerResponseBody200Sources'Data'AddressZip obj) GHC.Base.<> ((Data.Aeson..=) "address_zip_check" (getCustomersCustomerResponseBody200Sources'Data'AddressZipCheck obj) GHC.Base.<> ((Data.Aeson..=) "alipay" (getCustomersCustomerResponseBody200Sources'Data'Alipay obj) GHC.Base.<> ((Data.Aeson..=) "amount" (getCustomersCustomerResponseBody200Sources'Data'Amount obj) GHC.Base.<> ((Data.Aeson..=) "amount_received" (getCustomersCustomerResponseBody200Sources'Data'AmountReceived obj) GHC.Base.<> ((Data.Aeson..=) "available_payout_methods" (getCustomersCustomerResponseBody200Sources'Data'AvailablePayoutMethods obj) GHC.Base.<> ((Data.Aeson..=) "bancontact" (getCustomersCustomerResponseBody200Sources'Data'Bancontact obj) GHC.Base.<> ((Data.Aeson..=) "bank_name" (getCustomersCustomerResponseBody200Sources'Data'BankName obj) GHC.Base.<> ((Data.Aeson..=) "bitcoin_amount" (getCustomersCustomerResponseBody200Sources'Data'BitcoinAmount obj) GHC.Base.<> ((Data.Aeson..=) "bitcoin_amount_received" (getCustomersCustomerResponseBody200Sources'Data'BitcoinAmountReceived obj) GHC.Base.<> ((Data.Aeson..=) "bitcoin_uri" (getCustomersCustomerResponseBody200Sources'Data'BitcoinUri obj) GHC.Base.<> ((Data.Aeson..=) "brand" (getCustomersCustomerResponseBody200Sources'Data'Brand obj) GHC.Base.<> ((Data.Aeson..=) "card" (getCustomersCustomerResponseBody200Sources'Data'Card obj) GHC.Base.<> ((Data.Aeson..=) "card_present" (getCustomersCustomerResponseBody200Sources'Data'CardPresent obj) GHC.Base.<> ((Data.Aeson..=) "client_secret" (getCustomersCustomerResponseBody200Sources'Data'ClientSecret obj) GHC.Base.<> ((Data.Aeson..=) "code_verification" (getCustomersCustomerResponseBody200Sources'Data'CodeVerification obj) GHC.Base.<> ((Data.Aeson..=) "country" (getCustomersCustomerResponseBody200Sources'Data'Country obj) GHC.Base.<> ((Data.Aeson..=) "created" (getCustomersCustomerResponseBody200Sources'Data'Created obj) GHC.Base.<> ((Data.Aeson..=) "currency" (getCustomersCustomerResponseBody200Sources'Data'Currency obj) GHC.Base.<> ((Data.Aeson..=) "customer" (getCustomersCustomerResponseBody200Sources'Data'Customer obj) GHC.Base.<> ((Data.Aeson..=) "cvc_check" (getCustomersCustomerResponseBody200Sources'Data'CvcCheck obj) GHC.Base.<> ((Data.Aeson..=) "default_for_currency" (getCustomersCustomerResponseBody200Sources'Data'DefaultForCurrency obj) GHC.Base.<> ((Data.Aeson..=) "description" (getCustomersCustomerResponseBody200Sources'Data'Description obj) GHC.Base.<> ((Data.Aeson..=) "dynamic_last4" (getCustomersCustomerResponseBody200Sources'Data'DynamicLast4 obj) GHC.Base.<> ((Data.Aeson..=) "email" (getCustomersCustomerResponseBody200Sources'Data'Email obj) GHC.Base.<> ((Data.Aeson..=) "eps" (getCustomersCustomerResponseBody200Sources'Data'Eps obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (getCustomersCustomerResponseBody200Sources'Data'ExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (getCustomersCustomerResponseBody200Sources'Data'ExpYear obj) GHC.Base.<> ((Data.Aeson..=) "filled" (getCustomersCustomerResponseBody200Sources'Data'Filled obj) GHC.Base.<> ((Data.Aeson..=) "fingerprint" (getCustomersCustomerResponseBody200Sources'Data'Fingerprint obj) GHC.Base.<> ((Data.Aeson..=) "flow" (getCustomersCustomerResponseBody200Sources'Data'Flow obj) GHC.Base.<> ((Data.Aeson..=) "funding" (getCustomersCustomerResponseBody200Sources'Data'Funding obj) GHC.Base.<> ((Data.Aeson..=) "giropay" (getCustomersCustomerResponseBody200Sources'Data'Giropay obj) GHC.Base.<> ((Data.Aeson..=) "id" (getCustomersCustomerResponseBody200Sources'Data'Id obj) GHC.Base.<> ((Data.Aeson..=) "ideal" (getCustomersCustomerResponseBody200Sources'Data'Ideal obj) GHC.Base.<> ((Data.Aeson..=) "inbound_address" (getCustomersCustomerResponseBody200Sources'Data'InboundAddress obj) GHC.Base.<> ((Data.Aeson..=) "klarna" (getCustomersCustomerResponseBody200Sources'Data'Klarna obj) GHC.Base.<> ((Data.Aeson..=) "last4" (getCustomersCustomerResponseBody200Sources'Data'Last4 obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (getCustomersCustomerResponseBody200Sources'Data'Livemode obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (getCustomersCustomerResponseBody200Sources'Data'Metadata obj) GHC.Base.<> ((Data.Aeson..=) "multibanco" (getCustomersCustomerResponseBody200Sources'Data'Multibanco obj) GHC.Base.<> ((Data.Aeson..=) "name" (getCustomersCustomerResponseBody200Sources'Data'Name obj) GHC.Base.<> ((Data.Aeson..=) "object" (getCustomersCustomerResponseBody200Sources'Data'Object obj) GHC.Base.<> ((Data.Aeson..=) "owner" (getCustomersCustomerResponseBody200Sources'Data'Owner obj) GHC.Base.<> ((Data.Aeson..=) "p24" (getCustomersCustomerResponseBody200Sources'Data'P24 obj) GHC.Base.<> ((Data.Aeson..=) "payment" (getCustomersCustomerResponseBody200Sources'Data'Payment obj) GHC.Base.<> ((Data.Aeson..=) "payment_amount" (getCustomersCustomerResponseBody200Sources'Data'PaymentAmount obj) GHC.Base.<> ((Data.Aeson..=) "payment_currency" (getCustomersCustomerResponseBody200Sources'Data'PaymentCurrency obj) GHC.Base.<> ((Data.Aeson..=) "receiver" (getCustomersCustomerResponseBody200Sources'Data'Receiver obj) GHC.Base.<> ((Data.Aeson..=) "recipient" (getCustomersCustomerResponseBody200Sources'Data'Recipient obj) GHC.Base.<> ((Data.Aeson..=) "redirect" (getCustomersCustomerResponseBody200Sources'Data'Redirect obj) GHC.Base.<> ((Data.Aeson..=) "refund_address" (getCustomersCustomerResponseBody200Sources'Data'RefundAddress obj) GHC.Base.<> ((Data.Aeson..=) "reusable" (getCustomersCustomerResponseBody200Sources'Data'Reusable obj) GHC.Base.<> ((Data.Aeson..=) "routing_number" (getCustomersCustomerResponseBody200Sources'Data'RoutingNumber obj) GHC.Base.<> ((Data.Aeson..=) "sepa_debit" (getCustomersCustomerResponseBody200Sources'Data'SepaDebit obj) GHC.Base.<> ((Data.Aeson..=) "sofort" (getCustomersCustomerResponseBody200Sources'Data'Sofort obj) GHC.Base.<> ((Data.Aeson..=) "source_order" (getCustomersCustomerResponseBody200Sources'Data'SourceOrder obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor" (getCustomersCustomerResponseBody200Sources'Data'StatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "status" (getCustomersCustomerResponseBody200Sources'Data'Status obj) GHC.Base.<> ((Data.Aeson..=) "three_d_secure" (getCustomersCustomerResponseBody200Sources'Data'ThreeDSecure obj) GHC.Base.<> ((Data.Aeson..=) "tokenization_method" (getCustomersCustomerResponseBody200Sources'Data'TokenizationMethod obj) GHC.Base.<> ((Data.Aeson..=) "transactions" (getCustomersCustomerResponseBody200Sources'Data'Transactions obj) GHC.Base.<> ((Data.Aeson..=) "type" (getCustomersCustomerResponseBody200Sources'Data'Type obj) GHC.Base.<> ((Data.Aeson..=) "uncaptured_funds" (getCustomersCustomerResponseBody200Sources'Data'UncapturedFunds obj) GHC.Base.<> ((Data.Aeson..=) "usage" (getCustomersCustomerResponseBody200Sources'Data'Usage obj) GHC.Base.<> ((Data.Aeson..=) "used" (getCustomersCustomerResponseBody200Sources'Data'Used obj) GHC.Base.<> ((Data.Aeson..=) "used_for_payment" (getCustomersCustomerResponseBody200Sources'Data'UsedForPayment obj) GHC.Base.<> ((Data.Aeson..=) "username" (getCustomersCustomerResponseBody200Sources'Data'Username obj) GHC.Base.<> (Data.Aeson..=) "wechat" (getCustomersCustomerResponseBody200Sources'Data'Wechat obj)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerResponseBody200Sources'Data'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerResponseBody200Sources'Data'" (\obj -> ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((GHC.Base.pure GetCustomersCustomerResponseBody200Sources'Data' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ach_credit_transfer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ach_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "alipay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_received")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "available_payout_methods")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bancontact")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bitcoin_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bitcoin_amount_received")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bitcoin_uri")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "brand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card_present")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "client_secret")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "code_verification")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_for_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dynamic_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "eps")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "filled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "funding")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "giropay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ideal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "inbound_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "klarna")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "multibanco")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owner")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "p24")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "receiver")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recipient")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "redirect")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reusable")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sepa_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sofort")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source_order")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "three_d_secure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tokenization_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transactions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "uncaptured_funds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "usage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "used")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "used_for_payment")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "username")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "wechat"))
data GetCustomersCustomerResponseBody200Sources'Object'
    = GetCustomersCustomerResponseBody200Sources'Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetCustomersCustomerResponseBody200Sources'Object'EnumTyped GHC.Base.String
    | GetCustomersCustomerResponseBody200Sources'Object'EnumStringList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200Sources'Object'
    where toJSON (GetCustomersCustomerResponseBody200Sources'Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerResponseBody200Sources'Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerResponseBody200Sources'Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"
instance Data.Aeson.FromJSON GetCustomersCustomerResponseBody200Sources'Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
                                          then GetCustomersCustomerResponseBody200Sources'Object'EnumStringList
                                          else GetCustomersCustomerResponseBody200Sources'Object'EnumOther val)
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200Sources'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getCustomersCustomerResponseBody200Sources'Data obj) : (Data.Aeson..=) "has_more" (getCustomersCustomerResponseBody200Sources'HasMore obj) : (Data.Aeson..=) "object" (getCustomersCustomerResponseBody200Sources'Object obj) : (Data.Aeson..=) "url" (getCustomersCustomerResponseBody200Sources'Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getCustomersCustomerResponseBody200Sources'Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (getCustomersCustomerResponseBody200Sources'HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (getCustomersCustomerResponseBody200Sources'Object obj) GHC.Base.<> (Data.Aeson..=) "url" (getCustomersCustomerResponseBody200Sources'Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerResponseBody200Sources'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerResponseBody200Sources'" (\obj -> (((GHC.Base.pure GetCustomersCustomerResponseBody200Sources' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
data GetCustomersCustomerResponseBody200Subscriptions'
    = GetCustomersCustomerResponseBody200Subscriptions' {getCustomersCustomerResponseBody200Subscriptions'Data :: ([] Subscription),
                                                         getCustomersCustomerResponseBody200Subscriptions'HasMore :: GHC.Types.Bool,
                                                         getCustomersCustomerResponseBody200Subscriptions'Object :: GetCustomersCustomerResponseBody200Subscriptions'Object',
                                                         getCustomersCustomerResponseBody200Subscriptions'Url :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetCustomersCustomerResponseBody200Subscriptions'Object'
    = GetCustomersCustomerResponseBody200Subscriptions'Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetCustomersCustomerResponseBody200Subscriptions'Object'EnumTyped GHC.Base.String
    | GetCustomersCustomerResponseBody200Subscriptions'Object'EnumStringList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200Subscriptions'Object'
    where toJSON (GetCustomersCustomerResponseBody200Subscriptions'Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerResponseBody200Subscriptions'Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerResponseBody200Subscriptions'Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"
instance Data.Aeson.FromJSON GetCustomersCustomerResponseBody200Subscriptions'Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
                                          then GetCustomersCustomerResponseBody200Subscriptions'Object'EnumStringList
                                          else GetCustomersCustomerResponseBody200Subscriptions'Object'EnumOther val)
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200Subscriptions'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getCustomersCustomerResponseBody200Subscriptions'Data obj) : (Data.Aeson..=) "has_more" (getCustomersCustomerResponseBody200Subscriptions'HasMore obj) : (Data.Aeson..=) "object" (getCustomersCustomerResponseBody200Subscriptions'Object obj) : (Data.Aeson..=) "url" (getCustomersCustomerResponseBody200Subscriptions'Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getCustomersCustomerResponseBody200Subscriptions'Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (getCustomersCustomerResponseBody200Subscriptions'HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (getCustomersCustomerResponseBody200Subscriptions'Object obj) GHC.Base.<> (Data.Aeson..=) "url" (getCustomersCustomerResponseBody200Subscriptions'Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerResponseBody200Subscriptions'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerResponseBody200Subscriptions'" (\obj -> (((GHC.Base.pure GetCustomersCustomerResponseBody200Subscriptions' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
data GetCustomersCustomerResponseBody200TaxExempt'
    = GetCustomersCustomerResponseBody200TaxExempt'EnumOther Data.Aeson.Types.Internal.Value
    | GetCustomersCustomerResponseBody200TaxExempt'EnumTyped GHC.Base.String
    | GetCustomersCustomerResponseBody200TaxExempt'EnumStringExempt
    | GetCustomersCustomerResponseBody200TaxExempt'EnumStringNone
    | GetCustomersCustomerResponseBody200TaxExempt'EnumStringReverse
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200TaxExempt'
    where toJSON (GetCustomersCustomerResponseBody200TaxExempt'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerResponseBody200TaxExempt'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerResponseBody200TaxExempt'EnumStringExempt) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "exempt"
          toJSON (GetCustomersCustomerResponseBody200TaxExempt'EnumStringNone) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none"
          toJSON (GetCustomersCustomerResponseBody200TaxExempt'EnumStringReverse) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "reverse"
instance Data.Aeson.FromJSON GetCustomersCustomerResponseBody200TaxExempt'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "exempt")
                                          then GetCustomersCustomerResponseBody200TaxExempt'EnumStringExempt
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none")
                                                then GetCustomersCustomerResponseBody200TaxExempt'EnumStringNone
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "reverse")
                                                      then GetCustomersCustomerResponseBody200TaxExempt'EnumStringReverse
                                                      else GetCustomersCustomerResponseBody200TaxExempt'EnumOther val)
data GetCustomersCustomerResponseBody200TaxIds'
    = GetCustomersCustomerResponseBody200TaxIds' {getCustomersCustomerResponseBody200TaxIds'Data :: ([] TaxId),
                                                  getCustomersCustomerResponseBody200TaxIds'HasMore :: GHC.Types.Bool,
                                                  getCustomersCustomerResponseBody200TaxIds'Object :: GetCustomersCustomerResponseBody200TaxIds'Object',
                                                  getCustomersCustomerResponseBody200TaxIds'Url :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetCustomersCustomerResponseBody200TaxIds'Object'
    = GetCustomersCustomerResponseBody200TaxIds'Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetCustomersCustomerResponseBody200TaxIds'Object'EnumTyped GHC.Base.String
    | GetCustomersCustomerResponseBody200TaxIds'Object'EnumStringList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200TaxIds'Object'
    where toJSON (GetCustomersCustomerResponseBody200TaxIds'Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerResponseBody200TaxIds'Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerResponseBody200TaxIds'Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"
instance Data.Aeson.FromJSON GetCustomersCustomerResponseBody200TaxIds'Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
                                          then GetCustomersCustomerResponseBody200TaxIds'Object'EnumStringList
                                          else GetCustomersCustomerResponseBody200TaxIds'Object'EnumOther val)
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200TaxIds'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getCustomersCustomerResponseBody200TaxIds'Data obj) : (Data.Aeson..=) "has_more" (getCustomersCustomerResponseBody200TaxIds'HasMore obj) : (Data.Aeson..=) "object" (getCustomersCustomerResponseBody200TaxIds'Object obj) : (Data.Aeson..=) "url" (getCustomersCustomerResponseBody200TaxIds'Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getCustomersCustomerResponseBody200TaxIds'Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (getCustomersCustomerResponseBody200TaxIds'HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (getCustomersCustomerResponseBody200TaxIds'Object obj) GHC.Base.<> (Data.Aeson..=) "url" (getCustomersCustomerResponseBody200TaxIds'Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerResponseBody200TaxIds'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerResponseBody200TaxIds'" (\obj -> (((GHC.Base.pure GetCustomersCustomerResponseBody200TaxIds' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
instance Data.Aeson.ToJSON GetCustomersCustomerResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (getCustomersCustomerResponseBody200Address obj) : (Data.Aeson..=) "balance" (getCustomersCustomerResponseBody200Balance obj) : (Data.Aeson..=) "created" (getCustomersCustomerResponseBody200Created obj) : (Data.Aeson..=) "currency" (getCustomersCustomerResponseBody200Currency obj) : (Data.Aeson..=) "default_source" (getCustomersCustomerResponseBody200DefaultSource obj) : (Data.Aeson..=) "deleted" (getCustomersCustomerResponseBody200Deleted obj) : (Data.Aeson..=) "delinquent" (getCustomersCustomerResponseBody200Delinquent obj) : (Data.Aeson..=) "description" (getCustomersCustomerResponseBody200Description obj) : (Data.Aeson..=) "discount" (getCustomersCustomerResponseBody200Discount obj) : (Data.Aeson..=) "email" (getCustomersCustomerResponseBody200Email obj) : (Data.Aeson..=) "id" (getCustomersCustomerResponseBody200Id obj) : (Data.Aeson..=) "invoice_prefix" (getCustomersCustomerResponseBody200InvoicePrefix obj) : (Data.Aeson..=) "invoice_settings" (getCustomersCustomerResponseBody200InvoiceSettings obj) : (Data.Aeson..=) "livemode" (getCustomersCustomerResponseBody200Livemode obj) : (Data.Aeson..=) "metadata" (getCustomersCustomerResponseBody200Metadata obj) : (Data.Aeson..=) "name" (getCustomersCustomerResponseBody200Name obj) : (Data.Aeson..=) "next_invoice_sequence" (getCustomersCustomerResponseBody200NextInvoiceSequence obj) : (Data.Aeson..=) "object" (getCustomersCustomerResponseBody200Object obj) : (Data.Aeson..=) "phone" (getCustomersCustomerResponseBody200Phone obj) : (Data.Aeson..=) "preferred_locales" (getCustomersCustomerResponseBody200PreferredLocales obj) : (Data.Aeson..=) "shipping" (getCustomersCustomerResponseBody200Shipping obj) : (Data.Aeson..=) "sources" (getCustomersCustomerResponseBody200Sources obj) : (Data.Aeson..=) "subscriptions" (getCustomersCustomerResponseBody200Subscriptions obj) : (Data.Aeson..=) "tax_exempt" (getCustomersCustomerResponseBody200TaxExempt obj) : (Data.Aeson..=) "tax_ids" (getCustomersCustomerResponseBody200TaxIds obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (getCustomersCustomerResponseBody200Address obj) GHC.Base.<> ((Data.Aeson..=) "balance" (getCustomersCustomerResponseBody200Balance obj) GHC.Base.<> ((Data.Aeson..=) "created" (getCustomersCustomerResponseBody200Created obj) GHC.Base.<> ((Data.Aeson..=) "currency" (getCustomersCustomerResponseBody200Currency obj) GHC.Base.<> ((Data.Aeson..=) "default_source" (getCustomersCustomerResponseBody200DefaultSource obj) GHC.Base.<> ((Data.Aeson..=) "deleted" (getCustomersCustomerResponseBody200Deleted obj) GHC.Base.<> ((Data.Aeson..=) "delinquent" (getCustomersCustomerResponseBody200Delinquent obj) GHC.Base.<> ((Data.Aeson..=) "description" (getCustomersCustomerResponseBody200Description obj) GHC.Base.<> ((Data.Aeson..=) "discount" (getCustomersCustomerResponseBody200Discount obj) GHC.Base.<> ((Data.Aeson..=) "email" (getCustomersCustomerResponseBody200Email obj) GHC.Base.<> ((Data.Aeson..=) "id" (getCustomersCustomerResponseBody200Id obj) GHC.Base.<> ((Data.Aeson..=) "invoice_prefix" (getCustomersCustomerResponseBody200InvoicePrefix obj) GHC.Base.<> ((Data.Aeson..=) "invoice_settings" (getCustomersCustomerResponseBody200InvoiceSettings obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (getCustomersCustomerResponseBody200Livemode obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (getCustomersCustomerResponseBody200Metadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (getCustomersCustomerResponseBody200Name obj) GHC.Base.<> ((Data.Aeson..=) "next_invoice_sequence" (getCustomersCustomerResponseBody200NextInvoiceSequence obj) GHC.Base.<> ((Data.Aeson..=) "object" (getCustomersCustomerResponseBody200Object obj) GHC.Base.<> ((Data.Aeson..=) "phone" (getCustomersCustomerResponseBody200Phone obj) GHC.Base.<> ((Data.Aeson..=) "preferred_locales" (getCustomersCustomerResponseBody200PreferredLocales obj) GHC.Base.<> ((Data.Aeson..=) "shipping" (getCustomersCustomerResponseBody200Shipping obj) GHC.Base.<> ((Data.Aeson..=) "sources" (getCustomersCustomerResponseBody200Sources obj) GHC.Base.<> ((Data.Aeson..=) "subscriptions" (getCustomersCustomerResponseBody200Subscriptions obj) GHC.Base.<> ((Data.Aeson..=) "tax_exempt" (getCustomersCustomerResponseBody200TaxExempt obj) GHC.Base.<> (Data.Aeson..=) "tax_ids" (getCustomersCustomerResponseBody200TaxIds obj)))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerResponseBody200" (\obj -> ((((((((((((((((((((((((GHC.Base.pure GetCustomersCustomerResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "balance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "delinquent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "discount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoice_prefix")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoice_settings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "next_invoice_sequence")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "preferred_locales")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "subscriptions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_exempt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_ids"))
