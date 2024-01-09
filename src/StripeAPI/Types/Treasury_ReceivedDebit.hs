{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Treasury_ReceivedDebit
module StripeAPI.Types.Treasury_ReceivedDebit where

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
import {-# SOURCE #-} StripeAPI.Types.TreasuryReceivedDebitsResourceLinkedFlows
import {-# SOURCE #-} StripeAPI.Types.TreasuryReceivedDebitsResourceReversalDetails
import {-# SOURCE #-} StripeAPI.Types.TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails
import {-# SOURCE #-} StripeAPI.Types.Treasury_Transaction
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.treasury.received_debit@ in the specification.
--
-- ReceivedDebits represent funds pulled from a [FinancialAccount](https:\/\/stripe.com\/docs\/api\#financial_accounts). These are not initiated from the FinancialAccount.
data Treasury'receivedDebit = Treasury'receivedDebit
  { -- | amount: Amount (in cents) transferred.
    treasury'receivedDebitAmount :: GHC.Types.Int,
    -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
    treasury'receivedDebitCreated :: GHC.Types.Int,
    -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
    treasury'receivedDebitCurrency :: Data.Text.Internal.Text,
    -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    treasury'receivedDebitDescription :: Data.Text.Internal.Text,
    -- | failure_code: Reason for the failure. A ReceivedDebit might fail because the FinancialAccount doesn\'t have sufficient funds, is closed, or is frozen.
    treasury'receivedDebitFailureCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Treasury'receivedDebitFailureCode'NonNullable)),
    -- | financial_account: The FinancialAccount that funds were pulled from.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    treasury'receivedDebitFinancialAccount :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | hosted_regulatory_receipt_url: A [hosted transaction receipt](https:\/\/stripe.com\/docs\/treasury\/moving-money\/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe\'s money transmission licenses.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    treasury'receivedDebitHostedRegulatoryReceiptUrl :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    treasury'receivedDebitId :: Data.Text.Internal.Text,
    -- | initiating_payment_method_details:
    treasury'receivedDebitInitiatingPaymentMethodDetails :: (GHC.Maybe.Maybe TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails),
    -- | linked_flows:
    treasury'receivedDebitLinkedFlows :: TreasuryReceivedDebitsResourceLinkedFlows,
    -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
    treasury'receivedDebitLivemode :: GHC.Types.Bool,
    -- | network: The network used for the ReceivedDebit.
    treasury'receivedDebitNetwork :: Treasury'receivedDebitNetwork',
    -- | reversal_details: Details describing when a ReceivedDebit might be reversed.
    treasury'receivedDebitReversalDetails :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Treasury'receivedDebitReversalDetails'NonNullable)),
    -- | status: Status of the ReceivedDebit. ReceivedDebits are created with a status of either \`succeeded\` (approved) or \`failed\` (declined). The failure reason can be found under the \`failure_code\`.
    treasury'receivedDebitStatus :: Treasury'receivedDebitStatus',
    -- | transaction: The Transaction associated with this object.
    treasury'receivedDebitTransaction :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Treasury'receivedDebitTransaction'NonNullableVariants))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Treasury'receivedDebit where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= treasury'receivedDebitAmount obj] : ["created" Data.Aeson.Types.ToJSON..= treasury'receivedDebitCreated obj] : ["currency" Data.Aeson.Types.ToJSON..= treasury'receivedDebitCurrency obj] : ["description" Data.Aeson.Types.ToJSON..= treasury'receivedDebitDescription obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("failure_code" Data.Aeson.Types.ToJSON..=)) (treasury'receivedDebitFailureCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("financial_account" Data.Aeson.Types.ToJSON..=)) (treasury'receivedDebitFinancialAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("hosted_regulatory_receipt_url" Data.Aeson.Types.ToJSON..=)) (treasury'receivedDebitHostedRegulatoryReceiptUrl obj) : ["id" Data.Aeson.Types.ToJSON..= treasury'receivedDebitId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("initiating_payment_method_details" Data.Aeson.Types.ToJSON..=)) (treasury'receivedDebitInitiatingPaymentMethodDetails obj) : ["linked_flows" Data.Aeson.Types.ToJSON..= treasury'receivedDebitLinkedFlows obj] : ["livemode" Data.Aeson.Types.ToJSON..= treasury'receivedDebitLivemode obj] : ["network" Data.Aeson.Types.ToJSON..= treasury'receivedDebitNetwork obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reversal_details" Data.Aeson.Types.ToJSON..=)) (treasury'receivedDebitReversalDetails obj) : ["status" Data.Aeson.Types.ToJSON..= treasury'receivedDebitStatus obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transaction" Data.Aeson.Types.ToJSON..=)) (treasury'receivedDebitTransaction obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "treasury.received_debit"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= treasury'receivedDebitAmount obj] : ["created" Data.Aeson.Types.ToJSON..= treasury'receivedDebitCreated obj] : ["currency" Data.Aeson.Types.ToJSON..= treasury'receivedDebitCurrency obj] : ["description" Data.Aeson.Types.ToJSON..= treasury'receivedDebitDescription obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("failure_code" Data.Aeson.Types.ToJSON..=)) (treasury'receivedDebitFailureCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("financial_account" Data.Aeson.Types.ToJSON..=)) (treasury'receivedDebitFinancialAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("hosted_regulatory_receipt_url" Data.Aeson.Types.ToJSON..=)) (treasury'receivedDebitHostedRegulatoryReceiptUrl obj) : ["id" Data.Aeson.Types.ToJSON..= treasury'receivedDebitId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("initiating_payment_method_details" Data.Aeson.Types.ToJSON..=)) (treasury'receivedDebitInitiatingPaymentMethodDetails obj) : ["linked_flows" Data.Aeson.Types.ToJSON..= treasury'receivedDebitLinkedFlows obj] : ["livemode" Data.Aeson.Types.ToJSON..= treasury'receivedDebitLivemode obj] : ["network" Data.Aeson.Types.ToJSON..= treasury'receivedDebitNetwork obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reversal_details" Data.Aeson.Types.ToJSON..=)) (treasury'receivedDebitReversalDetails obj) : ["status" Data.Aeson.Types.ToJSON..= treasury'receivedDebitStatus obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transaction" Data.Aeson.Types.ToJSON..=)) (treasury'receivedDebitTransaction obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "treasury.received_debit"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON Treasury'receivedDebit where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Treasury'receivedDebit" (\obj -> ((((((((((((((GHC.Base.pure Treasury'receivedDebit GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "failure_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "financial_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "hosted_regulatory_receipt_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "initiating_payment_method_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "linked_flows")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "network")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reversal_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "transaction"))

-- | Create a new 'Treasury'receivedDebit' with all required fields.
mkTreasury'receivedDebit ::
  -- | 'treasury'receivedDebitAmount'
  GHC.Types.Int ->
  -- | 'treasury'receivedDebitCreated'
  GHC.Types.Int ->
  -- | 'treasury'receivedDebitCurrency'
  Data.Text.Internal.Text ->
  -- | 'treasury'receivedDebitDescription'
  Data.Text.Internal.Text ->
  -- | 'treasury'receivedDebitId'
  Data.Text.Internal.Text ->
  -- | 'treasury'receivedDebitLinkedFlows'
  TreasuryReceivedDebitsResourceLinkedFlows ->
  -- | 'treasury'receivedDebitLivemode'
  GHC.Types.Bool ->
  -- | 'treasury'receivedDebitNetwork'
  Treasury'receivedDebitNetwork' ->
  -- | 'treasury'receivedDebitStatus'
  Treasury'receivedDebitStatus' ->
  Treasury'receivedDebit
mkTreasury'receivedDebit treasury'receivedDebitAmount treasury'receivedDebitCreated treasury'receivedDebitCurrency treasury'receivedDebitDescription treasury'receivedDebitId treasury'receivedDebitLinkedFlows treasury'receivedDebitLivemode treasury'receivedDebitNetwork treasury'receivedDebitStatus =
  Treasury'receivedDebit
    { treasury'receivedDebitAmount = treasury'receivedDebitAmount,
      treasury'receivedDebitCreated = treasury'receivedDebitCreated,
      treasury'receivedDebitCurrency = treasury'receivedDebitCurrency,
      treasury'receivedDebitDescription = treasury'receivedDebitDescription,
      treasury'receivedDebitFailureCode = GHC.Maybe.Nothing,
      treasury'receivedDebitFinancialAccount = GHC.Maybe.Nothing,
      treasury'receivedDebitHostedRegulatoryReceiptUrl = GHC.Maybe.Nothing,
      treasury'receivedDebitId = treasury'receivedDebitId,
      treasury'receivedDebitInitiatingPaymentMethodDetails = GHC.Maybe.Nothing,
      treasury'receivedDebitLinkedFlows = treasury'receivedDebitLinkedFlows,
      treasury'receivedDebitLivemode = treasury'receivedDebitLivemode,
      treasury'receivedDebitNetwork = treasury'receivedDebitNetwork,
      treasury'receivedDebitReversalDetails = GHC.Maybe.Nothing,
      treasury'receivedDebitStatus = treasury'receivedDebitStatus,
      treasury'receivedDebitTransaction = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.treasury.received_debit.properties.failure_code@ in the specification.
--
-- Reason for the failure. A ReceivedDebit might fail because the FinancialAccount doesn\'t have sufficient funds, is closed, or is frozen.
data Treasury'receivedDebitFailureCode'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    Treasury'receivedDebitFailureCode'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    Treasury'receivedDebitFailureCode'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"account_closed"@
    Treasury'receivedDebitFailureCode'NonNullableEnumAccountClosed
  | -- | Represents the JSON value @"account_frozen"@
    Treasury'receivedDebitFailureCode'NonNullableEnumAccountFrozen
  | -- | Represents the JSON value @"insufficient_funds"@
    Treasury'receivedDebitFailureCode'NonNullableEnumInsufficientFunds
  | -- | Represents the JSON value @"other"@
    Treasury'receivedDebitFailureCode'NonNullableEnumOther
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON Treasury'receivedDebitFailureCode'NonNullable where
  toJSON (Treasury'receivedDebitFailureCode'NonNullableOther val) = val
  toJSON (Treasury'receivedDebitFailureCode'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (Treasury'receivedDebitFailureCode'NonNullableEnumAccountClosed) = "account_closed"
  toJSON (Treasury'receivedDebitFailureCode'NonNullableEnumAccountFrozen) = "account_frozen"
  toJSON (Treasury'receivedDebitFailureCode'NonNullableEnumInsufficientFunds) = "insufficient_funds"
  toJSON (Treasury'receivedDebitFailureCode'NonNullableEnumOther) = "other"

instance Data.Aeson.Types.FromJSON.FromJSON Treasury'receivedDebitFailureCode'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "account_closed" -> Treasury'receivedDebitFailureCode'NonNullableEnumAccountClosed
            | val GHC.Classes.== "account_frozen" -> Treasury'receivedDebitFailureCode'NonNullableEnumAccountFrozen
            | val GHC.Classes.== "insufficient_funds" -> Treasury'receivedDebitFailureCode'NonNullableEnumInsufficientFunds
            | val GHC.Classes.== "other" -> Treasury'receivedDebitFailureCode'NonNullableEnumOther
            | GHC.Base.otherwise -> Treasury'receivedDebitFailureCode'NonNullableOther val
      )

-- | Defines the enum schema located at @components.schemas.treasury.received_debit.properties.network@ in the specification.
--
-- The network used for the ReceivedDebit.
data Treasury'receivedDebitNetwork'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    Treasury'receivedDebitNetwork'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    Treasury'receivedDebitNetwork'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"ach"@
    Treasury'receivedDebitNetwork'EnumAch
  | -- | Represents the JSON value @"card"@
    Treasury'receivedDebitNetwork'EnumCard
  | -- | Represents the JSON value @"stripe"@
    Treasury'receivedDebitNetwork'EnumStripe
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON Treasury'receivedDebitNetwork' where
  toJSON (Treasury'receivedDebitNetwork'Other val) = val
  toJSON (Treasury'receivedDebitNetwork'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (Treasury'receivedDebitNetwork'EnumAch) = "ach"
  toJSON (Treasury'receivedDebitNetwork'EnumCard) = "card"
  toJSON (Treasury'receivedDebitNetwork'EnumStripe) = "stripe"

instance Data.Aeson.Types.FromJSON.FromJSON Treasury'receivedDebitNetwork' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "ach" -> Treasury'receivedDebitNetwork'EnumAch
            | val GHC.Classes.== "card" -> Treasury'receivedDebitNetwork'EnumCard
            | val GHC.Classes.== "stripe" -> Treasury'receivedDebitNetwork'EnumStripe
            | GHC.Base.otherwise -> Treasury'receivedDebitNetwork'Other val
      )

-- | Defines the object schema located at @components.schemas.treasury.received_debit.properties.reversal_details.anyOf@ in the specification.
--
-- Details describing when a ReceivedDebit might be reversed.
data Treasury'receivedDebitReversalDetails'NonNullable = Treasury'receivedDebitReversalDetails'NonNullable
  { -- | deadline: Time before which a ReceivedDebit can be reversed.
    treasury'receivedDebitReversalDetails'NonNullableDeadline :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | restricted_reason: Set if a ReceivedDebit can\'t be reversed.
    treasury'receivedDebitReversalDetails'NonNullableRestrictedReason :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Treasury'receivedDebitReversalDetails'NonNullableRestrictedReason'NonNullable))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Treasury'receivedDebitReversalDetails'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("deadline" Data.Aeson.Types.ToJSON..=)) (treasury'receivedDebitReversalDetails'NonNullableDeadline obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("restricted_reason" Data.Aeson.Types.ToJSON..=)) (treasury'receivedDebitReversalDetails'NonNullableRestrictedReason obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("deadline" Data.Aeson.Types.ToJSON..=)) (treasury'receivedDebitReversalDetails'NonNullableDeadline obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("restricted_reason" Data.Aeson.Types.ToJSON..=)) (treasury'receivedDebitReversalDetails'NonNullableRestrictedReason obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON Treasury'receivedDebitReversalDetails'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Treasury'receivedDebitReversalDetails'NonNullable" (\obj -> (GHC.Base.pure Treasury'receivedDebitReversalDetails'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "deadline")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "restricted_reason"))

-- | Create a new 'Treasury'receivedDebitReversalDetails'NonNullable' with all required fields.
mkTreasury'receivedDebitReversalDetails'NonNullable :: Treasury'receivedDebitReversalDetails'NonNullable
mkTreasury'receivedDebitReversalDetails'NonNullable =
  Treasury'receivedDebitReversalDetails'NonNullable
    { treasury'receivedDebitReversalDetails'NonNullableDeadline = GHC.Maybe.Nothing,
      treasury'receivedDebitReversalDetails'NonNullableRestrictedReason = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.treasury.received_debit.properties.reversal_details.anyOf.properties.restricted_reason@ in the specification.
--
-- Set if a ReceivedDebit can\'t be reversed.
data Treasury'receivedDebitReversalDetails'NonNullableRestrictedReason'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    Treasury'receivedDebitReversalDetails'NonNullableRestrictedReason'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    Treasury'receivedDebitReversalDetails'NonNullableRestrictedReason'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"already_reversed"@
    Treasury'receivedDebitReversalDetails'NonNullableRestrictedReason'NonNullableEnumAlreadyReversed
  | -- | Represents the JSON value @"deadline_passed"@
    Treasury'receivedDebitReversalDetails'NonNullableRestrictedReason'NonNullableEnumDeadlinePassed
  | -- | Represents the JSON value @"network_restricted"@
    Treasury'receivedDebitReversalDetails'NonNullableRestrictedReason'NonNullableEnumNetworkRestricted
  | -- | Represents the JSON value @"other"@
    Treasury'receivedDebitReversalDetails'NonNullableRestrictedReason'NonNullableEnumOther
  | -- | Represents the JSON value @"source_flow_restricted"@
    Treasury'receivedDebitReversalDetails'NonNullableRestrictedReason'NonNullableEnumSourceFlowRestricted
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON Treasury'receivedDebitReversalDetails'NonNullableRestrictedReason'NonNullable where
  toJSON (Treasury'receivedDebitReversalDetails'NonNullableRestrictedReason'NonNullableOther val) = val
  toJSON (Treasury'receivedDebitReversalDetails'NonNullableRestrictedReason'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (Treasury'receivedDebitReversalDetails'NonNullableRestrictedReason'NonNullableEnumAlreadyReversed) = "already_reversed"
  toJSON (Treasury'receivedDebitReversalDetails'NonNullableRestrictedReason'NonNullableEnumDeadlinePassed) = "deadline_passed"
  toJSON (Treasury'receivedDebitReversalDetails'NonNullableRestrictedReason'NonNullableEnumNetworkRestricted) = "network_restricted"
  toJSON (Treasury'receivedDebitReversalDetails'NonNullableRestrictedReason'NonNullableEnumOther) = "other"
  toJSON (Treasury'receivedDebitReversalDetails'NonNullableRestrictedReason'NonNullableEnumSourceFlowRestricted) = "source_flow_restricted"

instance Data.Aeson.Types.FromJSON.FromJSON Treasury'receivedDebitReversalDetails'NonNullableRestrictedReason'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "already_reversed" -> Treasury'receivedDebitReversalDetails'NonNullableRestrictedReason'NonNullableEnumAlreadyReversed
            | val GHC.Classes.== "deadline_passed" -> Treasury'receivedDebitReversalDetails'NonNullableRestrictedReason'NonNullableEnumDeadlinePassed
            | val GHC.Classes.== "network_restricted" -> Treasury'receivedDebitReversalDetails'NonNullableRestrictedReason'NonNullableEnumNetworkRestricted
            | val GHC.Classes.== "other" -> Treasury'receivedDebitReversalDetails'NonNullableRestrictedReason'NonNullableEnumOther
            | val GHC.Classes.== "source_flow_restricted" -> Treasury'receivedDebitReversalDetails'NonNullableRestrictedReason'NonNullableEnumSourceFlowRestricted
            | GHC.Base.otherwise -> Treasury'receivedDebitReversalDetails'NonNullableRestrictedReason'NonNullableOther val
      )

-- | Defines the enum schema located at @components.schemas.treasury.received_debit.properties.status@ in the specification.
--
-- Status of the ReceivedDebit. ReceivedDebits are created with a status of either \`succeeded\` (approved) or \`failed\` (declined). The failure reason can be found under the \`failure_code\`.
data Treasury'receivedDebitStatus'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    Treasury'receivedDebitStatus'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    Treasury'receivedDebitStatus'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"failed"@
    Treasury'receivedDebitStatus'EnumFailed
  | -- | Represents the JSON value @"succeeded"@
    Treasury'receivedDebitStatus'EnumSucceeded
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON Treasury'receivedDebitStatus' where
  toJSON (Treasury'receivedDebitStatus'Other val) = val
  toJSON (Treasury'receivedDebitStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (Treasury'receivedDebitStatus'EnumFailed) = "failed"
  toJSON (Treasury'receivedDebitStatus'EnumSucceeded) = "succeeded"

instance Data.Aeson.Types.FromJSON.FromJSON Treasury'receivedDebitStatus' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "failed" -> Treasury'receivedDebitStatus'EnumFailed
            | val GHC.Classes.== "succeeded" -> Treasury'receivedDebitStatus'EnumSucceeded
            | GHC.Base.otherwise -> Treasury'receivedDebitStatus'Other val
      )

-- | Defines the oneOf schema located at @components.schemas.treasury.received_debit.properties.transaction.anyOf@ in the specification.
--
-- The Transaction associated with this object.
data Treasury'receivedDebitTransaction'NonNullableVariants
  = Treasury'receivedDebitTransaction'NonNullableText Data.Text.Internal.Text
  | Treasury'receivedDebitTransaction'NonNullableTreasury'transaction Treasury'transaction
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON Treasury'receivedDebitTransaction'NonNullableVariants where
  toJSON (Treasury'receivedDebitTransaction'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (Treasury'receivedDebitTransaction'NonNullableTreasury'transaction a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON Treasury'receivedDebitTransaction'NonNullableVariants where
  parseJSON val = case (Treasury'receivedDebitTransaction'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((Treasury'receivedDebitTransaction'NonNullableTreasury'transaction Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
