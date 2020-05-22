{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postSubscriptionItems
module StripeAPI.Operations.PostSubscriptionItems where

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

-- | > POST /v1/subscription_items
-- 
-- \<p>Adds a new item to an existing subscription. No existing items will be changed or replaced.\<\/p>
postSubscriptionItems :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> PostSubscriptionItemsRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostSubscriptionItemsResponse)) -- ^ Monad containing the result of the operation
postSubscriptionItems config
                      body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSubscriptionItemsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionItemsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                 SubscriptionItem)
                                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionItemsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/subscription_items") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/subscription_items
-- 
-- The same as 'postSubscriptionItems' but returns the raw 'Data.ByteString.Char8.ByteString'
postSubscriptionItemsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                          StripeAPI.Common.SecurityScheme s) =>
                            StripeAPI.Common.Configuration s ->
                            PostSubscriptionItemsRequestBody ->
                            m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSubscriptionItemsRaw config
                         body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/subscription_items") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/subscription_items
-- 
-- Monadic version of 'postSubscriptionItems' (use with 'StripeAPI.Common.runWithConfiguration')
postSubscriptionItemsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          PostSubscriptionItemsRequestBody ->
                          Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                             m
                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                 (Network.HTTP.Client.Types.Response PostSubscriptionItemsResponse))
postSubscriptionItemsM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSubscriptionItemsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionItemsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                  SubscriptionItem)
                                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionItemsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/subscription_items") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/subscription_items
