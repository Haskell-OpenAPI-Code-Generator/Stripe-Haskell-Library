{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions
module StripeAPI.Types.InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions where

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

-- | Defines the object schema located at @components.schemas.invoice_payment_method_options_us_bank_account_linked_account_options@ in the specification.
data InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions = InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions
  { -- | permissions: The list of permissions to request. The \`payment_method\` permission must be included.
    invoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPermissions :: (GHC.Maybe.Maybe ([InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPermissions'])),
    -- | prefetch: Data features requested to be retrieved upon account creation.
    invoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPrefetch :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ([InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPrefetch'NonNullable])))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("permissions" Data.Aeson.Types.ToJSON..=)) (invoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPermissions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("prefetch" Data.Aeson.Types.ToJSON..=)) (invoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPrefetch obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("permissions" Data.Aeson.Types.ToJSON..=)) (invoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPermissions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("prefetch" Data.Aeson.Types.ToJSON..=)) (invoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPrefetch obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions" (\obj -> (GHC.Base.pure InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "permissions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "prefetch"))

-- | Create a new 'InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions' with all required fields.
mkInvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions :: InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions
mkInvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions =
  InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions
    { invoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPermissions = GHC.Maybe.Nothing,
      invoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPrefetch = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.invoice_payment_method_options_us_bank_account_linked_account_options.properties.permissions.items@ in the specification.
data InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPermissions'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPermissions'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPermissions'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"balances"@
    InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPermissions'EnumBalances
  | -- | Represents the JSON value @"payment_method"@
    InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPermissions'EnumPaymentMethod
  | -- | Represents the JSON value @"transactions"@
    InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPermissions'EnumTransactions
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPermissions' where
  toJSON (InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPermissions'Other val) = val
  toJSON (InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPermissions'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPermissions'EnumBalances) = "balances"
  toJSON (InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPermissions'EnumPaymentMethod) = "payment_method"
  toJSON (InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPermissions'EnumTransactions) = "transactions"

instance Data.Aeson.Types.FromJSON.FromJSON InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPermissions' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "balances" -> InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPermissions'EnumBalances
            | val GHC.Classes.== "payment_method" -> InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPermissions'EnumPaymentMethod
            | val GHC.Classes.== "transactions" -> InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPermissions'EnumTransactions
            | GHC.Base.otherwise -> InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPermissions'Other val
      )

-- | Defines the enum schema located at @components.schemas.invoice_payment_method_options_us_bank_account_linked_account_options.properties.prefetch.items@ in the specification.
data InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPrefetch'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPrefetch'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPrefetch'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"balances"@
    InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPrefetch'NonNullableEnumBalances
  | -- | Represents the JSON value @"transactions"@
    InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPrefetch'NonNullableEnumTransactions
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPrefetch'NonNullable where
  toJSON (InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPrefetch'NonNullableOther val) = val
  toJSON (InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPrefetch'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPrefetch'NonNullableEnumBalances) = "balances"
  toJSON (InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPrefetch'NonNullableEnumTransactions) = "transactions"

instance Data.Aeson.Types.FromJSON.FromJSON InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPrefetch'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "balances" -> InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPrefetch'NonNullableEnumBalances
            | val GHC.Classes.== "transactions" -> InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPrefetch'NonNullableEnumTransactions
            | GHC.Base.otherwise -> InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsPrefetch'NonNullableOther val
      )
