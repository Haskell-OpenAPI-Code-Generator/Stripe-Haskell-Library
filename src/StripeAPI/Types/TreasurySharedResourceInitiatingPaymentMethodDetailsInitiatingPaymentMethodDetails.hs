{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails
module StripeAPI.Types.TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails where

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
import {-# SOURCE #-} StripeAPI.Types.ReceivedPaymentMethodDetailsFinancialAccount
import {-# SOURCE #-} StripeAPI.Types.TreasurySharedResourceBillingDetails
import {-# SOURCE #-} StripeAPI.Types.TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.treasury_shared_resource_initiating_payment_method_details_initiating_payment_method_details@ in the specification.
data TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails = TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails
  { -- | balance: Set when \`type\` is \`balance\`.
    treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsBalance :: (GHC.Maybe.Maybe TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsBalance'),
    -- | billing_details:
    treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsBillingDetails :: TreasurySharedResourceBillingDetails,
    -- | financial_account:
    treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsFinancialAccount :: (GHC.Maybe.Maybe ReceivedPaymentMethodDetailsFinancialAccount),
    -- | issuing_card: Set when \`type\` is \`issuing_card\`. This is an [Issuing Card](https:\/\/stripe.com\/docs\/api\#issuing_cards) ID.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsIssuingCard :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | type: Polymorphic type matching the originating money movement\'s source. This can be an external account, a Stripe balance, or a FinancialAccount.
    treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType :: TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType',
    -- | us_bank_account:
    treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsUsBankAccount :: (GHC.Maybe.Maybe TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("balance" Data.Aeson.Types.ToJSON..=)) (treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsBalance obj) : ["billing_details" Data.Aeson.Types.ToJSON..= treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsBillingDetails obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("financial_account" Data.Aeson.Types.ToJSON..=)) (treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsFinancialAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("issuing_card" Data.Aeson.Types.ToJSON..=)) (treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsIssuingCard obj) : ["type" Data.Aeson.Types.ToJSON..= treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("us_bank_account" Data.Aeson.Types.ToJSON..=)) (treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsUsBankAccount obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("balance" Data.Aeson.Types.ToJSON..=)) (treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsBalance obj) : ["billing_details" Data.Aeson.Types.ToJSON..= treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsBillingDetails obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("financial_account" Data.Aeson.Types.ToJSON..=)) (treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsFinancialAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("issuing_card" Data.Aeson.Types.ToJSON..=)) (treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsIssuingCard obj) : ["type" Data.Aeson.Types.ToJSON..= treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("us_bank_account" Data.Aeson.Types.ToJSON..=)) (treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsUsBankAccount obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails" (\obj -> (((((GHC.Base.pure TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "balance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "billing_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "financial_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "issuing_card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "us_bank_account"))

-- | Create a new 'TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails' with all required fields.
mkTreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails ::
  -- | 'treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsBillingDetails'
  TreasurySharedResourceBillingDetails ->
  -- | 'treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType'
  TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType' ->
  TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails
mkTreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsBillingDetails treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType =
  TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails
    { treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsBalance = GHC.Maybe.Nothing,
      treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsBillingDetails = treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsBillingDetails,
      treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsFinancialAccount = GHC.Maybe.Nothing,
      treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsIssuingCard = GHC.Maybe.Nothing,
      treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType = treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType,
      treasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsUsBankAccount = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.treasury_shared_resource_initiating_payment_method_details_initiating_payment_method_details.properties.balance@ in the specification.
--
-- Set when \`type\` is \`balance\`.
data TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsBalance'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsBalance'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsBalance'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"payments"@
    TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsBalance'EnumPayments
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsBalance' where
  toJSON (TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsBalance'Other val) = val
  toJSON (TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsBalance'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsBalance'EnumPayments) = "payments"

instance Data.Aeson.Types.FromJSON.FromJSON TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsBalance' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "payments" -> TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsBalance'EnumPayments
            | GHC.Base.otherwise -> TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsBalance'Other val
      )

-- | Defines the enum schema located at @components.schemas.treasury_shared_resource_initiating_payment_method_details_initiating_payment_method_details.properties.type@ in the specification.
--
-- Polymorphic type matching the originating money movement\'s source. This can be an external account, a Stripe balance, or a FinancialAccount.
data TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"balance"@
    TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType'EnumBalance
  | -- | Represents the JSON value @"financial_account"@
    TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType'EnumFinancialAccount
  | -- | Represents the JSON value @"issuing_card"@
    TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType'EnumIssuingCard
  | -- | Represents the JSON value @"stripe"@
    TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType'EnumStripe
  | -- | Represents the JSON value @"us_bank_account"@
    TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType'EnumUsBankAccount
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType' where
  toJSON (TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType'Other val) = val
  toJSON (TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType'EnumBalance) = "balance"
  toJSON (TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType'EnumFinancialAccount) = "financial_account"
  toJSON (TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType'EnumIssuingCard) = "issuing_card"
  toJSON (TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType'EnumStripe) = "stripe"
  toJSON (TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType'EnumUsBankAccount) = "us_bank_account"

instance Data.Aeson.Types.FromJSON.FromJSON TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "balance" -> TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType'EnumBalance
            | val GHC.Classes.== "financial_account" -> TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType'EnumFinancialAccount
            | val GHC.Classes.== "issuing_card" -> TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType'EnumIssuingCard
            | val GHC.Classes.== "stripe" -> TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType'EnumStripe
            | val GHC.Classes.== "us_bank_account" -> TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType'EnumUsBankAccount
            | GHC.Base.otherwise -> TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType'Other val
      )
