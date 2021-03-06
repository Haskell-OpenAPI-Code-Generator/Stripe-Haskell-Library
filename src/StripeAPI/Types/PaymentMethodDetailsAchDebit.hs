{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodDetailsAchDebit
module StripeAPI.Types.PaymentMethodDetailsAchDebit where

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

-- | Defines the object schema located at @components.schemas.payment_method_details_ach_debit@ in the specification.
data PaymentMethodDetailsAchDebit = PaymentMethodDetailsAchDebit
  { -- | account_holder_type: Type of entity that holds the account. This can be either \`individual\` or \`company\`.
    paymentMethodDetailsAchDebitAccountHolderType :: (GHC.Maybe.Maybe PaymentMethodDetailsAchDebitAccountHolderType'),
    -- | bank_name: Name of the bank associated with the bank account.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsAchDebitBankName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | country: Two-letter ISO code representing the country the bank account is located in.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsAchDebitCountry :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | fingerprint: Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsAchDebitFingerprint :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | last4: Last four digits of the bank account number.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsAchDebitLast4 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | routing_number: Routing transit number of the bank account.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsAchDebitRoutingNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsAchDebit where
  toJSON obj = Data.Aeson.Types.Internal.object ("account_holder_type" Data.Aeson.Types.ToJSON..= paymentMethodDetailsAchDebitAccountHolderType obj : "bank_name" Data.Aeson.Types.ToJSON..= paymentMethodDetailsAchDebitBankName obj : "country" Data.Aeson.Types.ToJSON..= paymentMethodDetailsAchDebitCountry obj : "fingerprint" Data.Aeson.Types.ToJSON..= paymentMethodDetailsAchDebitFingerprint obj : "last4" Data.Aeson.Types.ToJSON..= paymentMethodDetailsAchDebitLast4 obj : "routing_number" Data.Aeson.Types.ToJSON..= paymentMethodDetailsAchDebitRoutingNumber obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("account_holder_type" Data.Aeson.Types.ToJSON..= paymentMethodDetailsAchDebitAccountHolderType obj) GHC.Base.<> (("bank_name" Data.Aeson.Types.ToJSON..= paymentMethodDetailsAchDebitBankName obj) GHC.Base.<> (("country" Data.Aeson.Types.ToJSON..= paymentMethodDetailsAchDebitCountry obj) GHC.Base.<> (("fingerprint" Data.Aeson.Types.ToJSON..= paymentMethodDetailsAchDebitFingerprint obj) GHC.Base.<> (("last4" Data.Aeson.Types.ToJSON..= paymentMethodDetailsAchDebitLast4 obj) GHC.Base.<> ("routing_number" Data.Aeson.Types.ToJSON..= paymentMethodDetailsAchDebitRoutingNumber obj))))))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsAchDebit where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsAchDebit" (\obj -> (((((GHC.Base.pure PaymentMethodDetailsAchDebit GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number"))

-- | Create a new 'PaymentMethodDetailsAchDebit' with all required fields.
mkPaymentMethodDetailsAchDebit :: PaymentMethodDetailsAchDebit
mkPaymentMethodDetailsAchDebit =
  PaymentMethodDetailsAchDebit
    { paymentMethodDetailsAchDebitAccountHolderType = GHC.Maybe.Nothing,
      paymentMethodDetailsAchDebitBankName = GHC.Maybe.Nothing,
      paymentMethodDetailsAchDebitCountry = GHC.Maybe.Nothing,
      paymentMethodDetailsAchDebitFingerprint = GHC.Maybe.Nothing,
      paymentMethodDetailsAchDebitLast4 = GHC.Maybe.Nothing,
      paymentMethodDetailsAchDebitRoutingNumber = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.payment_method_details_ach_debit.properties.account_holder_type@ in the specification.
--
-- Type of entity that holds the account. This can be either \`individual\` or \`company\`.
data PaymentMethodDetailsAchDebitAccountHolderType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodDetailsAchDebitAccountHolderType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodDetailsAchDebitAccountHolderType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"company"@
    PaymentMethodDetailsAchDebitAccountHolderType'EnumCompany
  | -- | Represents the JSON value @"individual"@
    PaymentMethodDetailsAchDebitAccountHolderType'EnumIndividual
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsAchDebitAccountHolderType' where
  toJSON (PaymentMethodDetailsAchDebitAccountHolderType'Other val) = val
  toJSON (PaymentMethodDetailsAchDebitAccountHolderType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodDetailsAchDebitAccountHolderType'EnumCompany) = "company"
  toJSON (PaymentMethodDetailsAchDebitAccountHolderType'EnumIndividual) = "individual"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsAchDebitAccountHolderType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "company" -> PaymentMethodDetailsAchDebitAccountHolderType'EnumCompany
            | val GHC.Classes.== "individual" -> PaymentMethodDetailsAchDebitAccountHolderType'EnumIndividual
            | GHC.Base.otherwise -> PaymentMethodDetailsAchDebitAccountHolderType'Other val
      )
