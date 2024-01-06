{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Treasury_DebitReversal
module StripeAPI.Types.Treasury_DebitReversal where

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
import {-# SOURCE #-} StripeAPI.Types.TreasuryReceivedDebitsResourceDebitReversalLinkedFlows
import {-# SOURCE #-} StripeAPI.Types.TreasuryReceivedDebitsResourceStatusTransitions
import {-# SOURCE #-} StripeAPI.Types.Treasury_Transaction
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.treasury.debit_reversal@ in the specification.
--
-- You can reverse some [ReceivedDebits](https:\/\/stripe.com\/docs\/api\#received_debits) depending on their network and source flow. Reversing a ReceivedDebit leads to the creation of a new object known as a DebitReversal.
data Treasury'debitReversal = Treasury'debitReversal
  { -- | amount: Amount (in cents) transferred.
    treasury'debitReversalAmount :: GHC.Types.Int,
    -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
    treasury'debitReversalCreated :: GHC.Types.Int,
    -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
    treasury'debitReversalCurrency :: Data.Text.Internal.Text,
    -- | financial_account: The FinancialAccount to reverse funds from.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    treasury'debitReversalFinancialAccount :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | hosted_regulatory_receipt_url: A [hosted transaction receipt](https:\/\/stripe.com\/docs\/treasury\/moving-money\/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe\'s money transmission licenses.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    treasury'debitReversalHostedRegulatoryReceiptUrl :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    treasury'debitReversalId :: Data.Text.Internal.Text,
    -- | linked_flows: Other flows linked to a DebitReversal.
    treasury'debitReversalLinkedFlows :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Treasury'debitReversalLinkedFlows'NonNullable)),
    -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
    treasury'debitReversalLivemode :: GHC.Types.Bool,
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    treasury'debitReversalMetadata :: Data.Aeson.Types.Internal.Object,
    -- | network: The rails used to reverse the funds.
    treasury'debitReversalNetwork :: Treasury'debitReversalNetwork',
    -- | received_debit: The ReceivedDebit being reversed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    treasury'debitReversalReceivedDebit :: Data.Text.Internal.Text,
    -- | status: Status of the DebitReversal
    treasury'debitReversalStatus :: Treasury'debitReversalStatus',
    -- | status_transitions:
    treasury'debitReversalStatusTransitions :: TreasuryReceivedDebitsResourceStatusTransitions,
    -- | transaction: The Transaction associated with this object.
    treasury'debitReversalTransaction :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Treasury'debitReversalTransaction'NonNullableVariants))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Treasury'debitReversal where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= treasury'debitReversalAmount obj] : ["created" Data.Aeson.Types.ToJSON..= treasury'debitReversalCreated obj] : ["currency" Data.Aeson.Types.ToJSON..= treasury'debitReversalCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("financial_account" Data.Aeson.Types.ToJSON..=)) (treasury'debitReversalFinancialAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("hosted_regulatory_receipt_url" Data.Aeson.Types.ToJSON..=)) (treasury'debitReversalHostedRegulatoryReceiptUrl obj) : ["id" Data.Aeson.Types.ToJSON..= treasury'debitReversalId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("linked_flows" Data.Aeson.Types.ToJSON..=)) (treasury'debitReversalLinkedFlows obj) : ["livemode" Data.Aeson.Types.ToJSON..= treasury'debitReversalLivemode obj] : ["metadata" Data.Aeson.Types.ToJSON..= treasury'debitReversalMetadata obj] : ["network" Data.Aeson.Types.ToJSON..= treasury'debitReversalNetwork obj] : ["received_debit" Data.Aeson.Types.ToJSON..= treasury'debitReversalReceivedDebit obj] : ["status" Data.Aeson.Types.ToJSON..= treasury'debitReversalStatus obj] : ["status_transitions" Data.Aeson.Types.ToJSON..= treasury'debitReversalStatusTransitions obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transaction" Data.Aeson.Types.ToJSON..=)) (treasury'debitReversalTransaction obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "treasury.debit_reversal"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= treasury'debitReversalAmount obj] : ["created" Data.Aeson.Types.ToJSON..= treasury'debitReversalCreated obj] : ["currency" Data.Aeson.Types.ToJSON..= treasury'debitReversalCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("financial_account" Data.Aeson.Types.ToJSON..=)) (treasury'debitReversalFinancialAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("hosted_regulatory_receipt_url" Data.Aeson.Types.ToJSON..=)) (treasury'debitReversalHostedRegulatoryReceiptUrl obj) : ["id" Data.Aeson.Types.ToJSON..= treasury'debitReversalId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("linked_flows" Data.Aeson.Types.ToJSON..=)) (treasury'debitReversalLinkedFlows obj) : ["livemode" Data.Aeson.Types.ToJSON..= treasury'debitReversalLivemode obj] : ["metadata" Data.Aeson.Types.ToJSON..= treasury'debitReversalMetadata obj] : ["network" Data.Aeson.Types.ToJSON..= treasury'debitReversalNetwork obj] : ["received_debit" Data.Aeson.Types.ToJSON..= treasury'debitReversalReceivedDebit obj] : ["status" Data.Aeson.Types.ToJSON..= treasury'debitReversalStatus obj] : ["status_transitions" Data.Aeson.Types.ToJSON..= treasury'debitReversalStatusTransitions obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transaction" Data.Aeson.Types.ToJSON..=)) (treasury'debitReversalTransaction obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "treasury.debit_reversal"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON Treasury'debitReversal where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Treasury'debitReversal" (\obj -> (((((((((((((GHC.Base.pure Treasury'debitReversal GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "financial_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "hosted_regulatory_receipt_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "linked_flows")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "network")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "received_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_transitions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "transaction"))

-- | Create a new 'Treasury'debitReversal' with all required fields.
mkTreasury'debitReversal ::
  -- | 'treasury'debitReversalAmount'
  GHC.Types.Int ->
  -- | 'treasury'debitReversalCreated'
  GHC.Types.Int ->
  -- | 'treasury'debitReversalCurrency'
  Data.Text.Internal.Text ->
  -- | 'treasury'debitReversalId'
  Data.Text.Internal.Text ->
  -- | 'treasury'debitReversalLivemode'
  GHC.Types.Bool ->
  -- | 'treasury'debitReversalMetadata'
  Data.Aeson.Types.Internal.Object ->
  -- | 'treasury'debitReversalNetwork'
  Treasury'debitReversalNetwork' ->
  -- | 'treasury'debitReversalReceivedDebit'
  Data.Text.Internal.Text ->
  -- | 'treasury'debitReversalStatus'
  Treasury'debitReversalStatus' ->
  -- | 'treasury'debitReversalStatusTransitions'
  TreasuryReceivedDebitsResourceStatusTransitions ->
  Treasury'debitReversal
mkTreasury'debitReversal treasury'debitReversalAmount treasury'debitReversalCreated treasury'debitReversalCurrency treasury'debitReversalId treasury'debitReversalLivemode treasury'debitReversalMetadata treasury'debitReversalNetwork treasury'debitReversalReceivedDebit treasury'debitReversalStatus treasury'debitReversalStatusTransitions =
  Treasury'debitReversal
    { treasury'debitReversalAmount = treasury'debitReversalAmount,
      treasury'debitReversalCreated = treasury'debitReversalCreated,
      treasury'debitReversalCurrency = treasury'debitReversalCurrency,
      treasury'debitReversalFinancialAccount = GHC.Maybe.Nothing,
      treasury'debitReversalHostedRegulatoryReceiptUrl = GHC.Maybe.Nothing,
      treasury'debitReversalId = treasury'debitReversalId,
      treasury'debitReversalLinkedFlows = GHC.Maybe.Nothing,
      treasury'debitReversalLivemode = treasury'debitReversalLivemode,
      treasury'debitReversalMetadata = treasury'debitReversalMetadata,
      treasury'debitReversalNetwork = treasury'debitReversalNetwork,
      treasury'debitReversalReceivedDebit = treasury'debitReversalReceivedDebit,
      treasury'debitReversalStatus = treasury'debitReversalStatus,
      treasury'debitReversalStatusTransitions = treasury'debitReversalStatusTransitions,
      treasury'debitReversalTransaction = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.treasury.debit_reversal.properties.linked_flows.anyOf@ in the specification.
--
-- Other flows linked to a DebitReversal.
data Treasury'debitReversalLinkedFlows'NonNullable = Treasury'debitReversalLinkedFlows'NonNullable
  { -- | issuing_dispute: Set if there is an Issuing dispute associated with the DebitReversal.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    treasury'debitReversalLinkedFlows'NonNullableIssuingDispute :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Treasury'debitReversalLinkedFlows'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("issuing_dispute" Data.Aeson.Types.ToJSON..=)) (treasury'debitReversalLinkedFlows'NonNullableIssuingDispute obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("issuing_dispute" Data.Aeson.Types.ToJSON..=)) (treasury'debitReversalLinkedFlows'NonNullableIssuingDispute obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON Treasury'debitReversalLinkedFlows'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Treasury'debitReversalLinkedFlows'NonNullable" (\obj -> GHC.Base.pure Treasury'debitReversalLinkedFlows'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "issuing_dispute"))

-- | Create a new 'Treasury'debitReversalLinkedFlows'NonNullable' with all required fields.
mkTreasury'debitReversalLinkedFlows'NonNullable :: Treasury'debitReversalLinkedFlows'NonNullable
mkTreasury'debitReversalLinkedFlows'NonNullable = Treasury'debitReversalLinkedFlows'NonNullable {treasury'debitReversalLinkedFlows'NonNullableIssuingDispute = GHC.Maybe.Nothing}

-- | Defines the enum schema located at @components.schemas.treasury.debit_reversal.properties.network@ in the specification.
--
-- The rails used to reverse the funds.
data Treasury'debitReversalNetwork'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    Treasury'debitReversalNetwork'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    Treasury'debitReversalNetwork'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"ach"@
    Treasury'debitReversalNetwork'EnumAch
  | -- | Represents the JSON value @"card"@
    Treasury'debitReversalNetwork'EnumCard
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON Treasury'debitReversalNetwork' where
  toJSON (Treasury'debitReversalNetwork'Other val) = val
  toJSON (Treasury'debitReversalNetwork'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (Treasury'debitReversalNetwork'EnumAch) = "ach"
  toJSON (Treasury'debitReversalNetwork'EnumCard) = "card"

instance Data.Aeson.Types.FromJSON.FromJSON Treasury'debitReversalNetwork' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "ach" -> Treasury'debitReversalNetwork'EnumAch
            | val GHC.Classes.== "card" -> Treasury'debitReversalNetwork'EnumCard
            | GHC.Base.otherwise -> Treasury'debitReversalNetwork'Other val
      )

-- | Defines the enum schema located at @components.schemas.treasury.debit_reversal.properties.status@ in the specification.
--
-- Status of the DebitReversal
data Treasury'debitReversalStatus'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    Treasury'debitReversalStatus'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    Treasury'debitReversalStatus'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"failed"@
    Treasury'debitReversalStatus'EnumFailed
  | -- | Represents the JSON value @"processing"@
    Treasury'debitReversalStatus'EnumProcessing
  | -- | Represents the JSON value @"succeeded"@
    Treasury'debitReversalStatus'EnumSucceeded
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON Treasury'debitReversalStatus' where
  toJSON (Treasury'debitReversalStatus'Other val) = val
  toJSON (Treasury'debitReversalStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (Treasury'debitReversalStatus'EnumFailed) = "failed"
  toJSON (Treasury'debitReversalStatus'EnumProcessing) = "processing"
  toJSON (Treasury'debitReversalStatus'EnumSucceeded) = "succeeded"

instance Data.Aeson.Types.FromJSON.FromJSON Treasury'debitReversalStatus' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "failed" -> Treasury'debitReversalStatus'EnumFailed
            | val GHC.Classes.== "processing" -> Treasury'debitReversalStatus'EnumProcessing
            | val GHC.Classes.== "succeeded" -> Treasury'debitReversalStatus'EnumSucceeded
            | GHC.Base.otherwise -> Treasury'debitReversalStatus'Other val
      )

-- | Defines the oneOf schema located at @components.schemas.treasury.debit_reversal.properties.transaction.anyOf@ in the specification.
--
-- The Transaction associated with this object.
data Treasury'debitReversalTransaction'NonNullableVariants
  = Treasury'debitReversalTransaction'NonNullableText Data.Text.Internal.Text
  | Treasury'debitReversalTransaction'NonNullableTreasury'transaction Treasury'transaction
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON Treasury'debitReversalTransaction'NonNullableVariants where
  toJSON (Treasury'debitReversalTransaction'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (Treasury'debitReversalTransaction'NonNullableTreasury'transaction a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON Treasury'debitReversalTransaction'NonNullableVariants where
  parseJSON val = case (Treasury'debitReversalTransaction'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((Treasury'debitReversalTransaction'NonNullableTreasury'transaction Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
