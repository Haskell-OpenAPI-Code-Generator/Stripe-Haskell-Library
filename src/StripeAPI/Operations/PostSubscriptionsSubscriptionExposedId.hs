{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostSubscriptionsSubscriptionExposedId where

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
-- POST /v1/subscriptions/{subscription_exposed_id}
postSubscriptionsSubscriptionExposedId :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                        StripeAPI.Common.SecurityScheme s) =>
                                          StripeAPI.Common.Configuration s ->
                                          GHC.Base.String ->
                                          PostSubscriptionsSubscriptionExposedIdRequestBody ->
                                          m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                (Network.HTTP.Client.Types.Response PostSubscriptionsSubscriptionExposedIdResponse))
postSubscriptionsSubscriptionExposedId config
                                       subscriptionExposedId
                                       body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSubscriptionsSubscriptionExposedIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionsSubscriptionExposedIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    Subscription)
                                                                                                                                                                                                                              | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionsSubscriptionExposedIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/subscriptions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionExposedId)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSubscriptionsSubscriptionExposedIdRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                           StripeAPI.Common.SecurityScheme s) =>
                                             StripeAPI.Common.Configuration s ->
                                             GHC.Base.String ->
                                             PostSubscriptionsSubscriptionExposedIdRequestBody ->
                                             m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                   (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSubscriptionsSubscriptionExposedIdRaw config
                                          subscriptionExposedId
                                          body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/subscriptions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionExposedId)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSubscriptionsSubscriptionExposedIdM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                         StripeAPI.Common.SecurityScheme s) =>
                                           GHC.Base.String ->
                                           PostSubscriptionsSubscriptionExposedIdRequestBody ->
                                           Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                              m
                                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                  (Network.HTTP.Client.Types.Response PostSubscriptionsSubscriptionExposedIdResponse))
postSubscriptionsSubscriptionExposedIdM subscriptionExposedId
                                        body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSubscriptionsSubscriptionExposedIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionsSubscriptionExposedIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     Subscription)
                                                                                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionsSubscriptionExposedIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/subscriptions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionExposedId)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSubscriptionsSubscriptionExposedIdRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                            StripeAPI.Common.SecurityScheme s) =>
                                              GHC.Base.String ->
                                              PostSubscriptionsSubscriptionExposedIdRequestBody ->
                                              Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                 m
                                                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSubscriptionsSubscriptionExposedIdRawM subscriptionExposedId
                                           body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/subscriptions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionExposedId)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostSubscriptionsSubscriptionExposedIdRequestBody
    = PostSubscriptionsSubscriptionExposedIdRequestBody {postSubscriptionsSubscriptionExposedIdRequestBodyApplicationFeePercent :: (GHC.Maybe.Maybe GHC.Types.Double),
                                                         postSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'),
                                                         postSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'Variants),
                                                         postSubscriptionsSubscriptionExposedIdRequestBodyCancelAt :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'Variants),
                                                         postSubscriptionsSubscriptionExposedIdRequestBodyCancelAtPeriodEnd :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                         postSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'),
                                                         postSubscriptionsSubscriptionExposedIdRequestBodyCoupon :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postSubscriptionsSubscriptionExposedIdRequestBodyDaysUntilDue :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                         postSubscriptionsSubscriptionExposedIdRequestBodyDefaultPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postSubscriptionsSubscriptionExposedIdRequestBodyDefaultSource :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'Variants),
                                                         postSubscriptionsSubscriptionExposedIdRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                                         postSubscriptionsSubscriptionExposedIdRequestBodyItems :: (GHC.Maybe.Maybe ([] PostSubscriptionsSubscriptionExposedIdRequestBodyItems')),
                                                         postSubscriptionsSubscriptionExposedIdRequestBodyMetadata :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionExposedIdRequestBodyMetadata'),
                                                         postSubscriptionsSubscriptionExposedIdRequestBodyOffSession :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                         postSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'),
                                                         postSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'Variants),
                                                         postSubscriptionsSubscriptionExposedIdRequestBodyProrate :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                         postSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'),
                                                         postSubscriptionsSubscriptionExposedIdRequestBodyProrationDate :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                         postSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'Variants),
                                                         postSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'Variants),
                                                         postSubscriptionsSubscriptionExposedIdRequestBodyTrialFromPlan :: (GHC.Maybe.Maybe GHC.Types.Bool)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'
    = PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumTyped GHC.Base.String
    | PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumStringNow
    | PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumStringUnchanged
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'
    where toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumStringNow) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now"
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumStringUnchanged) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unchanged"
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now")
                                          then PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumStringNow
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unchanged")
                                                then PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumStringUnchanged
                                                else PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumOther val)
data PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1
    = PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1
    where toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumString_
                                          else PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumOther val)
data PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2
    = PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2 {postSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2AmountGte :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                                                 postSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2ResetBillingCycleAnchor :: (GHC.Maybe.Maybe GHC.Types.Bool)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount_gte" (postSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2AmountGte obj) : (Data.Aeson..=) "reset_billing_cycle_anchor" (postSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2ResetBillingCycleAnchor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount_gte" (postSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2AmountGte obj) GHC.Base.<> (Data.Aeson..=) "reset_billing_cycle_anchor" (postSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2ResetBillingCycleAnchor obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2" (\obj -> (GHC.Base.pure PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reset_billing_cycle_anchor"))
data PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'Variants
    = PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'Variant1 PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1
    | PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'Variant2 PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1
    = PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1
    where toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumString_
                                          else PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumOther val)
data PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'Variants
    = PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'Variant1 PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1
    | PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'Variant2 GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'
    = PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumTyped GHC.Base.String
    | PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumStringChargeAutomatically
    | PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumStringSendInvoice
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'
    where toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumStringChargeAutomatically) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically"
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumStringSendInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice"
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically")
                                          then PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumStringChargeAutomatically
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice")
                                                then PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumStringSendInvoice
                                                else PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumOther val)
data PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1
    = PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1
    where toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumString_
                                          else PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumOther val)
data PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'Variants
    = PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'Variant1 PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1
    | PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'Variant2 ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostSubscriptionsSubscriptionExposedIdRequestBodyItems'
    = PostSubscriptionsSubscriptionExposedIdRequestBodyItems' {postSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'Variants),
                                                               postSubscriptionsSubscriptionExposedIdRequestBodyItems'ClearUsage :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                               postSubscriptionsSubscriptionExposedIdRequestBodyItems'Deleted :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                               postSubscriptionsSubscriptionExposedIdRequestBodyItems'Id :: (GHC.Maybe.Maybe GHC.Base.String),
                                                               postSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata'),
                                                               postSubscriptionsSubscriptionExposedIdRequestBodyItems'Plan :: (GHC.Maybe.Maybe GHC.Base.String),
                                                               postSubscriptionsSubscriptionExposedIdRequestBodyItems'Quantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                               postSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'Variants)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1
    = PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1
    where toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumString_
                                          else PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumOther val)
data PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2
    = PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2 {postSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2UsageGte :: GHC.Integer.Type.Integer}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "usage_gte" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2UsageGte obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "usage_gte" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2UsageGte obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2" (\obj -> GHC.Base.pure PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "usage_gte"))
data PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'Variants
    = PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'Variant1 PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1
    | PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'Variant2 PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata'
    = PostSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata'" (\obj -> GHC.Base.pure PostSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata')
data PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1
    = PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1
    where toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumString_
                                          else PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumOther val)
data PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'Variants
    = PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'Variant1 PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1
    | PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'Variant2 ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyItems'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "billing_thresholds" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds obj) : (Data.Aeson..=) "clear_usage" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'ClearUsage obj) : (Data.Aeson..=) "deleted" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'Deleted obj) : (Data.Aeson..=) "id" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'Id obj) : (Data.Aeson..=) "metadata" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata obj) : (Data.Aeson..=) "plan" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'Plan obj) : (Data.Aeson..=) "quantity" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'Quantity obj) : (Data.Aeson..=) "tax_rates" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "billing_thresholds" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds obj) GHC.Base.<> ((Data.Aeson..=) "clear_usage" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'ClearUsage obj) GHC.Base.<> ((Data.Aeson..=) "deleted" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'Deleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'Id obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata obj) GHC.Base.<> ((Data.Aeson..=) "plan" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'Plan obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'Quantity obj) GHC.Base.<> (Data.Aeson..=) "tax_rates" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyItems'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsSubscriptionExposedIdRequestBodyItems'" (\obj -> (((((((GHC.Base.pure PostSubscriptionsSubscriptionExposedIdRequestBodyItems' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "clear_usage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "plan")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_rates"))
