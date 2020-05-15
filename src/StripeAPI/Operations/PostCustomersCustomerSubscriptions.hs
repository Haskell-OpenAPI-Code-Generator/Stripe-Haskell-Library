{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostCustomersCustomerSubscriptions where

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
-- POST /v1/customers/{customer}/subscriptions
postCustomersCustomerSubscriptions :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                    StripeAPI.Common.SecurityScheme s) =>
                                      StripeAPI.Common.Configuration s ->
                                      GHC.Base.String ->
                                      PostCustomersCustomerSubscriptionsRequestBody ->
                                      m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                            (Network.HTTP.Client.Types.Response PostCustomersCustomerSubscriptionsResponse))
postCustomersCustomerSubscriptions config
                                   customer
                                   body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerSubscriptionsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerSubscriptionsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        Subscription)
                                                                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerSubscriptionsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/subscriptions"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersCustomerSubscriptionsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                       StripeAPI.Common.SecurityScheme s) =>
                                         StripeAPI.Common.Configuration s ->
                                         GHC.Base.String ->
                                         PostCustomersCustomerSubscriptionsRequestBody ->
                                         m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerSubscriptionsRaw config
                                      customer
                                      body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/subscriptions"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersCustomerSubscriptionsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                     StripeAPI.Common.SecurityScheme s) =>
                                       GHC.Base.String ->
                                       PostCustomersCustomerSubscriptionsRequestBody ->
                                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                          m
                                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                              (Network.HTTP.Client.Types.Response PostCustomersCustomerSubscriptionsResponse))
