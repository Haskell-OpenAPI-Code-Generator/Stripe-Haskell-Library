{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema OutboundPaymentsResourceTreasuryReturnedStatus
module StripeAPI.Types.OutboundPaymentsResourceTreasuryReturnedStatus where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
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
import {-# SOURCE #-} StripeAPI.Types.Treasury_Transaction
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.outbound_payments_resource_treasury_returned_status@ in the specification.
data OutboundPaymentsResourceTreasuryReturnedStatus = OutboundPaymentsResourceTreasuryReturnedStatus
  { -- | code: Reason for the return.
    outboundPaymentsResourceTreasuryReturnedStatusCode :: OutboundPaymentsResourceTreasuryReturnedStatusCode',
    -- | transaction: The Transaction associated with this object.
    outboundPaymentsResourceTreasuryReturnedStatusTransaction :: OutboundPaymentsResourceTreasuryReturnedStatusTransaction'Variants
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON OutboundPaymentsResourceTreasuryReturnedStatus where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["code" Data.Aeson.Types.ToJSON..= outboundPaymentsResourceTreasuryReturnedStatusCode obj] : ["transaction" Data.Aeson.Types.ToJSON..= outboundPaymentsResourceTreasuryReturnedStatusTransaction obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["code" Data.Aeson.Types.ToJSON..= outboundPaymentsResourceTreasuryReturnedStatusCode obj] : ["transaction" Data.Aeson.Types.ToJSON..= outboundPaymentsResourceTreasuryReturnedStatusTransaction obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON OutboundPaymentsResourceTreasuryReturnedStatus where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "OutboundPaymentsResourceTreasuryReturnedStatus" (\obj -> (GHC.Base.pure OutboundPaymentsResourceTreasuryReturnedStatus GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "transaction"))

-- | Create a new 'OutboundPaymentsResourceTreasuryReturnedStatus' with all required fields.
mkOutboundPaymentsResourceTreasuryReturnedStatus ::
  -- | 'outboundPaymentsResourceTreasuryReturnedStatusCode'
  OutboundPaymentsResourceTreasuryReturnedStatusCode' ->
  -- | 'outboundPaymentsResourceTreasuryReturnedStatusTransaction'
  OutboundPaymentsResourceTreasuryReturnedStatusTransaction'Variants ->
  OutboundPaymentsResourceTreasuryReturnedStatus
mkOutboundPaymentsResourceTreasuryReturnedStatus outboundPaymentsResourceTreasuryReturnedStatusCode outboundPaymentsResourceTreasuryReturnedStatusTransaction =
  OutboundPaymentsResourceTreasuryReturnedStatus
    { outboundPaymentsResourceTreasuryReturnedStatusCode = outboundPaymentsResourceTreasuryReturnedStatusCode,
      outboundPaymentsResourceTreasuryReturnedStatusTransaction = outboundPaymentsResourceTreasuryReturnedStatusTransaction
    }

-- | Defines the enum schema located at @components.schemas.outbound_payments_resource_treasury_returned_status.properties.code@ in the specification.
--
-- Reason for the return.
data OutboundPaymentsResourceTreasuryReturnedStatusCode'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    OutboundPaymentsResourceTreasuryReturnedStatusCode'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    OutboundPaymentsResourceTreasuryReturnedStatusCode'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"account_closed"@
    OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumAccountClosed
  | -- | Represents the JSON value @"account_frozen"@
    OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumAccountFrozen
  | -- | Represents the JSON value @"bank_account_restricted"@
    OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumBankAccountRestricted
  | -- | Represents the JSON value @"bank_ownership_changed"@
    OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumBankOwnershipChanged
  | -- | Represents the JSON value @"declined"@
    OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumDeclined
  | -- | Represents the JSON value @"incorrect_account_holder_name"@
    OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumIncorrectAccountHolderName
  | -- | Represents the JSON value @"invalid_account_number"@
    OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumInvalidAccountNumber
  | -- | Represents the JSON value @"invalid_currency"@
    OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumInvalidCurrency
  | -- | Represents the JSON value @"no_account"@
    OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumNoAccount
  | -- | Represents the JSON value @"other"@
    OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumOther
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON OutboundPaymentsResourceTreasuryReturnedStatusCode' where
  toJSON (OutboundPaymentsResourceTreasuryReturnedStatusCode'Other val) = val
  toJSON (OutboundPaymentsResourceTreasuryReturnedStatusCode'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumAccountClosed) = "account_closed"
  toJSON (OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumAccountFrozen) = "account_frozen"
  toJSON (OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumBankAccountRestricted) = "bank_account_restricted"
  toJSON (OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumBankOwnershipChanged) = "bank_ownership_changed"
  toJSON (OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumDeclined) = "declined"
  toJSON (OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumIncorrectAccountHolderName) = "incorrect_account_holder_name"
  toJSON (OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumInvalidAccountNumber) = "invalid_account_number"
  toJSON (OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumInvalidCurrency) = "invalid_currency"
  toJSON (OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumNoAccount) = "no_account"
  toJSON (OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumOther) = "other"

instance Data.Aeson.Types.FromJSON.FromJSON OutboundPaymentsResourceTreasuryReturnedStatusCode' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "account_closed" -> OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumAccountClosed
            | val GHC.Classes.== "account_frozen" -> OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumAccountFrozen
            | val GHC.Classes.== "bank_account_restricted" -> OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumBankAccountRestricted
            | val GHC.Classes.== "bank_ownership_changed" -> OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumBankOwnershipChanged
            | val GHC.Classes.== "declined" -> OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumDeclined
            | val GHC.Classes.== "incorrect_account_holder_name" -> OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumIncorrectAccountHolderName
            | val GHC.Classes.== "invalid_account_number" -> OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumInvalidAccountNumber
            | val GHC.Classes.== "invalid_currency" -> OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumInvalidCurrency
            | val GHC.Classes.== "no_account" -> OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumNoAccount
            | val GHC.Classes.== "other" -> OutboundPaymentsResourceTreasuryReturnedStatusCode'EnumOther
            | GHC.Base.otherwise -> OutboundPaymentsResourceTreasuryReturnedStatusCode'Other val
      )

-- | Defines the oneOf schema located at @components.schemas.outbound_payments_resource_treasury_returned_status.properties.transaction.anyOf@ in the specification.
--
-- The Transaction associated with this object.
data OutboundPaymentsResourceTreasuryReturnedStatusTransaction'Variants
  = OutboundPaymentsResourceTreasuryReturnedStatusTransaction'Text Data.Text.Internal.Text
  | OutboundPaymentsResourceTreasuryReturnedStatusTransaction'Treasury'transaction Treasury'transaction
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON OutboundPaymentsResourceTreasuryReturnedStatusTransaction'Variants where
  toJSON (OutboundPaymentsResourceTreasuryReturnedStatusTransaction'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (OutboundPaymentsResourceTreasuryReturnedStatusTransaction'Treasury'transaction a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON OutboundPaymentsResourceTreasuryReturnedStatusTransaction'Variants where
  parseJSON val = case (OutboundPaymentsResourceTreasuryReturnedStatusTransaction'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((OutboundPaymentsResourceTreasuryReturnedStatusTransaction'Treasury'transaction Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
