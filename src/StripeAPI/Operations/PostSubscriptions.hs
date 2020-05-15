{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostSubscriptions where

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
-- POST /v1/subscriptions
postSubscriptions :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                   StripeAPI.Common.SecurityScheme s) =>
                     StripeAPI.Common.Configuration s ->
                     PostSubscriptionsRequestBody ->
                     m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                           (Network.HTTP.Client.Types.Response PostSubscriptionsResponse))
postSubscriptions config
                  body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSubscriptionsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                     Subscription)
                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/subscriptions") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSubscriptionsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        StripeAPI.Common.Configuration s ->
                        PostSubscriptionsRequestBody ->
                        m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSubscriptionsRaw config
                     body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/subscriptions") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSubscriptionsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                    StripeAPI.Common.SecurityScheme s) =>
                      PostSubscriptionsRequestBody ->
                      Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                         m
                                                         (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                             (Network.HTTP.Client.Types.Response PostSubscriptionsResponse))
postSubscriptionsM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSubscriptionsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                      Subscription)
                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/subscriptions") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSubscriptionsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                       StripeAPI.Common.SecurityScheme s) =>
                         PostSubscriptionsRequestBody ->
                         Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                            m
                                                            (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSubscriptionsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/subscriptions") [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostSubscriptionsRequestBody
    = PostSubscriptionsRequestBody {postSubscriptionsRequestBodyApplicationFeePercent :: (GHC.Maybe.Maybe GHC.Types.Double),
                                    postSubscriptionsRequestBodyBackdateStartDate :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                    postSubscriptionsRequestBodyBillingCycleAnchor :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                    postSubscriptionsRequestBodyBillingThresholds :: (GHC.Maybe.Maybe PostSubscriptionsRequestBodyBillingThresholds'Variants),
                                    postSubscriptionsRequestBodyCancelAt :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                    postSubscriptionsRequestBodyCancelAtPeriodEnd :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                    postSubscriptionsRequestBodyCollectionMethod :: (GHC.Maybe.Maybe PostSubscriptionsRequestBodyCollectionMethod'),
                                    postSubscriptionsRequestBodyCoupon :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postSubscriptionsRequestBodyCustomer :: GHC.Base.String,
                                    postSubscriptionsRequestBodyDaysUntilDue :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                    postSubscriptionsRequestBodyDefaultPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postSubscriptionsRequestBodyDefaultSource :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postSubscriptionsRequestBodyDefaultTaxRates :: (GHC.Maybe.Maybe PostSubscriptionsRequestBodyDefaultTaxRates'Variants),
                                    postSubscriptionsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                    postSubscriptionsRequestBodyItems :: (GHC.Maybe.Maybe ([] PostSubscriptionsRequestBodyItems')),
                                    postSubscriptionsRequestBodyMetadata :: (GHC.Maybe.Maybe PostSubscriptionsRequestBodyMetadata'),
                                    postSubscriptionsRequestBodyOffSession :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                    postSubscriptionsRequestBodyPaymentBehavior :: (GHC.Maybe.Maybe PostSubscriptionsRequestBodyPaymentBehavior'),
                                    postSubscriptionsRequestBodyPendingInvoiceItemInterval :: (GHC.Maybe.Maybe PostSubscriptionsRequestBodyPendingInvoiceItemInterval'Variants),
                                    postSubscriptionsRequestBodyProrate :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                    postSubscriptionsRequestBodyProrationBehavior :: (GHC.Maybe.Maybe PostSubscriptionsRequestBodyProrationBehavior'),
                                    postSubscriptionsRequestBodyTaxPercent :: (GHC.Maybe.Maybe PostSubscriptionsRequestBodyTaxPercent'Variants),
                                    postSubscriptionsRequestBodyTrialEnd :: (GHC.Maybe.Maybe PostSubscriptionsRequestBodyTrialEnd'Variants),
                                    postSubscriptionsRequestBodyTrialFromPlan :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                    postSubscriptionsRequestBodyTrialPeriodDays :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSubscriptionsRequestBodyBillingThresholds'OneOf1
    = PostSubscriptionsRequestBodyBillingThresholds'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsRequestBodyBillingThresholds'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionsRequestBodyBillingThresholds'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyBillingThresholds'OneOf1
    where toJSON (PostSubscriptionsRequestBodyBillingThresholds'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsRequestBodyBillingThresholds'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsRequestBodyBillingThresholds'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionsRequestBodyBillingThresholds'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionsRequestBodyBillingThresholds'OneOf1EnumString_
                                          else PostSubscriptionsRequestBodyBillingThresholds'OneOf1EnumOther val)
data PostSubscriptionsRequestBodyBillingThresholds'OneOf2
    = PostSubscriptionsRequestBodyBillingThresholds'OneOf2 {postSubscriptionsRequestBodyBillingThresholds'OneOf2AmountGte :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                            postSubscriptionsRequestBodyBillingThresholds'OneOf2ResetBillingCycleAnchor :: (GHC.Maybe.Maybe GHC.Types.Bool)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyBillingThresholds'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount_gte" (postSubscriptionsRequestBodyBillingThresholds'OneOf2AmountGte obj) : (Data.Aeson..=) "reset_billing_cycle_anchor" (postSubscriptionsRequestBodyBillingThresholds'OneOf2ResetBillingCycleAnchor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount_gte" (postSubscriptionsRequestBodyBillingThresholds'OneOf2AmountGte obj) GHC.Base.<> (Data.Aeson..=) "reset_billing_cycle_anchor" (postSubscriptionsRequestBodyBillingThresholds'OneOf2ResetBillingCycleAnchor obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsRequestBodyBillingThresholds'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsRequestBodyBillingThresholds'OneOf2" (\obj -> (GHC.Base.pure PostSubscriptionsRequestBodyBillingThresholds'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reset_billing_cycle_anchor"))
data PostSubscriptionsRequestBodyBillingThresholds'Variants
    = PostSubscriptionsRequestBodyBillingThresholds'Variant1 PostSubscriptionsRequestBodyBillingThresholds'OneOf1
    | PostSubscriptionsRequestBodyBillingThresholds'Variant2 PostSubscriptionsRequestBodyBillingThresholds'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyBillingThresholds'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsRequestBodyBillingThresholds'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostSubscriptionsRequestBodyCollectionMethod'
    = PostSubscriptionsRequestBodyCollectionMethod'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsRequestBodyCollectionMethod'EnumTyped GHC.Base.String
    | PostSubscriptionsRequestBodyCollectionMethod'EnumStringChargeAutomatically
    | PostSubscriptionsRequestBodyCollectionMethod'EnumStringSendInvoice
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyCollectionMethod'
    where toJSON (PostSubscriptionsRequestBodyCollectionMethod'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsRequestBodyCollectionMethod'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsRequestBodyCollectionMethod'EnumStringChargeAutomatically) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically"
          toJSON (PostSubscriptionsRequestBodyCollectionMethod'EnumStringSendInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice"
instance Data.Aeson.FromJSON PostSubscriptionsRequestBodyCollectionMethod'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically")
                                          then PostSubscriptionsRequestBodyCollectionMethod'EnumStringChargeAutomatically
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice")
                                                then PostSubscriptionsRequestBodyCollectionMethod'EnumStringSendInvoice
                                                else PostSubscriptionsRequestBodyCollectionMethod'EnumOther val)
data PostSubscriptionsRequestBodyDefaultTaxRates'OneOf1
    = PostSubscriptionsRequestBodyDefaultTaxRates'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsRequestBodyDefaultTaxRates'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionsRequestBodyDefaultTaxRates'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyDefaultTaxRates'OneOf1
    where toJSON (PostSubscriptionsRequestBodyDefaultTaxRates'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsRequestBodyDefaultTaxRates'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsRequestBodyDefaultTaxRates'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionsRequestBodyDefaultTaxRates'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionsRequestBodyDefaultTaxRates'OneOf1EnumString_
                                          else PostSubscriptionsRequestBodyDefaultTaxRates'OneOf1EnumOther val)
data PostSubscriptionsRequestBodyDefaultTaxRates'Variants
    = PostSubscriptionsRequestBodyDefaultTaxRates'Variant1 PostSubscriptionsRequestBodyDefaultTaxRates'OneOf1
    | PostSubscriptionsRequestBodyDefaultTaxRates'Variant2 ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyDefaultTaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsRequestBodyDefaultTaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostSubscriptionsRequestBodyItems'
    = PostSubscriptionsRequestBodyItems' {postSubscriptionsRequestBodyItems'BillingThresholds :: (GHC.Maybe.Maybe PostSubscriptionsRequestBodyItems'BillingThresholds'Variants),
                                          postSubscriptionsRequestBodyItems'Metadata :: (GHC.Maybe.Maybe PostSubscriptionsRequestBodyItems'Metadata'),
                                          postSubscriptionsRequestBodyItems'Plan :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postSubscriptionsRequestBodyItems'Quantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                          postSubscriptionsRequestBodyItems'TaxRates :: (GHC.Maybe.Maybe PostSubscriptionsRequestBodyItems'TaxRates'Variants)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf1
    = PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf1
    where toJSON (PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf1EnumString_
                                          else PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf1EnumOther val)
data PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf2
    = PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf2 {postSubscriptionsRequestBodyItems'BillingThresholds'OneOf2UsageGte :: GHC.Integer.Type.Integer}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "usage_gte" (postSubscriptionsRequestBodyItems'BillingThresholds'OneOf2UsageGte obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "usage_gte" (postSubscriptionsRequestBodyItems'BillingThresholds'OneOf2UsageGte obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf2" (\obj -> GHC.Base.pure PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "usage_gte"))
data PostSubscriptionsRequestBodyItems'BillingThresholds'Variants
    = PostSubscriptionsRequestBodyItems'BillingThresholds'Variant1 PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf1
    | PostSubscriptionsRequestBodyItems'BillingThresholds'Variant2 PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyItems'BillingThresholds'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsRequestBodyItems'BillingThresholds'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostSubscriptionsRequestBodyItems'Metadata'
    = PostSubscriptionsRequestBodyItems'Metadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyItems'Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsRequestBodyItems'Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsRequestBodyItems'Metadata'" (\obj -> GHC.Base.pure PostSubscriptionsRequestBodyItems'Metadata')
data PostSubscriptionsRequestBodyItems'TaxRates'OneOf1
    = PostSubscriptionsRequestBodyItems'TaxRates'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsRequestBodyItems'TaxRates'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionsRequestBodyItems'TaxRates'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyItems'TaxRates'OneOf1
    where toJSON (PostSubscriptionsRequestBodyItems'TaxRates'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsRequestBodyItems'TaxRates'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsRequestBodyItems'TaxRates'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionsRequestBodyItems'TaxRates'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionsRequestBodyItems'TaxRates'OneOf1EnumString_
                                          else PostSubscriptionsRequestBodyItems'TaxRates'OneOf1EnumOther val)
data PostSubscriptionsRequestBodyItems'TaxRates'Variants
    = PostSubscriptionsRequestBodyItems'TaxRates'Variant1 PostSubscriptionsRequestBodyItems'TaxRates'OneOf1
    | PostSubscriptionsRequestBodyItems'TaxRates'Variant2 ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyItems'TaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsRequestBodyItems'TaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyItems'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "billing_thresholds" (postSubscriptionsRequestBodyItems'BillingThresholds obj) : (Data.Aeson..=) "metadata" (postSubscriptionsRequestBodyItems'Metadata obj) : (Data.Aeson..=) "plan" (postSubscriptionsRequestBodyItems'Plan obj) : (Data.Aeson..=) "quantity" (postSubscriptionsRequestBodyItems'Quantity obj) : (Data.Aeson..=) "tax_rates" (postSubscriptionsRequestBodyItems'TaxRates obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "billing_thresholds" (postSubscriptionsRequestBodyItems'BillingThresholds obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postSubscriptionsRequestBodyItems'Metadata obj) GHC.Base.<> ((Data.Aeson..=) "plan" (postSubscriptionsRequestBodyItems'Plan obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (postSubscriptionsRequestBodyItems'Quantity obj) GHC.Base.<> (Data.Aeson..=) "tax_rates" (postSubscriptionsRequestBodyItems'TaxRates obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsRequestBodyItems'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsRequestBodyItems'" (\obj -> ((((GHC.Base.pure PostSubscriptionsRequestBodyItems' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "plan")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_rates"))
data PostSubscriptionsRequestBodyMetadata'
    = PostSubscriptionsRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostSubscriptionsRequestBodyMetadata')
data PostSubscriptionsRequestBodyPaymentBehavior'
    = PostSubscriptionsRequestBodyPaymentBehavior'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsRequestBodyPaymentBehavior'EnumTyped GHC.Base.String
    | PostSubscriptionsRequestBodyPaymentBehavior'EnumStringAllowIncomplete
    | PostSubscriptionsRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete
    | PostSubscriptionsRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyPaymentBehavior'
    where toJSON (PostSubscriptionsRequestBodyPaymentBehavior'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsRequestBodyPaymentBehavior'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsRequestBodyPaymentBehavior'EnumStringAllowIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "allow_incomplete"
          toJSON (PostSubscriptionsRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error_if_incomplete"
          toJSON (PostSubscriptionsRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending_if_incomplete"
instance Data.Aeson.FromJSON PostSubscriptionsRequestBodyPaymentBehavior'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "allow_incomplete")
                                          then PostSubscriptionsRequestBodyPaymentBehavior'EnumStringAllowIncomplete
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error_if_incomplete")
                                                then PostSubscriptionsRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending_if_incomplete")
                                                      then PostSubscriptionsRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete
                                                      else PostSubscriptionsRequestBodyPaymentBehavior'EnumOther val)
data PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1
    = PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1
    where toJSON (PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1EnumString_
                                          else PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1EnumOther val)
data PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2
    = PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2 {postSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval :: PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval',
                                                                     postSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2IntervalCount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'
    = PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumTyped GHC.Base.String
    | PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringDay
    | PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringMonth
    | PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringWeek
    | PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringYear
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'
    where toJSON (PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringDay) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "day"
          toJSON (PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringMonth) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month"
          toJSON (PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringWeek) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "week"
          toJSON (PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringYear) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "year"
instance Data.Aeson.FromJSON PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "day")
                                          then PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringDay
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month")
                                                then PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringMonth
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "week")
                                                      then PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringWeek
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "year")
                                                            then PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringYear
                                                            else PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumOther val)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "interval" (postSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval obj) : (Data.Aeson..=) "interval_count" (postSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2IntervalCount obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "interval" (postSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval obj) GHC.Base.<> (Data.Aeson..=) "interval_count" (postSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2IntervalCount obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2" (\obj -> (GHC.Base.pure PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "interval_count"))
data PostSubscriptionsRequestBodyPendingInvoiceItemInterval'Variants
    = PostSubscriptionsRequestBodyPendingInvoiceItemInterval'Variant1 PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1
    | PostSubscriptionsRequestBodyPendingInvoiceItemInterval'Variant2 PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyPendingInvoiceItemInterval'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsRequestBodyPendingInvoiceItemInterval'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostSubscriptionsRequestBodyProrationBehavior'
    = PostSubscriptionsRequestBodyProrationBehavior'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsRequestBodyProrationBehavior'EnumTyped GHC.Base.String
    | PostSubscriptionsRequestBodyProrationBehavior'EnumStringAlwaysInvoice
    | PostSubscriptionsRequestBodyProrationBehavior'EnumStringCreateProrations
    | PostSubscriptionsRequestBodyProrationBehavior'EnumStringNone
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyProrationBehavior'
    where toJSON (PostSubscriptionsRequestBodyProrationBehavior'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsRequestBodyProrationBehavior'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsRequestBodyProrationBehavior'EnumStringAlwaysInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "always_invoice"
          toJSON (PostSubscriptionsRequestBodyProrationBehavior'EnumStringCreateProrations) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "create_prorations"
          toJSON (PostSubscriptionsRequestBodyProrationBehavior'EnumStringNone) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none"
instance Data.Aeson.FromJSON PostSubscriptionsRequestBodyProrationBehavior'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "always_invoice")
                                          then PostSubscriptionsRequestBodyProrationBehavior'EnumStringAlwaysInvoice
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "create_prorations")
                                                then PostSubscriptionsRequestBodyProrationBehavior'EnumStringCreateProrations
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none")
                                                      then PostSubscriptionsRequestBodyProrationBehavior'EnumStringNone
                                                      else PostSubscriptionsRequestBodyProrationBehavior'EnumOther val)
data PostSubscriptionsRequestBodyTaxPercent'OneOf1
    = PostSubscriptionsRequestBodyTaxPercent'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsRequestBodyTaxPercent'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionsRequestBodyTaxPercent'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyTaxPercent'OneOf1
    where toJSON (PostSubscriptionsRequestBodyTaxPercent'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsRequestBodyTaxPercent'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsRequestBodyTaxPercent'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionsRequestBodyTaxPercent'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionsRequestBodyTaxPercent'OneOf1EnumString_
                                          else PostSubscriptionsRequestBodyTaxPercent'OneOf1EnumOther val)
data PostSubscriptionsRequestBodyTaxPercent'Variants
    = PostSubscriptionsRequestBodyTaxPercent'Variant1 PostSubscriptionsRequestBodyTaxPercent'OneOf1
    | PostSubscriptionsRequestBodyTaxPercent'Variant2 GHC.Types.Double
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyTaxPercent'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsRequestBodyTaxPercent'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostSubscriptionsRequestBodyTrialEnd'OneOf1
    = PostSubscriptionsRequestBodyTrialEnd'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsRequestBodyTrialEnd'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionsRequestBodyTrialEnd'OneOf1EnumStringNow
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyTrialEnd'OneOf1
    where toJSON (PostSubscriptionsRequestBodyTrialEnd'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsRequestBodyTrialEnd'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsRequestBodyTrialEnd'OneOf1EnumStringNow) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now"
instance Data.Aeson.FromJSON PostSubscriptionsRequestBodyTrialEnd'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now")
                                          then PostSubscriptionsRequestBodyTrialEnd'OneOf1EnumStringNow
                                          else PostSubscriptionsRequestBodyTrialEnd'OneOf1EnumOther val)
data PostSubscriptionsRequestBodyTrialEnd'Variants
    = PostSubscriptionsRequestBodyTrialEnd'Variant1 PostSubscriptionsRequestBodyTrialEnd'OneOf1
    | PostSubscriptionsRequestBodyTrialEnd'Variant2 GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyTrialEnd'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsRequestBodyTrialEnd'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostSubscriptionsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "application_fee_percent" (postSubscriptionsRequestBodyApplicationFeePercent obj) : (Data.Aeson..=) "backdate_start_date" (postSubscriptionsRequestBodyBackdateStartDate obj) : (Data.Aeson..=) "billing_cycle_anchor" (postSubscriptionsRequestBodyBillingCycleAnchor obj) : (Data.Aeson..=) "billing_thresholds" (postSubscriptionsRequestBodyBillingThresholds obj) : (Data.Aeson..=) "cancel_at" (postSubscriptionsRequestBodyCancelAt obj) : (Data.Aeson..=) "cancel_at_period_end" (postSubscriptionsRequestBodyCancelAtPeriodEnd obj) : (Data.Aeson..=) "collection_method" (postSubscriptionsRequestBodyCollectionMethod obj) : (Data.Aeson..=) "coupon" (postSubscriptionsRequestBodyCoupon obj) : (Data.Aeson..=) "customer" (postSubscriptionsRequestBodyCustomer obj) : (Data.Aeson..=) "days_until_due" (postSubscriptionsRequestBodyDaysUntilDue obj) : (Data.Aeson..=) "default_payment_method" (postSubscriptionsRequestBodyDefaultPaymentMethod obj) : (Data.Aeson..=) "default_source" (postSubscriptionsRequestBodyDefaultSource obj) : (Data.Aeson..=) "default_tax_rates" (postSubscriptionsRequestBodyDefaultTaxRates obj) : (Data.Aeson..=) "expand" (postSubscriptionsRequestBodyExpand obj) : (Data.Aeson..=) "items" (postSubscriptionsRequestBodyItems obj) : (Data.Aeson..=) "metadata" (postSubscriptionsRequestBodyMetadata obj) : (Data.Aeson..=) "off_session" (postSubscriptionsRequestBodyOffSession obj) : (Data.Aeson..=) "payment_behavior" (postSubscriptionsRequestBodyPaymentBehavior obj) : (Data.Aeson..=) "pending_invoice_item_interval" (postSubscriptionsRequestBodyPendingInvoiceItemInterval obj) : (Data.Aeson..=) "prorate" (postSubscriptionsRequestBodyProrate obj) : (Data.Aeson..=) "proration_behavior" (postSubscriptionsRequestBodyProrationBehavior obj) : (Data.Aeson..=) "tax_percent" (postSubscriptionsRequestBodyTaxPercent obj) : (Data.Aeson..=) "trial_end" (postSubscriptionsRequestBodyTrialEnd obj) : (Data.Aeson..=) "trial_from_plan" (postSubscriptionsRequestBodyTrialFromPlan obj) : (Data.Aeson..=) "trial_period_days" (postSubscriptionsRequestBodyTrialPeriodDays obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "application_fee_percent" (postSubscriptionsRequestBodyApplicationFeePercent obj) GHC.Base.<> ((Data.Aeson..=) "backdate_start_date" (postSubscriptionsRequestBodyBackdateStartDate obj) GHC.Base.<> ((Data.Aeson..=) "billing_cycle_anchor" (postSubscriptionsRequestBodyBillingCycleAnchor obj) GHC.Base.<> ((Data.Aeson..=) "billing_thresholds" (postSubscriptionsRequestBodyBillingThresholds obj) GHC.Base.<> ((Data.Aeson..=) "cancel_at" (postSubscriptionsRequestBodyCancelAt obj) GHC.Base.<> ((Data.Aeson..=) "cancel_at_period_end" (postSubscriptionsRequestBodyCancelAtPeriodEnd obj) GHC.Base.<> ((Data.Aeson..=) "collection_method" (postSubscriptionsRequestBodyCollectionMethod obj) GHC.Base.<> ((Data.Aeson..=) "coupon" (postSubscriptionsRequestBodyCoupon obj) GHC.Base.<> ((Data.Aeson..=) "customer" (postSubscriptionsRequestBodyCustomer obj) GHC.Base.<> ((Data.Aeson..=) "days_until_due" (postSubscriptionsRequestBodyDaysUntilDue obj) GHC.Base.<> ((Data.Aeson..=) "default_payment_method" (postSubscriptionsRequestBodyDefaultPaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "default_source" (postSubscriptionsRequestBodyDefaultSource obj) GHC.Base.<> ((Data.Aeson..=) "default_tax_rates" (postSubscriptionsRequestBodyDefaultTaxRates obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postSubscriptionsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "items" (postSubscriptionsRequestBodyItems obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postSubscriptionsRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "off_session" (postSubscriptionsRequestBodyOffSession obj) GHC.Base.<> ((Data.Aeson..=) "payment_behavior" (postSubscriptionsRequestBodyPaymentBehavior obj) GHC.Base.<> ((Data.Aeson..=) "pending_invoice_item_interval" (postSubscriptionsRequestBodyPendingInvoiceItemInterval obj) GHC.Base.<> ((Data.Aeson..=) "prorate" (postSubscriptionsRequestBodyProrate obj) GHC.Base.<> ((Data.Aeson..=) "proration_behavior" (postSubscriptionsRequestBodyProrationBehavior obj) GHC.Base.<> ((Data.Aeson..=) "tax_percent" (postSubscriptionsRequestBodyTaxPercent obj) GHC.Base.<> ((Data.Aeson..=) "trial_end" (postSubscriptionsRequestBodyTrialEnd obj) GHC.Base.<> ((Data.Aeson..=) "trial_from_plan" (postSubscriptionsRequestBodyTrialFromPlan obj) GHC.Base.<> (Data.Aeson..=) "trial_period_days" (postSubscriptionsRequestBodyTrialPeriodDays obj)))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsRequestBody" (\obj -> ((((((((((((((((((((((((GHC.Base.pure PostSubscriptionsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "backdate_start_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_cycle_anchor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancel_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancel_at_period_end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "collection_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "coupon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "days_until_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_tax_rates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "items")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "off_session")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pending_invoice_item_interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "prorate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proration_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_from_plan")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_period_days"))

data PostSubscriptionsResponse
    = PostSubscriptionsResponseError GHC.Base.String
    | PostSubscriptionsResponse200 Subscription
    | PostSubscriptionsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
