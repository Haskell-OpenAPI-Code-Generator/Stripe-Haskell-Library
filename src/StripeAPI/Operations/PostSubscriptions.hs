{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postSubscriptions
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

-- | > POST /v1/subscriptions
-- 
-- \<p>Creates a new subscription on an existing customer. Each customer can have up to 25 active or scheduled subscriptions.\<\/p>
postSubscriptions :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> PostSubscriptionsRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostSubscriptionsResponse)) -- ^ Monad containing the result of the operation
postSubscriptions config
                  body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSubscriptionsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                     Subscription)
                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/subscriptions") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/subscriptions
-- 
-- The same as 'postSubscriptions' but returns the raw 'Data.ByteString.Char8.ByteString'
postSubscriptionsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        StripeAPI.Common.Configuration s ->
                        PostSubscriptionsRequestBody ->
                        m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSubscriptionsRaw config
                     body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/subscriptions") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/subscriptions
-- 
-- Monadic version of 'postSubscriptions' (use with 'StripeAPI.Common.runWithConfiguration')
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
                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/subscriptions") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/subscriptions
-- 
-- Monadic version of 'postSubscriptionsRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postSubscriptionsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                       StripeAPI.Common.SecurityScheme s) =>
                         PostSubscriptionsRequestBody ->
                         Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                            m
                                                            (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSubscriptionsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/subscriptions") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postSubscriptionsRequestBody
-- 
-- 
data PostSubscriptionsRequestBody = PostSubscriptionsRequestBody {
  -- | application_fee_percent: A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice subtotal that will be transferred to the application owner\'s Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https:\/\/stripe.com\/docs\/connect\/subscriptions\#collecting-fees-on-subscriptions).
  postSubscriptionsRequestBodyApplicationFeePercent :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | backdate_start_date: For new subscriptions, a past timestamp to backdate the subscription\'s start date to. If set, the first invoice will contain a proration for the timespan between the start date and the current time. Can be combined with trials and the billing cycle anchor.
  , postSubscriptionsRequestBodyBackdateStartDate :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | billing_cycle_anchor: A future timestamp to anchor the subscription\'s [billing cycle](https:\/\/stripe.com\/docs\/subscriptions\/billing-cycle). This is used to determine the date of the first full invoice, and, for plans with \`month\` or \`year\` intervals, the day of the month for subsequent invoices.
  , postSubscriptionsRequestBodyBillingCycleAnchor :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | billing_thresholds: Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
  , postSubscriptionsRequestBodyBillingThresholds :: (GHC.Maybe.Maybe PostSubscriptionsRequestBodyBillingThresholds'Variants)
  -- | cancel_at: A timestamp at which the subscription should cancel. If set to a date before the current period ends, this will cause a proration if prorations have been enabled using \`proration_behavior\`. If set during a future period, this will always cause a proration for that period.
  , postSubscriptionsRequestBodyCancelAt :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | cancel_at_period_end: Boolean indicating whether this subscription should cancel at the end of the current period.
  , postSubscriptionsRequestBodyCancelAtPeriodEnd :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | collection_method: Either \`charge_automatically\`, or \`send_invoice\`. When charging automatically, Stripe will attempt to pay this subscription at the end of the cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions. Defaults to \`charge_automatically\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSubscriptionsRequestBodyCollectionMethod :: (GHC.Maybe.Maybe PostSubscriptionsRequestBodyCollectionMethod')
  -- | coupon: The code of the coupon to apply to this subscription. A coupon applied to a subscription will only affect invoices created for that particular subscription.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSubscriptionsRequestBodyCoupon :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | customer: The identifier of the customer to subscribe.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSubscriptionsRequestBodyCustomer :: GHC.Base.String
  -- | days_until_due: Number of days a customer has to pay invoices generated by this subscription. Valid only for subscriptions where \`collection_method\` is set to \`send_invoice\`.
  , postSubscriptionsRequestBodyDaysUntilDue :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | default_payment_method: ID of the default payment method for the subscription. It must belong to the customer associated with the subscription. If not set, invoices will use the default payment method in the customer\'s invoice settings.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSubscriptionsRequestBodyDefaultPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | default_source: ID of the default payment source for the subscription. It must belong to the customer associated with the subscription and be in a chargeable state. If not set, defaults to the customer\'s default source.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSubscriptionsRequestBodyDefaultSource :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | default_tax_rates: The tax rates that will apply to any subscription item that does not have \`tax_rates\` set. Invoices created will have their \`default_tax_rates\` populated from the subscription.
  , postSubscriptionsRequestBodyDefaultTaxRates :: (GHC.Maybe.Maybe PostSubscriptionsRequestBodyDefaultTaxRates'Variants)
  -- | expand: Specifies which fields in the response should be expanded.
  , postSubscriptionsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | items: A list of up to 20 subscription items, each with an attached plan.
  , postSubscriptionsRequestBodyItems :: (GHC.Maybe.Maybe ([] PostSubscriptionsRequestBodyItems'))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postSubscriptionsRequestBodyMetadata :: (GHC.Maybe.Maybe PostSubscriptionsRequestBodyMetadata')
  -- | off_session: Indicates if a customer is on or off-session while an invoice payment is attempted.
  , postSubscriptionsRequestBodyOffSession :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | payment_behavior: Use \`allow_incomplete\` to create subscriptions with \`status=incomplete\` if the first invoice cannot be paid. Creating subscriptions with this status allows you to manage scenarios where additional user actions are needed to pay a subscription\'s invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the [SCA Migration Guide](https:\/\/stripe.com\/docs\/billing\/migration\/strong-customer-authentication) for Billing to learn more. This is the default behavior.
  -- 
  -- Use \`error_if_incomplete\` if you want Stripe to return an HTTP 402 status code if a subscription\'s first invoice cannot be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further user action is needed, this parameter does not create a subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the [changelog](https:\/\/stripe.com\/docs\/upgrades\#2019-03-14) to learn more.
  -- 
  -- \`pending_if_incomplete\` is only used with updates and cannot be passed when creating a subscription.
  , postSubscriptionsRequestBodyPaymentBehavior :: (GHC.Maybe.Maybe PostSubscriptionsRequestBodyPaymentBehavior')
  -- | pending_invoice_item_interval: Specifies an interval for how often to bill for any pending invoice items. It is analogous to calling [Create an invoice](https:\/\/stripe.com\/docs\/api\#create_invoice) for the given subscription at the specified interval.
  , postSubscriptionsRequestBodyPendingInvoiceItemInterval :: (GHC.Maybe.Maybe PostSubscriptionsRequestBodyPendingInvoiceItemInterval'Variants)
  -- | prorate: This field has been renamed to \`proration_behavior\`. \`prorate=true\` can be replaced with \`proration_behavior=create_prorations\` and \`prorate=false\` can be replaced with \`proration_behavior=none\`.
  , postSubscriptionsRequestBodyProrate :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | proration_behavior: Determines how to handle [prorations](https:\/\/stripe.com\/docs\/subscriptions\/billing-cycle\#prorations) resulting from the \`billing_cycle_anchor\`. Valid values are \`create_prorations\` or \`none\`.
  -- 
  -- Passing \`create_prorations\` will cause proration invoice items to be created when applicable. Prorations can be disabled by passing \`none\`. If no value is passed, the default is \`create_prorations\`.
  , postSubscriptionsRequestBodyProrationBehavior :: (GHC.Maybe.Maybe PostSubscriptionsRequestBodyProrationBehavior')
  -- | tax_percent: A non-negative decimal (with at most four decimal places) between 0 and 100. This represents the percentage of the subscription invoice subtotal that will be calculated and added as tax to the final amount in each billing period. For example, a plan which charges \$10\/month with a \`tax_percent\` of \`20.0\` will charge \$12 per invoice. To unset a previously-set value, pass an empty string. This field has been deprecated and will be removed in a future API version, for further information view the [migration docs](https:\/\/stripe.com\/docs\/billing\/migration\/taxes) for \`tax_rates\`.
  , postSubscriptionsRequestBodyTaxPercent :: (GHC.Maybe.Maybe PostSubscriptionsRequestBodyTaxPercent'Variants)
  -- | trial_end: Unix timestamp representing the end of the trial period the customer will get before being charged for the first time. This will always overwrite any trials that might apply via a subscribed plan. If set, trial_end will override the default trial period of the plan the customer is being subscribed to. The special value \`now\` can be provided to end the customer\'s trial immediately. Can be at most two years from \`billing_cycle_anchor\`.
  , postSubscriptionsRequestBodyTrialEnd :: (GHC.Maybe.Maybe PostSubscriptionsRequestBodyTrialEnd'Variants)
  -- | trial_from_plan: Indicates if a plan\'s \`trial_period_days\` should be applied to the subscription. Setting \`trial_end\` per subscription is preferred, and this defaults to \`false\`. Setting this flag to \`true\` together with \`trial_end\` is not allowed.
  , postSubscriptionsRequestBodyTrialFromPlan :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | trial_period_days: Integer representing the number of trial period days before the customer is charged for the first time. This will always overwrite any trials that might apply via a subscribed plan.
  , postSubscriptionsRequestBodyTrialPeriodDays :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "application_fee_percent" (postSubscriptionsRequestBodyApplicationFeePercent obj) : (Data.Aeson..=) "backdate_start_date" (postSubscriptionsRequestBodyBackdateStartDate obj) : (Data.Aeson..=) "billing_cycle_anchor" (postSubscriptionsRequestBodyBillingCycleAnchor obj) : (Data.Aeson..=) "billing_thresholds" (postSubscriptionsRequestBodyBillingThresholds obj) : (Data.Aeson..=) "cancel_at" (postSubscriptionsRequestBodyCancelAt obj) : (Data.Aeson..=) "cancel_at_period_end" (postSubscriptionsRequestBodyCancelAtPeriodEnd obj) : (Data.Aeson..=) "collection_method" (postSubscriptionsRequestBodyCollectionMethod obj) : (Data.Aeson..=) "coupon" (postSubscriptionsRequestBodyCoupon obj) : (Data.Aeson..=) "customer" (postSubscriptionsRequestBodyCustomer obj) : (Data.Aeson..=) "days_until_due" (postSubscriptionsRequestBodyDaysUntilDue obj) : (Data.Aeson..=) "default_payment_method" (postSubscriptionsRequestBodyDefaultPaymentMethod obj) : (Data.Aeson..=) "default_source" (postSubscriptionsRequestBodyDefaultSource obj) : (Data.Aeson..=) "default_tax_rates" (postSubscriptionsRequestBodyDefaultTaxRates obj) : (Data.Aeson..=) "expand" (postSubscriptionsRequestBodyExpand obj) : (Data.Aeson..=) "items" (postSubscriptionsRequestBodyItems obj) : (Data.Aeson..=) "metadata" (postSubscriptionsRequestBodyMetadata obj) : (Data.Aeson..=) "off_session" (postSubscriptionsRequestBodyOffSession obj) : (Data.Aeson..=) "payment_behavior" (postSubscriptionsRequestBodyPaymentBehavior obj) : (Data.Aeson..=) "pending_invoice_item_interval" (postSubscriptionsRequestBodyPendingInvoiceItemInterval obj) : (Data.Aeson..=) "prorate" (postSubscriptionsRequestBodyProrate obj) : (Data.Aeson..=) "proration_behavior" (postSubscriptionsRequestBodyProrationBehavior obj) : (Data.Aeson..=) "tax_percent" (postSubscriptionsRequestBodyTaxPercent obj) : (Data.Aeson..=) "trial_end" (postSubscriptionsRequestBodyTrialEnd obj) : (Data.Aeson..=) "trial_from_plan" (postSubscriptionsRequestBodyTrialFromPlan obj) : (Data.Aeson..=) "trial_period_days" (postSubscriptionsRequestBodyTrialPeriodDays obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "application_fee_percent" (postSubscriptionsRequestBodyApplicationFeePercent obj) GHC.Base.<> ((Data.Aeson..=) "backdate_start_date" (postSubscriptionsRequestBodyBackdateStartDate obj) GHC.Base.<> ((Data.Aeson..=) "billing_cycle_anchor" (postSubscriptionsRequestBodyBillingCycleAnchor obj) GHC.Base.<> ((Data.Aeson..=) "billing_thresholds" (postSubscriptionsRequestBodyBillingThresholds obj) GHC.Base.<> ((Data.Aeson..=) "cancel_at" (postSubscriptionsRequestBodyCancelAt obj) GHC.Base.<> ((Data.Aeson..=) "cancel_at_period_end" (postSubscriptionsRequestBodyCancelAtPeriodEnd obj) GHC.Base.<> ((Data.Aeson..=) "collection_method" (postSubscriptionsRequestBodyCollectionMethod obj) GHC.Base.<> ((Data.Aeson..=) "coupon" (postSubscriptionsRequestBodyCoupon obj) GHC.Base.<> ((Data.Aeson..=) "customer" (postSubscriptionsRequestBodyCustomer obj) GHC.Base.<> ((Data.Aeson..=) "days_until_due" (postSubscriptionsRequestBodyDaysUntilDue obj) GHC.Base.<> ((Data.Aeson..=) "default_payment_method" (postSubscriptionsRequestBodyDefaultPaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "default_source" (postSubscriptionsRequestBodyDefaultSource obj) GHC.Base.<> ((Data.Aeson..=) "default_tax_rates" (postSubscriptionsRequestBodyDefaultTaxRates obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postSubscriptionsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "items" (postSubscriptionsRequestBodyItems obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postSubscriptionsRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "off_session" (postSubscriptionsRequestBodyOffSession obj) GHC.Base.<> ((Data.Aeson..=) "payment_behavior" (postSubscriptionsRequestBodyPaymentBehavior obj) GHC.Base.<> ((Data.Aeson..=) "pending_invoice_item_interval" (postSubscriptionsRequestBodyPendingInvoiceItemInterval obj) GHC.Base.<> ((Data.Aeson..=) "prorate" (postSubscriptionsRequestBodyProrate obj) GHC.Base.<> ((Data.Aeson..=) "proration_behavior" (postSubscriptionsRequestBodyProrationBehavior obj) GHC.Base.<> ((Data.Aeson..=) "tax_percent" (postSubscriptionsRequestBodyTaxPercent obj) GHC.Base.<> ((Data.Aeson..=) "trial_end" (postSubscriptionsRequestBodyTrialEnd obj) GHC.Base.<> ((Data.Aeson..=) "trial_from_plan" (postSubscriptionsRequestBodyTrialFromPlan obj) GHC.Base.<> (Data.Aeson..=) "trial_period_days" (postSubscriptionsRequestBodyTrialPeriodDays obj)))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsRequestBody" (\obj -> ((((((((((((((((((((((((GHC.Base.pure PostSubscriptionsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "backdate_start_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_cycle_anchor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancel_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancel_at_period_end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "collection_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "coupon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "days_until_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_tax_rates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "items")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "off_session")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pending_invoice_item_interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "prorate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proration_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_from_plan")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_period_days"))
-- | Defines the enum schema postSubscriptionsRequestBodyBilling_thresholds\'OneOf1
-- 
-- 
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
-- | Defines the data type for the schema postSubscriptionsRequestBodyBilling_thresholds\'OneOf2
-- 
-- 
data PostSubscriptionsRequestBodyBillingThresholds'OneOf2 = PostSubscriptionsRequestBodyBillingThresholds'OneOf2 {
  -- | amount_gte
  postSubscriptionsRequestBodyBillingThresholds'OneOf2AmountGte :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | reset_billing_cycle_anchor
  , postSubscriptionsRequestBodyBillingThresholds'OneOf2ResetBillingCycleAnchor :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyBillingThresholds'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount_gte" (postSubscriptionsRequestBodyBillingThresholds'OneOf2AmountGte obj) : (Data.Aeson..=) "reset_billing_cycle_anchor" (postSubscriptionsRequestBodyBillingThresholds'OneOf2ResetBillingCycleAnchor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount_gte" (postSubscriptionsRequestBodyBillingThresholds'OneOf2AmountGte obj) GHC.Base.<> (Data.Aeson..=) "reset_billing_cycle_anchor" (postSubscriptionsRequestBodyBillingThresholds'OneOf2ResetBillingCycleAnchor obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsRequestBodyBillingThresholds'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsRequestBodyBillingThresholds'OneOf2" (\obj -> (GHC.Base.pure PostSubscriptionsRequestBodyBillingThresholds'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reset_billing_cycle_anchor"))
-- | Define the one-of schema postSubscriptionsRequestBodyBilling_thresholds\'
-- 
-- Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
data PostSubscriptionsRequestBodyBillingThresholds'Variants
    = PostSubscriptionsRequestBodyBillingThresholds'PostSubscriptionsRequestBodyBillingThresholds'OneOf1 PostSubscriptionsRequestBodyBillingThresholds'OneOf1
    | PostSubscriptionsRequestBodyBillingThresholds'PostSubscriptionsRequestBodyBillingThresholds'OneOf2 PostSubscriptionsRequestBodyBillingThresholds'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyBillingThresholds'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsRequestBodyBillingThresholds'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postSubscriptionsRequestBodyCollection_method\'
-- 
-- Either \`charge_automatically\`, or \`send_invoice\`. When charging automatically, Stripe will attempt to pay this subscription at the end of the cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions. Defaults to \`charge_automatically\`.
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
-- | Defines the enum schema postSubscriptionsRequestBodyDefault_tax_rates\'OneOf1
-- 
-- 
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
-- | Define the one-of schema postSubscriptionsRequestBodyDefault_tax_rates\'
-- 
-- The tax rates that will apply to any subscription item that does not have \`tax_rates\` set. Invoices created will have their \`default_tax_rates\` populated from the subscription.
data PostSubscriptionsRequestBodyDefaultTaxRates'Variants
    = PostSubscriptionsRequestBodyDefaultTaxRates'PostSubscriptionsRequestBodyDefaultTaxRates'OneOf1 PostSubscriptionsRequestBodyDefaultTaxRates'OneOf1
    | PostSubscriptionsRequestBodyDefaultTaxRates'ListString ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyDefaultTaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsRequestBodyDefaultTaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postSubscriptionsRequestBodyItems\'
-- 
-- 
data PostSubscriptionsRequestBodyItems' = PostSubscriptionsRequestBodyItems' {
  -- | billing_thresholds
  postSubscriptionsRequestBodyItems'BillingThresholds :: (GHC.Maybe.Maybe PostSubscriptionsRequestBodyItems'BillingThresholds'Variants)
  -- | metadata
  , postSubscriptionsRequestBodyItems'Metadata :: (GHC.Maybe.Maybe PostSubscriptionsRequestBodyItems'Metadata')
  -- | plan
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSubscriptionsRequestBodyItems'Plan :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | quantity
  , postSubscriptionsRequestBodyItems'Quantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | tax_rates
  , postSubscriptionsRequestBodyItems'TaxRates :: (GHC.Maybe.Maybe PostSubscriptionsRequestBodyItems'TaxRates'Variants)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyItems'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "billing_thresholds" (postSubscriptionsRequestBodyItems'BillingThresholds obj) : (Data.Aeson..=) "metadata" (postSubscriptionsRequestBodyItems'Metadata obj) : (Data.Aeson..=) "plan" (postSubscriptionsRequestBodyItems'Plan obj) : (Data.Aeson..=) "quantity" (postSubscriptionsRequestBodyItems'Quantity obj) : (Data.Aeson..=) "tax_rates" (postSubscriptionsRequestBodyItems'TaxRates obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "billing_thresholds" (postSubscriptionsRequestBodyItems'BillingThresholds obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postSubscriptionsRequestBodyItems'Metadata obj) GHC.Base.<> ((Data.Aeson..=) "plan" (postSubscriptionsRequestBodyItems'Plan obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (postSubscriptionsRequestBodyItems'Quantity obj) GHC.Base.<> (Data.Aeson..=) "tax_rates" (postSubscriptionsRequestBodyItems'TaxRates obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsRequestBodyItems'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsRequestBodyItems'" (\obj -> ((((GHC.Base.pure PostSubscriptionsRequestBodyItems' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "plan")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_rates"))
-- | Defines the enum schema postSubscriptionsRequestBodyItems\'Billing_thresholds\'OneOf1
-- 
-- 
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
-- | Defines the data type for the schema postSubscriptionsRequestBodyItems\'Billing_thresholds\'OneOf2
-- 
-- 
data PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf2 = PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf2 {
  -- | usage_gte
  postSubscriptionsRequestBodyItems'BillingThresholds'OneOf2UsageGte :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "usage_gte" (postSubscriptionsRequestBodyItems'BillingThresholds'OneOf2UsageGte obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "usage_gte" (postSubscriptionsRequestBodyItems'BillingThresholds'OneOf2UsageGte obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf2" (\obj -> GHC.Base.pure PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "usage_gte"))
-- | Define the one-of schema postSubscriptionsRequestBodyItems\'Billing_thresholds\'
-- 
-- 
data PostSubscriptionsRequestBodyItems'BillingThresholds'Variants
    = PostSubscriptionsRequestBodyItems'BillingThresholds'PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf1 PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf1
    | PostSubscriptionsRequestBodyItems'BillingThresholds'PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf2 PostSubscriptionsRequestBodyItems'BillingThresholds'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyItems'BillingThresholds'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsRequestBodyItems'BillingThresholds'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postSubscriptionsRequestBodyItems\'Metadata\'
-- 
-- 
data PostSubscriptionsRequestBodyItems'Metadata' = PostSubscriptionsRequestBodyItems'Metadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyItems'Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsRequestBodyItems'Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsRequestBodyItems'Metadata'" (\obj -> GHC.Base.pure PostSubscriptionsRequestBodyItems'Metadata')
-- | Defines the enum schema postSubscriptionsRequestBodyItems\'Tax_rates\'OneOf1
-- 
-- 
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
-- | Define the one-of schema postSubscriptionsRequestBodyItems\'Tax_rates\'
-- 
-- 
data PostSubscriptionsRequestBodyItems'TaxRates'Variants
    = PostSubscriptionsRequestBodyItems'TaxRates'PostSubscriptionsRequestBodyItems'TaxRates'OneOf1 PostSubscriptionsRequestBodyItems'TaxRates'OneOf1
    | PostSubscriptionsRequestBodyItems'TaxRates'ListString ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyItems'TaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsRequestBodyItems'TaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postSubscriptionsRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostSubscriptionsRequestBodyMetadata' = PostSubscriptionsRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostSubscriptionsRequestBodyMetadata')
-- | Defines the enum schema postSubscriptionsRequestBodyPayment_behavior\'
-- 
-- Use \`allow_incomplete\` to create subscriptions with \`status=incomplete\` if the first invoice cannot be paid. Creating subscriptions with this status allows you to manage scenarios where additional user actions are needed to pay a subscription\'s invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the [SCA Migration Guide](https:\/\/stripe.com\/docs\/billing\/migration\/strong-customer-authentication) for Billing to learn more. This is the default behavior.
-- 
-- Use \`error_if_incomplete\` if you want Stripe to return an HTTP 402 status code if a subscription\'s first invoice cannot be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further user action is needed, this parameter does not create a subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the [changelog](https:\/\/stripe.com\/docs\/upgrades\#2019-03-14) to learn more.
-- 
-- \`pending_if_incomplete\` is only used with updates and cannot be passed when creating a subscription.
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
-- | Defines the enum schema postSubscriptionsRequestBodyPending_invoice_item_interval\'OneOf1
-- 
-- 
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
-- | Defines the data type for the schema postSubscriptionsRequestBodyPending_invoice_item_interval\'OneOf2
-- 
-- 
data PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2 = PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2 {
  -- | interval
  postSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval :: PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'
  -- | interval_count
  , postSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2IntervalCount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "interval" (postSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval obj) : (Data.Aeson..=) "interval_count" (postSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2IntervalCount obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "interval" (postSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval obj) GHC.Base.<> (Data.Aeson..=) "interval_count" (postSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2IntervalCount obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2" (\obj -> (GHC.Base.pure PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "interval_count"))
-- | Defines the enum schema postSubscriptionsRequestBodyPending_invoice_item_interval\'OneOf2Interval\'
-- 
-- 
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
-- | Define the one-of schema postSubscriptionsRequestBodyPending_invoice_item_interval\'
-- 
-- Specifies an interval for how often to bill for any pending invoice items. It is analogous to calling [Create an invoice](https:\/\/stripe.com\/docs\/api\#create_invoice) for the given subscription at the specified interval.
data PostSubscriptionsRequestBodyPendingInvoiceItemInterval'Variants
    = PostSubscriptionsRequestBodyPendingInvoiceItemInterval'PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1 PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1
    | PostSubscriptionsRequestBodyPendingInvoiceItemInterval'PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2 PostSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyPendingInvoiceItemInterval'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsRequestBodyPendingInvoiceItemInterval'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postSubscriptionsRequestBodyProration_behavior\'
-- 
-- Determines how to handle [prorations](https:\/\/stripe.com\/docs\/subscriptions\/billing-cycle\#prorations) resulting from the \`billing_cycle_anchor\`. Valid values are \`create_prorations\` or \`none\`.
-- 
-- Passing \`create_prorations\` will cause proration invoice items to be created when applicable. Prorations can be disabled by passing \`none\`. If no value is passed, the default is \`create_prorations\`.
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
-- | Defines the enum schema postSubscriptionsRequestBodyTax_percent\'OneOf1
-- 
-- 
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
-- | Define the one-of schema postSubscriptionsRequestBodyTax_percent\'
-- 
-- A non-negative decimal (with at most four decimal places) between 0 and 100. This represents the percentage of the subscription invoice subtotal that will be calculated and added as tax to the final amount in each billing period. For example, a plan which charges \$10\/month with a \`tax_percent\` of \`20.0\` will charge \$12 per invoice. To unset a previously-set value, pass an empty string. This field has been deprecated and will be removed in a future API version, for further information view the [migration docs](https:\/\/stripe.com\/docs\/billing\/migration\/taxes) for \`tax_rates\`.
data PostSubscriptionsRequestBodyTaxPercent'Variants
    = PostSubscriptionsRequestBodyTaxPercent'PostSubscriptionsRequestBodyTaxPercent'OneOf1 PostSubscriptionsRequestBodyTaxPercent'OneOf1
    | PostSubscriptionsRequestBodyTaxPercent'Double GHC.Types.Double
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyTaxPercent'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsRequestBodyTaxPercent'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postSubscriptionsRequestBodyTrial_end\'OneOf1
-- 
-- 
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
-- | Define the one-of schema postSubscriptionsRequestBodyTrial_end\'
-- 
-- Unix timestamp representing the end of the trial period the customer will get before being charged for the first time. This will always overwrite any trials that might apply via a subscribed plan. If set, trial_end will override the default trial period of the plan the customer is being subscribed to. The special value \`now\` can be provided to end the customer\'s trial immediately. Can be at most two years from \`billing_cycle_anchor\`.
data PostSubscriptionsRequestBodyTrialEnd'Variants
    = PostSubscriptionsRequestBodyTrialEnd'PostSubscriptionsRequestBodyTrialEnd'OneOf1 PostSubscriptionsRequestBodyTrialEnd'OneOf1
    | PostSubscriptionsRequestBodyTrialEnd'Integer GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsRequestBodyTrialEnd'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsRequestBodyTrialEnd'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Represents a response of the operation 'postSubscriptions'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSubscriptionsResponseError' is used.
data PostSubscriptionsResponse =                   
   PostSubscriptionsResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostSubscriptionsResponse200 Subscription      -- ^ Successful response.
  | PostSubscriptionsResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
