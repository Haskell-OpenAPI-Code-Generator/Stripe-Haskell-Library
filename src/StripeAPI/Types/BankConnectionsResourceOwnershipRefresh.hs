{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema BankConnectionsResourceOwnershipRefresh
module StripeAPI.Types.BankConnectionsResourceOwnershipRefresh where

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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.bank_connections_resource_ownership_refresh@ in the specification.
data BankConnectionsResourceOwnershipRefresh = BankConnectionsResourceOwnershipRefresh
  { -- | last_attempted_at: The time at which the last refresh attempt was initiated. Measured in seconds since the Unix epoch.
    bankConnectionsResourceOwnershipRefreshLastAttemptedAt :: GHC.Types.Int,
    -- | status: The status of the last refresh attempt.
    bankConnectionsResourceOwnershipRefreshStatus :: BankConnectionsResourceOwnershipRefreshStatus'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON BankConnectionsResourceOwnershipRefresh where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["last_attempted_at" Data.Aeson.Types.ToJSON..= bankConnectionsResourceOwnershipRefreshLastAttemptedAt obj] : ["status" Data.Aeson.Types.ToJSON..= bankConnectionsResourceOwnershipRefreshStatus obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["last_attempted_at" Data.Aeson.Types.ToJSON..= bankConnectionsResourceOwnershipRefreshLastAttemptedAt obj] : ["status" Data.Aeson.Types.ToJSON..= bankConnectionsResourceOwnershipRefreshStatus obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON BankConnectionsResourceOwnershipRefresh where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "BankConnectionsResourceOwnershipRefresh" (\obj -> (GHC.Base.pure BankConnectionsResourceOwnershipRefresh GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "last_attempted_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))

-- | Create a new 'BankConnectionsResourceOwnershipRefresh' with all required fields.
mkBankConnectionsResourceOwnershipRefresh ::
  -- | 'bankConnectionsResourceOwnershipRefreshLastAttemptedAt'
  GHC.Types.Int ->
  -- | 'bankConnectionsResourceOwnershipRefreshStatus'
  BankConnectionsResourceOwnershipRefreshStatus' ->
  BankConnectionsResourceOwnershipRefresh
mkBankConnectionsResourceOwnershipRefresh bankConnectionsResourceOwnershipRefreshLastAttemptedAt bankConnectionsResourceOwnershipRefreshStatus =
  BankConnectionsResourceOwnershipRefresh
    { bankConnectionsResourceOwnershipRefreshLastAttemptedAt = bankConnectionsResourceOwnershipRefreshLastAttemptedAt,
      bankConnectionsResourceOwnershipRefreshStatus = bankConnectionsResourceOwnershipRefreshStatus
    }

-- | Defines the enum schema located at @components.schemas.bank_connections_resource_ownership_refresh.properties.status@ in the specification.
--
-- The status of the last refresh attempt.
data BankConnectionsResourceOwnershipRefreshStatus'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    BankConnectionsResourceOwnershipRefreshStatus'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    BankConnectionsResourceOwnershipRefreshStatus'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"failed"@
    BankConnectionsResourceOwnershipRefreshStatus'EnumFailed
  | -- | Represents the JSON value @"pending"@
    BankConnectionsResourceOwnershipRefreshStatus'EnumPending
  | -- | Represents the JSON value @"succeeded"@
    BankConnectionsResourceOwnershipRefreshStatus'EnumSucceeded
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON BankConnectionsResourceOwnershipRefreshStatus' where
  toJSON (BankConnectionsResourceOwnershipRefreshStatus'Other val) = val
  toJSON (BankConnectionsResourceOwnershipRefreshStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (BankConnectionsResourceOwnershipRefreshStatus'EnumFailed) = "failed"
  toJSON (BankConnectionsResourceOwnershipRefreshStatus'EnumPending) = "pending"
  toJSON (BankConnectionsResourceOwnershipRefreshStatus'EnumSucceeded) = "succeeded"

instance Data.Aeson.Types.FromJSON.FromJSON BankConnectionsResourceOwnershipRefreshStatus' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "failed" -> BankConnectionsResourceOwnershipRefreshStatus'EnumFailed
            | val GHC.Classes.== "pending" -> BankConnectionsResourceOwnershipRefreshStatus'EnumPending
            | val GHC.Classes.== "succeeded" -> BankConnectionsResourceOwnershipRefreshStatus'EnumSucceeded
            | GHC.Base.otherwise -> BankConnectionsResourceOwnershipRefreshStatus'Other val
      )
