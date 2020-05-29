{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postPlans
module StripeAPI.Operations.PostPlans where

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

-- | > POST /v1/plans
-- 
-- \<p>You can create plans using the API, or in the Stripe \<a href=\"https:\/\/dashboard.stripe.com\/subscriptions\/products\">Dashboard\<\/a>.\<\/p>
postPlans :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> PostPlansRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostPlansResponse)) -- ^ Monad containing the result of the operation
postPlans config
          body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostPlansResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPlansResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                             Plan)
                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPlansResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/plans") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/plans
-- 
-- The same as 'postPlans' but returns the raw 'Data.ByteString.Char8.ByteString'
postPlansRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                              StripeAPI.Common.SecurityScheme s) =>
                StripeAPI.Common.Configuration s ->
                PostPlansRequestBody ->
                m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPlansRaw config
             body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/plans") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/plans
-- 
-- Monadic version of 'postPlans' (use with 'StripeAPI.Common.runWithConfiguration')
postPlansM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                            StripeAPI.Common.SecurityScheme s) =>
              PostPlansRequestBody ->
              Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                 m
                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                     (Network.HTTP.Client.Types.Response PostPlansResponse))
postPlansM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostPlansResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPlansResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                              Plan)
                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPlansResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                Error)
                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/plans") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/plans
-- 
-- Monadic version of 'postPlansRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postPlansRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                               StripeAPI.Common.SecurityScheme s) =>
                 PostPlansRequestBody ->
                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                    m
                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPlansRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/plans") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postPlansRequestBody
