{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema CustomerBalanceTransaction
module StripeAPI.Types.CustomerBalanceTransaction where

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
import {-# SOURCE #-} StripeAPI.Types.CreditNote
import {-# SOURCE #-} StripeAPI.Types.Customer
import {-# SOURCE #-} StripeAPI.Types.Invoice
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.customer_balance_transaction@ in the specification.
--
-- Each customer has a [Balance](https:\/\/stripe.com\/docs\/api\/customers\/object\#customer_object-balance) value,
-- which denotes a debit or credit that\'s automatically applied to their next invoice upon finalization.
-- You may modify the value directly by using the [update customer API](https:\/\/stripe.com\/docs\/api\/customers\/update),
-- or by creating a Customer Balance Transaction, which increments or decrements the customer\'s \`balance\` by the specified \`amount\`.
--
-- Related guide: [Customer balance](https:\/\/stripe.com\/docs\/billing\/customer\/balance)
data CustomerBalanceTransaction = CustomerBalanceTransaction
  { -- | amount: The amount of the transaction. A negative value is a credit for the customer\'s balance, and a positive value is a debit to the customer\'s \`balance\`.
    customerBalanceTransactionAmount :: GHC.Types.Int,
    -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
    customerBalanceTransactionCreated :: GHC.Types.Int,
    -- | credit_note: The ID of the credit note (if any) related to the transaction.
    customerBalanceTransactionCreditNote :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable CustomerBalanceTransactionCreditNote'NonNullableVariants)),
    -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
    customerBalanceTransactionCurrency :: Data.Text.Internal.Text,
    -- | customer: The ID of the customer the transaction belongs to.
    customerBalanceTransactionCustomer :: CustomerBalanceTransactionCustomer'Variants,
    -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    customerBalanceTransactionDescription :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | ending_balance: The customer\'s \`balance\` after the transaction was applied. A negative value decreases the amount due on the customer\'s next invoice. A positive value increases the amount due on the customer\'s next invoice.
    customerBalanceTransactionEndingBalance :: GHC.Types.Int,
    -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    customerBalanceTransactionId :: Data.Text.Internal.Text,
    -- | invoice: The ID of the invoice (if any) related to the transaction.
    customerBalanceTransactionInvoice :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable CustomerBalanceTransactionInvoice'NonNullableVariants)),
    -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
    customerBalanceTransactionLivemode :: GHC.Types.Bool,
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    customerBalanceTransactionMetadata :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Aeson.Types.Internal.Object)),
    -- | type: Transaction type: \`adjustment\`, \`applied_to_invoice\`, \`credit_note\`, \`initial\`, \`invoice_overpaid\`, \`invoice_too_large\`, \`invoice_too_small\`, \`unspent_receiver_credit\`, or \`unapplied_from_invoice\`. See the [Customer Balance page](https:\/\/stripe.com\/docs\/billing\/customer\/balance\#types) to learn more about transaction types.
    customerBalanceTransactionType :: CustomerBalanceTransactionType'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON CustomerBalanceTransaction where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= customerBalanceTransactionAmount obj] : ["created" Data.Aeson.Types.ToJSON..= customerBalanceTransactionCreated obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("credit_note" Data.Aeson.Types.ToJSON..=)) (customerBalanceTransactionCreditNote obj) : ["currency" Data.Aeson.Types.ToJSON..= customerBalanceTransactionCurrency obj] : ["customer" Data.Aeson.Types.ToJSON..= customerBalanceTransactionCustomer obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (customerBalanceTransactionDescription obj) : ["ending_balance" Data.Aeson.Types.ToJSON..= customerBalanceTransactionEndingBalance obj] : ["id" Data.Aeson.Types.ToJSON..= customerBalanceTransactionId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("invoice" Data.Aeson.Types.ToJSON..=)) (customerBalanceTransactionInvoice obj) : ["livemode" Data.Aeson.Types.ToJSON..= customerBalanceTransactionLivemode obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (customerBalanceTransactionMetadata obj) : ["type" Data.Aeson.Types.ToJSON..= customerBalanceTransactionType obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "customer_balance_transaction"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= customerBalanceTransactionAmount obj] : ["created" Data.Aeson.Types.ToJSON..= customerBalanceTransactionCreated obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("credit_note" Data.Aeson.Types.ToJSON..=)) (customerBalanceTransactionCreditNote obj) : ["currency" Data.Aeson.Types.ToJSON..= customerBalanceTransactionCurrency obj] : ["customer" Data.Aeson.Types.ToJSON..= customerBalanceTransactionCustomer obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (customerBalanceTransactionDescription obj) : ["ending_balance" Data.Aeson.Types.ToJSON..= customerBalanceTransactionEndingBalance obj] : ["id" Data.Aeson.Types.ToJSON..= customerBalanceTransactionId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("invoice" Data.Aeson.Types.ToJSON..=)) (customerBalanceTransactionInvoice obj) : ["livemode" Data.Aeson.Types.ToJSON..= customerBalanceTransactionLivemode obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (customerBalanceTransactionMetadata obj) : ["type" Data.Aeson.Types.ToJSON..= customerBalanceTransactionType obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "customer_balance_transaction"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON CustomerBalanceTransaction where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "CustomerBalanceTransaction" (\obj -> (((((((((((GHC.Base.pure CustomerBalanceTransaction GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "credit_note")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ending_balance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "invoice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))

-- | Create a new 'CustomerBalanceTransaction' with all required fields.
mkCustomerBalanceTransaction ::
  -- | 'customerBalanceTransactionAmount'
  GHC.Types.Int ->
  -- | 'customerBalanceTransactionCreated'
  GHC.Types.Int ->
  -- | 'customerBalanceTransactionCurrency'
  Data.Text.Internal.Text ->
  -- | 'customerBalanceTransactionCustomer'
  CustomerBalanceTransactionCustomer'Variants ->
  -- | 'customerBalanceTransactionEndingBalance'
  GHC.Types.Int ->
  -- | 'customerBalanceTransactionId'
  Data.Text.Internal.Text ->
  -- | 'customerBalanceTransactionLivemode'
  GHC.Types.Bool ->
  -- | 'customerBalanceTransactionType'
  CustomerBalanceTransactionType' ->
  CustomerBalanceTransaction
mkCustomerBalanceTransaction customerBalanceTransactionAmount customerBalanceTransactionCreated customerBalanceTransactionCurrency customerBalanceTransactionCustomer customerBalanceTransactionEndingBalance customerBalanceTransactionId customerBalanceTransactionLivemode customerBalanceTransactionType =
  CustomerBalanceTransaction
    { customerBalanceTransactionAmount = customerBalanceTransactionAmount,
      customerBalanceTransactionCreated = customerBalanceTransactionCreated,
      customerBalanceTransactionCreditNote = GHC.Maybe.Nothing,
      customerBalanceTransactionCurrency = customerBalanceTransactionCurrency,
      customerBalanceTransactionCustomer = customerBalanceTransactionCustomer,
      customerBalanceTransactionDescription = GHC.Maybe.Nothing,
      customerBalanceTransactionEndingBalance = customerBalanceTransactionEndingBalance,
      customerBalanceTransactionId = customerBalanceTransactionId,
      customerBalanceTransactionInvoice = GHC.Maybe.Nothing,
      customerBalanceTransactionLivemode = customerBalanceTransactionLivemode,
      customerBalanceTransactionMetadata = GHC.Maybe.Nothing,
      customerBalanceTransactionType = customerBalanceTransactionType
    }

-- | Defines the oneOf schema located at @components.schemas.customer_balance_transaction.properties.credit_note.anyOf@ in the specification.
--
-- The ID of the credit note (if any) related to the transaction.
data CustomerBalanceTransactionCreditNote'NonNullableVariants
  = CustomerBalanceTransactionCreditNote'NonNullableText Data.Text.Internal.Text
  | CustomerBalanceTransactionCreditNote'NonNullableCreditNote CreditNote
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON CustomerBalanceTransactionCreditNote'NonNullableVariants where
  toJSON (CustomerBalanceTransactionCreditNote'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (CustomerBalanceTransactionCreditNote'NonNullableCreditNote a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON CustomerBalanceTransactionCreditNote'NonNullableVariants where
  parseJSON val = case (CustomerBalanceTransactionCreditNote'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((CustomerBalanceTransactionCreditNote'NonNullableCreditNote Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.customer_balance_transaction.properties.customer.anyOf@ in the specification.
--
-- The ID of the customer the transaction belongs to.
data CustomerBalanceTransactionCustomer'Variants
  = CustomerBalanceTransactionCustomer'Text Data.Text.Internal.Text
  | CustomerBalanceTransactionCustomer'Customer Customer
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON CustomerBalanceTransactionCustomer'Variants where
  toJSON (CustomerBalanceTransactionCustomer'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (CustomerBalanceTransactionCustomer'Customer a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON CustomerBalanceTransactionCustomer'Variants where
  parseJSON val = case (CustomerBalanceTransactionCustomer'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((CustomerBalanceTransactionCustomer'Customer Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.customer_balance_transaction.properties.invoice.anyOf@ in the specification.
--
-- The ID of the invoice (if any) related to the transaction.
data CustomerBalanceTransactionInvoice'NonNullableVariants
  = CustomerBalanceTransactionInvoice'NonNullableText Data.Text.Internal.Text
  | CustomerBalanceTransactionInvoice'NonNullableInvoice Invoice
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON CustomerBalanceTransactionInvoice'NonNullableVariants where
  toJSON (CustomerBalanceTransactionInvoice'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (CustomerBalanceTransactionInvoice'NonNullableInvoice a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON CustomerBalanceTransactionInvoice'NonNullableVariants where
  parseJSON val = case (CustomerBalanceTransactionInvoice'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((CustomerBalanceTransactionInvoice'NonNullableInvoice Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the enum schema located at @components.schemas.customer_balance_transaction.properties.type@ in the specification.
--
-- Transaction type: \`adjustment\`, \`applied_to_invoice\`, \`credit_note\`, \`initial\`, \`invoice_overpaid\`, \`invoice_too_large\`, \`invoice_too_small\`, \`unspent_receiver_credit\`, or \`unapplied_from_invoice\`. See the [Customer Balance page](https:\/\/stripe.com\/docs\/billing\/customer\/balance\#types) to learn more about transaction types.
data CustomerBalanceTransactionType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    CustomerBalanceTransactionType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    CustomerBalanceTransactionType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"adjustment"@
    CustomerBalanceTransactionType'EnumAdjustment
  | -- | Represents the JSON value @"applied_to_invoice"@
    CustomerBalanceTransactionType'EnumAppliedToInvoice
  | -- | Represents the JSON value @"credit_note"@
    CustomerBalanceTransactionType'EnumCreditNote
  | -- | Represents the JSON value @"initial"@
    CustomerBalanceTransactionType'EnumInitial
  | -- | Represents the JSON value @"invoice_overpaid"@
    CustomerBalanceTransactionType'EnumInvoiceOverpaid
  | -- | Represents the JSON value @"invoice_too_large"@
    CustomerBalanceTransactionType'EnumInvoiceTooLarge
  | -- | Represents the JSON value @"invoice_too_small"@
    CustomerBalanceTransactionType'EnumInvoiceTooSmall
  | -- | Represents the JSON value @"migration"@
    CustomerBalanceTransactionType'EnumMigration
  | -- | Represents the JSON value @"unapplied_from_invoice"@
    CustomerBalanceTransactionType'EnumUnappliedFromInvoice
  | -- | Represents the JSON value @"unspent_receiver_credit"@
    CustomerBalanceTransactionType'EnumUnspentReceiverCredit
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON CustomerBalanceTransactionType' where
  toJSON (CustomerBalanceTransactionType'Other val) = val
  toJSON (CustomerBalanceTransactionType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (CustomerBalanceTransactionType'EnumAdjustment) = "adjustment"
  toJSON (CustomerBalanceTransactionType'EnumAppliedToInvoice) = "applied_to_invoice"
  toJSON (CustomerBalanceTransactionType'EnumCreditNote) = "credit_note"
  toJSON (CustomerBalanceTransactionType'EnumInitial) = "initial"
  toJSON (CustomerBalanceTransactionType'EnumInvoiceOverpaid) = "invoice_overpaid"
  toJSON (CustomerBalanceTransactionType'EnumInvoiceTooLarge) = "invoice_too_large"
  toJSON (CustomerBalanceTransactionType'EnumInvoiceTooSmall) = "invoice_too_small"
  toJSON (CustomerBalanceTransactionType'EnumMigration) = "migration"
  toJSON (CustomerBalanceTransactionType'EnumUnappliedFromInvoice) = "unapplied_from_invoice"
  toJSON (CustomerBalanceTransactionType'EnumUnspentReceiverCredit) = "unspent_receiver_credit"

instance Data.Aeson.Types.FromJSON.FromJSON CustomerBalanceTransactionType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "adjustment" -> CustomerBalanceTransactionType'EnumAdjustment
            | val GHC.Classes.== "applied_to_invoice" -> CustomerBalanceTransactionType'EnumAppliedToInvoice
            | val GHC.Classes.== "credit_note" -> CustomerBalanceTransactionType'EnumCreditNote
            | val GHC.Classes.== "initial" -> CustomerBalanceTransactionType'EnumInitial
            | val GHC.Classes.== "invoice_overpaid" -> CustomerBalanceTransactionType'EnumInvoiceOverpaid
            | val GHC.Classes.== "invoice_too_large" -> CustomerBalanceTransactionType'EnumInvoiceTooLarge
            | val GHC.Classes.== "invoice_too_small" -> CustomerBalanceTransactionType'EnumInvoiceTooSmall
            | val GHC.Classes.== "migration" -> CustomerBalanceTransactionType'EnumMigration
            | val GHC.Classes.== "unapplied_from_invoice" -> CustomerBalanceTransactionType'EnumUnappliedFromInvoice
            | val GHC.Classes.== "unspent_receiver_credit" -> CustomerBalanceTransactionType'EnumUnspentReceiverCredit
            | GHC.Base.otherwise -> CustomerBalanceTransactionType'Other val
      )
