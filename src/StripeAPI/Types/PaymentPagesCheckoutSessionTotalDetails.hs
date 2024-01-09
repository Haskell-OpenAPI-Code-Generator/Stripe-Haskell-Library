{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentPagesCheckoutSessionTotalDetails
module StripeAPI.Types.PaymentPagesCheckoutSessionTotalDetails where

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
import {-# SOURCE #-} StripeAPI.Types.PaymentPagesCheckoutSessionTotalDetailsResourceBreakdown
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_pages_checkout_session_total_details@ in the specification.
data PaymentPagesCheckoutSessionTotalDetails = PaymentPagesCheckoutSessionTotalDetails
  { -- | amount_discount: This is the sum of all the discounts.
    paymentPagesCheckoutSessionTotalDetailsAmountDiscount :: GHC.Types.Int,
    -- | amount_shipping: This is the sum of all the shipping amounts.
    paymentPagesCheckoutSessionTotalDetailsAmountShipping :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | amount_tax: This is the sum of all the tax amounts.
    paymentPagesCheckoutSessionTotalDetailsAmountTax :: GHC.Types.Int,
    -- | breakdown:
    paymentPagesCheckoutSessionTotalDetailsBreakdown :: (GHC.Maybe.Maybe PaymentPagesCheckoutSessionTotalDetailsResourceBreakdown)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentPagesCheckoutSessionTotalDetails where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount_discount" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionTotalDetailsAmountDiscount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_shipping" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionTotalDetailsAmountShipping obj) : ["amount_tax" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionTotalDetailsAmountTax obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("breakdown" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionTotalDetailsBreakdown obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount_discount" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionTotalDetailsAmountDiscount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_shipping" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionTotalDetailsAmountShipping obj) : ["amount_tax" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionTotalDetailsAmountTax obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("breakdown" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionTotalDetailsBreakdown obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentPagesCheckoutSessionTotalDetails where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentPagesCheckoutSessionTotalDetails" (\obj -> (((GHC.Base.pure PaymentPagesCheckoutSessionTotalDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount_discount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount_shipping")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount_tax")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "breakdown"))

-- | Create a new 'PaymentPagesCheckoutSessionTotalDetails' with all required fields.
mkPaymentPagesCheckoutSessionTotalDetails ::
  -- | 'paymentPagesCheckoutSessionTotalDetailsAmountDiscount'
  GHC.Types.Int ->
  -- | 'paymentPagesCheckoutSessionTotalDetailsAmountTax'
  GHC.Types.Int ->
  PaymentPagesCheckoutSessionTotalDetails
mkPaymentPagesCheckoutSessionTotalDetails paymentPagesCheckoutSessionTotalDetailsAmountDiscount paymentPagesCheckoutSessionTotalDetailsAmountTax =
  PaymentPagesCheckoutSessionTotalDetails
    { paymentPagesCheckoutSessionTotalDetailsAmountDiscount = paymentPagesCheckoutSessionTotalDetailsAmountDiscount,
      paymentPagesCheckoutSessionTotalDetailsAmountShipping = GHC.Maybe.Nothing,
      paymentPagesCheckoutSessionTotalDetailsAmountTax = paymentPagesCheckoutSessionTotalDetailsAmountTax,
      paymentPagesCheckoutSessionTotalDetailsBreakdown = GHC.Maybe.Nothing
    }
