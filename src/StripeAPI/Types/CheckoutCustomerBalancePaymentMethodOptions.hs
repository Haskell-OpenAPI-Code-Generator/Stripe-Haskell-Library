{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema CheckoutCustomerBalancePaymentMethodOptions
module StripeAPI.Types.CheckoutCustomerBalancePaymentMethodOptions where

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
import {-# SOURCE #-} StripeAPI.Types.CheckoutCustomerBalanceBankTransferPaymentMethodOptions
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.checkout_customer_balance_payment_method_options@ in the specification.
data CheckoutCustomerBalancePaymentMethodOptions = CheckoutCustomerBalancePaymentMethodOptions
  { -- | bank_transfer:
    checkoutCustomerBalancePaymentMethodOptionsBankTransfer :: (GHC.Maybe.Maybe CheckoutCustomerBalanceBankTransferPaymentMethodOptions),
    -- | funding_type: The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: \`bank_transfer\`.
    checkoutCustomerBalancePaymentMethodOptionsFundingType :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable CheckoutCustomerBalancePaymentMethodOptionsFundingType'NonNullable)),
    -- | setup_future_usage: Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
    --
    -- Providing this parameter will [attach the payment method](https:\/\/stripe.com\/docs\/payments\/save-during-payment) to the PaymentIntent\'s Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer after the transaction completes.
    --
    -- When processing card payments, Stripe also uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication).
    checkoutCustomerBalancePaymentMethodOptionsSetupFutureUsage :: (GHC.Maybe.Maybe CheckoutCustomerBalancePaymentMethodOptionsSetupFutureUsage')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON CheckoutCustomerBalancePaymentMethodOptions where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_transfer" Data.Aeson.Types.ToJSON..=)) (checkoutCustomerBalancePaymentMethodOptionsBankTransfer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("funding_type" Data.Aeson.Types.ToJSON..=)) (checkoutCustomerBalancePaymentMethodOptionsFundingType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_future_usage" Data.Aeson.Types.ToJSON..=)) (checkoutCustomerBalancePaymentMethodOptionsSetupFutureUsage obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_transfer" Data.Aeson.Types.ToJSON..=)) (checkoutCustomerBalancePaymentMethodOptionsBankTransfer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("funding_type" Data.Aeson.Types.ToJSON..=)) (checkoutCustomerBalancePaymentMethodOptionsFundingType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_future_usage" Data.Aeson.Types.ToJSON..=)) (checkoutCustomerBalancePaymentMethodOptionsSetupFutureUsage obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON CheckoutCustomerBalancePaymentMethodOptions where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "CheckoutCustomerBalancePaymentMethodOptions" (\obj -> ((GHC.Base.pure CheckoutCustomerBalancePaymentMethodOptions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bank_transfer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "funding_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "setup_future_usage"))

-- | Create a new 'CheckoutCustomerBalancePaymentMethodOptions' with all required fields.
mkCheckoutCustomerBalancePaymentMethodOptions :: CheckoutCustomerBalancePaymentMethodOptions
mkCheckoutCustomerBalancePaymentMethodOptions =
  CheckoutCustomerBalancePaymentMethodOptions
    { checkoutCustomerBalancePaymentMethodOptionsBankTransfer = GHC.Maybe.Nothing,
      checkoutCustomerBalancePaymentMethodOptionsFundingType = GHC.Maybe.Nothing,
      checkoutCustomerBalancePaymentMethodOptionsSetupFutureUsage = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.checkout_customer_balance_payment_method_options.properties.funding_type@ in the specification.
--
-- The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: \`bank_transfer\`.
data CheckoutCustomerBalancePaymentMethodOptionsFundingType'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    CheckoutCustomerBalancePaymentMethodOptionsFundingType'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    CheckoutCustomerBalancePaymentMethodOptionsFundingType'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"bank_transfer"@
    CheckoutCustomerBalancePaymentMethodOptionsFundingType'NonNullableEnumBankTransfer
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON CheckoutCustomerBalancePaymentMethodOptionsFundingType'NonNullable where
  toJSON (CheckoutCustomerBalancePaymentMethodOptionsFundingType'NonNullableOther val) = val
  toJSON (CheckoutCustomerBalancePaymentMethodOptionsFundingType'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (CheckoutCustomerBalancePaymentMethodOptionsFundingType'NonNullableEnumBankTransfer) = "bank_transfer"

instance Data.Aeson.Types.FromJSON.FromJSON CheckoutCustomerBalancePaymentMethodOptionsFundingType'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "bank_transfer" -> CheckoutCustomerBalancePaymentMethodOptionsFundingType'NonNullableEnumBankTransfer
            | GHC.Base.otherwise -> CheckoutCustomerBalancePaymentMethodOptionsFundingType'NonNullableOther val
      )

-- | Defines the enum schema located at @components.schemas.checkout_customer_balance_payment_method_options.properties.setup_future_usage@ in the specification.
--
-- Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
--
-- Providing this parameter will [attach the payment method](https:\/\/stripe.com\/docs\/payments\/save-during-payment) to the PaymentIntent\'s Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer after the transaction completes.
--
-- When processing card payments, Stripe also uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication).
data CheckoutCustomerBalancePaymentMethodOptionsSetupFutureUsage'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    CheckoutCustomerBalancePaymentMethodOptionsSetupFutureUsage'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    CheckoutCustomerBalancePaymentMethodOptionsSetupFutureUsage'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"none"@
    CheckoutCustomerBalancePaymentMethodOptionsSetupFutureUsage'EnumNone
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON CheckoutCustomerBalancePaymentMethodOptionsSetupFutureUsage' where
  toJSON (CheckoutCustomerBalancePaymentMethodOptionsSetupFutureUsage'Other val) = val
  toJSON (CheckoutCustomerBalancePaymentMethodOptionsSetupFutureUsage'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (CheckoutCustomerBalancePaymentMethodOptionsSetupFutureUsage'EnumNone) = "none"

instance Data.Aeson.Types.FromJSON.FromJSON CheckoutCustomerBalancePaymentMethodOptionsSetupFutureUsage' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "none" -> CheckoutCustomerBalancePaymentMethodOptionsSetupFutureUsage'EnumNone
            | GHC.Base.otherwise -> CheckoutCustomerBalancePaymentMethodOptionsSetupFutureUsage'Other val
      )