-- 
-- 
data PostPlansRequestBody = PostPlansRequestBody {
  -- | active: Whether the plan is currently available for new subscriptions. Defaults to \`true\`.
  postPlansRequestBodyActive :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | aggregate_usage: Specifies a usage aggregation strategy for plans of \`usage_type=metered\`. Allowed values are \`sum\` for summing up all usage during a period, \`last_during_period\` for using the last usage record reported within a period, \`last_ever\` for using the last usage record ever (across period bounds) or \`max\` which uses the usage record with the maximum reported usage during a period. Defaults to \`sum\`.
  , postPlansRequestBodyAggregateUsage :: (GHC.Maybe.Maybe PostPlansRequestBodyAggregateUsage')
  -- | amount: A positive integer in %s (or 0 for a free plan) representing how much to charge on a recurring basis.
  , postPlansRequestBodyAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | amount_decimal: Same as \`amount\`, but accepts a decimal value with at most 12 decimal places. Only one of \`amount\` and \`amount_decimal\` can be set.
  , postPlansRequestBodyAmountDecimal :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | billing_scheme: Describes how to compute the price per period. Either \`per_unit\` or \`tiered\`. \`per_unit\` indicates that the fixed amount (specified in \`amount\`) will be charged per unit in \`quantity\` (for plans with \`usage_type=licensed\`), or per unit of total usage (for plans with \`usage_type=metered\`). \`tiered\` indicates that the unit pricing will be computed using a tiering strategy as defined using the \`tiers\` and \`tiers_mode\` attributes.
  , postPlansRequestBodyBillingScheme :: (GHC.Maybe.Maybe PostPlansRequestBodyBillingScheme')
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  , postPlansRequestBodyCurrency :: Data.Text.Internal.Text
  -- | expand: Specifies which fields in the response should be expanded.
  , postPlansRequestBodyExpand :: (GHC.Maybe.Maybe ([] Data.Text.Internal.Text))
  -- | id: An identifier randomly generated by Stripe. Used to identify this plan when subscribing a customer. You can optionally override this ID, but the ID must be unique across all plans in your Stripe account. You can, however, use the same plan ID in both live and test modes.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPlansRequestBodyId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | interval: Specifies billing frequency. Either \`day\`, \`week\`, \`month\` or \`year\`.
  , postPlansRequestBodyInterval :: PostPlansRequestBodyInterval'
  -- | interval_count: The number of intervals between subscription billings. For example, \`interval=month\` and \`interval_count=3\` bills every 3 months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks).
  , postPlansRequestBodyIntervalCount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postPlansRequestBodyMetadata :: (GHC.Maybe.Maybe PostPlansRequestBodyMetadata')
  -- | nickname: A brief description of the plan, hidden from customers.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPlansRequestBodyNickname :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | product
  , postPlansRequestBodyProduct :: (GHC.Maybe.Maybe PostPlansRequestBodyProduct'Variants)
  -- | tiers: Each element represents a pricing tier. This parameter requires \`billing_scheme\` to be set to \`tiered\`. See also the documentation for \`billing_scheme\`.
  , postPlansRequestBodyTiers :: (GHC.Maybe.Maybe ([] PostPlansRequestBodyTiers'))
  -- | tiers_mode: Defines if the tiering price should be \`graduated\` or \`volume\` based. In \`volume\`-based tiering, the maximum quantity within a period determines the per unit price, in \`graduated\` tiering pricing can successively change as the quantity grows.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPlansRequestBodyTiersMode :: (GHC.Maybe.Maybe PostPlansRequestBodyTiersMode')
  -- | transform_usage: Apply a transformation to the reported usage or set quantity before computing the billed price. Cannot be combined with \`tiers\`.
  , postPlansRequestBodyTransformUsage :: (GHC.Maybe.Maybe PostPlansRequestBodyTransformUsage')
  -- | trial_period_days: Default number of trial days when subscribing a customer to this plan using [\`trial_from_plan=true\`](https:\/\/stripe.com\/docs\/api\#create_subscription-trial_from_plan).
  , postPlansRequestBodyTrialPeriodDays :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | usage_type: Configures how the quantity per period should be determined. Can be either \`metered\` or \`licensed\`. \`licensed\` automatically bills the \`quantity\` set when adding it to a subscription. \`metered\` aggregates the total usage based on usage records. Defaults to \`licensed\`.
  , postPlansRequestBodyUsageType :: (GHC.Maybe.Maybe PostPlansRequestBodyUsageType')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPlansRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "active" (postPlansRequestBodyActive obj) : (Data.Aeson..=) "aggregate_usage" (postPlansRequestBodyAggregateUsage obj) : (Data.Aeson..=) "amount" (postPlansRequestBodyAmount obj) : (Data.Aeson..=) "amount_decimal" (postPlansRequestBodyAmountDecimal obj) : (Data.Aeson..=) "billing_scheme" (postPlansRequestBodyBillingScheme obj) : (Data.Aeson..=) "currency" (postPlansRequestBodyCurrency obj) : (Data.Aeson..=) "expand" (postPlansRequestBodyExpand obj) : (Data.Aeson..=) "id" (postPlansRequestBodyId obj) : (Data.Aeson..=) "interval" (postPlansRequestBodyInterval obj) : (Data.Aeson..=) "interval_count" (postPlansRequestBodyIntervalCount obj) : (Data.Aeson..=) "metadata" (postPlansRequestBodyMetadata obj) : (Data.Aeson..=) "nickname" (postPlansRequestBodyNickname obj) : (Data.Aeson..=) "product" (postPlansRequestBodyProduct obj) : (Data.Aeson..=) "tiers" (postPlansRequestBodyTiers obj) : (Data.Aeson..=) "tiers_mode" (postPlansRequestBodyTiersMode obj) : (Data.Aeson..=) "transform_usage" (postPlansRequestBodyTransformUsage obj) : (Data.Aeson..=) "trial_period_days" (postPlansRequestBodyTrialPeriodDays obj) : (Data.Aeson..=) "usage_type" (postPlansRequestBodyUsageType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "active" (postPlansRequestBodyActive obj) GHC.Base.<> ((Data.Aeson..=) "aggregate_usage" (postPlansRequestBodyAggregateUsage obj) GHC.Base.<> ((Data.Aeson..=) "amount" (postPlansRequestBodyAmount obj) GHC.Base.<> ((Data.Aeson..=) "amount_decimal" (postPlansRequestBodyAmountDecimal obj) GHC.Base.<> ((Data.Aeson..=) "billing_scheme" (postPlansRequestBodyBillingScheme obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postPlansRequestBodyCurrency obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postPlansRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "id" (postPlansRequestBodyId obj) GHC.Base.<> ((Data.Aeson..=) "interval" (postPlansRequestBodyInterval obj) GHC.Base.<> ((Data.Aeson..=) "interval_count" (postPlansRequestBodyIntervalCount obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postPlansRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "nickname" (postPlansRequestBodyNickname obj) GHC.Base.<> ((Data.Aeson..=) "product" (postPlansRequestBodyProduct obj) GHC.Base.<> ((Data.Aeson..=) "tiers" (postPlansRequestBodyTiers obj) GHC.Base.<> ((Data.Aeson..=) "tiers_mode" (postPlansRequestBodyTiersMode obj) GHC.Base.<> ((Data.Aeson..=) "transform_usage" (postPlansRequestBodyTransformUsage obj) GHC.Base.<> ((Data.Aeson..=) "trial_period_days" (postPlansRequestBodyTrialPeriodDays obj) GHC.Base.<> (Data.Aeson..=) "usage_type" (postPlansRequestBodyUsageType obj))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPlansRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPlansRequestBody" (\obj -> (((((((((((((((((GHC.Base.pure PostPlansRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "aggregate_usage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_decimal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_scheme")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "interval_count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "nickname")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "product")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tiers")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tiers_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transform_usage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_period_days")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "usage_type"))
-- | Defines the enum schema postPlansRequestBodyAggregate_usage\'
-- 
-- Specifies a usage aggregation strategy for plans of \`usage_type=metered\`. Allowed values are \`sum\` for summing up all usage during a period, \`last_during_period\` for using the last usage record reported within a period, \`last_ever\` for using the last usage record ever (across period bounds) or \`max\` which uses the usage record with the maximum reported usage during a period. Defaults to \`sum\`.
data PostPlansRequestBodyAggregateUsage'
    = PostPlansRequestBodyAggregateUsage'EnumOther Data.Aeson.Types.Internal.Value
    | PostPlansRequestBodyAggregateUsage'EnumTyped Data.Text.Internal.Text
    | PostPlansRequestBodyAggregateUsage'EnumStringLastDuringPeriod
    | PostPlansRequestBodyAggregateUsage'EnumStringLastEver
    | PostPlansRequestBodyAggregateUsage'EnumStringMax
    | PostPlansRequestBodyAggregateUsage'EnumStringSum
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPlansRequestBodyAggregateUsage'
    where toJSON (PostPlansRequestBodyAggregateUsage'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPlansRequestBodyAggregateUsage'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPlansRequestBodyAggregateUsage'EnumStringLastDuringPeriod) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "last_during_period"
          toJSON (PostPlansRequestBodyAggregateUsage'EnumStringLastEver) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "last_ever"
          toJSON (PostPlansRequestBodyAggregateUsage'EnumStringMax) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "max"
          toJSON (PostPlansRequestBodyAggregateUsage'EnumStringSum) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sum"
instance Data.Aeson.FromJSON PostPlansRequestBodyAggregateUsage'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "last_during_period")
                                          then PostPlansRequestBodyAggregateUsage'EnumStringLastDuringPeriod
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "last_ever")
                                                then PostPlansRequestBodyAggregateUsage'EnumStringLastEver
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "max")
                                                      then PostPlansRequestBodyAggregateUsage'EnumStringMax
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sum")
                                                            then PostPlansRequestBodyAggregateUsage'EnumStringSum
                                                            else PostPlansRequestBodyAggregateUsage'EnumOther val)
-- | Defines the enum schema postPlansRequestBodyBilling_scheme\'
-- 
-- Describes how to compute the price per period. Either \`per_unit\` or \`tiered\`. \`per_unit\` indicates that the fixed amount (specified in \`amount\`) will be charged per unit in \`quantity\` (for plans with \`usage_type=licensed\`), or per unit of total usage (for plans with \`usage_type=metered\`). \`tiered\` indicates that the unit pricing will be computed using a tiering strategy as defined using the \`tiers\` and \`tiers_mode\` attributes.
data PostPlansRequestBodyBillingScheme'
    = PostPlansRequestBodyBillingScheme'EnumOther Data.Aeson.Types.Internal.Value
    | PostPlansRequestBodyBillingScheme'EnumTyped Data.Text.Internal.Text
    | PostPlansRequestBodyBillingScheme'EnumStringPerUnit
    | PostPlansRequestBodyBillingScheme'EnumStringTiered
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPlansRequestBodyBillingScheme'
    where toJSON (PostPlansRequestBodyBillingScheme'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPlansRequestBodyBillingScheme'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPlansRequestBodyBillingScheme'EnumStringPerUnit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "per_unit"
          toJSON (PostPlansRequestBodyBillingScheme'EnumStringTiered) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tiered"
instance Data.Aeson.FromJSON PostPlansRequestBodyBillingScheme'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "per_unit")
                                          then PostPlansRequestBodyBillingScheme'EnumStringPerUnit
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tiered")
                                                then PostPlansRequestBodyBillingScheme'EnumStringTiered
                                                else PostPlansRequestBodyBillingScheme'EnumOther val)
-- | Defines the enum schema postPlansRequestBodyInterval\'
-- 
-- Specifies billing frequency. Either \`day\`, \`week\`, \`month\` or \`year\`.
data PostPlansRequestBodyInterval'
    = PostPlansRequestBodyInterval'EnumOther Data.Aeson.Types.Internal.Value
    | PostPlansRequestBodyInterval'EnumTyped Data.Text.Internal.Text
    | PostPlansRequestBodyInterval'EnumStringDay
    | PostPlansRequestBodyInterval'EnumStringMonth
    | PostPlansRequestBodyInterval'EnumStringWeek
    | PostPlansRequestBodyInterval'EnumStringYear
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPlansRequestBodyInterval'
    where toJSON (PostPlansRequestBodyInterval'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPlansRequestBodyInterval'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPlansRequestBodyInterval'EnumStringDay) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "day"
          toJSON (PostPlansRequestBodyInterval'EnumStringMonth) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month"
          toJSON (PostPlansRequestBodyInterval'EnumStringWeek) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "week"
          toJSON (PostPlansRequestBodyInterval'EnumStringYear) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "year"
instance Data.Aeson.FromJSON PostPlansRequestBodyInterval'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "day")
                                          then PostPlansRequestBodyInterval'EnumStringDay
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month")
                                                then PostPlansRequestBodyInterval'EnumStringMonth
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "week")
                                                      then PostPlansRequestBodyInterval'EnumStringWeek
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "year")
                                                            then PostPlansRequestBodyInterval'EnumStringYear
                                                            else PostPlansRequestBodyInterval'EnumOther val)
-- | Defines the data type for the schema postPlansRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostPlansRequestBodyMetadata' = PostPlansRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPlansRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostPlansRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPlansRequestBodyMetadata'" (\obj -> GHC.Base.pure PostPlansRequestBodyMetadata')
-- | Defines the data type for the schema postPlansRequestBodyProduct\'OneOf2
-- 
-- The product whose pricing the created plan will represent. This can either be the ID of an existing product, or a dictionary containing fields used to create a [service product](https:\/\/stripe.com\/docs\/api\#product_object-type).
data PostPlansRequestBodyProduct'OneOf2 = PostPlansRequestBodyProduct'OneOf2 {
  -- | active
  postPlansRequestBodyProduct'OneOf2Active :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | id
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPlansRequestBodyProduct'OneOf2Id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | metadata
  , postPlansRequestBodyProduct'OneOf2Metadata :: (GHC.Maybe.Maybe PostPlansRequestBodyProduct'OneOf2Metadata')
  -- | name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPlansRequestBodyProduct'OneOf2Name :: Data.Text.Internal.Text
  -- | statement_descriptor
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 22
  , postPlansRequestBodyProduct'OneOf2StatementDescriptor :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | unit_label
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 12
  , postPlansRequestBodyProduct'OneOf2UnitLabel :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPlansRequestBodyProduct'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "active" (postPlansRequestBodyProduct'OneOf2Active obj) : (Data.Aeson..=) "id" (postPlansRequestBodyProduct'OneOf2Id obj) : (Data.Aeson..=) "metadata" (postPlansRequestBodyProduct'OneOf2Metadata obj) : (Data.Aeson..=) "name" (postPlansRequestBodyProduct'OneOf2Name obj) : (Data.Aeson..=) "statement_descriptor" (postPlansRequestBodyProduct'OneOf2StatementDescriptor obj) : (Data.Aeson..=) "unit_label" (postPlansRequestBodyProduct'OneOf2UnitLabel obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "active" (postPlansRequestBodyProduct'OneOf2Active obj) GHC.Base.<> ((Data.Aeson..=) "id" (postPlansRequestBodyProduct'OneOf2Id obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postPlansRequestBodyProduct'OneOf2Metadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (postPlansRequestBodyProduct'OneOf2Name obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor" (postPlansRequestBodyProduct'OneOf2StatementDescriptor obj) GHC.Base.<> (Data.Aeson..=) "unit_label" (postPlansRequestBodyProduct'OneOf2UnitLabel obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPlansRequestBodyProduct'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPlansRequestBodyProduct'OneOf2" (\obj -> (((((GHC.Base.pure PostPlansRequestBodyProduct'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unit_label"))
-- | Defines the data type for the schema postPlansRequestBodyProduct\'OneOf2Metadata\'
-- 
-- 
data PostPlansRequestBodyProduct'OneOf2Metadata' = PostPlansRequestBodyProduct'OneOf2Metadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPlansRequestBodyProduct'OneOf2Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostPlansRequestBodyProduct'OneOf2Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPlansRequestBodyProduct'OneOf2Metadata'" (\obj -> GHC.Base.pure PostPlansRequestBodyProduct'OneOf2Metadata')
-- | Define the one-of schema postPlansRequestBodyProduct\'
-- 
-- 
data PostPlansRequestBodyProduct'Variants
    = PostPlansRequestBodyProduct'Text Data.Text.Internal.Text
    | PostPlansRequestBodyProduct'PostPlansRequestBodyProduct'OneOf2 PostPlansRequestBodyProduct'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostPlansRequestBodyProduct'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostPlansRequestBodyProduct'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postPlansRequestBodyTiers\'
-- 
-- 
data PostPlansRequestBodyTiers' = PostPlansRequestBodyTiers' {
  -- | flat_amount
  postPlansRequestBodyTiers'FlatAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | flat_amount_decimal
  , postPlansRequestBodyTiers'FlatAmountDecimal :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | unit_amount
  , postPlansRequestBodyTiers'UnitAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | unit_amount_decimal
  , postPlansRequestBodyTiers'UnitAmountDecimal :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | up_to
  , postPlansRequestBodyTiers'UpTo :: PostPlansRequestBodyTiers'UpTo'Variants
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPlansRequestBodyTiers'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "flat_amount" (postPlansRequestBodyTiers'FlatAmount obj) : (Data.Aeson..=) "flat_amount_decimal" (postPlansRequestBodyTiers'FlatAmountDecimal obj) : (Data.Aeson..=) "unit_amount" (postPlansRequestBodyTiers'UnitAmount obj) : (Data.Aeson..=) "unit_amount_decimal" (postPlansRequestBodyTiers'UnitAmountDecimal obj) : (Data.Aeson..=) "up_to" (postPlansRequestBodyTiers'UpTo obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "flat_amount" (postPlansRequestBodyTiers'FlatAmount obj) GHC.Base.<> ((Data.Aeson..=) "flat_amount_decimal" (postPlansRequestBodyTiers'FlatAmountDecimal obj) GHC.Base.<> ((Data.Aeson..=) "unit_amount" (postPlansRequestBodyTiers'UnitAmount obj) GHC.Base.<> ((Data.Aeson..=) "unit_amount_decimal" (postPlansRequestBodyTiers'UnitAmountDecimal obj) GHC.Base.<> (Data.Aeson..=) "up_to" (postPlansRequestBodyTiers'UpTo obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPlansRequestBodyTiers'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPlansRequestBodyTiers'" (\obj -> ((((GHC.Base.pure PostPlansRequestBodyTiers' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "flat_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "flat_amount_decimal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unit_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unit_amount_decimal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "up_to"))
-- | Defines the enum schema postPlansRequestBodyTiers\'Up_to\'OneOf1
-- 
-- 
data PostPlansRequestBodyTiers'UpTo'OneOf1
    = PostPlansRequestBodyTiers'UpTo'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostPlansRequestBodyTiers'UpTo'OneOf1EnumTyped Data.Text.Internal.Text
    | PostPlansRequestBodyTiers'UpTo'OneOf1EnumStringInf
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPlansRequestBodyTiers'UpTo'OneOf1
    where toJSON (PostPlansRequestBodyTiers'UpTo'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPlansRequestBodyTiers'UpTo'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPlansRequestBodyTiers'UpTo'OneOf1EnumStringInf) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "inf"
instance Data.Aeson.FromJSON PostPlansRequestBodyTiers'UpTo'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "inf")
                                          then PostPlansRequestBodyTiers'UpTo'OneOf1EnumStringInf
                                          else PostPlansRequestBodyTiers'UpTo'OneOf1EnumOther val)
-- | Define the one-of schema postPlansRequestBodyTiers\'Up_to\'
-- 
-- 
data PostPlansRequestBodyTiers'UpTo'Variants
    = PostPlansRequestBodyTiers'UpTo'PostPlansRequestBodyTiers'UpTo'OneOf1 PostPlansRequestBodyTiers'UpTo'OneOf1
    | PostPlansRequestBodyTiers'UpTo'Integer GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostPlansRequestBodyTiers'UpTo'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostPlansRequestBodyTiers'UpTo'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postPlansRequestBodyTiers_mode\'
-- 
-- Defines if the tiering price should be \`graduated\` or \`volume\` based. In \`volume\`-based tiering, the maximum quantity within a period determines the per unit price, in \`graduated\` tiering pricing can successively change as the quantity grows.
data PostPlansRequestBodyTiersMode'
    = PostPlansRequestBodyTiersMode'EnumOther Data.Aeson.Types.Internal.Value
    | PostPlansRequestBodyTiersMode'EnumTyped Data.Text.Internal.Text
    | PostPlansRequestBodyTiersMode'EnumStringGraduated
    | PostPlansRequestBodyTiersMode'EnumStringVolume
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPlansRequestBodyTiersMode'
    where toJSON (PostPlansRequestBodyTiersMode'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPlansRequestBodyTiersMode'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPlansRequestBodyTiersMode'EnumStringGraduated) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "graduated"
          toJSON (PostPlansRequestBodyTiersMode'EnumStringVolume) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "volume"
instance Data.Aeson.FromJSON PostPlansRequestBodyTiersMode'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "graduated")
                                          then PostPlansRequestBodyTiersMode'EnumStringGraduated
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "volume")
                                                then PostPlansRequestBodyTiersMode'EnumStringVolume
                                                else PostPlansRequestBodyTiersMode'EnumOther val)
-- | Defines the data type for the schema postPlansRequestBodyTransform_usage\'
-- 
-- Apply a transformation to the reported usage or set quantity before computing the billed price. Cannot be combined with \`tiers\`.
data PostPlansRequestBodyTransformUsage' = PostPlansRequestBodyTransformUsage' {
  -- | divide_by
  postPlansRequestBodyTransformUsage'DivideBy :: GHC.Integer.Type.Integer
  -- | round
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPlansRequestBodyTransformUsage'Round :: PostPlansRequestBodyTransformUsage'Round'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPlansRequestBodyTransformUsage'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "divide_by" (postPlansRequestBodyTransformUsage'DivideBy obj) : (Data.Aeson..=) "round" (postPlansRequestBodyTransformUsage'Round obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "divide_by" (postPlansRequestBodyTransformUsage'DivideBy obj) GHC.Base.<> (Data.Aeson..=) "round" (postPlansRequestBodyTransformUsage'Round obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPlansRequestBodyTransformUsage'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPlansRequestBodyTransformUsage'" (\obj -> (GHC.Base.pure PostPlansRequestBodyTransformUsage' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "divide_by")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "round"))
-- | Defines the enum schema postPlansRequestBodyTransform_usage\'Round\'
-- 
-- 
data PostPlansRequestBodyTransformUsage'Round'
    = PostPlansRequestBodyTransformUsage'Round'EnumOther Data.Aeson.Types.Internal.Value
    | PostPlansRequestBodyTransformUsage'Round'EnumTyped Data.Text.Internal.Text
    | PostPlansRequestBodyTransformUsage'Round'EnumStringDown
    | PostPlansRequestBodyTransformUsage'Round'EnumStringUp
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPlansRequestBodyTransformUsage'Round'
    where toJSON (PostPlansRequestBodyTransformUsage'Round'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPlansRequestBodyTransformUsage'Round'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPlansRequestBodyTransformUsage'Round'EnumStringDown) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "down"
          toJSON (PostPlansRequestBodyTransformUsage'Round'EnumStringUp) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "up"
instance Data.Aeson.FromJSON PostPlansRequestBodyTransformUsage'Round'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "down")
                                          then PostPlansRequestBodyTransformUsage'Round'EnumStringDown
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "up")
                                                then PostPlansRequestBodyTransformUsage'Round'EnumStringUp
                                                else PostPlansRequestBodyTransformUsage'Round'EnumOther val)
-- | Defines the enum schema postPlansRequestBodyUsage_type\'
-- 
-- Configures how the quantity per period should be determined. Can be either \`metered\` or \`licensed\`. \`licensed\` automatically bills the \`quantity\` set when adding it to a subscription. \`metered\` aggregates the total usage based on usage records. Defaults to \`licensed\`.
data PostPlansRequestBodyUsageType'
    = PostPlansRequestBodyUsageType'EnumOther Data.Aeson.Types.Internal.Value
    | PostPlansRequestBodyUsageType'EnumTyped Data.Text.Internal.Text
    | PostPlansRequestBodyUsageType'EnumStringLicensed
    | PostPlansRequestBodyUsageType'EnumStringMetered
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPlansRequestBodyUsageType'
    where toJSON (PostPlansRequestBodyUsageType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPlansRequestBodyUsageType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPlansRequestBodyUsageType'EnumStringLicensed) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "licensed"
          toJSON (PostPlansRequestBodyUsageType'EnumStringMetered) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "metered"
instance Data.Aeson.FromJSON PostPlansRequestBodyUsageType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "licensed")
                                          then PostPlansRequestBodyUsageType'EnumStringLicensed
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "metered")
                                                then PostPlansRequestBodyUsageType'EnumStringMetered
                                                else PostPlansRequestBodyUsageType'EnumOther val)
-- | Represents a response of the operation 'postPlans'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostPlansResponseError' is used.
data PostPlansResponse =                   
   PostPlansResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostPlansResponse200 Plan              -- ^ Successful response.
  | PostPlansResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
