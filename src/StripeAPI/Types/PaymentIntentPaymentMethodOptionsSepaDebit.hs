{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentIntentPaymentMethodOptionsSepaDebit
module StripeAPI.Types.PaymentIntentPaymentMethodOptionsSepaDebit where

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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_intent_payment_method_options_sepa_debit@ in the specification.
data PaymentIntentPaymentMethodOptionsSepaDebit = PaymentIntentPaymentMethodOptionsSepaDebit
  { -- | mandate_options:
    paymentIntentPaymentMethodOptionsSepaDebitMandateOptions :: (GHC.Maybe.Maybe PaymentIntentPaymentMethodOptionsMandateOptionsSepaDebit)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentIntentPaymentMethodOptionsSepaDebit where
  toJSON obj = Data.Aeson.Types.Internal.object ("mandate_options" Data.Aeson.Types.ToJSON..= paymentIntentPaymentMethodOptionsSepaDebitMandateOptions obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("mandate_options" Data.Aeson.Types.ToJSON..= paymentIntentPaymentMethodOptionsSepaDebitMandateOptions obj)

instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentPaymentMethodOptionsSepaDebit where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentIntentPaymentMethodOptionsSepaDebit" (\obj -> GHC.Base.pure PaymentIntentPaymentMethodOptionsSepaDebit GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mandate_options"))

-- | Create a new 'PaymentIntentPaymentMethodOptionsSepaDebit' with all required fields.
mkPaymentIntentPaymentMethodOptionsSepaDebit :: PaymentIntentPaymentMethodOptionsSepaDebit
mkPaymentIntentPaymentMethodOptionsSepaDebit = PaymentIntentPaymentMethodOptionsSepaDebit {paymentIntentPaymentMethodOptionsSepaDebitMandateOptions = GHC.Maybe.Nothing}
