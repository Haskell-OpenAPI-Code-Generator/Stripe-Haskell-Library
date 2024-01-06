{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodUsBankAccount
module StripeAPI.Types.PaymentMethodUsBankAccount where

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
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodUsBankAccountBlocked
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodUsBankAccountStatusDetails
import {-# SOURCE #-} StripeAPI.Types.UsBankAccountNetworks
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_method_us_bank_account@ in the specification.
data PaymentMethodUsBankAccount = PaymentMethodUsBankAccount
  { -- | account_holder_type: Account holder type: individual or company.
    paymentMethodUsBankAccountAccountHolderType :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodUsBankAccountAccountHolderType'NonNullable)),
    -- | account_type: Account type: checkings or savings. Defaults to checking if omitted.
    paymentMethodUsBankAccountAccountType :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodUsBankAccountAccountType'NonNullable)),
    -- | bank_name: The name of the bank.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodUsBankAccountBankName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | financial_connections_account: The ID of the Financial Connections Account used to create the payment method.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodUsBankAccountFinancialConnectionsAccount :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | fingerprint: Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodUsBankAccountFingerprint :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | last4: Last four digits of the bank account number.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodUsBankAccountLast4 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | networks: Contains information about US bank account networks that can be used.
    paymentMethodUsBankAccountNetworks :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodUsBankAccountNetworks'NonNullable)),
    -- | routing_number: Routing number of the bank account.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodUsBankAccountRoutingNumber :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | status_details: Contains information about the future reusability of this PaymentMethod.
    paymentMethodUsBankAccountStatusDetails :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodUsBankAccountStatusDetails'NonNullable))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodUsBankAccount where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_type" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccountAccountHolderType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_type" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccountAccountType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_name" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccountBankName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("financial_connections_account" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccountFinancialConnectionsAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fingerprint" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccountFingerprint obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last4" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccountLast4 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("networks" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccountNetworks obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("routing_number" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccountRoutingNumber obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("status_details" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccountStatusDetails obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_type" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccountAccountHolderType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_type" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccountAccountType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_name" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccountBankName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("financial_connections_account" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccountFinancialConnectionsAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fingerprint" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccountFingerprint obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last4" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccountLast4 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("networks" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccountNetworks obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("routing_number" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccountRoutingNumber obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("status_details" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccountStatusDetails obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodUsBankAccount where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodUsBankAccount" (\obj -> ((((((((GHC.Base.pure PaymentMethodUsBankAccount GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "financial_connections_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "networks")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "routing_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "status_details"))

-- | Create a new 'PaymentMethodUsBankAccount' with all required fields.
mkPaymentMethodUsBankAccount :: PaymentMethodUsBankAccount
mkPaymentMethodUsBankAccount =
  PaymentMethodUsBankAccount
    { paymentMethodUsBankAccountAccountHolderType = GHC.Maybe.Nothing,
      paymentMethodUsBankAccountAccountType = GHC.Maybe.Nothing,
      paymentMethodUsBankAccountBankName = GHC.Maybe.Nothing,
      paymentMethodUsBankAccountFinancialConnectionsAccount = GHC.Maybe.Nothing,
      paymentMethodUsBankAccountFingerprint = GHC.Maybe.Nothing,
      paymentMethodUsBankAccountLast4 = GHC.Maybe.Nothing,
      paymentMethodUsBankAccountNetworks = GHC.Maybe.Nothing,
      paymentMethodUsBankAccountRoutingNumber = GHC.Maybe.Nothing,
      paymentMethodUsBankAccountStatusDetails = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.payment_method_us_bank_account.properties.account_holder_type@ in the specification.
--
-- Account holder type: individual or company.
data PaymentMethodUsBankAccountAccountHolderType'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodUsBankAccountAccountHolderType'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodUsBankAccountAccountHolderType'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"company"@
    PaymentMethodUsBankAccountAccountHolderType'NonNullableEnumCompany
  | -- | Represents the JSON value @"individual"@
    PaymentMethodUsBankAccountAccountHolderType'NonNullableEnumIndividual
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodUsBankAccountAccountHolderType'NonNullable where
  toJSON (PaymentMethodUsBankAccountAccountHolderType'NonNullableOther val) = val
  toJSON (PaymentMethodUsBankAccountAccountHolderType'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodUsBankAccountAccountHolderType'NonNullableEnumCompany) = "company"
  toJSON (PaymentMethodUsBankAccountAccountHolderType'NonNullableEnumIndividual) = "individual"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodUsBankAccountAccountHolderType'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "company" -> PaymentMethodUsBankAccountAccountHolderType'NonNullableEnumCompany
            | val GHC.Classes.== "individual" -> PaymentMethodUsBankAccountAccountHolderType'NonNullableEnumIndividual
            | GHC.Base.otherwise -> PaymentMethodUsBankAccountAccountHolderType'NonNullableOther val
      )

-- | Defines the enum schema located at @components.schemas.payment_method_us_bank_account.properties.account_type@ in the specification.
--
-- Account type: checkings or savings. Defaults to checking if omitted.
data PaymentMethodUsBankAccountAccountType'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodUsBankAccountAccountType'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodUsBankAccountAccountType'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"checking"@
    PaymentMethodUsBankAccountAccountType'NonNullableEnumChecking
  | -- | Represents the JSON value @"savings"@
    PaymentMethodUsBankAccountAccountType'NonNullableEnumSavings
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodUsBankAccountAccountType'NonNullable where
  toJSON (PaymentMethodUsBankAccountAccountType'NonNullableOther val) = val
  toJSON (PaymentMethodUsBankAccountAccountType'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodUsBankAccountAccountType'NonNullableEnumChecking) = "checking"
  toJSON (PaymentMethodUsBankAccountAccountType'NonNullableEnumSavings) = "savings"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodUsBankAccountAccountType'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "checking" -> PaymentMethodUsBankAccountAccountType'NonNullableEnumChecking
            | val GHC.Classes.== "savings" -> PaymentMethodUsBankAccountAccountType'NonNullableEnumSavings
            | GHC.Base.otherwise -> PaymentMethodUsBankAccountAccountType'NonNullableOther val
      )

-- | Defines the object schema located at @components.schemas.payment_method_us_bank_account.properties.networks.anyOf@ in the specification.
--
-- Contains information about US bank account networks that can be used.
data PaymentMethodUsBankAccountNetworks'NonNullable = PaymentMethodUsBankAccountNetworks'NonNullable
  { -- | preferred: The preferred network.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodUsBankAccountNetworks'NonNullablePreferred :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | supported: All supported networks.
    paymentMethodUsBankAccountNetworks'NonNullableSupported :: (GHC.Maybe.Maybe ([PaymentMethodUsBankAccountNetworks'NonNullableSupported']))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodUsBankAccountNetworks'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("preferred" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccountNetworks'NonNullablePreferred obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("supported" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccountNetworks'NonNullableSupported obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("preferred" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccountNetworks'NonNullablePreferred obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("supported" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccountNetworks'NonNullableSupported obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodUsBankAccountNetworks'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodUsBankAccountNetworks'NonNullable" (\obj -> (GHC.Base.pure PaymentMethodUsBankAccountNetworks'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "preferred")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "supported"))

-- | Create a new 'PaymentMethodUsBankAccountNetworks'NonNullable' with all required fields.
mkPaymentMethodUsBankAccountNetworks'NonNullable :: PaymentMethodUsBankAccountNetworks'NonNullable
mkPaymentMethodUsBankAccountNetworks'NonNullable =
  PaymentMethodUsBankAccountNetworks'NonNullable
    { paymentMethodUsBankAccountNetworks'NonNullablePreferred = GHC.Maybe.Nothing,
      paymentMethodUsBankAccountNetworks'NonNullableSupported = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.payment_method_us_bank_account.properties.networks.anyOf.properties.supported.items@ in the specification.
data PaymentMethodUsBankAccountNetworks'NonNullableSupported'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodUsBankAccountNetworks'NonNullableSupported'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodUsBankAccountNetworks'NonNullableSupported'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"ach"@
    PaymentMethodUsBankAccountNetworks'NonNullableSupported'EnumAch
  | -- | Represents the JSON value @"us_domestic_wire"@
    PaymentMethodUsBankAccountNetworks'NonNullableSupported'EnumUsDomesticWire
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodUsBankAccountNetworks'NonNullableSupported' where
  toJSON (PaymentMethodUsBankAccountNetworks'NonNullableSupported'Other val) = val
  toJSON (PaymentMethodUsBankAccountNetworks'NonNullableSupported'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodUsBankAccountNetworks'NonNullableSupported'EnumAch) = "ach"
  toJSON (PaymentMethodUsBankAccountNetworks'NonNullableSupported'EnumUsDomesticWire) = "us_domestic_wire"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodUsBankAccountNetworks'NonNullableSupported' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "ach" -> PaymentMethodUsBankAccountNetworks'NonNullableSupported'EnumAch
            | val GHC.Classes.== "us_domestic_wire" -> PaymentMethodUsBankAccountNetworks'NonNullableSupported'EnumUsDomesticWire
            | GHC.Base.otherwise -> PaymentMethodUsBankAccountNetworks'NonNullableSupported'Other val
      )

-- | Defines the object schema located at @components.schemas.payment_method_us_bank_account.properties.status_details.anyOf@ in the specification.
--
-- Contains information about the future reusability of this PaymentMethod.
data PaymentMethodUsBankAccountStatusDetails'NonNullable = PaymentMethodUsBankAccountStatusDetails'NonNullable
  { -- | blocked:
    paymentMethodUsBankAccountStatusDetails'NonNullableBlocked :: (GHC.Maybe.Maybe PaymentMethodUsBankAccountBlocked)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodUsBankAccountStatusDetails'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("blocked" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccountStatusDetails'NonNullableBlocked obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("blocked" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccountStatusDetails'NonNullableBlocked obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodUsBankAccountStatusDetails'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodUsBankAccountStatusDetails'NonNullable" (\obj -> GHC.Base.pure PaymentMethodUsBankAccountStatusDetails'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "blocked"))

-- | Create a new 'PaymentMethodUsBankAccountStatusDetails'NonNullable' with all required fields.
mkPaymentMethodUsBankAccountStatusDetails'NonNullable :: PaymentMethodUsBankAccountStatusDetails'NonNullable
mkPaymentMethodUsBankAccountStatusDetails'NonNullable = PaymentMethodUsBankAccountStatusDetails'NonNullable {paymentMethodUsBankAccountStatusDetails'NonNullableBlocked = GHC.Maybe.Nothing}
