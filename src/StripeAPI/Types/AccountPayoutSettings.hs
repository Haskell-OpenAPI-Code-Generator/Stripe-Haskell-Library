{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema AccountPayoutSettings
module StripeAPI.Types.AccountPayoutSettings where

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
import {-# SOURCE #-} StripeAPI.Types.TransferSchedule
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.account_payout_settings@ in the specification.
data AccountPayoutSettings = AccountPayoutSettings
  { -- | debit_negative_balances: A Boolean indicating if Stripe should try to reclaim negative balances from an attached bank account. See our [Understanding Connect Account Balances](https:\/\/stripe.com\/docs\/connect\/account-balances) documentation for details. Default value is \`false\` for Custom accounts, otherwise \`true\`.
    accountPayoutSettingsDebitNegativeBalances :: GHC.Types.Bool,
    -- | schedule:
    accountPayoutSettingsSchedule :: TransferSchedule,
    -- | statement_descriptor: The text that appears on the bank account statement for payouts. If not set, this defaults to the platform\'s bank descriptor as set in the Dashboard.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    accountPayoutSettingsStatementDescriptor :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON AccountPayoutSettings where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["debit_negative_balances" Data.Aeson.Types.ToJSON..= accountPayoutSettingsDebitNegativeBalances obj] : ["schedule" Data.Aeson.Types.ToJSON..= accountPayoutSettingsSchedule obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor" Data.Aeson.Types.ToJSON..=)) (accountPayoutSettingsStatementDescriptor obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["debit_negative_balances" Data.Aeson.Types.ToJSON..= accountPayoutSettingsDebitNegativeBalances obj] : ["schedule" Data.Aeson.Types.ToJSON..= accountPayoutSettingsSchedule obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor" Data.Aeson.Types.ToJSON..=)) (accountPayoutSettingsStatementDescriptor obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON AccountPayoutSettings where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountPayoutSettings" (\obj -> ((GHC.Base.pure AccountPayoutSettings GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "debit_negative_balances")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "schedule")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "statement_descriptor"))

-- | Create a new 'AccountPayoutSettings' with all required fields.
mkAccountPayoutSettings ::
  -- | 'accountPayoutSettingsDebitNegativeBalances'
  GHC.Types.Bool ->
  -- | 'accountPayoutSettingsSchedule'
  TransferSchedule ->
  AccountPayoutSettings
mkAccountPayoutSettings accountPayoutSettingsDebitNegativeBalances accountPayoutSettingsSchedule =
  AccountPayoutSettings
    { accountPayoutSettingsDebitNegativeBalances = accountPayoutSettingsDebitNegativeBalances,
      accountPayoutSettingsSchedule = accountPayoutSettingsSchedule,
      accountPayoutSettingsStatementDescriptor = GHC.Maybe.Nothing
    }
