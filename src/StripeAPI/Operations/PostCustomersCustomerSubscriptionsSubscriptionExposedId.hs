{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostCustomersCustomerSubscriptionsSubscriptionExposedId where

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
-- POST /v1/customers/{customer}/subscriptions/{subscription_exposed_id}
postCustomersCustomerSubscriptionsSubscriptionExposedId :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                         StripeAPI.Common.SecurityScheme s) =>
                                                           StripeAPI.Common.Configuration s ->
                                                           GHC.Base.String ->
                                                           GHC.Base.String ->
                                                           PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody ->
                                                           m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                 (Network.HTTP.Client.Types.Response PostCustomersCustomerSubscriptionsSubscriptionExposedIdResponse))
postCustomersCustomerSubscriptionsSubscriptionExposedId config
                                                        customer
                                                        subscriptionExposedId
                                                        body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerSubscriptionsSubscriptionExposedIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerSubscriptionsSubscriptionExposedIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       Subscription)
                                                                                                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerSubscriptionsSubscriptionExposedIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/subscriptions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionExposedId)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersCustomerSubscriptionsSubscriptionExposedIdRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                            StripeAPI.Common.SecurityScheme s) =>
                                                              StripeAPI.Common.Configuration s ->
                                                              GHC.Base.String ->
                                                              GHC.Base.String ->
                                                              PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody ->
                                                              m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                    (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerSubscriptionsSubscriptionExposedIdRaw config
                                                           customer
                                                           subscriptionExposedId
                                                           body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/subscriptions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionExposedId)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersCustomerSubscriptionsSubscriptionExposedIdM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                          StripeAPI.Common.SecurityScheme s) =>
                                                            GHC.Base.String ->
                                                            GHC.Base.String ->
                                                            PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody ->
                                                            Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                               m
                                                                                               (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                                   (Network.HTTP.Client.Types.Response PostCustomersCustomerSubscriptionsSubscriptionExposedIdResponse))