data PostSubscriptionsSubscriptionExposedIdRequestBodyMetadata'
    = PostSubscriptionsSubscriptionExposedIdRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsSubscriptionExposedIdRequestBodyMetadata'" (\obj -> GHC.Base.pure PostSubscriptionsSubscriptionExposedIdRequestBodyMetadata')
data PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'
    = PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumTyped GHC.Base.String
    | PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringAllowIncomplete
    | PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete
    | PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'
    where toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringAllowIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "allow_incomplete"
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error_if_incomplete"
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending_if_incomplete"
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "allow_incomplete")
                                          then PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringAllowIncomplete
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error_if_incomplete")
                                                then PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending_if_incomplete")
                                                      then PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete
                                                      else PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumOther val)
data PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1
    = PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1
    where toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumString_
                                          else PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumOther val)
data PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2
    = PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2 {postSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval :: PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval',
                                                                                          postSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2IntervalCount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'
    = PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumTyped GHC.Base.String
    | PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringDay
    | PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringMonth
    | PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringWeek
    | PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringYear
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'
    where toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringDay) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "day"
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringMonth) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month"
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringWeek) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "week"
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringYear) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "year"
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "day")
                                          then PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringDay
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month")
                                                then PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringMonth
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "week")
                                                      then PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringWeek
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "year")
                                                            then PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringYear
                                                            else PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumOther val)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "interval" (postSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval obj) : (Data.Aeson..=) "interval_count" (postSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2IntervalCount obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "interval" (postSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval obj) GHC.Base.<> (Data.Aeson..=) "interval_count" (postSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2IntervalCount obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2" (\obj -> (GHC.Base.pure PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "interval_count"))
data PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'Variants
    = PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'Variant1 PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1
    | PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'Variant2 PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'
    = PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumTyped GHC.Base.String
    | PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringAlwaysInvoice
    | PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringCreateProrations
    | PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringNone
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'
    where toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringAlwaysInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "always_invoice"
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringCreateProrations) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "create_prorations"
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringNone) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none"
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "always_invoice")
                                          then PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringAlwaysInvoice
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "create_prorations")
                                                then PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringCreateProrations
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none")
                                                      then PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringNone
                                                      else PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumOther val)
data PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1
    = PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1
    where toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumString_
                                          else PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumOther val)
data PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'Variants
    = PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'Variant1 PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1
    | PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'Variant2 GHC.Types.Double
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1
    = PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumStringNow
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1
    where toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumStringNow) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now"
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now")
                                          then PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumStringNow
                                          else PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumOther val)
data PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'Variants
    = PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'Variant1 PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1
    | PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'Variant2 GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "application_fee_percent" (postSubscriptionsSubscriptionExposedIdRequestBodyApplicationFeePercent obj) : (Data.Aeson..=) "billing_cycle_anchor" (postSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor obj) : (Data.Aeson..=) "billing_thresholds" (postSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds obj) : (Data.Aeson..=) "cancel_at" (postSubscriptionsSubscriptionExposedIdRequestBodyCancelAt obj) : (Data.Aeson..=) "cancel_at_period_end" (postSubscriptionsSubscriptionExposedIdRequestBodyCancelAtPeriodEnd obj) : (Data.Aeson..=) "collection_method" (postSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod obj) : (Data.Aeson..=) "coupon" (postSubscriptionsSubscriptionExposedIdRequestBodyCoupon obj) : (Data.Aeson..=) "days_until_due" (postSubscriptionsSubscriptionExposedIdRequestBodyDaysUntilDue obj) : (Data.Aeson..=) "default_payment_method" (postSubscriptionsSubscriptionExposedIdRequestBodyDefaultPaymentMethod obj) : (Data.Aeson..=) "default_source" (postSubscriptionsSubscriptionExposedIdRequestBodyDefaultSource obj) : (Data.Aeson..=) "default_tax_rates" (postSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates obj) : (Data.Aeson..=) "expand" (postSubscriptionsSubscriptionExposedIdRequestBodyExpand obj) : (Data.Aeson..=) "items" (postSubscriptionsSubscriptionExposedIdRequestBodyItems obj) : (Data.Aeson..=) "metadata" (postSubscriptionsSubscriptionExposedIdRequestBodyMetadata obj) : (Data.Aeson..=) "off_session" (postSubscriptionsSubscriptionExposedIdRequestBodyOffSession obj) : (Data.Aeson..=) "payment_behavior" (postSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior obj) : (Data.Aeson..=) "pending_invoice_item_interval" (postSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval obj) : (Data.Aeson..=) "prorate" (postSubscriptionsSubscriptionExposedIdRequestBodyProrate obj) : (Data.Aeson..=) "proration_behavior" (postSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior obj) : (Data.Aeson..=) "proration_date" (postSubscriptionsSubscriptionExposedIdRequestBodyProrationDate obj) : (Data.Aeson..=) "tax_percent" (postSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent obj) : (Data.Aeson..=) "trial_end" (postSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd obj) : (Data.Aeson..=) "trial_from_plan" (postSubscriptionsSubscriptionExposedIdRequestBodyTrialFromPlan obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "application_fee_percent" (postSubscriptionsSubscriptionExposedIdRequestBodyApplicationFeePercent obj) GHC.Base.<> ((Data.Aeson..=) "billing_cycle_anchor" (postSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor obj) GHC.Base.<> ((Data.Aeson..=) "billing_thresholds" (postSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds obj) GHC.Base.<> ((Data.Aeson..=) "cancel_at" (postSubscriptionsSubscriptionExposedIdRequestBodyCancelAt obj) GHC.Base.<> ((Data.Aeson..=) "cancel_at_period_end" (postSubscriptionsSubscriptionExposedIdRequestBodyCancelAtPeriodEnd obj) GHC.Base.<> ((Data.Aeson..=) "collection_method" (postSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod obj) GHC.Base.<> ((Data.Aeson..=) "coupon" (postSubscriptionsSubscriptionExposedIdRequestBodyCoupon obj) GHC.Base.<> ((Data.Aeson..=) "days_until_due" (postSubscriptionsSubscriptionExposedIdRequestBodyDaysUntilDue obj) GHC.Base.<> ((Data.Aeson..=) "default_payment_method" (postSubscriptionsSubscriptionExposedIdRequestBodyDefaultPaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "default_source" (postSubscriptionsSubscriptionExposedIdRequestBodyDefaultSource obj) GHC.Base.<> ((Data.Aeson..=) "default_tax_rates" (postSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postSubscriptionsSubscriptionExposedIdRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "items" (postSubscriptionsSubscriptionExposedIdRequestBodyItems obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postSubscriptionsSubscriptionExposedIdRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "off_session" (postSubscriptionsSubscriptionExposedIdRequestBodyOffSession obj) GHC.Base.<> ((Data.Aeson..=) "payment_behavior" (postSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior obj) GHC.Base.<> ((Data.Aeson..=) "pending_invoice_item_interval" (postSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval obj) GHC.Base.<> ((Data.Aeson..=) "prorate" (postSubscriptionsSubscriptionExposedIdRequestBodyProrate obj) GHC.Base.<> ((Data.Aeson..=) "proration_behavior" (postSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior obj) GHC.Base.<> ((Data.Aeson..=) "proration_date" (postSubscriptionsSubscriptionExposedIdRequestBodyProrationDate obj) GHC.Base.<> ((Data.Aeson..=) "tax_percent" (postSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent obj) GHC.Base.<> ((Data.Aeson..=) "trial_end" (postSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd obj) GHC.Base.<> (Data.Aeson..=) "trial_from_plan" (postSubscriptionsSubscriptionExposedIdRequestBodyTrialFromPlan obj)))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsSubscriptionExposedIdRequestBody" (\obj -> ((((((((((((((((((((((GHC.Base.pure PostSubscriptionsSubscriptionExposedIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_cycle_anchor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancel_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancel_at_period_end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "collection_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "coupon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "days_until_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_tax_rates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "items")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "off_session")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pending_invoice_item_interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "prorate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proration_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proration_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_from_plan"))

data PostSubscriptionsSubscriptionExposedIdResponse
    = PostSubscriptionsSubscriptionExposedIdResponseError GHC.Base.String
    | PostSubscriptionsSubscriptionExposedIdResponse200 Subscription
    | PostSubscriptionsSubscriptionExposedIdResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
