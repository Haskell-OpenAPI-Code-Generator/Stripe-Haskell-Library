{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Plan
module StripeAPI.Types.Plan where

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
import {-# SOURCE #-} StripeAPI.Types.DeletedProduct
import {-# SOURCE #-} StripeAPI.Types.PlanTier
import {-# SOURCE #-} StripeAPI.Types.Product
import {-# SOURCE #-} StripeAPI.Types.TransformUsage
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.plan@ in the specification.
--
-- You can now model subscriptions more flexibly using the [Prices API](https:\/\/stripe.com\/docs\/api\#prices). It replaces the Plans API and is backwards compatible to simplify your migration.
--
-- Plans define the base price, currency, and billing cycle for recurring purchases of products.
-- [Products](https:\/\/stripe.com\/docs\/api\#products) help you track inventory or provisioning, and plans help you track pricing. Different physical goods or levels of service should be represented by products, and pricing options should be represented by plans. This approach lets you change prices without having to change your provisioning scheme.
--
-- For example, you might have a single \"gold\" product that has plans for \$10\/month, \$100\/year, €9\/month, and €90\/year.
--
-- Related guides: [Set up a subscription](https:\/\/stripe.com\/docs\/billing\/subscriptions\/set-up-subscription) and more about [products and prices](https:\/\/stripe.com\/docs\/billing\/prices-guide).
data Plan = Plan
  { -- | active: Whether the plan can be used for new purchases.
    planActive :: GHC.Types.Bool,
    -- | aggregate_usage: Specifies a usage aggregation strategy for plans of \`usage_type=metered\`. Allowed values are \`sum\` for summing up all usage during a period, \`last_during_period\` for using the last usage record reported within a period, \`last_ever\` for using the last usage record ever (across period bounds) or \`max\` which uses the usage record with the maximum reported usage during a period. Defaults to \`sum\`.
    planAggregateUsage :: (GHC.Maybe.Maybe PlanAggregateUsage'),
    -- | amount: The unit amount in %s to be charged, represented as a whole integer if possible. Only set if \`billing_scheme=per_unit\`.
    planAmount :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | amount_decimal: The unit amount in %s to be charged, represented as a decimal string with at most 12 decimal places. Only set if \`billing_scheme=per_unit\`.
    planAmountDecimal :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | billing_scheme: Describes how to compute the price per period. Either \`per_unit\` or \`tiered\`. \`per_unit\` indicates that the fixed amount (specified in \`amount\`) will be charged per unit in \`quantity\` (for plans with \`usage_type=licensed\`), or per unit of total usage (for plans with \`usage_type=metered\`). \`tiered\` indicates that the unit pricing will be computed using a tiering strategy as defined using the \`tiers\` and \`tiers_mode\` attributes.
    planBillingScheme :: PlanBillingScheme',
    -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
    planCreated :: GHC.Types.Int,
    -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
    planCurrency :: Data.Text.Internal.Text,
    -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    planId :: Data.Text.Internal.Text,
    -- | interval: The frequency at which a subscription is billed. One of \`day\`, \`week\`, \`month\` or \`year\`.
    planInterval :: PlanInterval',
    -- | interval_count: The number of intervals (specified in the \`interval\` attribute) between subscription billings. For example, \`interval=month\` and \`interval_count=3\` bills every 3 months.
    planIntervalCount :: GHC.Types.Int,
    -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
    planLivemode :: GHC.Types.Bool,
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    planMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | nickname: A brief description of the plan, hidden from customers.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    planNickname :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | product: The product whose pricing this plan determines.
    planProduct :: (GHC.Maybe.Maybe PlanProduct'Variants),
    -- | tiers: Each element represents a pricing tier. This parameter requires \`billing_scheme\` to be set to \`tiered\`. See also the documentation for \`billing_scheme\`.
    planTiers :: (GHC.Maybe.Maybe ([PlanTier])),
    -- | tiers_mode: Defines if the tiering price should be \`graduated\` or \`volume\` based. In \`volume\`-based tiering, the maximum quantity within a period determines the per unit price. In \`graduated\` tiering, pricing can change as the quantity grows.
    planTiersMode :: (GHC.Maybe.Maybe PlanTiersMode'),
    -- | transform_usage: Apply a transformation to the reported usage or set quantity before computing the amount billed. Cannot be combined with \`tiers\`.
    planTransformUsage :: (GHC.Maybe.Maybe PlanTransformUsage'),
    -- | trial_period_days: Default number of trial days when subscribing a customer to this plan using [\`trial_from_plan=true\`](https:\/\/stripe.com\/docs\/api\#create_subscription-trial_from_plan).
    planTrialPeriodDays :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | usage_type: Configures how the quantity per period should be determined. Can be either \`metered\` or \`licensed\`. \`licensed\` automatically bills the \`quantity\` set when adding it to a subscription. \`metered\` aggregates the total usage based on usage records. Defaults to \`licensed\`.
    planUsageType :: PlanUsageType'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Plan where
  toJSON obj = Data.Aeson.Types.Internal.object ("active" Data.Aeson.Types.ToJSON..= planActive obj : "aggregate_usage" Data.Aeson.Types.ToJSON..= planAggregateUsage obj : "amount" Data.Aeson.Types.ToJSON..= planAmount obj : "amount_decimal" Data.Aeson.Types.ToJSON..= planAmountDecimal obj : "billing_scheme" Data.Aeson.Types.ToJSON..= planBillingScheme obj : "created" Data.Aeson.Types.ToJSON..= planCreated obj : "currency" Data.Aeson.Types.ToJSON..= planCurrency obj : "id" Data.Aeson.Types.ToJSON..= planId obj : "interval" Data.Aeson.Types.ToJSON..= planInterval obj : "interval_count" Data.Aeson.Types.ToJSON..= planIntervalCount obj : "livemode" Data.Aeson.Types.ToJSON..= planLivemode obj : "metadata" Data.Aeson.Types.ToJSON..= planMetadata obj : "nickname" Data.Aeson.Types.ToJSON..= planNickname obj : "product" Data.Aeson.Types.ToJSON..= planProduct obj : "tiers" Data.Aeson.Types.ToJSON..= planTiers obj : "tiers_mode" Data.Aeson.Types.ToJSON..= planTiersMode obj : "transform_usage" Data.Aeson.Types.ToJSON..= planTransformUsage obj : "trial_period_days" Data.Aeson.Types.ToJSON..= planTrialPeriodDays obj : "usage_type" Data.Aeson.Types.ToJSON..= planUsageType obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "plan" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("active" Data.Aeson.Types.ToJSON..= planActive obj) GHC.Base.<> (("aggregate_usage" Data.Aeson.Types.ToJSON..= planAggregateUsage obj) GHC.Base.<> (("amount" Data.Aeson.Types.ToJSON..= planAmount obj) GHC.Base.<> (("amount_decimal" Data.Aeson.Types.ToJSON..= planAmountDecimal obj) GHC.Base.<> (("billing_scheme" Data.Aeson.Types.ToJSON..= planBillingScheme obj) GHC.Base.<> (("created" Data.Aeson.Types.ToJSON..= planCreated obj) GHC.Base.<> (("currency" Data.Aeson.Types.ToJSON..= planCurrency obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= planId obj) GHC.Base.<> (("interval" Data.Aeson.Types.ToJSON..= planInterval obj) GHC.Base.<> (("interval_count" Data.Aeson.Types.ToJSON..= planIntervalCount obj) GHC.Base.<> (("livemode" Data.Aeson.Types.ToJSON..= planLivemode obj) GHC.Base.<> (("metadata" Data.Aeson.Types.ToJSON..= planMetadata obj) GHC.Base.<> (("nickname" Data.Aeson.Types.ToJSON..= planNickname obj) GHC.Base.<> (("product" Data.Aeson.Types.ToJSON..= planProduct obj) GHC.Base.<> (("tiers" Data.Aeson.Types.ToJSON..= planTiers obj) GHC.Base.<> (("tiers_mode" Data.Aeson.Types.ToJSON..= planTiersMode obj) GHC.Base.<> (("transform_usage" Data.Aeson.Types.ToJSON..= planTransformUsage obj) GHC.Base.<> (("trial_period_days" Data.Aeson.Types.ToJSON..= planTrialPeriodDays obj) GHC.Base.<> (("usage_type" Data.Aeson.Types.ToJSON..= planUsageType obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "plan"))))))))))))))))))))

instance Data.Aeson.Types.FromJSON.FromJSON Plan where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Plan" (\obj -> ((((((((((((((((((GHC.Base.pure Plan GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "aggregate_usage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_decimal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "billing_scheme")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval_count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "nickname")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "product")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tiers")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tiers_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transform_usage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_period_days")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "usage_type"))

-- | Create a new 'Plan' with all required fields.
mkPlan ::
  -- | 'planActive'
  GHC.Types.Bool ->
  -- | 'planBillingScheme'
  PlanBillingScheme' ->
  -- | 'planCreated'
  GHC.Types.Int ->
  -- | 'planCurrency'
  Data.Text.Internal.Text ->
  -- | 'planId'
  Data.Text.Internal.Text ->
  -- | 'planInterval'
  PlanInterval' ->
  -- | 'planIntervalCount'
  GHC.Types.Int ->
  -- | 'planLivemode'
  GHC.Types.Bool ->
  -- | 'planUsageType'
  PlanUsageType' ->
  Plan
mkPlan planActive planBillingScheme planCreated planCurrency planId planInterval planIntervalCount planLivemode planUsageType =
  Plan
    { planActive = planActive,
      planAggregateUsage = GHC.Maybe.Nothing,
      planAmount = GHC.Maybe.Nothing,
      planAmountDecimal = GHC.Maybe.Nothing,
      planBillingScheme = planBillingScheme,
      planCreated = planCreated,
      planCurrency = planCurrency,
      planId = planId,
      planInterval = planInterval,
      planIntervalCount = planIntervalCount,
      planLivemode = planLivemode,
      planMetadata = GHC.Maybe.Nothing,
      planNickname = GHC.Maybe.Nothing,
      planProduct = GHC.Maybe.Nothing,
      planTiers = GHC.Maybe.Nothing,
      planTiersMode = GHC.Maybe.Nothing,
      planTransformUsage = GHC.Maybe.Nothing,
      planTrialPeriodDays = GHC.Maybe.Nothing,
      planUsageType = planUsageType
    }

-- | Defines the enum schema located at @components.schemas.plan.properties.aggregate_usage@ in the specification.
--
-- Specifies a usage aggregation strategy for plans of \`usage_type=metered\`. Allowed values are \`sum\` for summing up all usage during a period, \`last_during_period\` for using the last usage record reported within a period, \`last_ever\` for using the last usage record ever (across period bounds) or \`max\` which uses the usage record with the maximum reported usage during a period. Defaults to \`sum\`.
data PlanAggregateUsage'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PlanAggregateUsage'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PlanAggregateUsage'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"last_during_period"@
    PlanAggregateUsage'EnumLastDuringPeriod
  | -- | Represents the JSON value @"last_ever"@
    PlanAggregateUsage'EnumLastEver
  | -- | Represents the JSON value @"max"@
    PlanAggregateUsage'EnumMax
  | -- | Represents the JSON value @"sum"@
    PlanAggregateUsage'EnumSum
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PlanAggregateUsage' where
  toJSON (PlanAggregateUsage'Other val) = val
  toJSON (PlanAggregateUsage'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PlanAggregateUsage'EnumLastDuringPeriod) = "last_during_period"
  toJSON (PlanAggregateUsage'EnumLastEver) = "last_ever"
  toJSON (PlanAggregateUsage'EnumMax) = "max"
  toJSON (PlanAggregateUsage'EnumSum) = "sum"

instance Data.Aeson.Types.FromJSON.FromJSON PlanAggregateUsage' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "last_during_period" -> PlanAggregateUsage'EnumLastDuringPeriod
            | val GHC.Classes.== "last_ever" -> PlanAggregateUsage'EnumLastEver
            | val GHC.Classes.== "max" -> PlanAggregateUsage'EnumMax
            | val GHC.Classes.== "sum" -> PlanAggregateUsage'EnumSum
            | GHC.Base.otherwise -> PlanAggregateUsage'Other val
      )

-- | Defines the enum schema located at @components.schemas.plan.properties.billing_scheme@ in the specification.
--
-- Describes how to compute the price per period. Either \`per_unit\` or \`tiered\`. \`per_unit\` indicates that the fixed amount (specified in \`amount\`) will be charged per unit in \`quantity\` (for plans with \`usage_type=licensed\`), or per unit of total usage (for plans with \`usage_type=metered\`). \`tiered\` indicates that the unit pricing will be computed using a tiering strategy as defined using the \`tiers\` and \`tiers_mode\` attributes.
data PlanBillingScheme'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PlanBillingScheme'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PlanBillingScheme'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"per_unit"@
    PlanBillingScheme'EnumPerUnit
  | -- | Represents the JSON value @"tiered"@
    PlanBillingScheme'EnumTiered
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PlanBillingScheme' where
  toJSON (PlanBillingScheme'Other val) = val
  toJSON (PlanBillingScheme'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PlanBillingScheme'EnumPerUnit) = "per_unit"
  toJSON (PlanBillingScheme'EnumTiered) = "tiered"

instance Data.Aeson.Types.FromJSON.FromJSON PlanBillingScheme' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "per_unit" -> PlanBillingScheme'EnumPerUnit
            | val GHC.Classes.== "tiered" -> PlanBillingScheme'EnumTiered
            | GHC.Base.otherwise -> PlanBillingScheme'Other val
      )

-- | Defines the enum schema located at @components.schemas.plan.properties.interval@ in the specification.
--
-- The frequency at which a subscription is billed. One of \`day\`, \`week\`, \`month\` or \`year\`.
data PlanInterval'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PlanInterval'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PlanInterval'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"day"@
    PlanInterval'EnumDay
  | -- | Represents the JSON value @"month"@
    PlanInterval'EnumMonth
  | -- | Represents the JSON value @"week"@
    PlanInterval'EnumWeek
  | -- | Represents the JSON value @"year"@
    PlanInterval'EnumYear
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PlanInterval' where
  toJSON (PlanInterval'Other val) = val
  toJSON (PlanInterval'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PlanInterval'EnumDay) = "day"
  toJSON (PlanInterval'EnumMonth) = "month"
  toJSON (PlanInterval'EnumWeek) = "week"
  toJSON (PlanInterval'EnumYear) = "year"

instance Data.Aeson.Types.FromJSON.FromJSON PlanInterval' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "day" -> PlanInterval'EnumDay
            | val GHC.Classes.== "month" -> PlanInterval'EnumMonth
            | val GHC.Classes.== "week" -> PlanInterval'EnumWeek
            | val GHC.Classes.== "year" -> PlanInterval'EnumYear
            | GHC.Base.otherwise -> PlanInterval'Other val
      )

-- | Defines the oneOf schema located at @components.schemas.plan.properties.product.anyOf@ in the specification.
--
-- The product whose pricing this plan determines.
data PlanProduct'Variants
  = PlanProduct'Text Data.Text.Internal.Text
  | PlanProduct'Product Product
  | PlanProduct'DeletedProduct DeletedProduct
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PlanProduct'Variants where
  toJSON (PlanProduct'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PlanProduct'Product a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PlanProduct'DeletedProduct a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON PlanProduct'Variants where
  parseJSON val = case (PlanProduct'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PlanProduct'Product Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PlanProduct'DeletedProduct Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched")) of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the enum schema located at @components.schemas.plan.properties.tiers_mode@ in the specification.
--
-- Defines if the tiering price should be \`graduated\` or \`volume\` based. In \`volume\`-based tiering, the maximum quantity within a period determines the per unit price. In \`graduated\` tiering, pricing can change as the quantity grows.
data PlanTiersMode'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PlanTiersMode'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PlanTiersMode'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"graduated"@
    PlanTiersMode'EnumGraduated
  | -- | Represents the JSON value @"volume"@
    PlanTiersMode'EnumVolume
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PlanTiersMode' where
  toJSON (PlanTiersMode'Other val) = val
  toJSON (PlanTiersMode'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PlanTiersMode'EnumGraduated) = "graduated"
  toJSON (PlanTiersMode'EnumVolume) = "volume"

instance Data.Aeson.Types.FromJSON.FromJSON PlanTiersMode' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "graduated" -> PlanTiersMode'EnumGraduated
            | val GHC.Classes.== "volume" -> PlanTiersMode'EnumVolume
            | GHC.Base.otherwise -> PlanTiersMode'Other val
      )

-- | Defines the object schema located at @components.schemas.plan.properties.transform_usage.anyOf@ in the specification.
--
-- Apply a transformation to the reported usage or set quantity before computing the amount billed. Cannot be combined with \\\`tiers\\\`.
data PlanTransformUsage' = PlanTransformUsage'
  { -- | divide_by: Divide usage by this number.
    planTransformUsage'DivideBy :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | round: After division, either round the result \`up\` or \`down\`.
    planTransformUsage'Round :: (GHC.Maybe.Maybe PlanTransformUsage'Round')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PlanTransformUsage' where
  toJSON obj = Data.Aeson.Types.Internal.object ("divide_by" Data.Aeson.Types.ToJSON..= planTransformUsage'DivideBy obj : "round" Data.Aeson.Types.ToJSON..= planTransformUsage'Round obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("divide_by" Data.Aeson.Types.ToJSON..= planTransformUsage'DivideBy obj) GHC.Base.<> ("round" Data.Aeson.Types.ToJSON..= planTransformUsage'Round obj))

instance Data.Aeson.Types.FromJSON.FromJSON PlanTransformUsage' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PlanTransformUsage'" (\obj -> (GHC.Base.pure PlanTransformUsage' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "divide_by")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "round"))

-- | Create a new 'PlanTransformUsage'' with all required fields.
mkPlanTransformUsage' :: PlanTransformUsage'
mkPlanTransformUsage' =
  PlanTransformUsage'
    { planTransformUsage'DivideBy = GHC.Maybe.Nothing,
      planTransformUsage'Round = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.plan.properties.transform_usage.anyOf.properties.round@ in the specification.
--
-- After division, either round the result \`up\` or \`down\`.
data PlanTransformUsage'Round'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PlanTransformUsage'Round'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PlanTransformUsage'Round'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"down"@
    PlanTransformUsage'Round'EnumDown
  | -- | Represents the JSON value @"up"@
    PlanTransformUsage'Round'EnumUp
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PlanTransformUsage'Round' where
  toJSON (PlanTransformUsage'Round'Other val) = val
  toJSON (PlanTransformUsage'Round'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PlanTransformUsage'Round'EnumDown) = "down"
  toJSON (PlanTransformUsage'Round'EnumUp) = "up"

instance Data.Aeson.Types.FromJSON.FromJSON PlanTransformUsage'Round' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "down" -> PlanTransformUsage'Round'EnumDown
            | val GHC.Classes.== "up" -> PlanTransformUsage'Round'EnumUp
            | GHC.Base.otherwise -> PlanTransformUsage'Round'Other val
      )

-- | Defines the enum schema located at @components.schemas.plan.properties.usage_type@ in the specification.
--
-- Configures how the quantity per period should be determined. Can be either \`metered\` or \`licensed\`. \`licensed\` automatically bills the \`quantity\` set when adding it to a subscription. \`metered\` aggregates the total usage based on usage records. Defaults to \`licensed\`.
data PlanUsageType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PlanUsageType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PlanUsageType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"licensed"@
    PlanUsageType'EnumLicensed
  | -- | Represents the JSON value @"metered"@
    PlanUsageType'EnumMetered
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PlanUsageType' where
  toJSON (PlanUsageType'Other val) = val
  toJSON (PlanUsageType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PlanUsageType'EnumLicensed) = "licensed"
  toJSON (PlanUsageType'EnumMetered) = "metered"

instance Data.Aeson.Types.FromJSON.FromJSON PlanUsageType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "licensed" -> PlanUsageType'EnumLicensed
            | val GHC.Classes.== "metered" -> PlanUsageType'EnumMetered
            | GHC.Base.otherwise -> PlanUsageType'Other val
      )
