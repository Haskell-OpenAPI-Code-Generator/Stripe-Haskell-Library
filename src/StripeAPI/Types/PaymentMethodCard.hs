{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodCard
module StripeAPI.Types.PaymentMethodCard where

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
import {-# SOURCE #-} StripeAPI.Types.CardGeneratedFromPaymentMethodDetails
import {-# SOURCE #-} StripeAPI.Types.Networks
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodCardChecks
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodCardGeneratedCard
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodCardWallet
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodCardWalletMasterpass
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodCardWalletVisaCheckout
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodDetailsCardPresent
import {-# SOURCE #-} StripeAPI.Types.SetupAttempt
import {-# SOURCE #-} StripeAPI.Types.ThreeDSecureUsage
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_method_card@ in the specification.
data PaymentMethodCard = PaymentMethodCard
  { -- | brand: Card brand. Can be \`amex\`, \`diners\`, \`discover\`, \`eftpos_au\`, \`jcb\`, \`mastercard\`, \`unionpay\`, \`visa\`, or \`unknown\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardBrand :: Data.Text.Internal.Text,
    -- | checks: Checks on Card address and CVC if provided.
    paymentMethodCardChecks :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodCardChecks'NonNullable)),
    -- | country: Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you\'ve collected.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardCountry :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | exp_month: Two-digit number representing the card\'s expiration month.
    paymentMethodCardExpMonth :: GHC.Types.Int,
    -- | exp_year: Four-digit number representing the card\'s expiration year.
    paymentMethodCardExpYear :: GHC.Types.Int,
    -- | fingerprint: Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.
    --
    -- *As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardFingerprint :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | funding: Card funding type. Can be \`credit\`, \`debit\`, \`prepaid\`, or \`unknown\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardFunding :: Data.Text.Internal.Text,
    -- | generated_from: Details of the original PaymentMethod that created this object.
    paymentMethodCardGeneratedFrom :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodCardGeneratedFrom'NonNullable)),
    -- | last4: The last four digits of the card.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardLast4 :: Data.Text.Internal.Text,
    -- | networks: Contains information about card networks that can be used to process the payment.
    paymentMethodCardNetworks :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodCardNetworks'NonNullable)),
    -- | three_d_secure_usage: Contains details on how this Card may be used for 3D Secure authentication.
    paymentMethodCardThreeDSecureUsage :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodCardThreeDSecureUsage'NonNullable)),
    -- | wallet: If this Card is part of a card wallet, this contains the details of the card wallet.
    paymentMethodCardWallet :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodCardWallet'NonNullable))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodCard where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["brand" Data.Aeson.Types.ToJSON..= paymentMethodCardBrand obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("checks" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardChecks obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardCountry obj) : ["exp_month" Data.Aeson.Types.ToJSON..= paymentMethodCardExpMonth obj] : ["exp_year" Data.Aeson.Types.ToJSON..= paymentMethodCardExpYear obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fingerprint" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardFingerprint obj) : ["funding" Data.Aeson.Types.ToJSON..= paymentMethodCardFunding obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("generated_from" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardGeneratedFrom obj) : ["last4" Data.Aeson.Types.ToJSON..= paymentMethodCardLast4 obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("networks" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardNetworks obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("three_d_secure_usage" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardThreeDSecureUsage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("wallet" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWallet obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["brand" Data.Aeson.Types.ToJSON..= paymentMethodCardBrand obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("checks" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardChecks obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardCountry obj) : ["exp_month" Data.Aeson.Types.ToJSON..= paymentMethodCardExpMonth obj] : ["exp_year" Data.Aeson.Types.ToJSON..= paymentMethodCardExpYear obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fingerprint" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardFingerprint obj) : ["funding" Data.Aeson.Types.ToJSON..= paymentMethodCardFunding obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("generated_from" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardGeneratedFrom obj) : ["last4" Data.Aeson.Types.ToJSON..= paymentMethodCardLast4 obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("networks" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardNetworks obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("three_d_secure_usage" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardThreeDSecureUsage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("wallet" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWallet obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodCard where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodCard" (\obj -> (((((((((((GHC.Base.pure PaymentMethodCard GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "brand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "checks")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "funding")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "generated_from")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "networks")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "three_d_secure_usage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "wallet"))

-- | Create a new 'PaymentMethodCard' with all required fields.
mkPaymentMethodCard ::
  -- | 'paymentMethodCardBrand'
  Data.Text.Internal.Text ->
  -- | 'paymentMethodCardExpMonth'
  GHC.Types.Int ->
  -- | 'paymentMethodCardExpYear'
  GHC.Types.Int ->
  -- | 'paymentMethodCardFunding'
  Data.Text.Internal.Text ->
  -- | 'paymentMethodCardLast4'
  Data.Text.Internal.Text ->
  PaymentMethodCard
mkPaymentMethodCard paymentMethodCardBrand paymentMethodCardExpMonth paymentMethodCardExpYear paymentMethodCardFunding paymentMethodCardLast4 =
  PaymentMethodCard
    { paymentMethodCardBrand = paymentMethodCardBrand,
      paymentMethodCardChecks = GHC.Maybe.Nothing,
      paymentMethodCardCountry = GHC.Maybe.Nothing,
      paymentMethodCardExpMonth = paymentMethodCardExpMonth,
      paymentMethodCardExpYear = paymentMethodCardExpYear,
      paymentMethodCardFingerprint = GHC.Maybe.Nothing,
      paymentMethodCardFunding = paymentMethodCardFunding,
      paymentMethodCardGeneratedFrom = GHC.Maybe.Nothing,
      paymentMethodCardLast4 = paymentMethodCardLast4,
      paymentMethodCardNetworks = GHC.Maybe.Nothing,
      paymentMethodCardThreeDSecureUsage = GHC.Maybe.Nothing,
      paymentMethodCardWallet = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.payment_method_card.properties.checks.anyOf@ in the specification.
--
-- Checks on Card address and CVC if provided.
data PaymentMethodCardChecks'NonNullable = PaymentMethodCardChecks'NonNullable
  { -- | address_line1_check: If a address line1 was provided, results of the check, one of \`pass\`, \`fail\`, \`unavailable\`, or \`unchecked\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardChecks'NonNullableAddressLine1Check :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | address_postal_code_check: If a address postal code was provided, results of the check, one of \`pass\`, \`fail\`, \`unavailable\`, or \`unchecked\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardChecks'NonNullableAddressPostalCodeCheck :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | cvc_check: If a CVC was provided, results of the check, one of \`pass\`, \`fail\`, \`unavailable\`, or \`unchecked\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardChecks'NonNullableCvcCheck :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodCardChecks'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_line1_check" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardChecks'NonNullableAddressLine1Check obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_postal_code_check" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardChecks'NonNullableAddressPostalCodeCheck obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cvc_check" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardChecks'NonNullableCvcCheck obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_line1_check" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardChecks'NonNullableAddressLine1Check obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_postal_code_check" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardChecks'NonNullableAddressPostalCodeCheck obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cvc_check" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardChecks'NonNullableCvcCheck obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodCardChecks'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodCardChecks'NonNullable" (\obj -> ((GHC.Base.pure PaymentMethodCardChecks'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address_line1_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address_postal_code_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cvc_check"))

-- | Create a new 'PaymentMethodCardChecks'NonNullable' with all required fields.
mkPaymentMethodCardChecks'NonNullable :: PaymentMethodCardChecks'NonNullable
mkPaymentMethodCardChecks'NonNullable =
  PaymentMethodCardChecks'NonNullable
    { paymentMethodCardChecks'NonNullableAddressLine1Check = GHC.Maybe.Nothing,
      paymentMethodCardChecks'NonNullableAddressPostalCodeCheck = GHC.Maybe.Nothing,
      paymentMethodCardChecks'NonNullableCvcCheck = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.payment_method_card.properties.generated_from.anyOf@ in the specification.
--
-- Details of the original PaymentMethod that created this object.
data PaymentMethodCardGeneratedFrom'NonNullable = PaymentMethodCardGeneratedFrom'NonNullable
  { -- | charge: The charge that created this object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardGeneratedFrom'NonNullableCharge :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | payment_method_details: Transaction-specific details of the payment method used in the payment.
    paymentMethodCardGeneratedFrom'NonNullablePaymentMethodDetails :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodCardGeneratedFrom'NonNullablePaymentMethodDetails'NonNullable)),
    -- | setup_attempt: The ID of the SetupAttempt that generated this PaymentMethod, if any.
    paymentMethodCardGeneratedFrom'NonNullableSetupAttempt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodCardGeneratedFrom'NonNullableSetupAttempt'NonNullableVariants))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodCardGeneratedFrom'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("charge" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardGeneratedFrom'NonNullableCharge obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_method_details" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardGeneratedFrom'NonNullablePaymentMethodDetails obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_attempt" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardGeneratedFrom'NonNullableSetupAttempt obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("charge" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardGeneratedFrom'NonNullableCharge obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_method_details" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardGeneratedFrom'NonNullablePaymentMethodDetails obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_attempt" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardGeneratedFrom'NonNullableSetupAttempt obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodCardGeneratedFrom'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodCardGeneratedFrom'NonNullable" (\obj -> ((GHC.Base.pure PaymentMethodCardGeneratedFrom'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "charge")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "payment_method_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "setup_attempt"))

-- | Create a new 'PaymentMethodCardGeneratedFrom'NonNullable' with all required fields.
mkPaymentMethodCardGeneratedFrom'NonNullable :: PaymentMethodCardGeneratedFrom'NonNullable
mkPaymentMethodCardGeneratedFrom'NonNullable =
  PaymentMethodCardGeneratedFrom'NonNullable
    { paymentMethodCardGeneratedFrom'NonNullableCharge = GHC.Maybe.Nothing,
      paymentMethodCardGeneratedFrom'NonNullablePaymentMethodDetails = GHC.Maybe.Nothing,
      paymentMethodCardGeneratedFrom'NonNullableSetupAttempt = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.payment_method_card.properties.generated_from.anyOf.properties.payment_method_details.anyOf@ in the specification.
--
-- Transaction-specific details of the payment method used in the payment.
data PaymentMethodCardGeneratedFrom'NonNullablePaymentMethodDetails'NonNullable = PaymentMethodCardGeneratedFrom'NonNullablePaymentMethodDetails'NonNullable
  { -- | card_present:
    paymentMethodCardGeneratedFrom'NonNullablePaymentMethodDetails'NonNullableCardPresent :: (GHC.Maybe.Maybe PaymentMethodDetailsCardPresent),
    -- | type: The type of payment method transaction-specific details from the transaction that generated this \`card\` payment method. Always \`card_present\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardGeneratedFrom'NonNullablePaymentMethodDetails'NonNullableType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodCardGeneratedFrom'NonNullablePaymentMethodDetails'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card_present" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardGeneratedFrom'NonNullablePaymentMethodDetails'NonNullableCardPresent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardGeneratedFrom'NonNullablePaymentMethodDetails'NonNullableType obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card_present" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardGeneratedFrom'NonNullablePaymentMethodDetails'NonNullableCardPresent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardGeneratedFrom'NonNullablePaymentMethodDetails'NonNullableType obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodCardGeneratedFrom'NonNullablePaymentMethodDetails'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodCardGeneratedFrom'NonNullablePaymentMethodDetails'NonNullable" (\obj -> (GHC.Base.pure PaymentMethodCardGeneratedFrom'NonNullablePaymentMethodDetails'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "card_present")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "type"))

-- | Create a new 'PaymentMethodCardGeneratedFrom'NonNullablePaymentMethodDetails'NonNullable' with all required fields.
mkPaymentMethodCardGeneratedFrom'NonNullablePaymentMethodDetails'NonNullable :: PaymentMethodCardGeneratedFrom'NonNullablePaymentMethodDetails'NonNullable
mkPaymentMethodCardGeneratedFrom'NonNullablePaymentMethodDetails'NonNullable =
  PaymentMethodCardGeneratedFrom'NonNullablePaymentMethodDetails'NonNullable
    { paymentMethodCardGeneratedFrom'NonNullablePaymentMethodDetails'NonNullableCardPresent = GHC.Maybe.Nothing,
      paymentMethodCardGeneratedFrom'NonNullablePaymentMethodDetails'NonNullableType = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @components.schemas.payment_method_card.properties.generated_from.anyOf.properties.setup_attempt.anyOf@ in the specification.
--
-- The ID of the SetupAttempt that generated this PaymentMethod, if any.
data PaymentMethodCardGeneratedFrom'NonNullableSetupAttempt'NonNullableVariants
  = PaymentMethodCardGeneratedFrom'NonNullableSetupAttempt'NonNullableText Data.Text.Internal.Text
  | PaymentMethodCardGeneratedFrom'NonNullableSetupAttempt'NonNullableSetupAttempt SetupAttempt
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodCardGeneratedFrom'NonNullableSetupAttempt'NonNullableVariants where
  toJSON (PaymentMethodCardGeneratedFrom'NonNullableSetupAttempt'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PaymentMethodCardGeneratedFrom'NonNullableSetupAttempt'NonNullableSetupAttempt a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodCardGeneratedFrom'NonNullableSetupAttempt'NonNullableVariants where
  parseJSON val = case (PaymentMethodCardGeneratedFrom'NonNullableSetupAttempt'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PaymentMethodCardGeneratedFrom'NonNullableSetupAttempt'NonNullableSetupAttempt Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the object schema located at @components.schemas.payment_method_card.properties.networks.anyOf@ in the specification.
--
-- Contains information about card networks that can be used to process the payment.
data PaymentMethodCardNetworks'NonNullable = PaymentMethodCardNetworks'NonNullable
  { -- | available: All available networks for the card.
    paymentMethodCardNetworks'NonNullableAvailable :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | preferred: The preferred network for the card.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardNetworks'NonNullablePreferred :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodCardNetworks'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("available" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardNetworks'NonNullableAvailable obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("preferred" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardNetworks'NonNullablePreferred obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("available" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardNetworks'NonNullableAvailable obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("preferred" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardNetworks'NonNullablePreferred obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodCardNetworks'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodCardNetworks'NonNullable" (\obj -> (GHC.Base.pure PaymentMethodCardNetworks'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "available")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "preferred"))

-- | Create a new 'PaymentMethodCardNetworks'NonNullable' with all required fields.
mkPaymentMethodCardNetworks'NonNullable :: PaymentMethodCardNetworks'NonNullable
mkPaymentMethodCardNetworks'NonNullable =
  PaymentMethodCardNetworks'NonNullable
    { paymentMethodCardNetworks'NonNullableAvailable = GHC.Maybe.Nothing,
      paymentMethodCardNetworks'NonNullablePreferred = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.payment_method_card.properties.three_d_secure_usage.anyOf@ in the specification.
--
-- Contains details on how this Card may be used for 3D Secure authentication.
data PaymentMethodCardThreeDSecureUsage'NonNullable = PaymentMethodCardThreeDSecureUsage'NonNullable
  { -- | supported: Whether 3D Secure is supported on this card.
    paymentMethodCardThreeDSecureUsage'NonNullableSupported :: (GHC.Maybe.Maybe GHC.Types.Bool)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodCardThreeDSecureUsage'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("supported" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardThreeDSecureUsage'NonNullableSupported obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("supported" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardThreeDSecureUsage'NonNullableSupported obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodCardThreeDSecureUsage'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodCardThreeDSecureUsage'NonNullable" (\obj -> GHC.Base.pure PaymentMethodCardThreeDSecureUsage'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "supported"))

-- | Create a new 'PaymentMethodCardThreeDSecureUsage'NonNullable' with all required fields.
mkPaymentMethodCardThreeDSecureUsage'NonNullable :: PaymentMethodCardThreeDSecureUsage'NonNullable
mkPaymentMethodCardThreeDSecureUsage'NonNullable = PaymentMethodCardThreeDSecureUsage'NonNullable {paymentMethodCardThreeDSecureUsage'NonNullableSupported = GHC.Maybe.Nothing}

-- | Defines the object schema located at @components.schemas.payment_method_card.properties.wallet.anyOf@ in the specification.
--
-- If this Card is part of a card wallet, this contains the details of the card wallet.
data PaymentMethodCardWallet'NonNullable = PaymentMethodCardWallet'NonNullable
  { -- | amex_express_checkout:
    paymentMethodCardWallet'NonNullableAmexExpressCheckout :: (GHC.Maybe.Maybe PaymentMethodCardWalletAmexExpressCheckout),
    -- | apple_pay:
    paymentMethodCardWallet'NonNullableApplePay :: (GHC.Maybe.Maybe PaymentMethodCardWalletApplePay),
    -- | dynamic_last4: (For tokenized numbers only.) The last four digits of the device account number.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWallet'NonNullableDynamicLast4 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | google_pay:
    paymentMethodCardWallet'NonNullableGooglePay :: (GHC.Maybe.Maybe PaymentMethodCardWalletGooglePay),
    -- | link:
    paymentMethodCardWallet'NonNullableLink :: (GHC.Maybe.Maybe PaymentMethodCardWalletLink),
    -- | masterpass:
    paymentMethodCardWallet'NonNullableMasterpass :: (GHC.Maybe.Maybe PaymentMethodCardWalletMasterpass),
    -- | samsung_pay:
    paymentMethodCardWallet'NonNullableSamsungPay :: (GHC.Maybe.Maybe PaymentMethodCardWalletSamsungPay),
    -- | type: The type of the card wallet, one of \`amex_express_checkout\`, \`apple_pay\`, \`google_pay\`, \`masterpass\`, \`samsung_pay\`, \`visa_checkout\`, or \`link\`. An additional hash is included on the Wallet subhash with a name matching this value. It contains additional information specific to the card wallet type.
    paymentMethodCardWallet'NonNullableType :: (GHC.Maybe.Maybe PaymentMethodCardWallet'NonNullableType'),
    -- | visa_checkout:
    paymentMethodCardWallet'NonNullableVisaCheckout :: (GHC.Maybe.Maybe PaymentMethodCardWalletVisaCheckout)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodCardWallet'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amex_express_checkout" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWallet'NonNullableAmexExpressCheckout obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("apple_pay" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWallet'NonNullableApplePay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("dynamic_last4" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWallet'NonNullableDynamicLast4 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("google_pay" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWallet'NonNullableGooglePay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("link" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWallet'NonNullableLink obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("masterpass" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWallet'NonNullableMasterpass obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("samsung_pay" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWallet'NonNullableSamsungPay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWallet'NonNullableType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("visa_checkout" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWallet'NonNullableVisaCheckout obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amex_express_checkout" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWallet'NonNullableAmexExpressCheckout obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("apple_pay" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWallet'NonNullableApplePay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("dynamic_last4" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWallet'NonNullableDynamicLast4 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("google_pay" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWallet'NonNullableGooglePay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("link" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWallet'NonNullableLink obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("masterpass" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWallet'NonNullableMasterpass obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("samsung_pay" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWallet'NonNullableSamsungPay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWallet'NonNullableType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("visa_checkout" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWallet'NonNullableVisaCheckout obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodCardWallet'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodCardWallet'NonNullable" (\obj -> ((((((((GHC.Base.pure PaymentMethodCardWallet'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amex_express_checkout")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "apple_pay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "dynamic_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "google_pay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "link")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "masterpass")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "samsung_pay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "visa_checkout"))

-- | Create a new 'PaymentMethodCardWallet'NonNullable' with all required fields.
mkPaymentMethodCardWallet'NonNullable :: PaymentMethodCardWallet'NonNullable
mkPaymentMethodCardWallet'NonNullable =
  PaymentMethodCardWallet'NonNullable
    { paymentMethodCardWallet'NonNullableAmexExpressCheckout = GHC.Maybe.Nothing,
      paymentMethodCardWallet'NonNullableApplePay = GHC.Maybe.Nothing,
      paymentMethodCardWallet'NonNullableDynamicLast4 = GHC.Maybe.Nothing,
      paymentMethodCardWallet'NonNullableGooglePay = GHC.Maybe.Nothing,
      paymentMethodCardWallet'NonNullableLink = GHC.Maybe.Nothing,
      paymentMethodCardWallet'NonNullableMasterpass = GHC.Maybe.Nothing,
      paymentMethodCardWallet'NonNullableSamsungPay = GHC.Maybe.Nothing,
      paymentMethodCardWallet'NonNullableType = GHC.Maybe.Nothing,
      paymentMethodCardWallet'NonNullableVisaCheckout = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.payment_method_card.properties.wallet.anyOf.properties.type@ in the specification.
--
-- The type of the card wallet, one of \`amex_express_checkout\`, \`apple_pay\`, \`google_pay\`, \`masterpass\`, \`samsung_pay\`, \`visa_checkout\`, or \`link\`. An additional hash is included on the Wallet subhash with a name matching this value. It contains additional information specific to the card wallet type.
data PaymentMethodCardWallet'NonNullableType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodCardWallet'NonNullableType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodCardWallet'NonNullableType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"amex_express_checkout"@
    PaymentMethodCardWallet'NonNullableType'EnumAmexExpressCheckout
  | -- | Represents the JSON value @"apple_pay"@
    PaymentMethodCardWallet'NonNullableType'EnumApplePay
  | -- | Represents the JSON value @"google_pay"@
    PaymentMethodCardWallet'NonNullableType'EnumGooglePay
  | -- | Represents the JSON value @"link"@
    PaymentMethodCardWallet'NonNullableType'EnumLink
  | -- | Represents the JSON value @"masterpass"@
    PaymentMethodCardWallet'NonNullableType'EnumMasterpass
  | -- | Represents the JSON value @"samsung_pay"@
    PaymentMethodCardWallet'NonNullableType'EnumSamsungPay
  | -- | Represents the JSON value @"visa_checkout"@
    PaymentMethodCardWallet'NonNullableType'EnumVisaCheckout
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodCardWallet'NonNullableType' where
  toJSON (PaymentMethodCardWallet'NonNullableType'Other val) = val
  toJSON (PaymentMethodCardWallet'NonNullableType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodCardWallet'NonNullableType'EnumAmexExpressCheckout) = "amex_express_checkout"
  toJSON (PaymentMethodCardWallet'NonNullableType'EnumApplePay) = "apple_pay"
  toJSON (PaymentMethodCardWallet'NonNullableType'EnumGooglePay) = "google_pay"
  toJSON (PaymentMethodCardWallet'NonNullableType'EnumLink) = "link"
  toJSON (PaymentMethodCardWallet'NonNullableType'EnumMasterpass) = "masterpass"
  toJSON (PaymentMethodCardWallet'NonNullableType'EnumSamsungPay) = "samsung_pay"
  toJSON (PaymentMethodCardWallet'NonNullableType'EnumVisaCheckout) = "visa_checkout"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodCardWallet'NonNullableType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "amex_express_checkout" -> PaymentMethodCardWallet'NonNullableType'EnumAmexExpressCheckout
            | val GHC.Classes.== "apple_pay" -> PaymentMethodCardWallet'NonNullableType'EnumApplePay
            | val GHC.Classes.== "google_pay" -> PaymentMethodCardWallet'NonNullableType'EnumGooglePay
            | val GHC.Classes.== "link" -> PaymentMethodCardWallet'NonNullableType'EnumLink
            | val GHC.Classes.== "masterpass" -> PaymentMethodCardWallet'NonNullableType'EnumMasterpass
            | val GHC.Classes.== "samsung_pay" -> PaymentMethodCardWallet'NonNullableType'EnumSamsungPay
            | val GHC.Classes.== "visa_checkout" -> PaymentMethodCardWallet'NonNullableType'EnumVisaCheckout
            | GHC.Base.otherwise -> PaymentMethodCardWallet'NonNullableType'Other val
      )
