{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SubscriptionSchedulePhaseConfiguration
module StripeAPI.Types.SubscriptionSchedulePhaseConfiguration where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias
import {-# SOURCE #-} StripeAPI.Types.Account
import {-# SOURCE #-} StripeAPI.Types.Coupon
import {-# SOURCE #-} StripeAPI.Types.DeletedCoupon
import {-# SOURCE #-} StripeAPI.Types.InvoiceSettingSubscriptionScheduleSetting
import {-# SOURCE #-} StripeAPI.Types.PaymentMethod
import {-# SOURCE #-} StripeAPI.Types.SchedulesPhaseAutomaticTax
import {-# SOURCE #-} StripeAPI.Types.SubscriptionBillingThresholds
import {-# SOURCE #-} StripeAPI.Types.SubscriptionScheduleAddInvoiceItem
import {-# SOURCE #-} StripeAPI.Types.SubscriptionScheduleConfigurationItem
import {-# SOURCE #-} StripeAPI.Types.SubscriptionTransferData
import {-# SOURCE #-} StripeAPI.Types.TaxRate
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.subscription_schedule_phase_configuration@ in the specification.
--
-- A phase describes the plans, coupon, and trialing status of a subscription for a predefined time period.
data SubscriptionSchedulePhaseConfiguration = SubscriptionSchedulePhaseConfiguration
  { -- | add_invoice_items: A list of prices and quantities that will generate invoice items appended to the first invoice for this phase.
    subscriptionSchedulePhaseConfigurationAddInvoiceItems :: ([SubscriptionScheduleAddInvoiceItem]),
    -- | application_fee_percent: A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice subtotal that will be transferred to the application owner\'s Stripe account during this phase of the schedule.
    subscriptionSchedulePhaseConfigurationApplicationFeePercent :: (GHC.Maybe.Maybe GHC.Types.Double),
    -- | automatic_tax:
    subscriptionSchedulePhaseConfigurationAutomaticTax :: (GHC.Maybe.Maybe SchedulesPhaseAutomaticTax),
    -- | billing_cycle_anchor: Possible values are \`phase_start\` or \`automatic\`. If \`phase_start\` then billing cycle anchor of the subscription is set to the start of the phase when entering the phase. If \`automatic\` then the billing cycle anchor is automatically modified as needed when entering the phase. For more information, see the billing cycle [documentation](https:\/\/stripe.com\/docs\/billing\/subscriptions\/billing-cycle).
    subscriptionSchedulePhaseConfigurationBillingCycleAnchor :: (GHC.Maybe.Maybe SubscriptionSchedulePhaseConfigurationBillingCycleAnchor'),
    -- | billing_thresholds: Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period
    subscriptionSchedulePhaseConfigurationBillingThresholds :: (GHC.Maybe.Maybe SubscriptionSchedulePhaseConfigurationBillingThresholds'),
    -- | collection_method: Either \`charge_automatically\`, or \`send_invoice\`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions.
    subscriptionSchedulePhaseConfigurationCollectionMethod :: (GHC.Maybe.Maybe SubscriptionSchedulePhaseConfigurationCollectionMethod'),
    -- | coupon: ID of the coupon to use during this phase of the subscription schedule.
    subscriptionSchedulePhaseConfigurationCoupon :: (GHC.Maybe.Maybe SubscriptionSchedulePhaseConfigurationCoupon'Variants),
    -- | default_payment_method: ID of the default payment method for the subscription schedule. It must belong to the customer associated with the subscription schedule. If not set, invoices will use the default payment method in the customer\'s invoice settings.
    subscriptionSchedulePhaseConfigurationDefaultPaymentMethod :: (GHC.Maybe.Maybe SubscriptionSchedulePhaseConfigurationDefaultPaymentMethod'Variants),
    -- | default_tax_rates: The default tax rates to apply to the subscription during this phase of the subscription schedule.
    subscriptionSchedulePhaseConfigurationDefaultTaxRates :: (GHC.Maybe.Maybe ([TaxRate])),
    -- | end_date: The end of this phase of the subscription schedule.
    subscriptionSchedulePhaseConfigurationEndDate :: GHC.Types.Int,
    -- | invoice_settings: The invoice settings applicable during this phase.
    subscriptionSchedulePhaseConfigurationInvoiceSettings :: (GHC.Maybe.Maybe SubscriptionSchedulePhaseConfigurationInvoiceSettings'),
    -- | items: Subscription items to configure the subscription to during this phase of the subscription schedule.
    subscriptionSchedulePhaseConfigurationItems :: ([SubscriptionScheduleConfigurationItem]),
    -- | proration_behavior: If the subscription schedule will prorate when transitioning to this phase. Possible values are \`create_prorations\` and \`none\`.
    subscriptionSchedulePhaseConfigurationProrationBehavior :: SubscriptionSchedulePhaseConfigurationProrationBehavior',
    -- | start_date: The start of this phase of the subscription schedule.
    subscriptionSchedulePhaseConfigurationStartDate :: GHC.Types.Int,
    -- | transfer_data: The account (if any) the associated subscription\'s payments will be attributed to for tax reporting, and where funds from each payment will be transferred to for each of the subscription\'s invoices.
    subscriptionSchedulePhaseConfigurationTransferData :: (GHC.Maybe.Maybe SubscriptionSchedulePhaseConfigurationTransferData'),
    -- | trial_end: When the trial ends within the phase.
    subscriptionSchedulePhaseConfigurationTrialEnd :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionSchedulePhaseConfiguration where
  toJSON obj = Data.Aeson.Types.Internal.object ("add_invoice_items" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationAddInvoiceItems obj : "application_fee_percent" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationApplicationFeePercent obj : "automatic_tax" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationAutomaticTax obj : "billing_cycle_anchor" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationBillingCycleAnchor obj : "billing_thresholds" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationBillingThresholds obj : "collection_method" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationCollectionMethod obj : "coupon" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationCoupon obj : "default_payment_method" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationDefaultPaymentMethod obj : "default_tax_rates" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationDefaultTaxRates obj : "end_date" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationEndDate obj : "invoice_settings" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationInvoiceSettings obj : "items" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationItems obj : "proration_behavior" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationProrationBehavior obj : "start_date" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationStartDate obj : "transfer_data" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationTransferData obj : "trial_end" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationTrialEnd obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("add_invoice_items" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationAddInvoiceItems obj) GHC.Base.<> (("application_fee_percent" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationApplicationFeePercent obj) GHC.Base.<> (("automatic_tax" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationAutomaticTax obj) GHC.Base.<> (("billing_cycle_anchor" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationBillingCycleAnchor obj) GHC.Base.<> (("billing_thresholds" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationBillingThresholds obj) GHC.Base.<> (("collection_method" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationCollectionMethod obj) GHC.Base.<> (("coupon" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationCoupon obj) GHC.Base.<> (("default_payment_method" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationDefaultPaymentMethod obj) GHC.Base.<> (("default_tax_rates" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationDefaultTaxRates obj) GHC.Base.<> (("end_date" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationEndDate obj) GHC.Base.<> (("invoice_settings" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationInvoiceSettings obj) GHC.Base.<> (("items" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationItems obj) GHC.Base.<> (("proration_behavior" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationProrationBehavior obj) GHC.Base.<> (("start_date" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationStartDate obj) GHC.Base.<> (("transfer_data" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationTransferData obj) GHC.Base.<> ("trial_end" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationTrialEnd obj))))))))))))))))

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionSchedulePhaseConfiguration where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SubscriptionSchedulePhaseConfiguration" (\obj -> (((((((((((((((GHC.Base.pure SubscriptionSchedulePhaseConfiguration GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "add_invoice_items")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "automatic_tax")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_cycle_anchor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "collection_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "coupon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_tax_rates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "end_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoice_settings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "items")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "proration_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "start_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transfer_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_end"))

-- | Create a new 'SubscriptionSchedulePhaseConfiguration' with all required fields.
mkSubscriptionSchedulePhaseConfiguration ::
  -- | 'subscriptionSchedulePhaseConfigurationAddInvoiceItems'
  [SubscriptionScheduleAddInvoiceItem] ->
  -- | 'subscriptionSchedulePhaseConfigurationEndDate'
  GHC.Types.Int ->
  -- | 'subscriptionSchedulePhaseConfigurationItems'
  [SubscriptionScheduleConfigurationItem] ->
  -- | 'subscriptionSchedulePhaseConfigurationProrationBehavior'
  SubscriptionSchedulePhaseConfigurationProrationBehavior' ->
  -- | 'subscriptionSchedulePhaseConfigurationStartDate'
  GHC.Types.Int ->
  SubscriptionSchedulePhaseConfiguration
mkSubscriptionSchedulePhaseConfiguration subscriptionSchedulePhaseConfigurationAddInvoiceItems subscriptionSchedulePhaseConfigurationEndDate subscriptionSchedulePhaseConfigurationItems subscriptionSchedulePhaseConfigurationProrationBehavior subscriptionSchedulePhaseConfigurationStartDate =
  SubscriptionSchedulePhaseConfiguration
    { subscriptionSchedulePhaseConfigurationAddInvoiceItems = subscriptionSchedulePhaseConfigurationAddInvoiceItems,
      subscriptionSchedulePhaseConfigurationApplicationFeePercent = GHC.Maybe.Nothing,
      subscriptionSchedulePhaseConfigurationAutomaticTax = GHC.Maybe.Nothing,
      subscriptionSchedulePhaseConfigurationBillingCycleAnchor = GHC.Maybe.Nothing,
      subscriptionSchedulePhaseConfigurationBillingThresholds = GHC.Maybe.Nothing,
      subscriptionSchedulePhaseConfigurationCollectionMethod = GHC.Maybe.Nothing,
      subscriptionSchedulePhaseConfigurationCoupon = GHC.Maybe.Nothing,
      subscriptionSchedulePhaseConfigurationDefaultPaymentMethod = GHC.Maybe.Nothing,
      subscriptionSchedulePhaseConfigurationDefaultTaxRates = GHC.Maybe.Nothing,
      subscriptionSchedulePhaseConfigurationEndDate = subscriptionSchedulePhaseConfigurationEndDate,
      subscriptionSchedulePhaseConfigurationInvoiceSettings = GHC.Maybe.Nothing,
      subscriptionSchedulePhaseConfigurationItems = subscriptionSchedulePhaseConfigurationItems,
      subscriptionSchedulePhaseConfigurationProrationBehavior = subscriptionSchedulePhaseConfigurationProrationBehavior,
      subscriptionSchedulePhaseConfigurationStartDate = subscriptionSchedulePhaseConfigurationStartDate,
      subscriptionSchedulePhaseConfigurationTransferData = GHC.Maybe.Nothing,
      subscriptionSchedulePhaseConfigurationTrialEnd = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.subscription_schedule_phase_configuration.properties.billing_cycle_anchor@ in the specification.
--
-- Possible values are \`phase_start\` or \`automatic\`. If \`phase_start\` then billing cycle anchor of the subscription is set to the start of the phase when entering the phase. If \`automatic\` then the billing cycle anchor is automatically modified as needed when entering the phase. For more information, see the billing cycle [documentation](https:\/\/stripe.com\/docs\/billing\/subscriptions\/billing-cycle).
data SubscriptionSchedulePhaseConfigurationBillingCycleAnchor'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    SubscriptionSchedulePhaseConfigurationBillingCycleAnchor'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    SubscriptionSchedulePhaseConfigurationBillingCycleAnchor'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"automatic"@
    SubscriptionSchedulePhaseConfigurationBillingCycleAnchor'EnumAutomatic
  | -- | Represents the JSON value @"phase_start"@
    SubscriptionSchedulePhaseConfigurationBillingCycleAnchor'EnumPhaseStart
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionSchedulePhaseConfigurationBillingCycleAnchor' where
  toJSON (SubscriptionSchedulePhaseConfigurationBillingCycleAnchor'Other val) = val
  toJSON (SubscriptionSchedulePhaseConfigurationBillingCycleAnchor'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (SubscriptionSchedulePhaseConfigurationBillingCycleAnchor'EnumAutomatic) = "automatic"
  toJSON (SubscriptionSchedulePhaseConfigurationBillingCycleAnchor'EnumPhaseStart) = "phase_start"

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionSchedulePhaseConfigurationBillingCycleAnchor' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "automatic" -> SubscriptionSchedulePhaseConfigurationBillingCycleAnchor'EnumAutomatic
            | val GHC.Classes.== "phase_start" -> SubscriptionSchedulePhaseConfigurationBillingCycleAnchor'EnumPhaseStart
            | GHC.Base.otherwise -> SubscriptionSchedulePhaseConfigurationBillingCycleAnchor'Other val
      )

-- | Defines the object schema located at @components.schemas.subscription_schedule_phase_configuration.properties.billing_thresholds.anyOf@ in the specification.
--
-- Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period
data SubscriptionSchedulePhaseConfigurationBillingThresholds' = SubscriptionSchedulePhaseConfigurationBillingThresholds'
  { -- | amount_gte: Monetary threshold that triggers the subscription to create an invoice
    subscriptionSchedulePhaseConfigurationBillingThresholds'AmountGte :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | reset_billing_cycle_anchor: Indicates if the \`billing_cycle_anchor\` should be reset when a threshold is reached. If true, \`billing_cycle_anchor\` will be updated to the date\/time the threshold was last reached; otherwise, the value will remain unchanged. This value may not be \`true\` if the subscription contains items with plans that have \`aggregate_usage=last_ever\`.
    subscriptionSchedulePhaseConfigurationBillingThresholds'ResetBillingCycleAnchor :: (GHC.Maybe.Maybe GHC.Types.Bool)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionSchedulePhaseConfigurationBillingThresholds' where
  toJSON obj = Data.Aeson.Types.Internal.object ("amount_gte" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationBillingThresholds'AmountGte obj : "reset_billing_cycle_anchor" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationBillingThresholds'ResetBillingCycleAnchor obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("amount_gte" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationBillingThresholds'AmountGte obj) GHC.Base.<> ("reset_billing_cycle_anchor" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationBillingThresholds'ResetBillingCycleAnchor obj))

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionSchedulePhaseConfigurationBillingThresholds' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SubscriptionSchedulePhaseConfigurationBillingThresholds'" (\obj -> (GHC.Base.pure SubscriptionSchedulePhaseConfigurationBillingThresholds' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reset_billing_cycle_anchor"))

-- | Create a new 'SubscriptionSchedulePhaseConfigurationBillingThresholds'' with all required fields.
mkSubscriptionSchedulePhaseConfigurationBillingThresholds' :: SubscriptionSchedulePhaseConfigurationBillingThresholds'
mkSubscriptionSchedulePhaseConfigurationBillingThresholds' =
  SubscriptionSchedulePhaseConfigurationBillingThresholds'
    { subscriptionSchedulePhaseConfigurationBillingThresholds'AmountGte = GHC.Maybe.Nothing,
      subscriptionSchedulePhaseConfigurationBillingThresholds'ResetBillingCycleAnchor = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.subscription_schedule_phase_configuration.properties.collection_method@ in the specification.
--
-- Either \`charge_automatically\`, or \`send_invoice\`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions.
data SubscriptionSchedulePhaseConfigurationCollectionMethod'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    SubscriptionSchedulePhaseConfigurationCollectionMethod'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    SubscriptionSchedulePhaseConfigurationCollectionMethod'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"charge_automatically"@
    SubscriptionSchedulePhaseConfigurationCollectionMethod'EnumChargeAutomatically
  | -- | Represents the JSON value @"send_invoice"@
    SubscriptionSchedulePhaseConfigurationCollectionMethod'EnumSendInvoice
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionSchedulePhaseConfigurationCollectionMethod' where
  toJSON (SubscriptionSchedulePhaseConfigurationCollectionMethod'Other val) = val
  toJSON (SubscriptionSchedulePhaseConfigurationCollectionMethod'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (SubscriptionSchedulePhaseConfigurationCollectionMethod'EnumChargeAutomatically) = "charge_automatically"
  toJSON (SubscriptionSchedulePhaseConfigurationCollectionMethod'EnumSendInvoice) = "send_invoice"

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionSchedulePhaseConfigurationCollectionMethod' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "charge_automatically" -> SubscriptionSchedulePhaseConfigurationCollectionMethod'EnumChargeAutomatically
            | val GHC.Classes.== "send_invoice" -> SubscriptionSchedulePhaseConfigurationCollectionMethod'EnumSendInvoice
            | GHC.Base.otherwise -> SubscriptionSchedulePhaseConfigurationCollectionMethod'Other val
      )

-- | Defines the oneOf schema located at @components.schemas.subscription_schedule_phase_configuration.properties.coupon.anyOf@ in the specification.
--
-- ID of the coupon to use during this phase of the subscription schedule.
data SubscriptionSchedulePhaseConfigurationCoupon'Variants
  = SubscriptionSchedulePhaseConfigurationCoupon'Text Data.Text.Internal.Text
  | SubscriptionSchedulePhaseConfigurationCoupon'Coupon Coupon
  | SubscriptionSchedulePhaseConfigurationCoupon'DeletedCoupon DeletedCoupon
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionSchedulePhaseConfigurationCoupon'Variants where
  toJSON (SubscriptionSchedulePhaseConfigurationCoupon'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (SubscriptionSchedulePhaseConfigurationCoupon'Coupon a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (SubscriptionSchedulePhaseConfigurationCoupon'DeletedCoupon a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionSchedulePhaseConfigurationCoupon'Variants where
  parseJSON val = case (SubscriptionSchedulePhaseConfigurationCoupon'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((SubscriptionSchedulePhaseConfigurationCoupon'Coupon Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((SubscriptionSchedulePhaseConfigurationCoupon'DeletedCoupon Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched")) of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.subscription_schedule_phase_configuration.properties.default_payment_method.anyOf@ in the specification.
--
-- ID of the default payment method for the subscription schedule. It must belong to the customer associated with the subscription schedule. If not set, invoices will use the default payment method in the customer\'s invoice settings.
data SubscriptionSchedulePhaseConfigurationDefaultPaymentMethod'Variants
  = SubscriptionSchedulePhaseConfigurationDefaultPaymentMethod'Text Data.Text.Internal.Text
  | SubscriptionSchedulePhaseConfigurationDefaultPaymentMethod'PaymentMethod PaymentMethod
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionSchedulePhaseConfigurationDefaultPaymentMethod'Variants where
  toJSON (SubscriptionSchedulePhaseConfigurationDefaultPaymentMethod'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (SubscriptionSchedulePhaseConfigurationDefaultPaymentMethod'PaymentMethod a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionSchedulePhaseConfigurationDefaultPaymentMethod'Variants where
  parseJSON val = case (SubscriptionSchedulePhaseConfigurationDefaultPaymentMethod'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((SubscriptionSchedulePhaseConfigurationDefaultPaymentMethod'PaymentMethod Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the object schema located at @components.schemas.subscription_schedule_phase_configuration.properties.invoice_settings.anyOf@ in the specification.
--
-- The invoice settings applicable during this phase.
data SubscriptionSchedulePhaseConfigurationInvoiceSettings' = SubscriptionSchedulePhaseConfigurationInvoiceSettings'
  { -- | days_until_due: Number of days within which a customer must pay invoices generated by this subscription schedule. This value will be \`null\` for subscription schedules where \`billing=charge_automatically\`.
    subscriptionSchedulePhaseConfigurationInvoiceSettings'DaysUntilDue :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionSchedulePhaseConfigurationInvoiceSettings' where
  toJSON obj = Data.Aeson.Types.Internal.object ("days_until_due" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationInvoiceSettings'DaysUntilDue obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("days_until_due" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationInvoiceSettings'DaysUntilDue obj)

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionSchedulePhaseConfigurationInvoiceSettings' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SubscriptionSchedulePhaseConfigurationInvoiceSettings'" (\obj -> GHC.Base.pure SubscriptionSchedulePhaseConfigurationInvoiceSettings' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "days_until_due"))

-- | Create a new 'SubscriptionSchedulePhaseConfigurationInvoiceSettings'' with all required fields.
mkSubscriptionSchedulePhaseConfigurationInvoiceSettings' :: SubscriptionSchedulePhaseConfigurationInvoiceSettings'
mkSubscriptionSchedulePhaseConfigurationInvoiceSettings' = SubscriptionSchedulePhaseConfigurationInvoiceSettings' {subscriptionSchedulePhaseConfigurationInvoiceSettings'DaysUntilDue = GHC.Maybe.Nothing}

-- | Defines the enum schema located at @components.schemas.subscription_schedule_phase_configuration.properties.proration_behavior@ in the specification.
--
-- If the subscription schedule will prorate when transitioning to this phase. Possible values are \`create_prorations\` and \`none\`.
data SubscriptionSchedulePhaseConfigurationProrationBehavior'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    SubscriptionSchedulePhaseConfigurationProrationBehavior'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    SubscriptionSchedulePhaseConfigurationProrationBehavior'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"always_invoice"@
    SubscriptionSchedulePhaseConfigurationProrationBehavior'EnumAlwaysInvoice
  | -- | Represents the JSON value @"create_prorations"@
    SubscriptionSchedulePhaseConfigurationProrationBehavior'EnumCreateProrations
  | -- | Represents the JSON value @"none"@
    SubscriptionSchedulePhaseConfigurationProrationBehavior'EnumNone
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionSchedulePhaseConfigurationProrationBehavior' where
  toJSON (SubscriptionSchedulePhaseConfigurationProrationBehavior'Other val) = val
  toJSON (SubscriptionSchedulePhaseConfigurationProrationBehavior'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (SubscriptionSchedulePhaseConfigurationProrationBehavior'EnumAlwaysInvoice) = "always_invoice"
  toJSON (SubscriptionSchedulePhaseConfigurationProrationBehavior'EnumCreateProrations) = "create_prorations"
  toJSON (SubscriptionSchedulePhaseConfigurationProrationBehavior'EnumNone) = "none"

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionSchedulePhaseConfigurationProrationBehavior' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "always_invoice" -> SubscriptionSchedulePhaseConfigurationProrationBehavior'EnumAlwaysInvoice
            | val GHC.Classes.== "create_prorations" -> SubscriptionSchedulePhaseConfigurationProrationBehavior'EnumCreateProrations
            | val GHC.Classes.== "none" -> SubscriptionSchedulePhaseConfigurationProrationBehavior'EnumNone
            | GHC.Base.otherwise -> SubscriptionSchedulePhaseConfigurationProrationBehavior'Other val
      )

-- | Defines the object schema located at @components.schemas.subscription_schedule_phase_configuration.properties.transfer_data.anyOf@ in the specification.
--
-- The account (if any) the associated subscription\\\'s payments will be attributed to for tax reporting, and where funds from each payment will be transferred to for each of the subscription\\\'s invoices.
data SubscriptionSchedulePhaseConfigurationTransferData' = SubscriptionSchedulePhaseConfigurationTransferData'
  { -- | amount_percent: A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice subtotal that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
    subscriptionSchedulePhaseConfigurationTransferData'AmountPercent :: (GHC.Maybe.Maybe GHC.Types.Double),
    -- | destination: The account where funds from the payment will be transferred to upon payment success.
    subscriptionSchedulePhaseConfigurationTransferData'Destination :: (GHC.Maybe.Maybe SubscriptionSchedulePhaseConfigurationTransferData'Destination'Variants)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionSchedulePhaseConfigurationTransferData' where
  toJSON obj = Data.Aeson.Types.Internal.object ("amount_percent" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationTransferData'AmountPercent obj : "destination" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationTransferData'Destination obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("amount_percent" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationTransferData'AmountPercent obj) GHC.Base.<> ("destination" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhaseConfigurationTransferData'Destination obj))

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionSchedulePhaseConfigurationTransferData' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SubscriptionSchedulePhaseConfigurationTransferData'" (\obj -> (GHC.Base.pure SubscriptionSchedulePhaseConfigurationTransferData' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "destination"))

-- | Create a new 'SubscriptionSchedulePhaseConfigurationTransferData'' with all required fields.
mkSubscriptionSchedulePhaseConfigurationTransferData' :: SubscriptionSchedulePhaseConfigurationTransferData'
mkSubscriptionSchedulePhaseConfigurationTransferData' =
  SubscriptionSchedulePhaseConfigurationTransferData'
    { subscriptionSchedulePhaseConfigurationTransferData'AmountPercent = GHC.Maybe.Nothing,
      subscriptionSchedulePhaseConfigurationTransferData'Destination = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @components.schemas.subscription_schedule_phase_configuration.properties.transfer_data.anyOf.properties.destination.anyOf@ in the specification.
--
-- The account where funds from the payment will be transferred to upon payment success.
data SubscriptionSchedulePhaseConfigurationTransferData'Destination'Variants
  = SubscriptionSchedulePhaseConfigurationTransferData'Destination'Text Data.Text.Internal.Text
  | SubscriptionSchedulePhaseConfigurationTransferData'Destination'Account Account
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionSchedulePhaseConfigurationTransferData'Destination'Variants where
  toJSON (SubscriptionSchedulePhaseConfigurationTransferData'Destination'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (SubscriptionSchedulePhaseConfigurationTransferData'Destination'Account a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionSchedulePhaseConfigurationTransferData'Destination'Variants where
  parseJSON val = case (SubscriptionSchedulePhaseConfigurationTransferData'Destination'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((SubscriptionSchedulePhaseConfigurationTransferData'Destination'Account Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
