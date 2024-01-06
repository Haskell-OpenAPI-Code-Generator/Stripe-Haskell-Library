{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema TreasuryFinancialAccountsResourceAchToggleSettings
module StripeAPI.Types.TreasuryFinancialAccountsResourceAchToggleSettings where

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
import {-# SOURCE #-} StripeAPI.Types.TreasuryFinancialAccountsResourceTogglesSettingStatusDetails
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.treasury_financial_accounts_resource_ach_toggle_settings@ in the specification.
--
-- Toggle settings for enabling\/disabling an ACH specific feature
data TreasuryFinancialAccountsResourceAchToggleSettings = TreasuryFinancialAccountsResourceAchToggleSettings
  { -- | requested: Whether the FinancialAccount should have the Feature.
    treasuryFinancialAccountsResourceAchToggleSettingsRequested :: GHC.Types.Bool,
    -- | status: Whether the Feature is operational.
    treasuryFinancialAccountsResourceAchToggleSettingsStatus :: TreasuryFinancialAccountsResourceAchToggleSettingsStatus',
    -- | status_details: Additional details; includes at least one entry when the status is not \`active\`.
    treasuryFinancialAccountsResourceAchToggleSettingsStatusDetails :: ([TreasuryFinancialAccountsResourceTogglesSettingStatusDetails])
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON TreasuryFinancialAccountsResourceAchToggleSettings where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["requested" Data.Aeson.Types.ToJSON..= treasuryFinancialAccountsResourceAchToggleSettingsRequested obj] : ["status" Data.Aeson.Types.ToJSON..= treasuryFinancialAccountsResourceAchToggleSettingsStatus obj] : ["status_details" Data.Aeson.Types.ToJSON..= treasuryFinancialAccountsResourceAchToggleSettingsStatusDetails obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["requested" Data.Aeson.Types.ToJSON..= treasuryFinancialAccountsResourceAchToggleSettingsRequested obj] : ["status" Data.Aeson.Types.ToJSON..= treasuryFinancialAccountsResourceAchToggleSettingsStatus obj] : ["status_details" Data.Aeson.Types.ToJSON..= treasuryFinancialAccountsResourceAchToggleSettingsStatusDetails obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON TreasuryFinancialAccountsResourceAchToggleSettings where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "TreasuryFinancialAccountsResourceAchToggleSettings" (\obj -> ((GHC.Base.pure TreasuryFinancialAccountsResourceAchToggleSettings GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "requested")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_details"))

-- | Create a new 'TreasuryFinancialAccountsResourceAchToggleSettings' with all required fields.
mkTreasuryFinancialAccountsResourceAchToggleSettings ::
  -- | 'treasuryFinancialAccountsResourceAchToggleSettingsRequested'
  GHC.Types.Bool ->
  -- | 'treasuryFinancialAccountsResourceAchToggleSettingsStatus'
  TreasuryFinancialAccountsResourceAchToggleSettingsStatus' ->
  -- | 'treasuryFinancialAccountsResourceAchToggleSettingsStatusDetails'
  [TreasuryFinancialAccountsResourceTogglesSettingStatusDetails] ->
  TreasuryFinancialAccountsResourceAchToggleSettings
mkTreasuryFinancialAccountsResourceAchToggleSettings treasuryFinancialAccountsResourceAchToggleSettingsRequested treasuryFinancialAccountsResourceAchToggleSettingsStatus treasuryFinancialAccountsResourceAchToggleSettingsStatusDetails =
  TreasuryFinancialAccountsResourceAchToggleSettings
    { treasuryFinancialAccountsResourceAchToggleSettingsRequested = treasuryFinancialAccountsResourceAchToggleSettingsRequested,
      treasuryFinancialAccountsResourceAchToggleSettingsStatus = treasuryFinancialAccountsResourceAchToggleSettingsStatus,
      treasuryFinancialAccountsResourceAchToggleSettingsStatusDetails = treasuryFinancialAccountsResourceAchToggleSettingsStatusDetails
    }

-- | Defines the enum schema located at @components.schemas.treasury_financial_accounts_resource_ach_toggle_settings.properties.status@ in the specification.
--
-- Whether the Feature is operational.
data TreasuryFinancialAccountsResourceAchToggleSettingsStatus'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    TreasuryFinancialAccountsResourceAchToggleSettingsStatus'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    TreasuryFinancialAccountsResourceAchToggleSettingsStatus'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"active"@
    TreasuryFinancialAccountsResourceAchToggleSettingsStatus'EnumActive
  | -- | Represents the JSON value @"pending"@
    TreasuryFinancialAccountsResourceAchToggleSettingsStatus'EnumPending
  | -- | Represents the JSON value @"restricted"@
    TreasuryFinancialAccountsResourceAchToggleSettingsStatus'EnumRestricted
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON TreasuryFinancialAccountsResourceAchToggleSettingsStatus' where
  toJSON (TreasuryFinancialAccountsResourceAchToggleSettingsStatus'Other val) = val
  toJSON (TreasuryFinancialAccountsResourceAchToggleSettingsStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (TreasuryFinancialAccountsResourceAchToggleSettingsStatus'EnumActive) = "active"
  toJSON (TreasuryFinancialAccountsResourceAchToggleSettingsStatus'EnumPending) = "pending"
  toJSON (TreasuryFinancialAccountsResourceAchToggleSettingsStatus'EnumRestricted) = "restricted"

instance Data.Aeson.Types.FromJSON.FromJSON TreasuryFinancialAccountsResourceAchToggleSettingsStatus' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "active" -> TreasuryFinancialAccountsResourceAchToggleSettingsStatus'EnumActive
            | val GHC.Classes.== "pending" -> TreasuryFinancialAccountsResourceAchToggleSettingsStatus'EnumPending
            | val GHC.Classes.== "restricted" -> TreasuryFinancialAccountsResourceAchToggleSettingsStatus'EnumRestricted
            | GHC.Base.otherwise -> TreasuryFinancialAccountsResourceAchToggleSettingsStatus'Other val
      )
