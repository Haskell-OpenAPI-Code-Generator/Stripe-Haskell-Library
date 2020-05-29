{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postSubscriptionItemsItem
module StripeAPI.Operations.PostSubscriptionItemsItem where

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
import qualified Data.Vector
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

-- | > POST /v1/subscription_items/{item}
-- 
-- \<p>Updates the plan or quantity of an item on a current subscription.\<\/p>
postSubscriptionItemsItem :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text                                                                                                               -- ^ item | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostSubscriptionItemsItemRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostSubscriptionItemsItemResponse)) -- ^ Monad containing the result of the operation
postSubscriptionItemsItem config
                          item
                          body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSubscriptionItemsItemResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionItemsItemResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                             SubscriptionItem)
                                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionItemsItemResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/subscription_items/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel item)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/subscription_items/{item}
-- 
-- The same as 'postSubscriptionItemsItem' but returns the raw 'Data.ByteString.Char8.ByteString'
postSubscriptionItemsItemRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                StripeAPI.Common.Configuration s ->
                                Data.Text.Internal.Text ->
                                GHC.Maybe.Maybe PostSubscriptionItemsItemRequestBody ->
                                m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSubscriptionItemsItemRaw config
                             item
                             body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/subscription_items/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel item)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/subscription_items/{item}
-- 
-- Monadic version of 'postSubscriptionItemsItem' (use with 'StripeAPI.Common.runWithConfiguration')
postSubscriptionItemsItemM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                            StripeAPI.Common.SecurityScheme s) =>
                              Data.Text.Internal.Text ->
                              GHC.Maybe.Maybe PostSubscriptionItemsItemRequestBody ->
                              Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                 m
                                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                     (Network.HTTP.Client.Types.Response PostSubscriptionItemsItemResponse))
postSubscriptionItemsItemM item
                           body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSubscriptionItemsItemResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionItemsItemResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                              SubscriptionItem)
                                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionItemsItemResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                Error)
                                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/subscription_items/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel item)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/subscription_items/{item}
-- 
-- Monadic version of 'postSubscriptionItemsItemRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postSubscriptionItemsItemRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                               StripeAPI.Common.SecurityScheme s) =>
                                 Data.Text.Internal.Text ->
                                 GHC.Maybe.Maybe PostSubscriptionItemsItemRequestBody ->
                                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                    m
                                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSubscriptionItemsItemRawM item
                              body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/subscription_items/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel item)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postSubscriptionItemsItemRequestBody