postCustomersCustomerSubscriptionsM customer
                                    body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerSubscriptionsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerSubscriptionsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         Subscription)
                                                                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerSubscriptionsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/subscriptions"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersCustomerSubscriptionsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                        StripeAPI.Common.SecurityScheme s) =>
                                          GHC.Base.String ->
                                          PostCustomersCustomerSubscriptionsRequestBody ->
                                          Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                             m
                                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                 (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerSubscriptionsRawM customer
                                       body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/subscriptions"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostCustomersCustomerSubscriptionsRequestBody
    = PostCustomersCustomerSubscriptionsRequestBody {postCustomersCustomerSubscriptionsRequestBodyApplicationFeePercent :: (GHC.Maybe.Maybe GHC.Types.Double),
                                                     postCustomersCustomerSubscriptionsRequestBodyBackdateStartDate :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                     postCustomersCustomerSubscriptionsRequestBodyBillingCycleAnchor :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                     postCustomersCustomerSubscriptionsRequestBodyBillingThresholds :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'Variants),
                                                     postCustomersCustomerSubscriptionsRequestBodyCancelAt :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                     postCustomersCustomerSubscriptionsRequestBodyCancelAtPeriodEnd :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                     postCustomersCustomerSubscriptionsRequestBodyCollectionMethod :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'),
                                                     postCustomersCustomerSubscriptionsRequestBodyCoupon :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSubscriptionsRequestBodyDaysUntilDue :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                     postCustomersCustomerSubscriptionsRequestBodyDefaultPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSubscriptionsRequestBodyDefaultSource :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'Variants),
                                                     postCustomersCustomerSubscriptionsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                                     postCustomersCustomerSubscriptionsRequestBodyItems :: (GHC.Maybe.Maybe ([] PostCustomersCustomerSubscriptionsRequestBodyItems')),
                                                     postCustomersCustomerSubscriptionsRequestBodyMetadata :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsRequestBodyMetadata'),
                                                     postCustomersCustomerSubscriptionsRequestBodyOffSession :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                     postCustomersCustomerSubscriptionsRequestBodyPaymentBehavior :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'),
                                                     postCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'Variants),
                                                     postCustomersCustomerSubscriptionsRequestBodyProrate :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                     postCustomersCustomerSubscriptionsRequestBodyProrationBehavior :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'),
                                                     postCustomersCustomerSubscriptionsRequestBodyTaxPercent :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'Variants),
                                                     postCustomersCustomerSubscriptionsRequestBodyTrialEnd :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'Variants),
                                                     postCustomersCustomerSubscriptionsRequestBodyTrialFromPlan :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                     postCustomersCustomerSubscriptionsRequestBodyTrialPeriodDays :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf1
    = PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf1EnumString_
                                          else PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf1EnumOther val)
data PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf2
    = PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf2 {postCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf2AmountGte :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                                             postCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf2ResetBillingCycleAnchor :: (GHC.Maybe.Maybe GHC.Types.Bool)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount_gte" (postCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf2AmountGte obj) : (Data.Aeson..=) "reset_billing_cycle_anchor" (postCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf2ResetBillingCycleAnchor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount_gte" (postCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf2AmountGte obj) GHC.Base.<> (Data.Aeson..=) "reset_billing_cycle_anchor" (postCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf2ResetBillingCycleAnchor obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf2" (\obj -> (GHC.Base.pure PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reset_billing_cycle_anchor"))
data PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'Variants
    = PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'Variant1 PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf1
    | PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'Variant2 PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'
    = PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'EnumStringChargeAutomatically
    | PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'EnumStringSendInvoice
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'
    where toJSON (PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'EnumStringChargeAutomatically) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically"
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'EnumStringSendInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice"
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically")
                                          then PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'EnumStringChargeAutomatically
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice")
                                                then PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'EnumStringSendInvoice
                                                else PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'EnumOther val)
data PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'OneOf1
    = PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'OneOf1EnumString_
                                          else PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'OneOf1EnumOther val)
data PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'Variants
    = PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'Variant1 PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'OneOf1
    | PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'Variant2 ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersCustomerSubscriptionsRequestBodyItems'
    = PostCustomersCustomerSubscriptionsRequestBodyItems' {postCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'Variants),
                                                           postCustomersCustomerSubscriptionsRequestBodyItems'Metadata :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsRequestBodyItems'Metadata'),
                                                           postCustomersCustomerSubscriptionsRequestBodyItems'Plan :: (GHC.Maybe.Maybe GHC.Base.String),
                                                           postCustomersCustomerSubscriptionsRequestBodyItems'Quantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                           postCustomersCustomerSubscriptionsRequestBodyItems'TaxRates :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'Variants)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf1
    = PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf1EnumString_
                                          else PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf1EnumOther val)
data PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf2
    = PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf2 {postCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf2UsageGte :: GHC.Integer.Type.Integer}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "usage_gte" (postCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf2UsageGte obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "usage_gte" (postCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf2UsageGte obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf2" (\obj -> GHC.Base.pure PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "usage_gte"))
data PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'Variants
    = PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'Variant1 PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf1
    | PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'Variant2 PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersCustomerSubscriptionsRequestBodyItems'Metadata'
    = PostCustomersCustomerSubscriptionsRequestBodyItems'Metadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyItems'Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSubscriptionsRequestBodyItems'Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSubscriptionsRequestBodyItems'Metadata'" (\obj -> GHC.Base.pure PostCustomersCustomerSubscriptionsRequestBodyItems'Metadata')
data PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'OneOf1
    = PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'OneOf1EnumString_
                                          else PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'OneOf1EnumOther val)
data PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'Variants
    = PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'Variant1 PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'OneOf1
    | PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'Variant2 ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyItems'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "billing_thresholds" (postCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds obj) : (Data.Aeson..=) "metadata" (postCustomersCustomerSubscriptionsRequestBodyItems'Metadata obj) : (Data.Aeson..=) "plan" (postCustomersCustomerSubscriptionsRequestBodyItems'Plan obj) : (Data.Aeson..=) "quantity" (postCustomersCustomerSubscriptionsRequestBodyItems'Quantity obj) : (Data.Aeson..=) "tax_rates" (postCustomersCustomerSubscriptionsRequestBodyItems'TaxRates obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "billing_thresholds" (postCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCustomersCustomerSubscriptionsRequestBodyItems'Metadata obj) GHC.Base.<> ((Data.Aeson..=) "plan" (postCustomersCustomerSubscriptionsRequestBodyItems'Plan obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (postCustomersCustomerSubscriptionsRequestBodyItems'Quantity obj) GHC.Base.<> (Data.Aeson..=) "tax_rates" (postCustomersCustomerSubscriptionsRequestBodyItems'TaxRates obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSubscriptionsRequestBodyItems'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSubscriptionsRequestBodyItems'" (\obj -> ((((GHC.Base.pure PostCustomersCustomerSubscriptionsRequestBodyItems' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "plan")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_rates"))
data PostCustomersCustomerSubscriptionsRequestBodyMetadata'
    = PostCustomersCustomerSubscriptionsRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSubscriptionsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSubscriptionsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostCustomersCustomerSubscriptionsRequestBodyMetadata')
data PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'
    = PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'EnumStringAllowIncomplete
    | PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete
    | PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'
    where toJSON (PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'EnumStringAllowIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "allow_incomplete"
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error_if_incomplete"
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending_if_incomplete"
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "allow_incomplete")
                                          then PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'EnumStringAllowIncomplete
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error_if_incomplete")
                                                then PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending_if_incomplete")
                                                      then PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete
                                                      else PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'EnumOther val)
data PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1
    = PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1EnumString_
                                          else PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1EnumOther val)
data PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2
    = PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2 {postCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval :: PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval',
                                                                                      postCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2IntervalCount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'
    = PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringDay
    | PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringMonth
    | PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringWeek
    | PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringYear
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'
    where toJSON (PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringDay) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "day"
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringMonth) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month"
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringWeek) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "week"
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringYear) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "year"
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "day")
                                          then PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringDay
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month")
                                                then PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringMonth
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "week")
                                                      then PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringWeek
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "year")
                                                            then PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringYear
                                                            else PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumOther val)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "interval" (postCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval obj) : (Data.Aeson..=) "interval_count" (postCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2IntervalCount obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "interval" (postCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval obj) GHC.Base.<> (Data.Aeson..=) "interval_count" (postCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2IntervalCount obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2" (\obj -> (GHC.Base.pure PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "interval_count"))
data PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'Variants
    = PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'Variant1 PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1
    | PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'Variant2 PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'
    = PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'EnumStringAlwaysInvoice
    | PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'EnumStringCreateProrations
    | PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'EnumStringNone
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'
    where toJSON (PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'EnumStringAlwaysInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "always_invoice"
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'EnumStringCreateProrations) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "create_prorations"
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'EnumStringNone) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none"
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "always_invoice")
                                          then PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'EnumStringAlwaysInvoice
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "create_prorations")
                                                then PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'EnumStringCreateProrations
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none")
                                                      then PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'EnumStringNone
                                                      else PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'EnumOther val)
data PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'OneOf1
    = PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'OneOf1EnumString_
                                          else PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'OneOf1EnumOther val)
data PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'Variants
    = PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'Variant1 PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'OneOf1
    | PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'Variant2 GHC.Types.Double
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'OneOf1
    = PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'OneOf1EnumStringNow
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'OneOf1EnumStringNow) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now"
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now")
                                          then PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'OneOf1EnumStringNow
                                          else PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'OneOf1EnumOther val)
data PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'Variants
    = PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'Variant1 PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'OneOf1
    | PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'Variant2 GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "application_fee_percent" (postCustomersCustomerSubscriptionsRequestBodyApplicationFeePercent obj) : (Data.Aeson..=) "backdate_start_date" (postCustomersCustomerSubscriptionsRequestBodyBackdateStartDate obj) : (Data.Aeson..=) "billing_cycle_anchor" (postCustomersCustomerSubscriptionsRequestBodyBillingCycleAnchor obj) : (Data.Aeson..=) "billing_thresholds" (postCustomersCustomerSubscriptionsRequestBodyBillingThresholds obj) : (Data.Aeson..=) "cancel_at" (postCustomersCustomerSubscriptionsRequestBodyCancelAt obj) : (Data.Aeson..=) "cancel_at_period_end" (postCustomersCustomerSubscriptionsRequestBodyCancelAtPeriodEnd obj) : (Data.Aeson..=) "collection_method" (postCustomersCustomerSubscriptionsRequestBodyCollectionMethod obj) : (Data.Aeson..=) "coupon" (postCustomersCustomerSubscriptionsRequestBodyCoupon obj) : (Data.Aeson..=) "days_until_due" (postCustomersCustomerSubscriptionsRequestBodyDaysUntilDue obj) : (Data.Aeson..=) "default_payment_method" (postCustomersCustomerSubscriptionsRequestBodyDefaultPaymentMethod obj) : (Data.Aeson..=) "default_source" (postCustomersCustomerSubscriptionsRequestBodyDefaultSource obj) : (Data.Aeson..=) "default_tax_rates" (postCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates obj) : (Data.Aeson..=) "expand" (postCustomersCustomerSubscriptionsRequestBodyExpand obj) : (Data.Aeson..=) "items" (postCustomersCustomerSubscriptionsRequestBodyItems obj) : (Data.Aeson..=) "metadata" (postCustomersCustomerSubscriptionsRequestBodyMetadata obj) : (Data.Aeson..=) "off_session" (postCustomersCustomerSubscriptionsRequestBodyOffSession obj) : (Data.Aeson..=) "payment_behavior" (postCustomersCustomerSubscriptionsRequestBodyPaymentBehavior obj) : (Data.Aeson..=) "pending_invoice_item_interval" (postCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval obj) : (Data.Aeson..=) "prorate" (postCustomersCustomerSubscriptionsRequestBodyProrate obj) : (Data.Aeson..=) "proration_behavior" (postCustomersCustomerSubscriptionsRequestBodyProrationBehavior obj) : (Data.Aeson..=) "tax_percent" (postCustomersCustomerSubscriptionsRequestBodyTaxPercent obj) : (Data.Aeson..=) "trial_end" (postCustomersCustomerSubscriptionsRequestBodyTrialEnd obj) : (Data.Aeson..=) "trial_from_plan" (postCustomersCustomerSubscriptionsRequestBodyTrialFromPlan obj) : (Data.Aeson..=) "trial_period_days" (postCustomersCustomerSubscriptionsRequestBodyTrialPeriodDays obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "application_fee_percent" (postCustomersCustomerSubscriptionsRequestBodyApplicationFeePercent obj) GHC.Base.<> ((Data.Aeson..=) "backdate_start_date" (postCustomersCustomerSubscriptionsRequestBodyBackdateStartDate obj) GHC.Base.<> ((Data.Aeson..=) "billing_cycle_anchor" (postCustomersCustomerSubscriptionsRequestBodyBillingCycleAnchor obj) GHC.Base.<> ((Data.Aeson..=) "billing_thresholds" (postCustomersCustomerSubscriptionsRequestBodyBillingThresholds obj) GHC.Base.<> ((Data.Aeson..=) "cancel_at" (postCustomersCustomerSubscriptionsRequestBodyCancelAt obj) GHC.Base.<> ((Data.Aeson..=) "cancel_at_period_end" (postCustomersCustomerSubscriptionsRequestBodyCancelAtPeriodEnd obj) GHC.Base.<> ((Data.Aeson..=) "collection_method" (postCustomersCustomerSubscriptionsRequestBodyCollectionMethod obj) GHC.Base.<> ((Data.Aeson..=) "coupon" (postCustomersCustomerSubscriptionsRequestBodyCoupon obj) GHC.Base.<> ((Data.Aeson..=) "days_until_due" (postCustomersCustomerSubscriptionsRequestBodyDaysUntilDue obj) GHC.Base.<> ((Data.Aeson..=) "default_payment_method" (postCustomersCustomerSubscriptionsRequestBodyDefaultPaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "default_source" (postCustomersCustomerSubscriptionsRequestBodyDefaultSource obj) GHC.Base.<> ((Data.Aeson..=) "default_tax_rates" (postCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postCustomersCustomerSubscriptionsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "items" (postCustomersCustomerSubscriptionsRequestBodyItems obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCustomersCustomerSubscriptionsRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "off_session" (postCustomersCustomerSubscriptionsRequestBodyOffSession obj) GHC.Base.<> ((Data.Aeson..=) "payment_behavior" (postCustomersCustomerSubscriptionsRequestBodyPaymentBehavior obj) GHC.Base.<> ((Data.Aeson..=) "pending_invoice_item_interval" (postCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval obj) GHC.Base.<> ((Data.Aeson..=) "prorate" (postCustomersCustomerSubscriptionsRequestBodyProrate obj) GHC.Base.<> ((Data.Aeson..=) "proration_behavior" (postCustomersCustomerSubscriptionsRequestBodyProrationBehavior obj) GHC.Base.<> ((Data.Aeson..=) "tax_percent" (postCustomersCustomerSubscriptionsRequestBodyTaxPercent obj) GHC.Base.<> ((Data.Aeson..=) "trial_end" (postCustomersCustomerSubscriptionsRequestBodyTrialEnd obj) GHC.Base.<> ((Data.Aeson..=) "trial_from_plan" (postCustomersCustomerSubscriptionsRequestBodyTrialFromPlan obj) GHC.Base.<> (Data.Aeson..=) "trial_period_days" (postCustomersCustomerSubscriptionsRequestBodyTrialPeriodDays obj))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSubscriptionsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSubscriptionsRequestBody" (\obj -> (((((((((((((((((((((((GHC.Base.pure PostCustomersCustomerSubscriptionsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "backdate_start_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_cycle_anchor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancel_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancel_at_period_end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "collection_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "coupon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "days_until_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_tax_rates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "items")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "off_session")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pending_invoice_item_interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "prorate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proration_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_from_plan")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_period_days"))

data PostCustomersCustomerSubscriptionsResponse
    = PostCustomersCustomerSubscriptionsResponseError GHC.Base.String
    | PostCustomersCustomerSubscriptionsResponse200 Subscription
    | PostCustomersCustomerSubscriptionsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
