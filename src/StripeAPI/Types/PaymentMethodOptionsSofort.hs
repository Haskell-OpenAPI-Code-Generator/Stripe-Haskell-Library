{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodOptionsSofort
module StripeAPI.Types.PaymentMethodOptionsSofort where

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

-- | Defines the object schema located at @components.schemas.payment_method_options_sofort@ in the specification.
data PaymentMethodOptionsSofort = PaymentMethodOptionsSofort
  { -- | preferred_language: Preferred language of the SOFORT authorization page that the customer is redirected to.
    paymentMethodOptionsSofortPreferredLanguage :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodOptionsSofortPreferredLanguage'NonNullable)),
    -- | setup_future_usage: Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
    --
    -- Providing this parameter will [attach the payment method](https:\/\/stripe.com\/docs\/payments\/save-during-payment) to the PaymentIntent\'s Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer after the transaction completes.
    --
    -- When processing card payments, Stripe also uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication).
    paymentMethodOptionsSofortSetupFutureUsage :: (GHC.Maybe.Maybe PaymentMethodOptionsSofortSetupFutureUsage')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsSofort where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("preferred_language" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsSofortPreferredLanguage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_future_usage" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsSofortSetupFutureUsage obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("preferred_language" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsSofortPreferredLanguage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_future_usage" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsSofortSetupFutureUsage obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsSofort where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodOptionsSofort" (\obj -> (GHC.Base.pure PaymentMethodOptionsSofort GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "preferred_language")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "setup_future_usage"))

-- | Create a new 'PaymentMethodOptionsSofort' with all required fields.
mkPaymentMethodOptionsSofort :: PaymentMethodOptionsSofort
mkPaymentMethodOptionsSofort =
  PaymentMethodOptionsSofort
    { paymentMethodOptionsSofortPreferredLanguage = GHC.Maybe.Nothing,
      paymentMethodOptionsSofortSetupFutureUsage = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.payment_method_options_sofort.properties.preferred_language@ in the specification.
--
-- Preferred language of the SOFORT authorization page that the customer is redirected to.
data PaymentMethodOptionsSofortPreferredLanguage'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodOptionsSofortPreferredLanguage'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodOptionsSofortPreferredLanguage'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"de"@
    PaymentMethodOptionsSofortPreferredLanguage'NonNullableEnumDe
  | -- | Represents the JSON value @"en"@
    PaymentMethodOptionsSofortPreferredLanguage'NonNullableEnumEn
  | -- | Represents the JSON value @"es"@
    PaymentMethodOptionsSofortPreferredLanguage'NonNullableEnumEs
  | -- | Represents the JSON value @"fr"@
    PaymentMethodOptionsSofortPreferredLanguage'NonNullableEnumFr
  | -- | Represents the JSON value @"it"@
    PaymentMethodOptionsSofortPreferredLanguage'NonNullableEnumIt
  | -- | Represents the JSON value @"nl"@
    PaymentMethodOptionsSofortPreferredLanguage'NonNullableEnumNl
  | -- | Represents the JSON value @"pl"@
    PaymentMethodOptionsSofortPreferredLanguage'NonNullableEnumPl
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsSofortPreferredLanguage'NonNullable where
  toJSON (PaymentMethodOptionsSofortPreferredLanguage'NonNullableOther val) = val
  toJSON (PaymentMethodOptionsSofortPreferredLanguage'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodOptionsSofortPreferredLanguage'NonNullableEnumDe) = "de"
  toJSON (PaymentMethodOptionsSofortPreferredLanguage'NonNullableEnumEn) = "en"
  toJSON (PaymentMethodOptionsSofortPreferredLanguage'NonNullableEnumEs) = "es"
  toJSON (PaymentMethodOptionsSofortPreferredLanguage'NonNullableEnumFr) = "fr"
  toJSON (PaymentMethodOptionsSofortPreferredLanguage'NonNullableEnumIt) = "it"
  toJSON (PaymentMethodOptionsSofortPreferredLanguage'NonNullableEnumNl) = "nl"
  toJSON (PaymentMethodOptionsSofortPreferredLanguage'NonNullableEnumPl) = "pl"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsSofortPreferredLanguage'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "de" -> PaymentMethodOptionsSofortPreferredLanguage'NonNullableEnumDe
            | val GHC.Classes.== "en" -> PaymentMethodOptionsSofortPreferredLanguage'NonNullableEnumEn
            | val GHC.Classes.== "es" -> PaymentMethodOptionsSofortPreferredLanguage'NonNullableEnumEs
            | val GHC.Classes.== "fr" -> PaymentMethodOptionsSofortPreferredLanguage'NonNullableEnumFr
            | val GHC.Classes.== "it" -> PaymentMethodOptionsSofortPreferredLanguage'NonNullableEnumIt
            | val GHC.Classes.== "nl" -> PaymentMethodOptionsSofortPreferredLanguage'NonNullableEnumNl
            | val GHC.Classes.== "pl" -> PaymentMethodOptionsSofortPreferredLanguage'NonNullableEnumPl
            | GHC.Base.otherwise -> PaymentMethodOptionsSofortPreferredLanguage'NonNullableOther val
      )

-- | Defines the enum schema located at @components.schemas.payment_method_options_sofort.properties.setup_future_usage@ in the specification.
--
-- Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
--
-- Providing this parameter will [attach the payment method](https:\/\/stripe.com\/docs\/payments\/save-during-payment) to the PaymentIntent\'s Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer after the transaction completes.
--
-- When processing card payments, Stripe also uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication).
data PaymentMethodOptionsSofortSetupFutureUsage'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodOptionsSofortSetupFutureUsage'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodOptionsSofortSetupFutureUsage'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"none"@
    PaymentMethodOptionsSofortSetupFutureUsage'EnumNone
  | -- | Represents the JSON value @"off_session"@
    PaymentMethodOptionsSofortSetupFutureUsage'EnumOffSession
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsSofortSetupFutureUsage' where
  toJSON (PaymentMethodOptionsSofortSetupFutureUsage'Other val) = val
  toJSON (PaymentMethodOptionsSofortSetupFutureUsage'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodOptionsSofortSetupFutureUsage'EnumNone) = "none"
  toJSON (PaymentMethodOptionsSofortSetupFutureUsage'EnumOffSession) = "off_session"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsSofortSetupFutureUsage' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "none" -> PaymentMethodOptionsSofortSetupFutureUsage'EnumNone
            | val GHC.Classes.== "off_session" -> PaymentMethodOptionsSofortSetupFutureUsage'EnumOffSession
            | GHC.Base.otherwise -> PaymentMethodOptionsSofortSetupFutureUsage'Other val
      )
