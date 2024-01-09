{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodConfigResourceDisplayPreference
module StripeAPI.Types.PaymentMethodConfigResourceDisplayPreference where

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

-- | Defines the object schema located at @components.schemas.payment_method_config_resource_display_preference@ in the specification.
data PaymentMethodConfigResourceDisplayPreference = PaymentMethodConfigResourceDisplayPreference
  { -- | overridable: For child configs, whether or not the account\'s preference will be observed. If \`false\`, the parent configuration\'s default is used.
    paymentMethodConfigResourceDisplayPreferenceOverridable :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Bool)),
    -- | preference: The account\'s display preference.
    paymentMethodConfigResourceDisplayPreferencePreference :: PaymentMethodConfigResourceDisplayPreferencePreference',
    -- | value: The effective display preference value.
    paymentMethodConfigResourceDisplayPreferenceValue :: PaymentMethodConfigResourceDisplayPreferenceValue'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodConfigResourceDisplayPreference where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("overridable" Data.Aeson.Types.ToJSON..=)) (paymentMethodConfigResourceDisplayPreferenceOverridable obj) : ["preference" Data.Aeson.Types.ToJSON..= paymentMethodConfigResourceDisplayPreferencePreference obj] : ["value" Data.Aeson.Types.ToJSON..= paymentMethodConfigResourceDisplayPreferenceValue obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("overridable" Data.Aeson.Types.ToJSON..=)) (paymentMethodConfigResourceDisplayPreferenceOverridable obj) : ["preference" Data.Aeson.Types.ToJSON..= paymentMethodConfigResourceDisplayPreferencePreference obj] : ["value" Data.Aeson.Types.ToJSON..= paymentMethodConfigResourceDisplayPreferenceValue obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodConfigResourceDisplayPreference where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodConfigResourceDisplayPreference" (\obj -> ((GHC.Base.pure PaymentMethodConfigResourceDisplayPreference GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "overridable")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "preference")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "value"))

-- | Create a new 'PaymentMethodConfigResourceDisplayPreference' with all required fields.
mkPaymentMethodConfigResourceDisplayPreference ::
  -- | 'paymentMethodConfigResourceDisplayPreferencePreference'
  PaymentMethodConfigResourceDisplayPreferencePreference' ->
  -- | 'paymentMethodConfigResourceDisplayPreferenceValue'
  PaymentMethodConfigResourceDisplayPreferenceValue' ->
  PaymentMethodConfigResourceDisplayPreference
mkPaymentMethodConfigResourceDisplayPreference paymentMethodConfigResourceDisplayPreferencePreference paymentMethodConfigResourceDisplayPreferenceValue =
  PaymentMethodConfigResourceDisplayPreference
    { paymentMethodConfigResourceDisplayPreferenceOverridable = GHC.Maybe.Nothing,
      paymentMethodConfigResourceDisplayPreferencePreference = paymentMethodConfigResourceDisplayPreferencePreference,
      paymentMethodConfigResourceDisplayPreferenceValue = paymentMethodConfigResourceDisplayPreferenceValue
    }

-- | Defines the enum schema located at @components.schemas.payment_method_config_resource_display_preference.properties.preference@ in the specification.
--
-- The account\'s display preference.
data PaymentMethodConfigResourceDisplayPreferencePreference'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodConfigResourceDisplayPreferencePreference'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodConfigResourceDisplayPreferencePreference'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"none"@
    PaymentMethodConfigResourceDisplayPreferencePreference'EnumNone
  | -- | Represents the JSON value @"off"@
    PaymentMethodConfigResourceDisplayPreferencePreference'EnumOff
  | -- | Represents the JSON value @"on"@
    PaymentMethodConfigResourceDisplayPreferencePreference'EnumOn
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodConfigResourceDisplayPreferencePreference' where
  toJSON (PaymentMethodConfigResourceDisplayPreferencePreference'Other val) = val
  toJSON (PaymentMethodConfigResourceDisplayPreferencePreference'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodConfigResourceDisplayPreferencePreference'EnumNone) = "none"
  toJSON (PaymentMethodConfigResourceDisplayPreferencePreference'EnumOff) = "off"
  toJSON (PaymentMethodConfigResourceDisplayPreferencePreference'EnumOn) = "on"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodConfigResourceDisplayPreferencePreference' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "none" -> PaymentMethodConfigResourceDisplayPreferencePreference'EnumNone
            | val GHC.Classes.== "off" -> PaymentMethodConfigResourceDisplayPreferencePreference'EnumOff
            | val GHC.Classes.== "on" -> PaymentMethodConfigResourceDisplayPreferencePreference'EnumOn
            | GHC.Base.otherwise -> PaymentMethodConfigResourceDisplayPreferencePreference'Other val
      )

-- | Defines the enum schema located at @components.schemas.payment_method_config_resource_display_preference.properties.value@ in the specification.
--
-- The effective display preference value.
data PaymentMethodConfigResourceDisplayPreferenceValue'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodConfigResourceDisplayPreferenceValue'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodConfigResourceDisplayPreferenceValue'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"off"@
    PaymentMethodConfigResourceDisplayPreferenceValue'EnumOff
  | -- | Represents the JSON value @"on"@
    PaymentMethodConfigResourceDisplayPreferenceValue'EnumOn
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodConfigResourceDisplayPreferenceValue' where
  toJSON (PaymentMethodConfigResourceDisplayPreferenceValue'Other val) = val
  toJSON (PaymentMethodConfigResourceDisplayPreferenceValue'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodConfigResourceDisplayPreferenceValue'EnumOff) = "off"
  toJSON (PaymentMethodConfigResourceDisplayPreferenceValue'EnumOn) = "on"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodConfigResourceDisplayPreferenceValue' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "off" -> PaymentMethodConfigResourceDisplayPreferenceValue'EnumOff
            | val GHC.Classes.== "on" -> PaymentMethodConfigResourceDisplayPreferenceValue'EnumOn
            | GHC.Base.otherwise -> PaymentMethodConfigResourceDisplayPreferenceValue'Other val
      )
