{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentIntentPaymentMethodOptionsUsBankAccount
module StripeAPI.Types.PaymentIntentPaymentMethodOptionsUsBankAccount where

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
import {-# SOURCE #-} StripeAPI.Types.LinkedAccountOptionsUsBankAccount
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodOptionsUsBankAccountMandateOptions
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_intent_payment_method_options_us_bank_account@ in the specification.
data PaymentIntentPaymentMethodOptionsUsBankAccount = PaymentIntentPaymentMethodOptionsUsBankAccount
  { -- | financial_connections:
    paymentIntentPaymentMethodOptionsUsBankAccountFinancialConnections :: (GHC.Maybe.Maybe LinkedAccountOptionsUsBankAccount),
    -- | mandate_options:
    paymentIntentPaymentMethodOptionsUsBankAccountMandateOptions :: (GHC.Maybe.Maybe PaymentMethodOptionsUsBankAccountMandateOptions),
    -- | preferred_settlement_speed: Preferred transaction settlement speed
    paymentIntentPaymentMethodOptionsUsBankAccountPreferredSettlementSpeed :: (GHC.Maybe.Maybe PaymentIntentPaymentMethodOptionsUsBankAccountPreferredSettlementSpeed'),
    -- | setup_future_usage: Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
    --
    -- Providing this parameter will [attach the payment method](https:\/\/stripe.com\/docs\/payments\/save-during-payment) to the PaymentIntent\'s Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer after the transaction completes.
    --
    -- When processing card payments, Stripe also uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication).
    paymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage :: (GHC.Maybe.Maybe PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage'),
    -- | verification_method: Bank account verification method.
    paymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod :: (GHC.Maybe.Maybe PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentIntentPaymentMethodOptionsUsBankAccount where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("financial_connections" Data.Aeson.Types.ToJSON..=)) (paymentIntentPaymentMethodOptionsUsBankAccountFinancialConnections obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("mandate_options" Data.Aeson.Types.ToJSON..=)) (paymentIntentPaymentMethodOptionsUsBankAccountMandateOptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("preferred_settlement_speed" Data.Aeson.Types.ToJSON..=)) (paymentIntentPaymentMethodOptionsUsBankAccountPreferredSettlementSpeed obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_future_usage" Data.Aeson.Types.ToJSON..=)) (paymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification_method" Data.Aeson.Types.ToJSON..=)) (paymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("financial_connections" Data.Aeson.Types.ToJSON..=)) (paymentIntentPaymentMethodOptionsUsBankAccountFinancialConnections obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("mandate_options" Data.Aeson.Types.ToJSON..=)) (paymentIntentPaymentMethodOptionsUsBankAccountMandateOptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("preferred_settlement_speed" Data.Aeson.Types.ToJSON..=)) (paymentIntentPaymentMethodOptionsUsBankAccountPreferredSettlementSpeed obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_future_usage" Data.Aeson.Types.ToJSON..=)) (paymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification_method" Data.Aeson.Types.ToJSON..=)) (paymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentPaymentMethodOptionsUsBankAccount where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentIntentPaymentMethodOptionsUsBankAccount" (\obj -> ((((GHC.Base.pure PaymentIntentPaymentMethodOptionsUsBankAccount GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "financial_connections")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "mandate_options")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "preferred_settlement_speed")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "setup_future_usage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "verification_method"))

-- | Create a new 'PaymentIntentPaymentMethodOptionsUsBankAccount' with all required fields.
mkPaymentIntentPaymentMethodOptionsUsBankAccount :: PaymentIntentPaymentMethodOptionsUsBankAccount
mkPaymentIntentPaymentMethodOptionsUsBankAccount =
  PaymentIntentPaymentMethodOptionsUsBankAccount
    { paymentIntentPaymentMethodOptionsUsBankAccountFinancialConnections = GHC.Maybe.Nothing,
      paymentIntentPaymentMethodOptionsUsBankAccountMandateOptions = GHC.Maybe.Nothing,
      paymentIntentPaymentMethodOptionsUsBankAccountPreferredSettlementSpeed = GHC.Maybe.Nothing,
      paymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage = GHC.Maybe.Nothing,
      paymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.payment_intent_payment_method_options_us_bank_account.properties.preferred_settlement_speed@ in the specification.
--
-- Preferred transaction settlement speed
data PaymentIntentPaymentMethodOptionsUsBankAccountPreferredSettlementSpeed'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentIntentPaymentMethodOptionsUsBankAccountPreferredSettlementSpeed'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentIntentPaymentMethodOptionsUsBankAccountPreferredSettlementSpeed'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"fastest"@
    PaymentIntentPaymentMethodOptionsUsBankAccountPreferredSettlementSpeed'EnumFastest
  | -- | Represents the JSON value @"standard"@
    PaymentIntentPaymentMethodOptionsUsBankAccountPreferredSettlementSpeed'EnumStandard
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentIntentPaymentMethodOptionsUsBankAccountPreferredSettlementSpeed' where
  toJSON (PaymentIntentPaymentMethodOptionsUsBankAccountPreferredSettlementSpeed'Other val) = val
  toJSON (PaymentIntentPaymentMethodOptionsUsBankAccountPreferredSettlementSpeed'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentIntentPaymentMethodOptionsUsBankAccountPreferredSettlementSpeed'EnumFastest) = "fastest"
  toJSON (PaymentIntentPaymentMethodOptionsUsBankAccountPreferredSettlementSpeed'EnumStandard) = "standard"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentPaymentMethodOptionsUsBankAccountPreferredSettlementSpeed' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "fastest" -> PaymentIntentPaymentMethodOptionsUsBankAccountPreferredSettlementSpeed'EnumFastest
            | val GHC.Classes.== "standard" -> PaymentIntentPaymentMethodOptionsUsBankAccountPreferredSettlementSpeed'EnumStandard
            | GHC.Base.otherwise -> PaymentIntentPaymentMethodOptionsUsBankAccountPreferredSettlementSpeed'Other val
      )

-- | Defines the enum schema located at @components.schemas.payment_intent_payment_method_options_us_bank_account.properties.setup_future_usage@ in the specification.
--
-- Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
--
-- Providing this parameter will [attach the payment method](https:\/\/stripe.com\/docs\/payments\/save-during-payment) to the PaymentIntent\'s Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer after the transaction completes.
--
-- When processing card payments, Stripe also uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication).
data PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"none"@
    PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage'EnumNone
  | -- | Represents the JSON value @"off_session"@
    PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage'EnumOffSession
  | -- | Represents the JSON value @"on_session"@
    PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage'EnumOnSession
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage' where
  toJSON (PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage'Other val) = val
  toJSON (PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage'EnumNone) = "none"
  toJSON (PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage'EnumOffSession) = "off_session"
  toJSON (PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage'EnumOnSession) = "on_session"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "none" -> PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage'EnumNone
            | val GHC.Classes.== "off_session" -> PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage'EnumOffSession
            | val GHC.Classes.== "on_session" -> PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage'EnumOnSession
            | GHC.Base.otherwise -> PaymentIntentPaymentMethodOptionsUsBankAccountSetupFutureUsage'Other val
      )

-- | Defines the enum schema located at @components.schemas.payment_intent_payment_method_options_us_bank_account.properties.verification_method@ in the specification.
--
-- Bank account verification method.
data PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"automatic"@
    PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod'EnumAutomatic
  | -- | Represents the JSON value @"instant"@
    PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod'EnumInstant
  | -- | Represents the JSON value @"microdeposits"@
    PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod'EnumMicrodeposits
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod' where
  toJSON (PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod'Other val) = val
  toJSON (PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod'EnumAutomatic) = "automatic"
  toJSON (PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod'EnumInstant) = "instant"
  toJSON (PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod'EnumMicrodeposits) = "microdeposits"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "automatic" -> PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod'EnumAutomatic
            | val GHC.Classes.== "instant" -> PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod'EnumInstant
            | val GHC.Classes.== "microdeposits" -> PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod'EnumMicrodeposits
            | GHC.Base.otherwise -> PaymentIntentPaymentMethodOptionsUsBankAccountVerificationMethod'Other val
      )