-- 
-- 
data PostSubscriptionItemsItemRequestBody = PostSubscriptionItemsItemRequestBody {
  -- | billing_thresholds: Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. When updating, pass an empty string to remove previously-defined thresholds.
  postSubscriptionItemsItemRequestBodyBillingThresholds :: (GHC.Maybe.Maybe PostSubscriptionItemsItemRequestBodyBillingThresholds'Variants)
  -- | expand: Specifies which fields in the response should be expanded.
  , postSubscriptionItemsItemRequestBodyExpand :: (GHC.Maybe.Maybe ([] Data.Text.Internal.Text))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postSubscriptionItemsItemRequestBodyMetadata :: (GHC.Maybe.Maybe PostSubscriptionItemsItemRequestBodyMetadata')
  -- | off_session: Indicates if a customer is on or off-session while an invoice payment is attempted.
  , postSubscriptionItemsItemRequestBodyOffSession :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | payment_behavior: Use \`allow_incomplete\` to transition the subscription to \`status=past_due\` if a payment is required but cannot be paid. This allows you to manage scenarios where additional user actions are needed to pay a subscription\'s invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the [SCA Migration Guide](https:\/\/stripe.com\/docs\/billing\/migration\/strong-customer-authentication) for Billing to learn more. This is the default behavior.
  -- 
  -- Use \`pending_if_incomplete\` to update the subscription using [pending updates](https:\/\/stripe.com\/docs\/billing\/subscriptions\/pending-updates). When you use \`pending_if_incomplete\` you can only pass the parameters [supported by pending updates](https:\/\/stripe.com\/docs\/billing\/pending-updates-reference\#supported-attributes).
  -- 
  -- Use \`error_if_incomplete\` if you want Stripe to return an HTTP 402 status code if a subscription\'s first invoice cannot be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further user action is needed, this parameter does not create a subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the [changelog](https:\/\/stripe.com\/docs\/upgrades\#2019-03-14) to learn more.
  , postSubscriptionItemsItemRequestBodyPaymentBehavior :: (GHC.Maybe.Maybe PostSubscriptionItemsItemRequestBodyPaymentBehavior')
  -- | plan: The identifier of the new plan for this subscription item.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSubscriptionItemsItemRequestBodyPlan :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | prorate: This field has been renamed to \`proration_behavior\`. \`prorate=true\` can be replaced with \`proration_behavior=create_prorations\` and \`prorate=false\` can be replaced with \`proration_behavior=none\`.
  , postSubscriptionItemsItemRequestBodyProrate :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | proration_behavior: Determines how to handle [prorations](https:\/\/stripe.com\/docs\/subscriptions\/billing-cycle\#prorations) when the billing cycle changes (e.g., when switching plans, resetting \`billing_cycle_anchor=now\`, or starting a trial), or if an item\'s \`quantity\` changes. Valid values are \`create_prorations\`, \`none\`, or \`always_invoice\`.
  -- 
  -- Passing \`create_prorations\` will cause proration invoice items to be created when applicable. These proration items will only be invoiced immediately under [certain conditions](https:\/\/stripe.com\/docs\/subscriptions\/upgrading-downgrading\#immediate-payment). In order to always invoice immediately for prorations, pass \`always_invoice\`.
  -- 
  -- Prorations can be disabled by passing \`none\`.
  , postSubscriptionItemsItemRequestBodyProrationBehavior :: (GHC.Maybe.Maybe PostSubscriptionItemsItemRequestBodyProrationBehavior')
  -- | proration_date: If set, the proration will be calculated as though the subscription was updated at the given time. This can be used to apply the same proration that was previewed with the [upcoming invoice](https:\/\/stripe.com\/docs\/api\#retrieve_customer_invoice) endpoint.
  , postSubscriptionItemsItemRequestBodyProrationDate :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | quantity: The quantity you\'d like to apply to the subscription item you\'re creating.
  , postSubscriptionItemsItemRequestBodyQuantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | tax_rates: A list of [Tax Rate](https:\/\/stripe.com\/docs\/api\/tax_rates) ids. These Tax Rates will override the [\`default_tax_rates\`](https:\/\/stripe.com\/docs\/api\/subscriptions\/create\#create_subscription-default_tax_rates) on the Subscription. When updating, pass an empty string to remove previously-defined tax rates.
  , postSubscriptionItemsItemRequestBodyTaxRates :: (GHC.Maybe.Maybe PostSubscriptionItemsItemRequestBodyTaxRates'Variants)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionItemsItemRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "billing_thresholds" (postSubscriptionItemsItemRequestBodyBillingThresholds obj) : (Data.Aeson..=) "expand" (postSubscriptionItemsItemRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postSubscriptionItemsItemRequestBodyMetadata obj) : (Data.Aeson..=) "off_session" (postSubscriptionItemsItemRequestBodyOffSession obj) : (Data.Aeson..=) "payment_behavior" (postSubscriptionItemsItemRequestBodyPaymentBehavior obj) : (Data.Aeson..=) "plan" (postSubscriptionItemsItemRequestBodyPlan obj) : (Data.Aeson..=) "prorate" (postSubscriptionItemsItemRequestBodyProrate obj) : (Data.Aeson..=) "proration_behavior" (postSubscriptionItemsItemRequestBodyProrationBehavior obj) : (Data.Aeson..=) "proration_date" (postSubscriptionItemsItemRequestBodyProrationDate obj) : (Data.Aeson..=) "quantity" (postSubscriptionItemsItemRequestBodyQuantity obj) : (Data.Aeson..=) "tax_rates" (postSubscriptionItemsItemRequestBodyTaxRates obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "billing_thresholds" (postSubscriptionItemsItemRequestBodyBillingThresholds obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postSubscriptionItemsItemRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postSubscriptionItemsItemRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "off_session" (postSubscriptionItemsItemRequestBodyOffSession obj) GHC.Base.<> ((Data.Aeson..=) "payment_behavior" (postSubscriptionItemsItemRequestBodyPaymentBehavior obj) GHC.Base.<> ((Data.Aeson..=) "plan" (postSubscriptionItemsItemRequestBodyPlan obj) GHC.Base.<> ((Data.Aeson..=) "prorate" (postSubscriptionItemsItemRequestBodyProrate obj) GHC.Base.<> ((Data.Aeson..=) "proration_behavior" (postSubscriptionItemsItemRequestBodyProrationBehavior obj) GHC.Base.<> ((Data.Aeson..=) "proration_date" (postSubscriptionItemsItemRequestBodyProrationDate obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (postSubscriptionItemsItemRequestBodyQuantity obj) GHC.Base.<> (Data.Aeson..=) "tax_rates" (postSubscriptionItemsItemRequestBodyTaxRates obj)))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionItemsItemRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionItemsItemRequestBody" (\obj -> ((((((((((GHC.Base.pure PostSubscriptionItemsItemRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "off_session")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "plan")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "prorate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proration_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proration_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_rates"))
-- | Defines the enum schema postSubscriptionItemsItemRequestBodyBilling_thresholds\'OneOf1
-- 
-- 
data PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf1
    = PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf1EnumTyped Data.Text.Internal.Text
    | PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf1
    where toJSON (PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf1EnumString_
                                          else PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf1EnumOther val)
-- | Defines the data type for the schema postSubscriptionItemsItemRequestBodyBilling_thresholds\'OneOf2
-- 
-- 
data PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf2 = PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf2 {
  -- | usage_gte
  postSubscriptionItemsItemRequestBodyBillingThresholds'OneOf2UsageGte :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "usage_gte" (postSubscriptionItemsItemRequestBodyBillingThresholds'OneOf2UsageGte obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "usage_gte" (postSubscriptionItemsItemRequestBodyBillingThresholds'OneOf2UsageGte obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf2" (\obj -> GHC.Base.pure PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "usage_gte"))
-- | Define the one-of schema postSubscriptionItemsItemRequestBodyBilling_thresholds\'
-- 
-- Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. When updating, pass an empty string to remove previously-defined thresholds.
data PostSubscriptionItemsItemRequestBodyBillingThresholds'Variants
    = PostSubscriptionItemsItemRequestBodyBillingThresholds'PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf1 PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf1
    | PostSubscriptionItemsItemRequestBodyBillingThresholds'PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf2 PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionItemsItemRequestBodyBillingThresholds'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionItemsItemRequestBodyBillingThresholds'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postSubscriptionItemsItemRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostSubscriptionItemsItemRequestBodyMetadata' = PostSubscriptionItemsItemRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionItemsItemRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionItemsItemRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionItemsItemRequestBodyMetadata'" (\obj -> GHC.Base.pure PostSubscriptionItemsItemRequestBodyMetadata')
-- | Defines the enum schema postSubscriptionItemsItemRequestBodyPayment_behavior\'
-- 
-- Use \`allow_incomplete\` to transition the subscription to \`status=past_due\` if a payment is required but cannot be paid. This allows you to manage scenarios where additional user actions are needed to pay a subscription\'s invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the [SCA Migration Guide](https:\/\/stripe.com\/docs\/billing\/migration\/strong-customer-authentication) for Billing to learn more. This is the default behavior.
-- 
-- Use \`pending_if_incomplete\` to update the subscription using [pending updates](https:\/\/stripe.com\/docs\/billing\/subscriptions\/pending-updates). When you use \`pending_if_incomplete\` you can only pass the parameters [supported by pending updates](https:\/\/stripe.com\/docs\/billing\/pending-updates-reference\#supported-attributes).
-- 
-- Use \`error_if_incomplete\` if you want Stripe to return an HTTP 402 status code if a subscription\'s first invoice cannot be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further user action is needed, this parameter does not create a subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the [changelog](https:\/\/stripe.com\/docs\/upgrades\#2019-03-14) to learn more.
data PostSubscriptionItemsItemRequestBodyPaymentBehavior'
    = PostSubscriptionItemsItemRequestBodyPaymentBehavior'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionItemsItemRequestBodyPaymentBehavior'EnumTyped Data.Text.Internal.Text
    | PostSubscriptionItemsItemRequestBodyPaymentBehavior'EnumStringAllowIncomplete
    | PostSubscriptionItemsItemRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete
    | PostSubscriptionItemsItemRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionItemsItemRequestBodyPaymentBehavior'
    where toJSON (PostSubscriptionItemsItemRequestBodyPaymentBehavior'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionItemsItemRequestBodyPaymentBehavior'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionItemsItemRequestBodyPaymentBehavior'EnumStringAllowIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "allow_incomplete"
          toJSON (PostSubscriptionItemsItemRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error_if_incomplete"
          toJSON (PostSubscriptionItemsItemRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending_if_incomplete"
instance Data.Aeson.FromJSON PostSubscriptionItemsItemRequestBodyPaymentBehavior'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "allow_incomplete")
                                          then PostSubscriptionItemsItemRequestBodyPaymentBehavior'EnumStringAllowIncomplete
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error_if_incomplete")
                                                then PostSubscriptionItemsItemRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending_if_incomplete")
                                                      then PostSubscriptionItemsItemRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete
                                                      else PostSubscriptionItemsItemRequestBodyPaymentBehavior'EnumOther val)
-- | Defines the enum schema postSubscriptionItemsItemRequestBodyProration_behavior\'
-- 
-- Determines how to handle [prorations](https:\/\/stripe.com\/docs\/subscriptions\/billing-cycle\#prorations) when the billing cycle changes (e.g., when switching plans, resetting \`billing_cycle_anchor=now\`, or starting a trial), or if an item\'s \`quantity\` changes. Valid values are \`create_prorations\`, \`none\`, or \`always_invoice\`.
-- 
-- Passing \`create_prorations\` will cause proration invoice items to be created when applicable. These proration items will only be invoiced immediately under [certain conditions](https:\/\/stripe.com\/docs\/subscriptions\/upgrading-downgrading\#immediate-payment). In order to always invoice immediately for prorations, pass \`always_invoice\`.
-- 
-- Prorations can be disabled by passing \`none\`.
data PostSubscriptionItemsItemRequestBodyProrationBehavior'
    = PostSubscriptionItemsItemRequestBodyProrationBehavior'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionItemsItemRequestBodyProrationBehavior'EnumTyped Data.Text.Internal.Text
    | PostSubscriptionItemsItemRequestBodyProrationBehavior'EnumStringAlwaysInvoice
    | PostSubscriptionItemsItemRequestBodyProrationBehavior'EnumStringCreateProrations
    | PostSubscriptionItemsItemRequestBodyProrationBehavior'EnumStringNone
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionItemsItemRequestBodyProrationBehavior'
    where toJSON (PostSubscriptionItemsItemRequestBodyProrationBehavior'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionItemsItemRequestBodyProrationBehavior'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionItemsItemRequestBodyProrationBehavior'EnumStringAlwaysInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "always_invoice"
          toJSON (PostSubscriptionItemsItemRequestBodyProrationBehavior'EnumStringCreateProrations) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "create_prorations"
          toJSON (PostSubscriptionItemsItemRequestBodyProrationBehavior'EnumStringNone) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none"
instance Data.Aeson.FromJSON PostSubscriptionItemsItemRequestBodyProrationBehavior'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "always_invoice")
                                          then PostSubscriptionItemsItemRequestBodyProrationBehavior'EnumStringAlwaysInvoice
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "create_prorations")
                                                then PostSubscriptionItemsItemRequestBodyProrationBehavior'EnumStringCreateProrations
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none")
                                                      then PostSubscriptionItemsItemRequestBodyProrationBehavior'EnumStringNone
                                                      else PostSubscriptionItemsItemRequestBodyProrationBehavior'EnumOther val)
-- | Defines the enum schema postSubscriptionItemsItemRequestBodyTax_rates\'OneOf1
-- 
-- 
data PostSubscriptionItemsItemRequestBodyTaxRates'OneOf1
    = PostSubscriptionItemsItemRequestBodyTaxRates'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionItemsItemRequestBodyTaxRates'OneOf1EnumTyped Data.Text.Internal.Text
    | PostSubscriptionItemsItemRequestBodyTaxRates'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionItemsItemRequestBodyTaxRates'OneOf1
    where toJSON (PostSubscriptionItemsItemRequestBodyTaxRates'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionItemsItemRequestBodyTaxRates'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionItemsItemRequestBodyTaxRates'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionItemsItemRequestBodyTaxRates'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionItemsItemRequestBodyTaxRates'OneOf1EnumString_
                                          else PostSubscriptionItemsItemRequestBodyTaxRates'OneOf1EnumOther val)
-- | Define the one-of schema postSubscriptionItemsItemRequestBodyTax_rates\'
-- 
-- A list of [Tax Rate](https:\/\/stripe.com\/docs\/api\/tax_rates) ids. These Tax Rates will override the [\`default_tax_rates\`](https:\/\/stripe.com\/docs\/api\/subscriptions\/create\#create_subscription-default_tax_rates) on the Subscription. When updating, pass an empty string to remove previously-defined tax rates.
data PostSubscriptionItemsItemRequestBodyTaxRates'Variants
    = PostSubscriptionItemsItemRequestBodyTaxRates'PostSubscriptionItemsItemRequestBodyTaxRates'OneOf1 PostSubscriptionItemsItemRequestBodyTaxRates'OneOf1
    | PostSubscriptionItemsItemRequestBodyTaxRates'ListText ([] Data.Text.Internal.Text)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionItemsItemRequestBodyTaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionItemsItemRequestBodyTaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Represents a response of the operation 'postSubscriptionItemsItem'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSubscriptionItemsItemResponseError' is used.
data PostSubscriptionItemsItemResponse =                   
   PostSubscriptionItemsItemResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostSubscriptionItemsItemResponse200 SubscriptionItem  -- ^ Successful response.
  | PostSubscriptionItemsItemResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
