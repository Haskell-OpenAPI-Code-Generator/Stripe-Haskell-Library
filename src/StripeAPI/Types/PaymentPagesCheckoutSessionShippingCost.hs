{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentPagesCheckoutSessionShippingCost
module StripeAPI.Types.PaymentPagesCheckoutSessionShippingCost where

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
import {-# SOURCE #-} StripeAPI.Types.LineItemsTaxAmount
import {-# SOURCE #-} StripeAPI.Types.ShippingRate
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_pages_checkout_session_shipping_cost@ in the specification.
data PaymentPagesCheckoutSessionShippingCost = PaymentPagesCheckoutSessionShippingCost
  { -- | amount_subtotal: Total shipping cost before any discounts or taxes are applied.
    paymentPagesCheckoutSessionShippingCostAmountSubtotal :: GHC.Types.Int,
    -- | amount_tax: Total tax amount applied due to shipping costs. If no tax was applied, defaults to 0.
    paymentPagesCheckoutSessionShippingCostAmountTax :: GHC.Types.Int,
    -- | amount_total: Total shipping cost after discounts and taxes are applied.
    paymentPagesCheckoutSessionShippingCostAmountTotal :: GHC.Types.Int,
    -- | shipping_rate: The ID of the ShippingRate for this order.
    paymentPagesCheckoutSessionShippingCostShippingRate :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentPagesCheckoutSessionShippingCostShippingRate'NonNullableVariants)),
    -- | taxes: The taxes applied to the shipping rate.
    paymentPagesCheckoutSessionShippingCostTaxes :: (GHC.Maybe.Maybe ([LineItemsTaxAmount]))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentPagesCheckoutSessionShippingCost where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount_subtotal" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionShippingCostAmountSubtotal obj] : ["amount_tax" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionShippingCostAmountTax obj] : ["amount_total" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionShippingCostAmountTotal obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shipping_rate" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionShippingCostShippingRate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("taxes" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionShippingCostTaxes obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount_subtotal" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionShippingCostAmountSubtotal obj] : ["amount_tax" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionShippingCostAmountTax obj] : ["amount_total" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionShippingCostAmountTotal obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shipping_rate" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionShippingCostShippingRate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("taxes" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionShippingCostTaxes obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentPagesCheckoutSessionShippingCost where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentPagesCheckoutSessionShippingCost" (\obj -> ((((GHC.Base.pure PaymentPagesCheckoutSessionShippingCost GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount_subtotal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount_tax")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount_total")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "shipping_rate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "taxes"))

-- | Create a new 'PaymentPagesCheckoutSessionShippingCost' with all required fields.
mkPaymentPagesCheckoutSessionShippingCost ::
  -- | 'paymentPagesCheckoutSessionShippingCostAmountSubtotal'
  GHC.Types.Int ->
  -- | 'paymentPagesCheckoutSessionShippingCostAmountTax'
  GHC.Types.Int ->
  -- | 'paymentPagesCheckoutSessionShippingCostAmountTotal'
  GHC.Types.Int ->
  PaymentPagesCheckoutSessionShippingCost
mkPaymentPagesCheckoutSessionShippingCost paymentPagesCheckoutSessionShippingCostAmountSubtotal paymentPagesCheckoutSessionShippingCostAmountTax paymentPagesCheckoutSessionShippingCostAmountTotal =
  PaymentPagesCheckoutSessionShippingCost
    { paymentPagesCheckoutSessionShippingCostAmountSubtotal = paymentPagesCheckoutSessionShippingCostAmountSubtotal,
      paymentPagesCheckoutSessionShippingCostAmountTax = paymentPagesCheckoutSessionShippingCostAmountTax,
      paymentPagesCheckoutSessionShippingCostAmountTotal = paymentPagesCheckoutSessionShippingCostAmountTotal,
      paymentPagesCheckoutSessionShippingCostShippingRate = GHC.Maybe.Nothing,
      paymentPagesCheckoutSessionShippingCostTaxes = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @components.schemas.payment_pages_checkout_session_shipping_cost.properties.shipping_rate.anyOf@ in the specification.
--
-- The ID of the ShippingRate for this order.
data PaymentPagesCheckoutSessionShippingCostShippingRate'NonNullableVariants
  = PaymentPagesCheckoutSessionShippingCostShippingRate'NonNullableText Data.Text.Internal.Text
  | PaymentPagesCheckoutSessionShippingCostShippingRate'NonNullableShippingRate ShippingRate
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentPagesCheckoutSessionShippingCostShippingRate'NonNullableVariants where
  toJSON (PaymentPagesCheckoutSessionShippingCostShippingRate'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PaymentPagesCheckoutSessionShippingCostShippingRate'NonNullableShippingRate a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON PaymentPagesCheckoutSessionShippingCostShippingRate'NonNullableVariants where
  parseJSON val = case (PaymentPagesCheckoutSessionShippingCostShippingRate'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PaymentPagesCheckoutSessionShippingCostShippingRate'NonNullableShippingRate Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