postCustomersCustomerSubscriptionsSubscriptionExposedIdM customer
                                                         subscriptionExposedId
                                                         body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerSubscriptionsSubscriptionExposedIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerSubscriptionsSubscriptionExposedIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        Subscription)
                                                                                                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerSubscriptionsSubscriptionExposedIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/subscriptions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionExposedId)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersCustomerSubscriptionsSubscriptionExposedIdRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                             StripeAPI.Common.SecurityScheme s) =>
                                                               GHC.Base.String ->
                                                               GHC.Base.String ->
                                                               PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody ->
                                                               Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                                  m
                                                                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerSubscriptionsSubscriptionExposedIdRawM customer
                                                            subscriptionExposedId
                                                            body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/subscriptions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionExposedId)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody {postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyApplicationFeePercent :: (GHC.Maybe.Maybe GHC.Types.Double),
                                                                          postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'),
                                                                          postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'Variants),
                                                                          postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'Variants),
                                                                          postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAtPeriodEnd :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                                          postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'),
                                                                          postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCoupon :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                          postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDaysUntilDue :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                                          postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                          postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultSource :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                          postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'Variants),
                                                                          postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                                                          postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems :: (GHC.Maybe.Maybe ([] PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems')),
                                                                          postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyMetadata :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyMetadata'),
                                                                          postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyOffSession :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                                          postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'),
                                                                          postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'Variants),
                                                                          postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrate :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                                          postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'),
                                                                          postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationDate :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                                          postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'Variants),
                                                                          postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'Variants),
                                                                          postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialFromPlan :: (GHC.Maybe.Maybe GHC.Types.Bool)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumStringNow
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumStringUnchanged
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'
    where toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumStringNow) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now"
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumStringUnchanged) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unchanged"
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now")
                                          then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumStringNow
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unchanged")
                                                then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumStringUnchanged
                                                else PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumOther val)
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumString_
                                          else PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumOther val)
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2 {postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2AmountGte :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                                                                  postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2ResetBillingCycleAnchor :: (GHC.Maybe.Maybe GHC.Types.Bool)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount_gte" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2AmountGte obj) : (Data.Aeson..=) "reset_billing_cycle_anchor" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2ResetBillingCycleAnchor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount_gte" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2AmountGte obj) GHC.Base.<> (Data.Aeson..=) "reset_billing_cycle_anchor" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2ResetBillingCycleAnchor obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2" (\obj -> (GHC.Base.pure PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reset_billing_cycle_anchor"))
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'Variants
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'Variant1 PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'Variant2 PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumString_
                                          else PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumOther val)
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'Variants
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'Variant1 PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'Variant2 GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumStringChargeAutomatically
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumStringSendInvoice
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'
    where toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumStringChargeAutomatically) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically"
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumStringSendInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice"
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically")
                                          then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumStringChargeAutomatically
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice")
                                                then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumStringSendInvoice
                                                else PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumOther val)
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumString_
                                          else PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumOther val)
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'Variants
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'Variant1 PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'Variant2 ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems' {postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'Variants),
                                                                                postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'ClearUsage :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                                                postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Deleted :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                                                postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Id :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                                postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata'),
                                                                                postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Plan :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                                postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Quantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                                                postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'Variants)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumString_
                                          else PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumOther val)
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2 {postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2UsageGte :: GHC.Integer.Type.Integer}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "usage_gte" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2UsageGte obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "usage_gte" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2UsageGte obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2" (\obj -> GHC.Base.pure PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "usage_gte"))
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'Variants
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'Variant1 PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'Variant2 PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata'
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata'" (\obj -> GHC.Base.pure PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata')
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumString_
                                          else PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumOther val)
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'Variants
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'Variant1 PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'Variant2 ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "billing_thresholds" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds obj) : (Data.Aeson..=) "clear_usage" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'ClearUsage obj) : (Data.Aeson..=) "deleted" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Deleted obj) : (Data.Aeson..=) "id" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Id obj) : (Data.Aeson..=) "metadata" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata obj) : (Data.Aeson..=) "plan" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Plan obj) : (Data.Aeson..=) "quantity" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Quantity obj) : (Data.Aeson..=) "tax_rates" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "billing_thresholds" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds obj) GHC.Base.<> ((Data.Aeson..=) "clear_usage" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'ClearUsage obj) GHC.Base.<> ((Data.Aeson..=) "deleted" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Deleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Id obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata obj) GHC.Base.<> ((Data.Aeson..=) "plan" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Plan obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Quantity obj) GHC.Base.<> (Data.Aeson..=) "tax_rates" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'" (\obj -> (((((((GHC.Base.pure PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "clear_usage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "plan")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_rates"))
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyMetadata'
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyMetadata'" (\obj -> GHC.Base.pure PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyMetadata')
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringAllowIncomplete
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'
    where toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringAllowIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "allow_incomplete"
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error_if_incomplete"
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending_if_incomplete"
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "allow_incomplete")
                                          then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringAllowIncomplete
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error_if_incomplete")
                                                then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending_if_incomplete")
                                                      then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete
                                                      else PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumOther val)
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumString_
                                          else PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumOther val)
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2 {postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval :: PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval',
                                                                                                           postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2IntervalCount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringDay
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringMonth
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringWeek
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringYear
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'
    where toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringDay) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "day"
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringMonth) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month"
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringWeek) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "week"
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringYear) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "year"
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "day")
                                          then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringDay
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month")
                                                then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringMonth
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "week")
                                                      then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringWeek
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "year")
                                                            then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringYear
                                                            else PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumOther val)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "interval" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval obj) : (Data.Aeson..=) "interval_count" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2IntervalCount obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "interval" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval obj) GHC.Base.<> (Data.Aeson..=) "interval_count" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2IntervalCount obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2" (\obj -> (GHC.Base.pure PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "interval_count"))
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'Variants
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'Variant1 PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'Variant2 PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringAlwaysInvoice
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringCreateProrations
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringNone
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'
    where toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringAlwaysInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "always_invoice"
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringCreateProrations) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "create_prorations"
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringNone) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none"
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "always_invoice")
                                          then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringAlwaysInvoice
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "create_prorations")
                                                then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringCreateProrations
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none")
                                                      then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringNone
                                                      else PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumOther val)
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumString_
                                          else PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumOther val)
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'Variants
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'Variant1 PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'Variant2 GHC.Types.Double
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumStringNow
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumStringNow) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now"
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now")
                                          then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumStringNow
                                          else PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumOther val)
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'Variants
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'Variant1 PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'Variant2 GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "application_fee_percent" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyApplicationFeePercent obj) : (Data.Aeson..=) "billing_cycle_anchor" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor obj) : (Data.Aeson..=) "billing_thresholds" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds obj) : (Data.Aeson..=) "cancel_at" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt obj) : (Data.Aeson..=) "cancel_at_period_end" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAtPeriodEnd obj) : (Data.Aeson..=) "collection_method" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod obj) : (Data.Aeson..=) "coupon" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCoupon obj) : (Data.Aeson..=) "days_until_due" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDaysUntilDue obj) : (Data.Aeson..=) "default_payment_method" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultPaymentMethod obj) : (Data.Aeson..=) "default_source" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultSource obj) : (Data.Aeson..=) "default_tax_rates" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates obj) : (Data.Aeson..=) "expand" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyExpand obj) : (Data.Aeson..=) "items" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems obj) : (Data.Aeson..=) "metadata" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyMetadata obj) : (Data.Aeson..=) "off_session" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyOffSession obj) : (Data.Aeson..=) "payment_behavior" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior obj) : (Data.Aeson..=) "pending_invoice_item_interval" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval obj) : (Data.Aeson..=) "prorate" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrate obj) : (Data.Aeson..=) "proration_behavior" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior obj) : (Data.Aeson..=) "proration_date" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationDate obj) : (Data.Aeson..=) "tax_percent" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent obj) : (Data.Aeson..=) "trial_end" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd obj) : (Data.Aeson..=) "trial_from_plan" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialFromPlan obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "application_fee_percent" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyApplicationFeePercent obj) GHC.Base.<> ((Data.Aeson..=) "billing_cycle_anchor" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor obj) GHC.Base.<> ((Data.Aeson..=) "billing_thresholds" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds obj) GHC.Base.<> ((Data.Aeson..=) "cancel_at" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt obj) GHC.Base.<> ((Data.Aeson..=) "cancel_at_period_end" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAtPeriodEnd obj) GHC.Base.<> ((Data.Aeson..=) "collection_method" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod obj) GHC.Base.<> ((Data.Aeson..=) "coupon" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCoupon obj) GHC.Base.<> ((Data.Aeson..=) "days_until_due" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDaysUntilDue obj) GHC.Base.<> ((Data.Aeson..=) "default_payment_method" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultPaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "default_source" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultSource obj) GHC.Base.<> ((Data.Aeson..=) "default_tax_rates" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "items" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "off_session" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyOffSession obj) GHC.Base.<> ((Data.Aeson..=) "payment_behavior" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior obj) GHC.Base.<> ((Data.Aeson..=) "pending_invoice_item_interval" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval obj) GHC.Base.<> ((Data.Aeson..=) "prorate" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrate obj) GHC.Base.<> ((Data.Aeson..=) "proration_behavior" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior obj) GHC.Base.<> ((Data.Aeson..=) "proration_date" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationDate obj) GHC.Base.<> ((Data.Aeson..=) "tax_percent" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent obj) GHC.Base.<> ((Data.Aeson..=) "trial_end" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd obj) GHC.Base.<> (Data.Aeson..=) "trial_from_plan" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialFromPlan obj)))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody" (\obj -> ((((((((((((((((((((((GHC.Base.pure PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_cycle_anchor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancel_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancel_at_period_end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "collection_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "coupon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "days_until_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_tax_rates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "items")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "off_session")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pending_invoice_item_interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "prorate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proration_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proration_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_from_plan"))

data PostCustomersCustomerSubscriptionsSubscriptionExposedIdResponse
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdResponseError GHC.Base.String
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdResponse200 Subscription
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