-- 
-- Monadic version of 'postSubscriptionItemsRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postSubscriptionItemsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             PostSubscriptionItemsRequestBody ->
                             Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                m
                                                                (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                    (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSubscriptionItemsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/subscription_items") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postSubscriptionItemsRequestBody
-- 
-- 
data PostSubscriptionItemsRequestBody = PostSubscriptionItemsRequestBody {
  -- | billing_thresholds: Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. When updating, pass an empty string to remove previously-defined thresholds.
  postSubscriptionItemsRequestBodyBillingThresholds :: (GHC.Maybe.Maybe PostSubscriptionItemsRequestBodyBillingThresholds'Variants)
  -- | expand: Specifies which fields in the response should be expanded.
  , postSubscriptionItemsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postSubscriptionItemsRequestBodyMetadata :: (GHC.Maybe.Maybe PostSubscriptionItemsRequestBodyMetadata')
  -- | payment_behavior: Use \`allow_incomplete\` to transition the subscription to \`status=past_due\` if a payment is required but cannot be paid. This allows you to manage scenarios where additional user actions are needed to pay a subscription\'s invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the [SCA Migration Guide](https:\/\/stripe.com\/docs\/billing\/migration\/strong-customer-authentication) for Billing to learn more. This is the default behavior.
  -- 
  -- Use \`pending_if_incomplete\` to update the subscription using [pending updates](https:\/\/stripe.com\/docs\/billing\/subscriptions\/pending-updates). When you use \`pending_if_incomplete\` you can only pass the parameters [supported by pending updates](https:\/\/stripe.com\/docs\/billing\/pending-updates-reference\#supported-attributes).
  -- 
  -- Use \`error_if_incomplete\` if you want Stripe to return an HTTP 402 status code if a subscription\'s first invoice cannot be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further user action is needed, this parameter does not create a subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the [changelog](https:\/\/stripe.com\/docs\/upgrades\#2019-03-14) to learn more.
  , postSubscriptionItemsRequestBodyPaymentBehavior :: (GHC.Maybe.Maybe PostSubscriptionItemsRequestBodyPaymentBehavior')
  -- | plan: The identifier of the plan to add to the subscription.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSubscriptionItemsRequestBodyPlan :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | prorate: This field has been renamed to \`proration_behavior\`. \`prorate=true\` can be replaced with \`proration_behavior=create_prorations\` and \`prorate=false\` can be replaced with \`proration_behavior=none\`.
  , postSubscriptionItemsRequestBodyProrate :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | proration_behavior: Determines how to handle [prorations](https:\/\/stripe.com\/docs\/subscriptions\/billing-cycle\#prorations) when the billing cycle changes (e.g., when switching plans, resetting \`billing_cycle_anchor=now\`, or starting a trial), or if an item\'s \`quantity\` changes. Valid values are \`create_prorations\`, \`none\`, or \`always_invoice\`.
  -- 
  -- Passing \`create_prorations\` will cause proration invoice items to be created when applicable. These proration items will only be invoiced immediately under [certain conditions](https:\/\/stripe.com\/docs\/subscriptions\/upgrading-downgrading\#immediate-payment). In order to always invoice immediately for prorations, pass \`always_invoice\`.
  -- 
  -- Prorations can be disabled by passing \`none\`.
  , postSubscriptionItemsRequestBodyProrationBehavior :: (GHC.Maybe.Maybe PostSubscriptionItemsRequestBodyProrationBehavior')
  -- | proration_date: If set, the proration will be calculated as though the subscription was updated at the given time. This can be used to apply the same proration that was previewed with the [upcoming invoice](https:\/\/stripe.com\/docs\/api\#retrieve_customer_invoice) endpoint.
  , postSubscriptionItemsRequestBodyProrationDate :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | quantity: The quantity you\'d like to apply to the subscription item you\'re creating.
  , postSubscriptionItemsRequestBodyQuantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | subscription: The identifier of the subscription to modify.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSubscriptionItemsRequestBodySubscription :: GHC.Base.String
  -- | tax_rates: A list of [Tax Rate](https:\/\/stripe.com\/docs\/api\/tax_rates) ids. These Tax Rates will override the [\`default_tax_rates\`](https:\/\/stripe.com\/docs\/api\/subscriptions\/create\#create_subscription-default_tax_rates) on the Subscription. When updating, pass an empty string to remove previously-defined tax rates.
  , postSubscriptionItemsRequestBodyTaxRates :: (GHC.Maybe.Maybe PostSubscriptionItemsRequestBodyTaxRates'Variants)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionItemsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "billing_thresholds" (postSubscriptionItemsRequestBodyBillingThresholds obj) : (Data.Aeson..=) "expand" (postSubscriptionItemsRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postSubscriptionItemsRequestBodyMetadata obj) : (Data.Aeson..=) "payment_behavior" (postSubscriptionItemsRequestBodyPaymentBehavior obj) : (Data.Aeson..=) "plan" (postSubscriptionItemsRequestBodyPlan obj) : (Data.Aeson..=) "prorate" (postSubscriptionItemsRequestBodyProrate obj) : (Data.Aeson..=) "proration_behavior" (postSubscriptionItemsRequestBodyProrationBehavior obj) : (Data.Aeson..=) "proration_date" (postSubscriptionItemsRequestBodyProrationDate obj) : (Data.Aeson..=) "quantity" (postSubscriptionItemsRequestBodyQuantity obj) : (Data.Aeson..=) "subscription" (postSubscriptionItemsRequestBodySubscription obj) : (Data.Aeson..=) "tax_rates" (postSubscriptionItemsRequestBodyTaxRates obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "billing_thresholds" (postSubscriptionItemsRequestBodyBillingThresholds obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postSubscriptionItemsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postSubscriptionItemsRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "payment_behavior" (postSubscriptionItemsRequestBodyPaymentBehavior obj) GHC.Base.<> ((Data.Aeson..=) "plan" (postSubscriptionItemsRequestBodyPlan obj) GHC.Base.<> ((Data.Aeson..=) "prorate" (postSubscriptionItemsRequestBodyProrate obj) GHC.Base.<> ((Data.Aeson..=) "proration_behavior" (postSubscriptionItemsRequestBodyProrationBehavior obj) GHC.Base.<> ((Data.Aeson..=) "proration_date" (postSubscriptionItemsRequestBodyProrationDate obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (postSubscriptionItemsRequestBodyQuantity obj) GHC.Base.<> ((Data.Aeson..=) "subscription" (postSubscriptionItemsRequestBodySubscription obj) GHC.Base.<> (Data.Aeson..=) "tax_rates" (postSubscriptionItemsRequestBodyTaxRates obj)))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionItemsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionItemsRequestBody" (\obj -> ((((((((((GHC.Base.pure PostSubscriptionItemsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "plan")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "prorate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proration_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proration_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "subscription")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_rates"))
-- | Defines the enum schema postSubscriptionItemsRequestBodyBilling_thresholds\'OneOf1
-- 
-- 
data PostSubscriptionItemsRequestBodyBillingThresholds'OneOf1
    = PostSubscriptionItemsRequestBodyBillingThresholds'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionItemsRequestBodyBillingThresholds'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionItemsRequestBodyBillingThresholds'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionItemsRequestBodyBillingThresholds'OneOf1
    where toJSON (PostSubscriptionItemsRequestBodyBillingThresholds'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionItemsRequestBodyBillingThresholds'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionItemsRequestBodyBillingThresholds'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionItemsRequestBodyBillingThresholds'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionItemsRequestBodyBillingThresholds'OneOf1EnumString_
                                          else PostSubscriptionItemsRequestBodyBillingThresholds'OneOf1EnumOther val)
-- | Defines the data type for the schema postSubscriptionItemsRequestBodyBilling_thresholds\'OneOf2
-- 
-- 
data PostSubscriptionItemsRequestBodyBillingThresholds'OneOf2 = PostSubscriptionItemsRequestBodyBillingThresholds'OneOf2 {
  -- | usage_gte
  postSubscriptionItemsRequestBodyBillingThresholds'OneOf2UsageGte :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionItemsRequestBodyBillingThresholds'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "usage_gte" (postSubscriptionItemsRequestBodyBillingThresholds'OneOf2UsageGte obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "usage_gte" (postSubscriptionItemsRequestBodyBillingThresholds'OneOf2UsageGte obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionItemsRequestBodyBillingThresholds'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionItemsRequestBodyBillingThresholds'OneOf2" (\obj -> GHC.Base.pure PostSubscriptionItemsRequestBodyBillingThresholds'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "usage_gte"))
-- | Define the one-of schema postSubscriptionItemsRequestBodyBilling_thresholds\'
-- 
-- Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. When updating, pass an empty string to remove previously-defined thresholds.
data PostSubscriptionItemsRequestBodyBillingThresholds'Variants
    = PostSubscriptionItemsRequestBodyBillingThresholds'PostSubscriptionItemsRequestBodyBillingThresholds'OneOf1 PostSubscriptionItemsRequestBodyBillingThresholds'OneOf1
    | PostSubscriptionItemsRequestBodyBillingThresholds'PostSubscriptionItemsRequestBodyBillingThresholds'OneOf2 PostSubscriptionItemsRequestBodyBillingThresholds'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionItemsRequestBodyBillingThresholds'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionItemsRequestBodyBillingThresholds'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postSubscriptionItemsRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostSubscriptionItemsRequestBodyMetadata' = PostSubscriptionItemsRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionItemsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionItemsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionItemsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostSubscriptionItemsRequestBodyMetadata')
-- | Defines the enum schema postSubscriptionItemsRequestBodyPayment_behavior\'
-- 
-- Use \`allow_incomplete\` to transition the subscription to \`status=past_due\` if a payment is required but cannot be paid. This allows you to manage scenarios where additional user actions are needed to pay a subscription\'s invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the [SCA Migration Guide](https:\/\/stripe.com\/docs\/billing\/migration\/strong-customer-authentication) for Billing to learn more. This is the default behavior.
-- 
-- Use \`pending_if_incomplete\` to update the subscription using [pending updates](https:\/\/stripe.com\/docs\/billing\/subscriptions\/pending-updates). When you use \`pending_if_incomplete\` you can only pass the parameters [supported by pending updates](https:\/\/stripe.com\/docs\/billing\/pending-updates-reference\#supported-attributes).
-- 
-- Use \`error_if_incomplete\` if you want Stripe to return an HTTP 402 status code if a subscription\'s first invoice cannot be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further user action is needed, this parameter does not create a subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the [changelog](https:\/\/stripe.com\/docs\/upgrades\#2019-03-14) to learn more.
data PostSubscriptionItemsRequestBodyPaymentBehavior'
    = PostSubscriptionItemsRequestBodyPaymentBehavior'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionItemsRequestBodyPaymentBehavior'EnumTyped GHC.Base.String
    | PostSubscriptionItemsRequestBodyPaymentBehavior'EnumStringAllowIncomplete
    | PostSubscriptionItemsRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete
    | PostSubscriptionItemsRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionItemsRequestBodyPaymentBehavior'
    where toJSON (PostSubscriptionItemsRequestBodyPaymentBehavior'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionItemsRequestBodyPaymentBehavior'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionItemsRequestBodyPaymentBehavior'EnumStringAllowIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "allow_incomplete"
          toJSON (PostSubscriptionItemsRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error_if_incomplete"
          toJSON (PostSubscriptionItemsRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending_if_incomplete"
instance Data.Aeson.FromJSON PostSubscriptionItemsRequestBodyPaymentBehavior'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "allow_incomplete")
                                          then PostSubscriptionItemsRequestBodyPaymentBehavior'EnumStringAllowIncomplete
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error_if_incomplete")
                                                then PostSubscriptionItemsRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending_if_incomplete")
                                                      then PostSubscriptionItemsRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete
                                                      else PostSubscriptionItemsRequestBodyPaymentBehavior'EnumOther val)
-- | Defines the enum schema postSubscriptionItemsRequestBodyProration_behavior\'
-- 
-- Determines how to handle [prorations](https:\/\/stripe.com\/docs\/subscriptions\/billing-cycle\#prorations) when the billing cycle changes (e.g., when switching plans, resetting \`billing_cycle_anchor=now\`, or starting a trial), or if an item\'s \`quantity\` changes. Valid values are \`create_prorations\`, \`none\`, or \`always_invoice\`.
-- 
-- Passing \`create_prorations\` will cause proration invoice items to be created when applicable. These proration items will only be invoiced immediately under [certain conditions](https:\/\/stripe.com\/docs\/subscriptions\/upgrading-downgrading\#immediate-payment). In order to always invoice immediately for prorations, pass \`always_invoice\`.
-- 
-- Prorations can be disabled by passing \`none\`.
data PostSubscriptionItemsRequestBodyProrationBehavior'
    = PostSubscriptionItemsRequestBodyProrationBehavior'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionItemsRequestBodyProrationBehavior'EnumTyped GHC.Base.String
    | PostSubscriptionItemsRequestBodyProrationBehavior'EnumStringAlwaysInvoice
    | PostSubscriptionItemsRequestBodyProrationBehavior'EnumStringCreateProrations
    | PostSubscriptionItemsRequestBodyProrationBehavior'EnumStringNone
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionItemsRequestBodyProrationBehavior'
    where toJSON (PostSubscriptionItemsRequestBodyProrationBehavior'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionItemsRequestBodyProrationBehavior'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionItemsRequestBodyProrationBehavior'EnumStringAlwaysInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "always_invoice"
          toJSON (PostSubscriptionItemsRequestBodyProrationBehavior'EnumStringCreateProrations) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "create_prorations"
          toJSON (PostSubscriptionItemsRequestBodyProrationBehavior'EnumStringNone) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none"
instance Data.Aeson.FromJSON PostSubscriptionItemsRequestBodyProrationBehavior'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "always_invoice")
                                          then PostSubscriptionItemsRequestBodyProrationBehavior'EnumStringAlwaysInvoice
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "create_prorations")
                                                then PostSubscriptionItemsRequestBodyProrationBehavior'EnumStringCreateProrations
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none")
                                                      then PostSubscriptionItemsRequestBodyProrationBehavior'EnumStringNone
                                                      else PostSubscriptionItemsRequestBodyProrationBehavior'EnumOther val)
-- | Defines the enum schema postSubscriptionItemsRequestBodyTax_rates\'OneOf1
-- 
-- 
data PostSubscriptionItemsRequestBodyTaxRates'OneOf1
    = PostSubscriptionItemsRequestBodyTaxRates'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionItemsRequestBodyTaxRates'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionItemsRequestBodyTaxRates'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionItemsRequestBodyTaxRates'OneOf1
    where toJSON (PostSubscriptionItemsRequestBodyTaxRates'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionItemsRequestBodyTaxRates'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionItemsRequestBodyTaxRates'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionItemsRequestBodyTaxRates'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionItemsRequestBodyTaxRates'OneOf1EnumString_
                                          else PostSubscriptionItemsRequestBodyTaxRates'OneOf1EnumOther val)
-- | Define the one-of schema postSubscriptionItemsRequestBodyTax_rates\'
-- 
-- A list of [Tax Rate](https:\/\/stripe.com\/docs\/api\/tax_rates) ids. These Tax Rates will override the [\`default_tax_rates\`](https:\/\/stripe.com\/docs\/api\/subscriptions\/create\#create_subscription-default_tax_rates) on the Subscription. When updating, pass an empty string to remove previously-defined tax rates.
data PostSubscriptionItemsRequestBodyTaxRates'Variants
    = PostSubscriptionItemsRequestBodyTaxRates'PostSubscriptionItemsRequestBodyTaxRates'OneOf1 PostSubscriptionItemsRequestBodyTaxRates'OneOf1
    | PostSubscriptionItemsRequestBodyTaxRates'ListString ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionItemsRequestBodyTaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionItemsRequestBodyTaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Represents a response of the operation 'postSubscriptionItems'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSubscriptionItemsResponseError' is used.
data PostSubscriptionItemsResponse =                   
   PostSubscriptionItemsResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostSubscriptionItemsResponse200 SubscriptionItem  -- ^ Successful response.
  | PostSubscriptionItemsResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
