{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentPagesCheckoutSessionCurrencyConversion
module StripeAPI.Types.PaymentPagesCheckoutSessionCurrencyConversion where

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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_pages_checkout_session_currency_conversion@ in the specification.
data PaymentPagesCheckoutSessionCurrencyConversion = PaymentPagesCheckoutSessionCurrencyConversion
  { -- | amount_subtotal: Total of all items in source currency before discounts or taxes are applied.
    paymentPagesCheckoutSessionCurrencyConversionAmountSubtotal :: GHC.Types.Int,
    -- | amount_total: Total of all items in source currency after discounts and taxes are applied.
    paymentPagesCheckoutSessionCurrencyConversionAmountTotal :: GHC.Types.Int,
    -- | fx_rate: Exchange rate used to convert source currency amounts to customer currency amounts
    paymentPagesCheckoutSessionCurrencyConversionFxRate :: Data.Text.Internal.Text,
    -- | source_currency: Creation currency of the CheckoutSession before localization
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentPagesCheckoutSessionCurrencyConversionSourceCurrency :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentPagesCheckoutSessionCurrencyConversion where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount_subtotal" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionCurrencyConversionAmountSubtotal obj] : ["amount_total" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionCurrencyConversionAmountTotal obj] : ["fx_rate" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionCurrencyConversionFxRate obj] : ["source_currency" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionCurrencyConversionSourceCurrency obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount_subtotal" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionCurrencyConversionAmountSubtotal obj] : ["amount_total" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionCurrencyConversionAmountTotal obj] : ["fx_rate" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionCurrencyConversionFxRate obj] : ["source_currency" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionCurrencyConversionSourceCurrency obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentPagesCheckoutSessionCurrencyConversion where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentPagesCheckoutSessionCurrencyConversion" (\obj -> (((GHC.Base.pure PaymentPagesCheckoutSessionCurrencyConversion GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount_subtotal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount_total")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "fx_rate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "source_currency"))

-- | Create a new 'PaymentPagesCheckoutSessionCurrencyConversion' with all required fields.
mkPaymentPagesCheckoutSessionCurrencyConversion ::
  -- | 'paymentPagesCheckoutSessionCurrencyConversionAmountSubtotal'
  GHC.Types.Int ->
  -- | 'paymentPagesCheckoutSessionCurrencyConversionAmountTotal'
  GHC.Types.Int ->
  -- | 'paymentPagesCheckoutSessionCurrencyConversionFxRate'
  Data.Text.Internal.Text ->
  -- | 'paymentPagesCheckoutSessionCurrencyConversionSourceCurrency'
  Data.Text.Internal.Text ->
  PaymentPagesCheckoutSessionCurrencyConversion
mkPaymentPagesCheckoutSessionCurrencyConversion paymentPagesCheckoutSessionCurrencyConversionAmountSubtotal paymentPagesCheckoutSessionCurrencyConversionAmountTotal paymentPagesCheckoutSessionCurrencyConversionFxRate paymentPagesCheckoutSessionCurrencyConversionSourceCurrency =
  PaymentPagesCheckoutSessionCurrencyConversion
    { paymentPagesCheckoutSessionCurrencyConversionAmountSubtotal = paymentPagesCheckoutSessionCurrencyConversionAmountSubtotal,
      paymentPagesCheckoutSessionCurrencyConversionAmountTotal = paymentPagesCheckoutSessionCurrencyConversionAmountTotal,
      paymentPagesCheckoutSessionCurrencyConversionFxRate = paymentPagesCheckoutSessionCurrencyConversionFxRate,
      paymentPagesCheckoutSessionCurrencyConversionSourceCurrency = paymentPagesCheckoutSessionCurrencyConversionSourceCurrency
    }
