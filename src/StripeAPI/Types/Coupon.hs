{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Coupon
module StripeAPI.Types.Coupon where

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
import qualified Data.Text as Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias
import {-# SOURCE #-} StripeAPI.Types.CouponAppliesTo
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.coupon@ in the specification.
--
-- A coupon contains information about a percent-off or amount-off discount you
-- might want to apply to a customer. Coupons may be applied to [subscriptions](https:\/\/stripe.com\/docs\/api\#subscriptions), [invoices](https:\/\/stripe.com\/docs\/api\#invoices),
-- [checkout sessions](https:\/\/stripe.com\/docs\/api\/checkout\/sessions), [quotes](https:\/\/stripe.com\/docs\/api\#quotes), and more. Coupons do not work with conventional one-off [charges](https:\/\/stripe.com\/docs\/api\#create_charge) or [payment intents](https:\/\/stripe.com\/docs\/api\/payment_intents).
data Coupon = Coupon
  { -- | amount_off: Amount (in the \`currency\` specified) that will be taken off the subtotal of any invoices for this customer.
    couponAmountOff :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | applies_to:
    couponAppliesTo :: (GHC.Maybe.Maybe CouponAppliesTo),
    -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
    couponCreated :: GHC.Types.Int,
    -- | currency: If \`amount_off\` has been set, the three-letter [ISO code for the currency](https:\/\/stripe.com\/docs\/currencies) of the amount to take off.
    couponCurrency :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | currency_options: Coupons defined in each available currency option. Each key must be a three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html) and a [supported currency](https:\/\/stripe.com\/docs\/currencies).
    couponCurrencyOptions :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | duration: One of \`forever\`, \`once\`, and \`repeating\`. Describes how long a customer who applies this coupon will get the discount.
    couponDuration :: CouponDuration',
    -- | duration_in_months: If \`duration\` is \`repeating\`, the number of months the coupon applies. Null if coupon \`duration\` is \`forever\` or \`once\`.
    couponDurationInMonths :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    couponId :: Data.Text.Internal.Text,
    -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
    couponLivemode :: GHC.Types.Bool,
    -- | max_redemptions: Maximum number of times this coupon can be redeemed, in total, across all customers, before it is no longer valid.
    couponMaxRedemptions :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    couponMetadata :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Aeson.Types.Internal.Object)),
    -- | name: Name of the coupon displayed to customers on for instance invoices or receipts.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    couponName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | percent_off: Percent that will be taken off the subtotal of any invoices for this customer for the duration of the coupon. For example, a coupon with percent_off of 50 will make a \$ (or local equivalent)100 invoice \$ (or local equivalent)50 instead.
    couponPercentOff :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Double)),
    -- | redeem_by: Date after which the coupon can no longer be redeemed.
    couponRedeemBy :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | times_redeemed: Number of times this coupon has been applied to a customer.
    couponTimesRedeemed :: GHC.Types.Int,
    -- | valid: Taking account of the above properties, whether this coupon can still be applied to a customer.
    couponValid :: GHC.Types.Bool
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Coupon where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_off" Data.Aeson.Types.ToJSON..=)) (couponAmountOff obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("applies_to" Data.Aeson.Types.ToJSON..=)) (couponAppliesTo obj) : ["created" Data.Aeson.Types.ToJSON..= couponCreated obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (couponCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency_options" Data.Aeson.Types.ToJSON..=)) (couponCurrencyOptions obj) : ["duration" Data.Aeson.Types.ToJSON..= couponDuration obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("duration_in_months" Data.Aeson.Types.ToJSON..=)) (couponDurationInMonths obj) : ["id" Data.Aeson.Types.ToJSON..= couponId obj] : ["livemode" Data.Aeson.Types.ToJSON..= couponLivemode obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("max_redemptions" Data.Aeson.Types.ToJSON..=)) (couponMaxRedemptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (couponMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (couponName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("percent_off" Data.Aeson.Types.ToJSON..=)) (couponPercentOff obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("redeem_by" Data.Aeson.Types.ToJSON..=)) (couponRedeemBy obj) : ["times_redeemed" Data.Aeson.Types.ToJSON..= couponTimesRedeemed obj] : ["valid" Data.Aeson.Types.ToJSON..= couponValid obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "coupon"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_off" Data.Aeson.Types.ToJSON..=)) (couponAmountOff obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("applies_to" Data.Aeson.Types.ToJSON..=)) (couponAppliesTo obj) : ["created" Data.Aeson.Types.ToJSON..= couponCreated obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (couponCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency_options" Data.Aeson.Types.ToJSON..=)) (couponCurrencyOptions obj) : ["duration" Data.Aeson.Types.ToJSON..= couponDuration obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("duration_in_months" Data.Aeson.Types.ToJSON..=)) (couponDurationInMonths obj) : ["id" Data.Aeson.Types.ToJSON..= couponId obj] : ["livemode" Data.Aeson.Types.ToJSON..= couponLivemode obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("max_redemptions" Data.Aeson.Types.ToJSON..=)) (couponMaxRedemptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (couponMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (couponName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("percent_off" Data.Aeson.Types.ToJSON..=)) (couponPercentOff obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("redeem_by" Data.Aeson.Types.ToJSON..=)) (couponRedeemBy obj) : ["times_redeemed" Data.Aeson.Types.ToJSON..= couponTimesRedeemed obj] : ["valid" Data.Aeson.Types.ToJSON..= couponValid obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "coupon"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON Coupon where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Coupon" (\obj -> (((((((((((((((GHC.Base.pure Coupon GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount_off")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "applies_to")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "currency_options")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "duration")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "duration_in_months")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "max_redemptions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "percent_off")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "redeem_by")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "times_redeemed")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "valid"))

-- | Create a new 'Coupon' with all required fields.
mkCoupon ::
  -- | 'couponCreated'
  GHC.Types.Int ->
  -- | 'couponDuration'
  CouponDuration' ->
  -- | 'couponId'
  Data.Text.Internal.Text ->
  -- | 'couponLivemode'
  GHC.Types.Bool ->
  -- | 'couponTimesRedeemed'
  GHC.Types.Int ->
  -- | 'couponValid'
  GHC.Types.Bool ->
  Coupon
mkCoupon couponCreated couponDuration couponId couponLivemode couponTimesRedeemed couponValid =
  Coupon
    { couponAmountOff = GHC.Maybe.Nothing,
      couponAppliesTo = GHC.Maybe.Nothing,
      couponCreated = couponCreated,
      couponCurrency = GHC.Maybe.Nothing,
      couponCurrencyOptions = GHC.Maybe.Nothing,
      couponDuration = couponDuration,
      couponDurationInMonths = GHC.Maybe.Nothing,
      couponId = couponId,
      couponLivemode = couponLivemode,
      couponMaxRedemptions = GHC.Maybe.Nothing,
      couponMetadata = GHC.Maybe.Nothing,
      couponName = GHC.Maybe.Nothing,
      couponPercentOff = GHC.Maybe.Nothing,
      couponRedeemBy = GHC.Maybe.Nothing,
      couponTimesRedeemed = couponTimesRedeemed,
      couponValid = couponValid
    }

-- | Defines the enum schema located at @components.schemas.coupon.properties.duration@ in the specification.
--
-- One of \`forever\`, \`once\`, and \`repeating\`. Describes how long a customer who applies this coupon will get the discount.
data CouponDuration'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    CouponDuration'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    CouponDuration'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"forever"@
    CouponDuration'EnumForever
  | -- | Represents the JSON value @"once"@
    CouponDuration'EnumOnce
  | -- | Represents the JSON value @"repeating"@
    CouponDuration'EnumRepeating
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON CouponDuration' where
  toJSON (CouponDuration'Other val) = val
  toJSON (CouponDuration'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (CouponDuration'EnumForever) = "forever"
  toJSON (CouponDuration'EnumOnce) = "once"
  toJSON (CouponDuration'EnumRepeating) = "repeating"

instance Data.Aeson.Types.FromJSON.FromJSON CouponDuration' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "forever" -> CouponDuration'EnumForever
            | val GHC.Classes.== "once" -> CouponDuration'EnumOnce
            | val GHC.Classes.== "repeating" -> CouponDuration'EnumRepeating
            | GHC.Base.otherwise -> CouponDuration'Other val
      )
