{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema QuotesResourceComputed
module StripeAPI.Types.QuotesResourceComputed where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
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
import {-# SOURCE #-} StripeAPI.Types.QuotesResourceRecurring
import {-# SOURCE #-} StripeAPI.Types.QuotesResourceTotalDetails
import {-# SOURCE #-} StripeAPI.Types.QuotesResourceUpfront
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.quotes_resource_computed@ in the specification.
data QuotesResourceComputed = QuotesResourceComputed
  { -- | recurring: The definitive totals and line items the customer will be charged on a recurring basis. Takes into account the line items with recurring prices and discounts with \`duration=forever\` coupons only. Defaults to \`null\` if no inputted line items with recurring prices.
    quotesResourceComputedRecurring :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable QuotesResourceComputedRecurring'NonNullable)),
    -- | upfront:
    quotesResourceComputedUpfront :: QuotesResourceUpfront
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON QuotesResourceComputed where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("recurring" Data.Aeson.Types.ToJSON..=)) (quotesResourceComputedRecurring obj) : ["upfront" Data.Aeson.Types.ToJSON..= quotesResourceComputedUpfront obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("recurring" Data.Aeson.Types.ToJSON..=)) (quotesResourceComputedRecurring obj) : ["upfront" Data.Aeson.Types.ToJSON..= quotesResourceComputedUpfront obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON QuotesResourceComputed where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "QuotesResourceComputed" (\obj -> (GHC.Base.pure QuotesResourceComputed GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "recurring")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "upfront"))

-- | Create a new 'QuotesResourceComputed' with all required fields.
mkQuotesResourceComputed ::
  -- | 'quotesResourceComputedUpfront'
  QuotesResourceUpfront ->
  QuotesResourceComputed
mkQuotesResourceComputed quotesResourceComputedUpfront =
  QuotesResourceComputed
    { quotesResourceComputedRecurring = GHC.Maybe.Nothing,
      quotesResourceComputedUpfront = quotesResourceComputedUpfront
    }

-- | Defines the object schema located at @components.schemas.quotes_resource_computed.properties.recurring.anyOf@ in the specification.
--
-- The definitive totals and line items the customer will be charged on a recurring basis. Takes into account the line items with recurring prices and discounts with \\\`duration=forever\\\` coupons only. Defaults to \\\`null\\\` if no inputted line items with recurring prices.
data QuotesResourceComputedRecurring'NonNullable = QuotesResourceComputedRecurring'NonNullable
  { -- | amount_subtotal: Total before any discounts or taxes are applied.
    quotesResourceComputedRecurring'NonNullableAmountSubtotal :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | amount_total: Total after discounts and taxes are applied.
    quotesResourceComputedRecurring'NonNullableAmountTotal :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | interval: The frequency at which a subscription is billed. One of \`day\`, \`week\`, \`month\` or \`year\`.
    quotesResourceComputedRecurring'NonNullableInterval :: (GHC.Maybe.Maybe QuotesResourceComputedRecurring'NonNullableInterval'),
    -- | interval_count: The number of intervals (specified in the \`interval\` attribute) between subscription billings. For example, \`interval=month\` and \`interval_count=3\` bills every 3 months.
    quotesResourceComputedRecurring'NonNullableIntervalCount :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | total_details:
    quotesResourceComputedRecurring'NonNullableTotalDetails :: (GHC.Maybe.Maybe QuotesResourceTotalDetails)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON QuotesResourceComputedRecurring'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_subtotal" Data.Aeson.Types.ToJSON..=)) (quotesResourceComputedRecurring'NonNullableAmountSubtotal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_total" Data.Aeson.Types.ToJSON..=)) (quotesResourceComputedRecurring'NonNullableAmountTotal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("interval" Data.Aeson.Types.ToJSON..=)) (quotesResourceComputedRecurring'NonNullableInterval obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("interval_count" Data.Aeson.Types.ToJSON..=)) (quotesResourceComputedRecurring'NonNullableIntervalCount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("total_details" Data.Aeson.Types.ToJSON..=)) (quotesResourceComputedRecurring'NonNullableTotalDetails obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_subtotal" Data.Aeson.Types.ToJSON..=)) (quotesResourceComputedRecurring'NonNullableAmountSubtotal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_total" Data.Aeson.Types.ToJSON..=)) (quotesResourceComputedRecurring'NonNullableAmountTotal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("interval" Data.Aeson.Types.ToJSON..=)) (quotesResourceComputedRecurring'NonNullableInterval obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("interval_count" Data.Aeson.Types.ToJSON..=)) (quotesResourceComputedRecurring'NonNullableIntervalCount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("total_details" Data.Aeson.Types.ToJSON..=)) (quotesResourceComputedRecurring'NonNullableTotalDetails obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON QuotesResourceComputedRecurring'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "QuotesResourceComputedRecurring'NonNullable" (\obj -> ((((GHC.Base.pure QuotesResourceComputedRecurring'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount_subtotal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount_total")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "interval_count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "total_details"))

-- | Create a new 'QuotesResourceComputedRecurring'NonNullable' with all required fields.
mkQuotesResourceComputedRecurring'NonNullable :: QuotesResourceComputedRecurring'NonNullable
mkQuotesResourceComputedRecurring'NonNullable =
  QuotesResourceComputedRecurring'NonNullable
    { quotesResourceComputedRecurring'NonNullableAmountSubtotal = GHC.Maybe.Nothing,
      quotesResourceComputedRecurring'NonNullableAmountTotal = GHC.Maybe.Nothing,
      quotesResourceComputedRecurring'NonNullableInterval = GHC.Maybe.Nothing,
      quotesResourceComputedRecurring'NonNullableIntervalCount = GHC.Maybe.Nothing,
      quotesResourceComputedRecurring'NonNullableTotalDetails = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.quotes_resource_computed.properties.recurring.anyOf.properties.interval@ in the specification.
--
-- The frequency at which a subscription is billed. One of \`day\`, \`week\`, \`month\` or \`year\`.
data QuotesResourceComputedRecurring'NonNullableInterval'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    QuotesResourceComputedRecurring'NonNullableInterval'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    QuotesResourceComputedRecurring'NonNullableInterval'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"day"@
    QuotesResourceComputedRecurring'NonNullableInterval'EnumDay
  | -- | Represents the JSON value @"month"@
    QuotesResourceComputedRecurring'NonNullableInterval'EnumMonth
  | -- | Represents the JSON value @"week"@
    QuotesResourceComputedRecurring'NonNullableInterval'EnumWeek
  | -- | Represents the JSON value @"year"@
    QuotesResourceComputedRecurring'NonNullableInterval'EnumYear
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON QuotesResourceComputedRecurring'NonNullableInterval' where
  toJSON (QuotesResourceComputedRecurring'NonNullableInterval'Other val) = val
  toJSON (QuotesResourceComputedRecurring'NonNullableInterval'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (QuotesResourceComputedRecurring'NonNullableInterval'EnumDay) = "day"
  toJSON (QuotesResourceComputedRecurring'NonNullableInterval'EnumMonth) = "month"
  toJSON (QuotesResourceComputedRecurring'NonNullableInterval'EnumWeek) = "week"
  toJSON (QuotesResourceComputedRecurring'NonNullableInterval'EnumYear) = "year"

instance Data.Aeson.Types.FromJSON.FromJSON QuotesResourceComputedRecurring'NonNullableInterval' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "day" -> QuotesResourceComputedRecurring'NonNullableInterval'EnumDay
            | val GHC.Classes.== "month" -> QuotesResourceComputedRecurring'NonNullableInterval'EnumMonth
            | val GHC.Classes.== "week" -> QuotesResourceComputedRecurring'NonNullableInterval'EnumWeek
            | val GHC.Classes.== "year" -> QuotesResourceComputedRecurring'NonNullableInterval'EnumYear
            | GHC.Base.otherwise -> QuotesResourceComputedRecurring'NonNullableInterval'Other val
      )
