{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema BankConnectionsResourceBalance
module StripeAPI.Types.BankConnectionsResourceBalance where

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
import {-# SOURCE #-} StripeAPI.Types.BankConnectionsResourceBalanceApiResourceCashBalance
import {-# SOURCE #-} StripeAPI.Types.BankConnectionsResourceBalanceApiResourceCreditBalance
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.bank_connections_resource_balance@ in the specification.
data BankConnectionsResourceBalance = BankConnectionsResourceBalance
  { -- | as_of: The time that the external institution calculated this balance. Measured in seconds since the Unix epoch.
    bankConnectionsResourceBalanceAsOf :: GHC.Types.Int,
    -- | cash:
    bankConnectionsResourceBalanceCash :: (GHC.Maybe.Maybe BankConnectionsResourceBalanceApiResourceCashBalance),
    -- | credit:
    bankConnectionsResourceBalanceCredit :: (GHC.Maybe.Maybe BankConnectionsResourceBalanceApiResourceCreditBalance),
    -- | current: The balances owed to (or by) the account holder.
    --
    -- Each key is a three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase.
    --
    -- Each value is a integer amount. A positive amount indicates money owed to the account holder. A negative amount indicates money owed by the account holder.
    bankConnectionsResourceBalanceCurrent :: Data.Aeson.Types.Internal.Object,
    -- | type: The \`type\` of the balance. An additional hash is included on the balance with a name matching this value.
    bankConnectionsResourceBalanceType :: BankConnectionsResourceBalanceType'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON BankConnectionsResourceBalance where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["as_of" Data.Aeson.Types.ToJSON..= bankConnectionsResourceBalanceAsOf obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cash" Data.Aeson.Types.ToJSON..=)) (bankConnectionsResourceBalanceCash obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("credit" Data.Aeson.Types.ToJSON..=)) (bankConnectionsResourceBalanceCredit obj) : ["current" Data.Aeson.Types.ToJSON..= bankConnectionsResourceBalanceCurrent obj] : ["type" Data.Aeson.Types.ToJSON..= bankConnectionsResourceBalanceType obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["as_of" Data.Aeson.Types.ToJSON..= bankConnectionsResourceBalanceAsOf obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cash" Data.Aeson.Types.ToJSON..=)) (bankConnectionsResourceBalanceCash obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("credit" Data.Aeson.Types.ToJSON..=)) (bankConnectionsResourceBalanceCredit obj) : ["current" Data.Aeson.Types.ToJSON..= bankConnectionsResourceBalanceCurrent obj] : ["type" Data.Aeson.Types.ToJSON..= bankConnectionsResourceBalanceType obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON BankConnectionsResourceBalance where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "BankConnectionsResourceBalance" (\obj -> ((((GHC.Base.pure BankConnectionsResourceBalance GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "as_of")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cash")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "credit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "current")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))

-- | Create a new 'BankConnectionsResourceBalance' with all required fields.
mkBankConnectionsResourceBalance ::
  -- | 'bankConnectionsResourceBalanceAsOf'
  GHC.Types.Int ->
  -- | 'bankConnectionsResourceBalanceCurrent'
  Data.Aeson.Types.Internal.Object ->
  -- | 'bankConnectionsResourceBalanceType'
  BankConnectionsResourceBalanceType' ->
  BankConnectionsResourceBalance
mkBankConnectionsResourceBalance bankConnectionsResourceBalanceAsOf bankConnectionsResourceBalanceCurrent bankConnectionsResourceBalanceType =
  BankConnectionsResourceBalance
    { bankConnectionsResourceBalanceAsOf = bankConnectionsResourceBalanceAsOf,
      bankConnectionsResourceBalanceCash = GHC.Maybe.Nothing,
      bankConnectionsResourceBalanceCredit = GHC.Maybe.Nothing,
      bankConnectionsResourceBalanceCurrent = bankConnectionsResourceBalanceCurrent,
      bankConnectionsResourceBalanceType = bankConnectionsResourceBalanceType
    }

-- | Defines the enum schema located at @components.schemas.bank_connections_resource_balance.properties.type@ in the specification.
--
-- The \`type\` of the balance. An additional hash is included on the balance with a name matching this value.
data BankConnectionsResourceBalanceType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    BankConnectionsResourceBalanceType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    BankConnectionsResourceBalanceType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"cash"@
    BankConnectionsResourceBalanceType'EnumCash
  | -- | Represents the JSON value @"credit"@
    BankConnectionsResourceBalanceType'EnumCredit
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON BankConnectionsResourceBalanceType' where
  toJSON (BankConnectionsResourceBalanceType'Other val) = val
  toJSON (BankConnectionsResourceBalanceType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (BankConnectionsResourceBalanceType'EnumCash) = "cash"
  toJSON (BankConnectionsResourceBalanceType'EnumCredit) = "credit"

instance Data.Aeson.Types.FromJSON.FromJSON BankConnectionsResourceBalanceType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "cash" -> BankConnectionsResourceBalanceType'EnumCash
            | val GHC.Classes.== "credit" -> BankConnectionsResourceBalanceType'EnumCredit
            | GHC.Base.otherwise -> BankConnectionsResourceBalanceType'Other val
      )
