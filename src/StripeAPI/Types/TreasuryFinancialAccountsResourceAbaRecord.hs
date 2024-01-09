{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema TreasuryFinancialAccountsResourceAbaRecord
module StripeAPI.Types.TreasuryFinancialAccountsResourceAbaRecord where

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

-- | Defines the object schema located at @components.schemas.treasury_financial_accounts_resource_aba_record@ in the specification.
--
-- ABA Records contain U.S. bank account details per the ABA format.
data TreasuryFinancialAccountsResourceAbaRecord = TreasuryFinancialAccountsResourceAbaRecord
  { -- | account_holder_name: The name of the person or business that owns the bank account.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    treasuryFinancialAccountsResourceAbaRecordAccountHolderName :: Data.Text.Internal.Text,
    -- | account_number: The account number.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    treasuryFinancialAccountsResourceAbaRecordAccountNumber :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | account_number_last4: The last four characters of the account number.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    treasuryFinancialAccountsResourceAbaRecordAccountNumberLast4 :: Data.Text.Internal.Text,
    -- | bank_name: Name of the bank.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    treasuryFinancialAccountsResourceAbaRecordBankName :: Data.Text.Internal.Text,
    -- | routing_number: Routing number for the account.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    treasuryFinancialAccountsResourceAbaRecordRoutingNumber :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON TreasuryFinancialAccountsResourceAbaRecord where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["account_holder_name" Data.Aeson.Types.ToJSON..= treasuryFinancialAccountsResourceAbaRecordAccountHolderName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_number" Data.Aeson.Types.ToJSON..=)) (treasuryFinancialAccountsResourceAbaRecordAccountNumber obj) : ["account_number_last4" Data.Aeson.Types.ToJSON..= treasuryFinancialAccountsResourceAbaRecordAccountNumberLast4 obj] : ["bank_name" Data.Aeson.Types.ToJSON..= treasuryFinancialAccountsResourceAbaRecordBankName obj] : ["routing_number" Data.Aeson.Types.ToJSON..= treasuryFinancialAccountsResourceAbaRecordRoutingNumber obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["account_holder_name" Data.Aeson.Types.ToJSON..= treasuryFinancialAccountsResourceAbaRecordAccountHolderName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_number" Data.Aeson.Types.ToJSON..=)) (treasuryFinancialAccountsResourceAbaRecordAccountNumber obj) : ["account_number_last4" Data.Aeson.Types.ToJSON..= treasuryFinancialAccountsResourceAbaRecordAccountNumberLast4 obj] : ["bank_name" Data.Aeson.Types.ToJSON..= treasuryFinancialAccountsResourceAbaRecordBankName obj] : ["routing_number" Data.Aeson.Types.ToJSON..= treasuryFinancialAccountsResourceAbaRecordRoutingNumber obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON TreasuryFinancialAccountsResourceAbaRecord where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "TreasuryFinancialAccountsResourceAbaRecord" (\obj -> ((((GHC.Base.pure TreasuryFinancialAccountsResourceAbaRecord GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account_number_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "routing_number"))

-- | Create a new 'TreasuryFinancialAccountsResourceAbaRecord' with all required fields.
mkTreasuryFinancialAccountsResourceAbaRecord ::
  -- | 'treasuryFinancialAccountsResourceAbaRecordAccountHolderName'
  Data.Text.Internal.Text ->
  -- | 'treasuryFinancialAccountsResourceAbaRecordAccountNumberLast4'
  Data.Text.Internal.Text ->
  -- | 'treasuryFinancialAccountsResourceAbaRecordBankName'
  Data.Text.Internal.Text ->
  -- | 'treasuryFinancialAccountsResourceAbaRecordRoutingNumber'
  Data.Text.Internal.Text ->
  TreasuryFinancialAccountsResourceAbaRecord
mkTreasuryFinancialAccountsResourceAbaRecord treasuryFinancialAccountsResourceAbaRecordAccountHolderName treasuryFinancialAccountsResourceAbaRecordAccountNumberLast4 treasuryFinancialAccountsResourceAbaRecordBankName treasuryFinancialAccountsResourceAbaRecordRoutingNumber =
  TreasuryFinancialAccountsResourceAbaRecord
    { treasuryFinancialAccountsResourceAbaRecordAccountHolderName = treasuryFinancialAccountsResourceAbaRecordAccountHolderName,
      treasuryFinancialAccountsResourceAbaRecordAccountNumber = GHC.Maybe.Nothing,
      treasuryFinancialAccountsResourceAbaRecordAccountNumberLast4 = treasuryFinancialAccountsResourceAbaRecordAccountNumberLast4,
      treasuryFinancialAccountsResourceAbaRecordBankName = treasuryFinancialAccountsResourceAbaRecordBankName,
      treasuryFinancialAccountsResourceAbaRecordRoutingNumber = treasuryFinancialAccountsResourceAbaRecordRoutingNumber
    }
