{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Payout
module StripeAPI.Types.Payout where

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
import {-# SOURCE #-} StripeAPI.Types.BalanceTransaction
import {-# SOURCE #-} StripeAPI.Types.BankAccount
import {-# SOURCE #-} StripeAPI.Types.Card
import {-# SOURCE #-} StripeAPI.Types.DeletedBankAccount
import {-# SOURCE #-} StripeAPI.Types.DeletedCard
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payout@ in the specification.
--
-- A \`Payout\` object is created when you receive funds from Stripe, or when you
-- initiate a payout to either a bank account or debit card of a [connected
-- Stripe account](\/docs\/connect\/bank-debit-card-payouts). You can retrieve individual payouts,
-- as well as list all payouts. Payouts are made on [varying
-- schedules](\/docs\/connect\/manage-payout-schedule), depending on your country and
-- industry.
--
-- Related guide: [Receiving Payouts](https:\/\/stripe.com\/docs\/payouts).
data Payout = Payout
  { -- | amount: Amount (in %s) to be transferred to your bank account or debit card.
    payoutAmount :: GHC.Types.Int,
    -- | arrival_date: Date the payout is expected to arrive in the bank. This factors in delays like weekends or bank holidays.
    payoutArrivalDate :: GHC.Types.Int,
    -- | automatic: Returns \`true\` if the payout was created by an [automated payout schedule](https:\/\/stripe.com\/docs\/payouts\#payout-schedule), and \`false\` if it was [requested manually](https:\/\/stripe.com\/docs\/payouts\#manual-payouts).
    payoutAutomatic :: GHC.Types.Bool,
    -- | balance_transaction: ID of the balance transaction that describes the impact of this payout on your account balance.
    payoutBalanceTransaction :: (GHC.Maybe.Maybe PayoutBalanceTransaction'Variants),
    -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
    payoutCreated :: GHC.Types.Int,
    -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
    payoutCurrency :: Data.Text.Internal.Text,
    -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    payoutDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | destination: ID of the bank account or card the payout was sent to.
    payoutDestination :: (GHC.Maybe.Maybe PayoutDestination'Variants),
    -- | failure_balance_transaction: If the payout failed or was canceled, this will be the ID of the balance transaction that reversed the initial balance transaction, and puts the funds from the failed payout back in your balance.
    payoutFailureBalanceTransaction :: (GHC.Maybe.Maybe PayoutFailureBalanceTransaction'Variants),
    -- | failure_code: Error code explaining reason for payout failure if available. See [Types of payout failures](https:\/\/stripe.com\/docs\/api\#payout_failures) for a list of failure codes.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    payoutFailureCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | failure_message: Message to user further explaining reason for payout failure if available.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    payoutFailureMessage :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    payoutId :: Data.Text.Internal.Text,
    -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
    payoutLivemode :: GHC.Types.Bool,
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    payoutMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | method: The method used to send this payout, which can be \`standard\` or \`instant\`. \`instant\` is only supported for payouts to debit cards. (See [Instant payouts for marketplaces](https:\/\/stripe.com\/blog\/instant-payouts-for-marketplaces) for more information.)
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    payoutMethod :: Data.Text.Internal.Text,
    -- | original_payout: If the payout reverses another, this is the ID of the original payout.
    payoutOriginalPayout :: (GHC.Maybe.Maybe PayoutOriginalPayout'Variants),
    -- | reversed_by: If the payout was reversed, this is the ID of the payout that reverses this payout.
    payoutReversedBy :: (GHC.Maybe.Maybe PayoutReversedBy'Variants),
    -- | source_type: The source balance this payout came from. One of \`card\`, \`fpx\`, or \`bank_account\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    payoutSourceType :: Data.Text.Internal.Text,
    -- | statement_descriptor: Extra information about a payout to be displayed on the user\'s bank statement.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    payoutStatementDescriptor :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | status: Current status of the payout: \`paid\`, \`pending\`, \`in_transit\`, \`canceled\` or \`failed\`. A payout is \`pending\` until it is submitted to the bank, when it becomes \`in_transit\`. The status then changes to \`paid\` if the transaction goes through, or to \`failed\` or \`canceled\` (within 5 business days). Some failed payouts may initially show as \`paid\` but then change to \`failed\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    payoutStatus :: Data.Text.Internal.Text,
    -- | type: Can be \`bank_account\` or \`card\`.
    payoutType :: PayoutType'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Payout where
  toJSON obj = Data.Aeson.Types.Internal.object ("amount" Data.Aeson.Types.ToJSON..= payoutAmount obj : "arrival_date" Data.Aeson.Types.ToJSON..= payoutArrivalDate obj : "automatic" Data.Aeson.Types.ToJSON..= payoutAutomatic obj : "balance_transaction" Data.Aeson.Types.ToJSON..= payoutBalanceTransaction obj : "created" Data.Aeson.Types.ToJSON..= payoutCreated obj : "currency" Data.Aeson.Types.ToJSON..= payoutCurrency obj : "description" Data.Aeson.Types.ToJSON..= payoutDescription obj : "destination" Data.Aeson.Types.ToJSON..= payoutDestination obj : "failure_balance_transaction" Data.Aeson.Types.ToJSON..= payoutFailureBalanceTransaction obj : "failure_code" Data.Aeson.Types.ToJSON..= payoutFailureCode obj : "failure_message" Data.Aeson.Types.ToJSON..= payoutFailureMessage obj : "id" Data.Aeson.Types.ToJSON..= payoutId obj : "livemode" Data.Aeson.Types.ToJSON..= payoutLivemode obj : "metadata" Data.Aeson.Types.ToJSON..= payoutMetadata obj : "method" Data.Aeson.Types.ToJSON..= payoutMethod obj : "original_payout" Data.Aeson.Types.ToJSON..= payoutOriginalPayout obj : "reversed_by" Data.Aeson.Types.ToJSON..= payoutReversedBy obj : "source_type" Data.Aeson.Types.ToJSON..= payoutSourceType obj : "statement_descriptor" Data.Aeson.Types.ToJSON..= payoutStatementDescriptor obj : "status" Data.Aeson.Types.ToJSON..= payoutStatus obj : "type" Data.Aeson.Types.ToJSON..= payoutType obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "payout" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("amount" Data.Aeson.Types.ToJSON..= payoutAmount obj) GHC.Base.<> (("arrival_date" Data.Aeson.Types.ToJSON..= payoutArrivalDate obj) GHC.Base.<> (("automatic" Data.Aeson.Types.ToJSON..= payoutAutomatic obj) GHC.Base.<> (("balance_transaction" Data.Aeson.Types.ToJSON..= payoutBalanceTransaction obj) GHC.Base.<> (("created" Data.Aeson.Types.ToJSON..= payoutCreated obj) GHC.Base.<> (("currency" Data.Aeson.Types.ToJSON..= payoutCurrency obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= payoutDescription obj) GHC.Base.<> (("destination" Data.Aeson.Types.ToJSON..= payoutDestination obj) GHC.Base.<> (("failure_balance_transaction" Data.Aeson.Types.ToJSON..= payoutFailureBalanceTransaction obj) GHC.Base.<> (("failure_code" Data.Aeson.Types.ToJSON..= payoutFailureCode obj) GHC.Base.<> (("failure_message" Data.Aeson.Types.ToJSON..= payoutFailureMessage obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= payoutId obj) GHC.Base.<> (("livemode" Data.Aeson.Types.ToJSON..= payoutLivemode obj) GHC.Base.<> (("metadata" Data.Aeson.Types.ToJSON..= payoutMetadata obj) GHC.Base.<> (("method" Data.Aeson.Types.ToJSON..= payoutMethod obj) GHC.Base.<> (("original_payout" Data.Aeson.Types.ToJSON..= payoutOriginalPayout obj) GHC.Base.<> (("reversed_by" Data.Aeson.Types.ToJSON..= payoutReversedBy obj) GHC.Base.<> (("source_type" Data.Aeson.Types.ToJSON..= payoutSourceType obj) GHC.Base.<> (("statement_descriptor" Data.Aeson.Types.ToJSON..= payoutStatementDescriptor obj) GHC.Base.<> (("status" Data.Aeson.Types.ToJSON..= payoutStatus obj) GHC.Base.<> (("type" Data.Aeson.Types.ToJSON..= payoutType obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "payout"))))))))))))))))))))))

instance Data.Aeson.Types.FromJSON.FromJSON Payout where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Payout" (\obj -> ((((((((((((((((((((GHC.Base.pure Payout GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "arrival_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "automatic")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "balance_transaction")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "destination")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "failure_balance_transaction")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "failure_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "failure_message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "original_payout")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reversed_by")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "source_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))

-- | Create a new 'Payout' with all required fields.
mkPayout ::
  -- | 'payoutAmount'
  GHC.Types.Int ->
  -- | 'payoutArrivalDate'
  GHC.Types.Int ->
  -- | 'payoutAutomatic'
  GHC.Types.Bool ->
  -- | 'payoutCreated'
  GHC.Types.Int ->
  -- | 'payoutCurrency'
  Data.Text.Internal.Text ->
  -- | 'payoutId'
  Data.Text.Internal.Text ->
  -- | 'payoutLivemode'
  GHC.Types.Bool ->
  -- | 'payoutMethod'
  Data.Text.Internal.Text ->
  -- | 'payoutSourceType'
  Data.Text.Internal.Text ->
  -- | 'payoutStatus'
  Data.Text.Internal.Text ->
  -- | 'payoutType'
  PayoutType' ->
  Payout
mkPayout payoutAmount payoutArrivalDate payoutAutomatic payoutCreated payoutCurrency payoutId payoutLivemode payoutMethod payoutSourceType payoutStatus payoutType =
  Payout
    { payoutAmount = payoutAmount,
      payoutArrivalDate = payoutArrivalDate,
      payoutAutomatic = payoutAutomatic,
      payoutBalanceTransaction = GHC.Maybe.Nothing,
      payoutCreated = payoutCreated,
      payoutCurrency = payoutCurrency,
      payoutDescription = GHC.Maybe.Nothing,
      payoutDestination = GHC.Maybe.Nothing,
      payoutFailureBalanceTransaction = GHC.Maybe.Nothing,
      payoutFailureCode = GHC.Maybe.Nothing,
      payoutFailureMessage = GHC.Maybe.Nothing,
      payoutId = payoutId,
      payoutLivemode = payoutLivemode,
      payoutMetadata = GHC.Maybe.Nothing,
      payoutMethod = payoutMethod,
      payoutOriginalPayout = GHC.Maybe.Nothing,
      payoutReversedBy = GHC.Maybe.Nothing,
      payoutSourceType = payoutSourceType,
      payoutStatementDescriptor = GHC.Maybe.Nothing,
      payoutStatus = payoutStatus,
      payoutType = payoutType
    }

-- | Defines the oneOf schema located at @components.schemas.payout.properties.balance_transaction.anyOf@ in the specification.
--
-- ID of the balance transaction that describes the impact of this payout on your account balance.
data PayoutBalanceTransaction'Variants
  = PayoutBalanceTransaction'Text Data.Text.Internal.Text
  | PayoutBalanceTransaction'BalanceTransaction BalanceTransaction
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PayoutBalanceTransaction'Variants where
  toJSON (PayoutBalanceTransaction'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PayoutBalanceTransaction'BalanceTransaction a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON PayoutBalanceTransaction'Variants where
  parseJSON val = case (PayoutBalanceTransaction'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PayoutBalanceTransaction'BalanceTransaction Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.payout.properties.destination.anyOf@ in the specification.
--
-- ID of the bank account or card the payout was sent to.
data PayoutDestination'Variants
  = PayoutDestination'Text Data.Text.Internal.Text
  | PayoutDestination'BankAccount BankAccount
  | PayoutDestination'Card Card
  | PayoutDestination'DeletedBankAccount DeletedBankAccount
  | PayoutDestination'DeletedCard DeletedCard
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PayoutDestination'Variants where
  toJSON (PayoutDestination'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PayoutDestination'BankAccount a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PayoutDestination'Card a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PayoutDestination'DeletedBankAccount a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PayoutDestination'DeletedCard a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON PayoutDestination'Variants where
  parseJSON val = case (PayoutDestination'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PayoutDestination'BankAccount Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PayoutDestination'Card Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PayoutDestination'DeletedBankAccount Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PayoutDestination'DeletedCard Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched")))) of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.payout.properties.failure_balance_transaction.anyOf@ in the specification.
--
-- If the payout failed or was canceled, this will be the ID of the balance transaction that reversed the initial balance transaction, and puts the funds from the failed payout back in your balance.
data PayoutFailureBalanceTransaction'Variants
  = PayoutFailureBalanceTransaction'Text Data.Text.Internal.Text
  | PayoutFailureBalanceTransaction'BalanceTransaction BalanceTransaction
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PayoutFailureBalanceTransaction'Variants where
  toJSON (PayoutFailureBalanceTransaction'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PayoutFailureBalanceTransaction'BalanceTransaction a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON PayoutFailureBalanceTransaction'Variants where
  parseJSON val = case (PayoutFailureBalanceTransaction'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PayoutFailureBalanceTransaction'BalanceTransaction Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.payout.properties.original_payout.anyOf@ in the specification.
--
-- If the payout reverses another, this is the ID of the original payout.
data PayoutOriginalPayout'Variants
  = PayoutOriginalPayout'Text Data.Text.Internal.Text
  | PayoutOriginalPayout'Payout Payout
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PayoutOriginalPayout'Variants where
  toJSON (PayoutOriginalPayout'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PayoutOriginalPayout'Payout a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON PayoutOriginalPayout'Variants where
  parseJSON val = case (PayoutOriginalPayout'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PayoutOriginalPayout'Payout Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.payout.properties.reversed_by.anyOf@ in the specification.
--
-- If the payout was reversed, this is the ID of the payout that reverses this payout.
data PayoutReversedBy'Variants
  = PayoutReversedBy'Text Data.Text.Internal.Text
  | PayoutReversedBy'Payout Payout
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PayoutReversedBy'Variants where
  toJSON (PayoutReversedBy'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PayoutReversedBy'Payout a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON PayoutReversedBy'Variants where
  parseJSON val = case (PayoutReversedBy'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PayoutReversedBy'Payout Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the enum schema located at @components.schemas.payout.properties.type@ in the specification.
--
-- Can be \`bank_account\` or \`card\`.
data PayoutType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PayoutType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PayoutType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"bank_account"@
    PayoutType'EnumBankAccount
  | -- | Represents the JSON value @"card"@
    PayoutType'EnumCard
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PayoutType' where
  toJSON (PayoutType'Other val) = val
  toJSON (PayoutType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PayoutType'EnumBankAccount) = "bank_account"
  toJSON (PayoutType'EnumCard) = "card"

instance Data.Aeson.Types.FromJSON.FromJSON PayoutType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "bank_account" -> PayoutType'EnumBankAccount
            | val GHC.Classes.== "card" -> PayoutType'EnumCard
            | GHC.Base.otherwise -> PayoutType'Other val
      )
