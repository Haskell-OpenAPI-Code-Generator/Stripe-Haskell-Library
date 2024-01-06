{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SubscriptionsTrialsResourceEndBehavior
module StripeAPI.Types.SubscriptionsTrialsResourceEndBehavior where

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

-- | Defines the object schema located at @components.schemas.subscriptions_trials_resource_end_behavior@ in the specification.
--
-- Defines how a subscription behaves when a free trial ends.
data SubscriptionsTrialsResourceEndBehavior = SubscriptionsTrialsResourceEndBehavior
  { -- | missing_payment_method: Indicates how the subscription should change when the trial ends if the user did not provide a payment method.
    subscriptionsTrialsResourceEndBehaviorMissingPaymentMethod :: SubscriptionsTrialsResourceEndBehaviorMissingPaymentMethod'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionsTrialsResourceEndBehavior where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["missing_payment_method" Data.Aeson.Types.ToJSON..= subscriptionsTrialsResourceEndBehaviorMissingPaymentMethod obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["missing_payment_method" Data.Aeson.Types.ToJSON..= subscriptionsTrialsResourceEndBehaviorMissingPaymentMethod obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionsTrialsResourceEndBehavior where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SubscriptionsTrialsResourceEndBehavior" (\obj -> GHC.Base.pure SubscriptionsTrialsResourceEndBehavior GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "missing_payment_method"))

-- | Create a new 'SubscriptionsTrialsResourceEndBehavior' with all required fields.
mkSubscriptionsTrialsResourceEndBehavior ::
  -- | 'subscriptionsTrialsResourceEndBehaviorMissingPaymentMethod'
  SubscriptionsTrialsResourceEndBehaviorMissingPaymentMethod' ->
  SubscriptionsTrialsResourceEndBehavior
mkSubscriptionsTrialsResourceEndBehavior subscriptionsTrialsResourceEndBehaviorMissingPaymentMethod = SubscriptionsTrialsResourceEndBehavior {subscriptionsTrialsResourceEndBehaviorMissingPaymentMethod = subscriptionsTrialsResourceEndBehaviorMissingPaymentMethod}

-- | Defines the enum schema located at @components.schemas.subscriptions_trials_resource_end_behavior.properties.missing_payment_method@ in the specification.
--
-- Indicates how the subscription should change when the trial ends if the user did not provide a payment method.
data SubscriptionsTrialsResourceEndBehaviorMissingPaymentMethod'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    SubscriptionsTrialsResourceEndBehaviorMissingPaymentMethod'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    SubscriptionsTrialsResourceEndBehaviorMissingPaymentMethod'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"cancel"@
    SubscriptionsTrialsResourceEndBehaviorMissingPaymentMethod'EnumCancel
  | -- | Represents the JSON value @"create_invoice"@
    SubscriptionsTrialsResourceEndBehaviorMissingPaymentMethod'EnumCreateInvoice
  | -- | Represents the JSON value @"pause"@
    SubscriptionsTrialsResourceEndBehaviorMissingPaymentMethod'EnumPause
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionsTrialsResourceEndBehaviorMissingPaymentMethod' where
  toJSON (SubscriptionsTrialsResourceEndBehaviorMissingPaymentMethod'Other val) = val
  toJSON (SubscriptionsTrialsResourceEndBehaviorMissingPaymentMethod'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (SubscriptionsTrialsResourceEndBehaviorMissingPaymentMethod'EnumCancel) = "cancel"
  toJSON (SubscriptionsTrialsResourceEndBehaviorMissingPaymentMethod'EnumCreateInvoice) = "create_invoice"
  toJSON (SubscriptionsTrialsResourceEndBehaviorMissingPaymentMethod'EnumPause) = "pause"

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionsTrialsResourceEndBehaviorMissingPaymentMethod' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "cancel" -> SubscriptionsTrialsResourceEndBehaviorMissingPaymentMethod'EnumCancel
            | val GHC.Classes.== "create_invoice" -> SubscriptionsTrialsResourceEndBehaviorMissingPaymentMethod'EnumCreateInvoice
            | val GHC.Classes.== "pause" -> SubscriptionsTrialsResourceEndBehaviorMissingPaymentMethod'EnumPause
            | GHC.Base.otherwise -> SubscriptionsTrialsResourceEndBehaviorMissingPaymentMethod'Other val
      )
