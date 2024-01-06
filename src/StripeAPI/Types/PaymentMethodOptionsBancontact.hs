{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodOptionsBancontact
module StripeAPI.Types.PaymentMethodOptionsBancontact where

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

-- | Defines the object schema located at @components.schemas.payment_method_options_bancontact@ in the specification.
data PaymentMethodOptionsBancontact = PaymentMethodOptionsBancontact
  { -- | preferred_language: Preferred language of the Bancontact authorization page that the customer is redirected to.
    paymentMethodOptionsBancontactPreferredLanguage :: PaymentMethodOptionsBancontactPreferredLanguage',
    -- | setup_future_usage: Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
    --
    -- Providing this parameter will [attach the payment method](https:\/\/stripe.com\/docs\/payments\/save-during-payment) to the PaymentIntent\'s Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer after the transaction completes.
    --
    -- When processing card payments, Stripe also uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication).
    paymentMethodOptionsBancontactSetupFutureUsage :: (GHC.Maybe.Maybe PaymentMethodOptionsBancontactSetupFutureUsage')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsBancontact where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["preferred_language" Data.Aeson.Types.ToJSON..= paymentMethodOptionsBancontactPreferredLanguage obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_future_usage" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsBancontactSetupFutureUsage obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["preferred_language" Data.Aeson.Types.ToJSON..= paymentMethodOptionsBancontactPreferredLanguage obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_future_usage" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsBancontactSetupFutureUsage obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsBancontact where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodOptionsBancontact" (\obj -> (GHC.Base.pure PaymentMethodOptionsBancontact GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "preferred_language")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "setup_future_usage"))

-- | Create a new 'PaymentMethodOptionsBancontact' with all required fields.
mkPaymentMethodOptionsBancontact ::
  -- | 'paymentMethodOptionsBancontactPreferredLanguage'
  PaymentMethodOptionsBancontactPreferredLanguage' ->
  PaymentMethodOptionsBancontact
mkPaymentMethodOptionsBancontact paymentMethodOptionsBancontactPreferredLanguage =
  PaymentMethodOptionsBancontact
    { paymentMethodOptionsBancontactPreferredLanguage = paymentMethodOptionsBancontactPreferredLanguage,
      paymentMethodOptionsBancontactSetupFutureUsage = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.payment_method_options_bancontact.properties.preferred_language@ in the specification.
--
-- Preferred language of the Bancontact authorization page that the customer is redirected to.
data PaymentMethodOptionsBancontactPreferredLanguage'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodOptionsBancontactPreferredLanguage'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodOptionsBancontactPreferredLanguage'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"de"@
    PaymentMethodOptionsBancontactPreferredLanguage'EnumDe
  | -- | Represents the JSON value @"en"@
    PaymentMethodOptionsBancontactPreferredLanguage'EnumEn
  | -- | Represents the JSON value @"fr"@
    PaymentMethodOptionsBancontactPreferredLanguage'EnumFr
  | -- | Represents the JSON value @"nl"@
    PaymentMethodOptionsBancontactPreferredLanguage'EnumNl
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsBancontactPreferredLanguage' where
  toJSON (PaymentMethodOptionsBancontactPreferredLanguage'Other val) = val
  toJSON (PaymentMethodOptionsBancontactPreferredLanguage'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodOptionsBancontactPreferredLanguage'EnumDe) = "de"
  toJSON (PaymentMethodOptionsBancontactPreferredLanguage'EnumEn) = "en"
  toJSON (PaymentMethodOptionsBancontactPreferredLanguage'EnumFr) = "fr"
  toJSON (PaymentMethodOptionsBancontactPreferredLanguage'EnumNl) = "nl"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsBancontactPreferredLanguage' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "de" -> PaymentMethodOptionsBancontactPreferredLanguage'EnumDe
            | val GHC.Classes.== "en" -> PaymentMethodOptionsBancontactPreferredLanguage'EnumEn
            | val GHC.Classes.== "fr" -> PaymentMethodOptionsBancontactPreferredLanguage'EnumFr
            | val GHC.Classes.== "nl" -> PaymentMethodOptionsBancontactPreferredLanguage'EnumNl
            | GHC.Base.otherwise -> PaymentMethodOptionsBancontactPreferredLanguage'Other val
      )

-- | Defines the enum schema located at @components.schemas.payment_method_options_bancontact.properties.setup_future_usage@ in the specification.
--
-- Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
--
-- Providing this parameter will [attach the payment method](https:\/\/stripe.com\/docs\/payments\/save-during-payment) to the PaymentIntent\'s Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer after the transaction completes.
--
-- When processing card payments, Stripe also uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication).
data PaymentMethodOptionsBancontactSetupFutureUsage'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodOptionsBancontactSetupFutureUsage'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodOptionsBancontactSetupFutureUsage'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"none"@
    PaymentMethodOptionsBancontactSetupFutureUsage'EnumNone
  | -- | Represents the JSON value @"off_session"@
    PaymentMethodOptionsBancontactSetupFutureUsage'EnumOffSession
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsBancontactSetupFutureUsage' where
  toJSON (PaymentMethodOptionsBancontactSetupFutureUsage'Other val) = val
  toJSON (PaymentMethodOptionsBancontactSetupFutureUsage'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodOptionsBancontactSetupFutureUsage'EnumNone) = "none"
  toJSON (PaymentMethodOptionsBancontactSetupFutureUsage'EnumOffSession) = "off_session"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsBancontactSetupFutureUsage' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "none" -> PaymentMethodOptionsBancontactSetupFutureUsage'EnumNone
            | val GHC.Classes.== "off_session" -> PaymentMethodOptionsBancontactSetupFutureUsage'EnumOffSession
            | GHC.Base.otherwise -> PaymentMethodOptionsBancontactSetupFutureUsage'Other val
      )
