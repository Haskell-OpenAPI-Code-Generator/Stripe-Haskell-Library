{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema ConnectEmbeddedPayoutsFeatures
module StripeAPI.Types.ConnectEmbeddedPayoutsFeatures where

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

-- | Defines the object schema located at @components.schemas.connect_embedded_payouts_features@ in the specification.
data ConnectEmbeddedPayoutsFeatures = ConnectEmbeddedPayoutsFeatures
  { -- | edit_payout_schedule: Whether to allow payout schedule to be changed. Default \`true\` when Stripe owns Loss Liability, default \`false\` otherwise.
    connectEmbeddedPayoutsFeaturesEditPayoutSchedule :: GHC.Types.Bool,
    -- | instant_payouts: Whether to allow creation of instant payouts. Default \`true\` when Stripe owns Loss Liability, default \`false\` otherwise.
    connectEmbeddedPayoutsFeaturesInstantPayouts :: GHC.Types.Bool,
    -- | standard_payouts: Whether to allow creation of standard payouts. Default \`true\` when Stripe owns Loss Liability, default \`false\` otherwise.
    connectEmbeddedPayoutsFeaturesStandardPayouts :: GHC.Types.Bool
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON ConnectEmbeddedPayoutsFeatures where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["edit_payout_schedule" Data.Aeson.Types.ToJSON..= connectEmbeddedPayoutsFeaturesEditPayoutSchedule obj] : ["instant_payouts" Data.Aeson.Types.ToJSON..= connectEmbeddedPayoutsFeaturesInstantPayouts obj] : ["standard_payouts" Data.Aeson.Types.ToJSON..= connectEmbeddedPayoutsFeaturesStandardPayouts obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["edit_payout_schedule" Data.Aeson.Types.ToJSON..= connectEmbeddedPayoutsFeaturesEditPayoutSchedule obj] : ["instant_payouts" Data.Aeson.Types.ToJSON..= connectEmbeddedPayoutsFeaturesInstantPayouts obj] : ["standard_payouts" Data.Aeson.Types.ToJSON..= connectEmbeddedPayoutsFeaturesStandardPayouts obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON ConnectEmbeddedPayoutsFeatures where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "ConnectEmbeddedPayoutsFeatures" (\obj -> ((GHC.Base.pure ConnectEmbeddedPayoutsFeatures GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "edit_payout_schedule")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "instant_payouts")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "standard_payouts"))

-- | Create a new 'ConnectEmbeddedPayoutsFeatures' with all required fields.
mkConnectEmbeddedPayoutsFeatures ::
  -- | 'connectEmbeddedPayoutsFeaturesEditPayoutSchedule'
  GHC.Types.Bool ->
  -- | 'connectEmbeddedPayoutsFeaturesInstantPayouts'
  GHC.Types.Bool ->
  -- | 'connectEmbeddedPayoutsFeaturesStandardPayouts'
  GHC.Types.Bool ->
  ConnectEmbeddedPayoutsFeatures
mkConnectEmbeddedPayoutsFeatures connectEmbeddedPayoutsFeaturesEditPayoutSchedule connectEmbeddedPayoutsFeaturesInstantPayouts connectEmbeddedPayoutsFeaturesStandardPayouts =
  ConnectEmbeddedPayoutsFeatures
    { connectEmbeddedPayoutsFeaturesEditPayoutSchedule = connectEmbeddedPayoutsFeaturesEditPayoutSchedule,
      connectEmbeddedPayoutsFeaturesInstantPayouts = connectEmbeddedPayoutsFeaturesInstantPayouts,
      connectEmbeddedPayoutsFeaturesStandardPayouts = connectEmbeddedPayoutsFeaturesStandardPayouts
    }
