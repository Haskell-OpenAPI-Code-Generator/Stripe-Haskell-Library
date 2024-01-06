{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction
module StripeAPI.Types.CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction where

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
import {-# SOURCE #-} StripeAPI.Types.CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.customer_balance_resource_cash_balance_transaction_resource_funded_transaction@ in the specification.
data CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction = CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction
  { -- | bank_transfer:
    customerBalanceResourceCashBalanceTransactionResourceFundedTransactionBankTransfer :: CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["bank_transfer" Data.Aeson.Types.ToJSON..= customerBalanceResourceCashBalanceTransactionResourceFundedTransactionBankTransfer obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["bank_transfer" Data.Aeson.Types.ToJSON..= customerBalanceResourceCashBalanceTransactionResourceFundedTransactionBankTransfer obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction" (\obj -> GHC.Base.pure CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "bank_transfer"))

-- | Create a new 'CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction' with all required fields.
mkCustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction ::
  -- | 'customerBalanceResourceCashBalanceTransactionResourceFundedTransactionBankTransfer'
  CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer ->
  CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction
mkCustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction customerBalanceResourceCashBalanceTransactionResourceFundedTransactionBankTransfer = CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction {customerBalanceResourceCashBalanceTransactionResourceFundedTransactionBankTransfer = customerBalanceResourceCashBalanceTransactionResourceFundedTransactionBankTransfer}
