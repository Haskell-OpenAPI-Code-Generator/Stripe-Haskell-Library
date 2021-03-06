{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SetupAttemptPaymentMethodDetailsSofort
module StripeAPI.Types.SetupAttemptPaymentMethodDetailsSofort where

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
import {-# SOURCE #-} StripeAPI.Types.Mandate
import {-# SOURCE #-} StripeAPI.Types.PaymentMethod
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.setup_attempt_payment_method_details_sofort@ in the specification.
data SetupAttemptPaymentMethodDetailsSofort = SetupAttemptPaymentMethodDetailsSofort
  { -- | bank_code: Bank code of bank associated with the bank account.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    setupAttemptPaymentMethodDetailsSofortBankCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | bank_name: Name of the bank associated with the bank account.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    setupAttemptPaymentMethodDetailsSofortBankName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | bic: Bank Identifier Code of the bank associated with the bank account.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    setupAttemptPaymentMethodDetailsSofortBic :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | generated_sepa_debit: The ID of the SEPA Direct Debit PaymentMethod which was generated by this SetupAttempt.
    setupAttemptPaymentMethodDetailsSofortGeneratedSepaDebit :: (GHC.Maybe.Maybe SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebit'Variants),
    -- | generated_sepa_debit_mandate: The mandate for the SEPA Direct Debit PaymentMethod which was generated by this SetupAttempt.
    setupAttemptPaymentMethodDetailsSofortGeneratedSepaDebitMandate :: (GHC.Maybe.Maybe SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebitMandate'Variants),
    -- | iban_last4: Last four characters of the IBAN.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    setupAttemptPaymentMethodDetailsSofortIbanLast4 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | preferred_language: Preferred language of the Sofort authorization page that the customer is redirected to.
    -- Can be one of \`en\`, \`de\`, \`fr\`, or \`nl\`
    setupAttemptPaymentMethodDetailsSofortPreferredLanguage :: (GHC.Maybe.Maybe SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'),
    -- | verified_name: Owner\'s verified full name. Values are verified or provided by Sofort directly
    -- (if supported) at the time of authorization or settlement. They cannot be set or mutated.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    setupAttemptPaymentMethodDetailsSofortVerifiedName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SetupAttemptPaymentMethodDetailsSofort where
  toJSON obj = Data.Aeson.Types.Internal.object ("bank_code" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsSofortBankCode obj : "bank_name" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsSofortBankName obj : "bic" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsSofortBic obj : "generated_sepa_debit" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsSofortGeneratedSepaDebit obj : "generated_sepa_debit_mandate" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsSofortGeneratedSepaDebitMandate obj : "iban_last4" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsSofortIbanLast4 obj : "preferred_language" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsSofortPreferredLanguage obj : "verified_name" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsSofortVerifiedName obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("bank_code" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsSofortBankCode obj) GHC.Base.<> (("bank_name" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsSofortBankName obj) GHC.Base.<> (("bic" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsSofortBic obj) GHC.Base.<> (("generated_sepa_debit" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsSofortGeneratedSepaDebit obj) GHC.Base.<> (("generated_sepa_debit_mandate" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsSofortGeneratedSepaDebitMandate obj) GHC.Base.<> (("iban_last4" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsSofortIbanLast4 obj) GHC.Base.<> (("preferred_language" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsSofortPreferredLanguage obj) GHC.Base.<> ("verified_name" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsSofortVerifiedName obj))))))))

instance Data.Aeson.Types.FromJSON.FromJSON SetupAttemptPaymentMethodDetailsSofort where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SetupAttemptPaymentMethodDetailsSofort" (\obj -> (((((((GHC.Base.pure SetupAttemptPaymentMethodDetailsSofort GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bic")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "generated_sepa_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "generated_sepa_debit_mandate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "iban_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "preferred_language")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_name"))

-- | Create a new 'SetupAttemptPaymentMethodDetailsSofort' with all required fields.
mkSetupAttemptPaymentMethodDetailsSofort :: SetupAttemptPaymentMethodDetailsSofort
mkSetupAttemptPaymentMethodDetailsSofort =
  SetupAttemptPaymentMethodDetailsSofort
    { setupAttemptPaymentMethodDetailsSofortBankCode = GHC.Maybe.Nothing,
      setupAttemptPaymentMethodDetailsSofortBankName = GHC.Maybe.Nothing,
      setupAttemptPaymentMethodDetailsSofortBic = GHC.Maybe.Nothing,
      setupAttemptPaymentMethodDetailsSofortGeneratedSepaDebit = GHC.Maybe.Nothing,
      setupAttemptPaymentMethodDetailsSofortGeneratedSepaDebitMandate = GHC.Maybe.Nothing,
      setupAttemptPaymentMethodDetailsSofortIbanLast4 = GHC.Maybe.Nothing,
      setupAttemptPaymentMethodDetailsSofortPreferredLanguage = GHC.Maybe.Nothing,
      setupAttemptPaymentMethodDetailsSofortVerifiedName = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @components.schemas.setup_attempt_payment_method_details_sofort.properties.generated_sepa_debit.anyOf@ in the specification.
--
-- The ID of the SEPA Direct Debit PaymentMethod which was generated by this SetupAttempt.
data SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebit'Variants
  = SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebit'Text Data.Text.Internal.Text
  | SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebit'PaymentMethod PaymentMethod
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebit'Variants where
  toJSON (SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebit'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebit'PaymentMethod a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebit'Variants where
  parseJSON val = case (SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebit'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebit'PaymentMethod Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.setup_attempt_payment_method_details_sofort.properties.generated_sepa_debit_mandate.anyOf@ in the specification.
--
-- The mandate for the SEPA Direct Debit PaymentMethod which was generated by this SetupAttempt.
data SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebitMandate'Variants
  = SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebitMandate'Text Data.Text.Internal.Text
  | SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebitMandate'Mandate Mandate
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebitMandate'Variants where
  toJSON (SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebitMandate'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebitMandate'Mandate a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebitMandate'Variants where
  parseJSON val = case (SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebitMandate'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebitMandate'Mandate Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the enum schema located at @components.schemas.setup_attempt_payment_method_details_sofort.properties.preferred_language@ in the specification.
--
-- Preferred language of the Sofort authorization page that the customer is redirected to.
-- Can be one of \`en\`, \`de\`, \`fr\`, or \`nl\`
data SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"de"@
    SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'EnumDe
  | -- | Represents the JSON value @"en"@
    SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'EnumEn
  | -- | Represents the JSON value @"fr"@
    SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'EnumFr
  | -- | Represents the JSON value @"nl"@
    SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'EnumNl
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SetupAttemptPaymentMethodDetailsSofortPreferredLanguage' where
  toJSON (SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'Other val) = val
  toJSON (SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'EnumDe) = "de"
  toJSON (SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'EnumEn) = "en"
  toJSON (SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'EnumFr) = "fr"
  toJSON (SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'EnumNl) = "nl"

instance Data.Aeson.Types.FromJSON.FromJSON SetupAttemptPaymentMethodDetailsSofortPreferredLanguage' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "de" -> SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'EnumDe
            | val GHC.Classes.== "en" -> SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'EnumEn
            | val GHC.Classes.== "fr" -> SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'EnumFr
            | val GHC.Classes.== "nl" -> SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'EnumNl
            | GHC.Base.otherwise -> SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'Other val
      )
