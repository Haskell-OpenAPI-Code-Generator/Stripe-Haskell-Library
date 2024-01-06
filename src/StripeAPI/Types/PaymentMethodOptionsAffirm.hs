{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodOptionsAffirm
module StripeAPI.Types.PaymentMethodOptionsAffirm where

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

-- | Defines the object schema located at @components.schemas.payment_method_options_affirm@ in the specification.
data PaymentMethodOptionsAffirm = PaymentMethodOptionsAffirm
  { -- | capture_method: Controls when the funds will be captured from the customer\'s account.
    paymentMethodOptionsAffirmCaptureMethod :: (GHC.Maybe.Maybe PaymentMethodOptionsAffirmCaptureMethod'),
    -- | preferred_locale: Preferred language of the Affirm authorization page that the customer is redirected to.
    --
    -- Constraints:
    --
    -- * Maximum length of 30
    paymentMethodOptionsAffirmPreferredLocale :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | setup_future_usage: Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
    --
    -- Providing this parameter will [attach the payment method](https:\/\/stripe.com\/docs\/payments\/save-during-payment) to the PaymentIntent\'s Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer after the transaction completes.
    --
    -- When processing card payments, Stripe also uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication).
    paymentMethodOptionsAffirmSetupFutureUsage :: (GHC.Maybe.Maybe PaymentMethodOptionsAffirmSetupFutureUsage')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsAffirm where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("capture_method" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsAffirmCaptureMethod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("preferred_locale" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsAffirmPreferredLocale obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_future_usage" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsAffirmSetupFutureUsage obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("capture_method" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsAffirmCaptureMethod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("preferred_locale" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsAffirmPreferredLocale obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_future_usage" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsAffirmSetupFutureUsage obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsAffirm where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodOptionsAffirm" (\obj -> ((GHC.Base.pure PaymentMethodOptionsAffirm GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "capture_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "preferred_locale")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "setup_future_usage"))

-- | Create a new 'PaymentMethodOptionsAffirm' with all required fields.
mkPaymentMethodOptionsAffirm :: PaymentMethodOptionsAffirm
mkPaymentMethodOptionsAffirm =
  PaymentMethodOptionsAffirm
    { paymentMethodOptionsAffirmCaptureMethod = GHC.Maybe.Nothing,
      paymentMethodOptionsAffirmPreferredLocale = GHC.Maybe.Nothing,
      paymentMethodOptionsAffirmSetupFutureUsage = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.payment_method_options_affirm.properties.capture_method@ in the specification.
--
-- Controls when the funds will be captured from the customer\'s account.
data PaymentMethodOptionsAffirmCaptureMethod'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodOptionsAffirmCaptureMethod'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodOptionsAffirmCaptureMethod'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"manual"@
    PaymentMethodOptionsAffirmCaptureMethod'EnumManual
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsAffirmCaptureMethod' where
  toJSON (PaymentMethodOptionsAffirmCaptureMethod'Other val) = val
  toJSON (PaymentMethodOptionsAffirmCaptureMethod'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodOptionsAffirmCaptureMethod'EnumManual) = "manual"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsAffirmCaptureMethod' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "manual" -> PaymentMethodOptionsAffirmCaptureMethod'EnumManual
            | GHC.Base.otherwise -> PaymentMethodOptionsAffirmCaptureMethod'Other val
      )

-- | Defines the enum schema located at @components.schemas.payment_method_options_affirm.properties.setup_future_usage@ in the specification.
--
-- Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
--
-- Providing this parameter will [attach the payment method](https:\/\/stripe.com\/docs\/payments\/save-during-payment) to the PaymentIntent\'s Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer after the transaction completes.
--
-- When processing card payments, Stripe also uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication).
data PaymentMethodOptionsAffirmSetupFutureUsage'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodOptionsAffirmSetupFutureUsage'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodOptionsAffirmSetupFutureUsage'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"none"@
    PaymentMethodOptionsAffirmSetupFutureUsage'EnumNone
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsAffirmSetupFutureUsage' where
  toJSON (PaymentMethodOptionsAffirmSetupFutureUsage'Other val) = val
  toJSON (PaymentMethodOptionsAffirmSetupFutureUsage'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodOptionsAffirmSetupFutureUsage'EnumNone) = "none"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsAffirmSetupFutureUsage' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "none" -> PaymentMethodOptionsAffirmSetupFutureUsage'EnumNone
            | GHC.Base.otherwise -> PaymentMethodOptionsAffirmSetupFutureUsage'Other val
      )
