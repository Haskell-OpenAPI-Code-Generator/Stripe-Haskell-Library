{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Tax_Settings
module StripeAPI.Types.Tax_Settings where

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
import {-# SOURCE #-} StripeAPI.Types.Address
import {-# SOURCE #-} StripeAPI.Types.TaxProductResourceTaxSettingsDefaults
import {-# SOURCE #-} StripeAPI.Types.TaxProductResourceTaxSettingsHeadOffice
import {-# SOURCE #-} StripeAPI.Types.TaxProductResourceTaxSettingsStatusDetails
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.tax.settings@ in the specification.
--
-- You can use Tax \`Settings\` to manage configurations used by Stripe Tax calculations.
--
-- Related guide: [Using the Settings API](https:\/\/stripe.com\/docs\/tax\/settings-api)
data Tax'settings = Tax'settings
  { -- | defaults:
    tax'settingsDefaults :: TaxProductResourceTaxSettingsDefaults,
    -- | head_office: The place where your business is located.
    tax'settingsHeadOffice :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Tax'settingsHeadOffice'NonNullable)),
    -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
    tax'settingsLivemode :: GHC.Types.Bool,
    -- | status: The \`active\` status indicates you have all required settings to calculate tax. A status can transition out of \`active\` when new required settings are introduced.
    tax'settingsStatus :: Tax'settingsStatus',
    -- | status_details:
    tax'settingsStatusDetails :: TaxProductResourceTaxSettingsStatusDetails
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Tax'settings where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["defaults" Data.Aeson.Types.ToJSON..= tax'settingsDefaults obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("head_office" Data.Aeson.Types.ToJSON..=)) (tax'settingsHeadOffice obj) : ["livemode" Data.Aeson.Types.ToJSON..= tax'settingsLivemode obj] : ["status" Data.Aeson.Types.ToJSON..= tax'settingsStatus obj] : ["status_details" Data.Aeson.Types.ToJSON..= tax'settingsStatusDetails obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "tax.settings"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["defaults" Data.Aeson.Types.ToJSON..= tax'settingsDefaults obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("head_office" Data.Aeson.Types.ToJSON..=)) (tax'settingsHeadOffice obj) : ["livemode" Data.Aeson.Types.ToJSON..= tax'settingsLivemode obj] : ["status" Data.Aeson.Types.ToJSON..= tax'settingsStatus obj] : ["status_details" Data.Aeson.Types.ToJSON..= tax'settingsStatusDetails obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "tax.settings"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON Tax'settings where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Tax'settings" (\obj -> ((((GHC.Base.pure Tax'settings GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "defaults")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "head_office")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_details"))

-- | Create a new 'Tax'settings' with all required fields.
mkTax'settings ::
  -- | 'tax'settingsDefaults'
  TaxProductResourceTaxSettingsDefaults ->
  -- | 'tax'settingsLivemode'
  GHC.Types.Bool ->
  -- | 'tax'settingsStatus'
  Tax'settingsStatus' ->
  -- | 'tax'settingsStatusDetails'
  TaxProductResourceTaxSettingsStatusDetails ->
  Tax'settings
mkTax'settings tax'settingsDefaults tax'settingsLivemode tax'settingsStatus tax'settingsStatusDetails =
  Tax'settings
    { tax'settingsDefaults = tax'settingsDefaults,
      tax'settingsHeadOffice = GHC.Maybe.Nothing,
      tax'settingsLivemode = tax'settingsLivemode,
      tax'settingsStatus = tax'settingsStatus,
      tax'settingsStatusDetails = tax'settingsStatusDetails
    }

-- | Defines the object schema located at @components.schemas.tax.settings.properties.head_office.anyOf@ in the specification.
--
-- The place where your business is located.
data Tax'settingsHeadOffice'NonNullable = Tax'settingsHeadOffice'NonNullable
  { -- | address:
    tax'settingsHeadOffice'NonNullableAddress :: (GHC.Maybe.Maybe Address)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Tax'settingsHeadOffice'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address" Data.Aeson.Types.ToJSON..=)) (tax'settingsHeadOffice'NonNullableAddress obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address" Data.Aeson.Types.ToJSON..=)) (tax'settingsHeadOffice'NonNullableAddress obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON Tax'settingsHeadOffice'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Tax'settingsHeadOffice'NonNullable" (\obj -> GHC.Base.pure Tax'settingsHeadOffice'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address"))

-- | Create a new 'Tax'settingsHeadOffice'NonNullable' with all required fields.
mkTax'settingsHeadOffice'NonNullable :: Tax'settingsHeadOffice'NonNullable
mkTax'settingsHeadOffice'NonNullable = Tax'settingsHeadOffice'NonNullable {tax'settingsHeadOffice'NonNullableAddress = GHC.Maybe.Nothing}

-- | Defines the enum schema located at @components.schemas.tax.settings.properties.status@ in the specification.
--
-- The \`active\` status indicates you have all required settings to calculate tax. A status can transition out of \`active\` when new required settings are introduced.
data Tax'settingsStatus'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    Tax'settingsStatus'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    Tax'settingsStatus'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"active"@
    Tax'settingsStatus'EnumActive
  | -- | Represents the JSON value @"pending"@
    Tax'settingsStatus'EnumPending
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON Tax'settingsStatus' where
  toJSON (Tax'settingsStatus'Other val) = val
  toJSON (Tax'settingsStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (Tax'settingsStatus'EnumActive) = "active"
  toJSON (Tax'settingsStatus'EnumPending) = "pending"

instance Data.Aeson.Types.FromJSON.FromJSON Tax'settingsStatus' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "active" -> Tax'settingsStatus'EnumActive
            | val GHC.Classes.== "pending" -> Tax'settingsStatus'EnumPending
            | GHC.Base.otherwise -> Tax'settingsStatus'Other val
      )
