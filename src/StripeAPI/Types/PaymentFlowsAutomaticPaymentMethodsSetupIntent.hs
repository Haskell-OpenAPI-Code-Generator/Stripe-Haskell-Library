{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentFlowsAutomaticPaymentMethodsSetupIntent
module StripeAPI.Types.PaymentFlowsAutomaticPaymentMethodsSetupIntent where

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

-- | Defines the object schema located at @components.schemas.payment_flows_automatic_payment_methods_setup_intent@ in the specification.
data PaymentFlowsAutomaticPaymentMethodsSetupIntent = PaymentFlowsAutomaticPaymentMethodsSetupIntent
  { -- | allow_redirects: Controls whether this SetupIntent will accept redirect-based payment methods.
    --
    -- Redirect-based payment methods may require your customer to be redirected to a payment method\'s app or site for authentication or additional steps. To [confirm](https:\/\/stripe.com\/docs\/api\/setup_intents\/confirm) this SetupIntent, you may be required to provide a \`return_url\` to redirect customers back to your site after they authenticate or complete the setup.
    paymentFlowsAutomaticPaymentMethodsSetupIntentAllowRedirects :: (GHC.Maybe.Maybe PaymentFlowsAutomaticPaymentMethodsSetupIntentAllowRedirects'),
    -- | enabled: Automatically calculates compatible payment methods
    paymentFlowsAutomaticPaymentMethodsSetupIntentEnabled :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Bool))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentFlowsAutomaticPaymentMethodsSetupIntent where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("allow_redirects" Data.Aeson.Types.ToJSON..=)) (paymentFlowsAutomaticPaymentMethodsSetupIntentAllowRedirects obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enabled" Data.Aeson.Types.ToJSON..=)) (paymentFlowsAutomaticPaymentMethodsSetupIntentEnabled obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("allow_redirects" Data.Aeson.Types.ToJSON..=)) (paymentFlowsAutomaticPaymentMethodsSetupIntentAllowRedirects obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enabled" Data.Aeson.Types.ToJSON..=)) (paymentFlowsAutomaticPaymentMethodsSetupIntentEnabled obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentFlowsAutomaticPaymentMethodsSetupIntent where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentFlowsAutomaticPaymentMethodsSetupIntent" (\obj -> (GHC.Base.pure PaymentFlowsAutomaticPaymentMethodsSetupIntent GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "allow_redirects")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "enabled"))

-- | Create a new 'PaymentFlowsAutomaticPaymentMethodsSetupIntent' with all required fields.
mkPaymentFlowsAutomaticPaymentMethodsSetupIntent :: PaymentFlowsAutomaticPaymentMethodsSetupIntent
mkPaymentFlowsAutomaticPaymentMethodsSetupIntent =
  PaymentFlowsAutomaticPaymentMethodsSetupIntent
    { paymentFlowsAutomaticPaymentMethodsSetupIntentAllowRedirects = GHC.Maybe.Nothing,
      paymentFlowsAutomaticPaymentMethodsSetupIntentEnabled = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.payment_flows_automatic_payment_methods_setup_intent.properties.allow_redirects@ in the specification.
--
-- Controls whether this SetupIntent will accept redirect-based payment methods.
--
-- Redirect-based payment methods may require your customer to be redirected to a payment method\'s app or site for authentication or additional steps. To [confirm](https:\/\/stripe.com\/docs\/api\/setup_intents\/confirm) this SetupIntent, you may be required to provide a \`return_url\` to redirect customers back to your site after they authenticate or complete the setup.
data PaymentFlowsAutomaticPaymentMethodsSetupIntentAllowRedirects'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentFlowsAutomaticPaymentMethodsSetupIntentAllowRedirects'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentFlowsAutomaticPaymentMethodsSetupIntentAllowRedirects'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"always"@
    PaymentFlowsAutomaticPaymentMethodsSetupIntentAllowRedirects'EnumAlways
  | -- | Represents the JSON value @"never"@
    PaymentFlowsAutomaticPaymentMethodsSetupIntentAllowRedirects'EnumNever
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentFlowsAutomaticPaymentMethodsSetupIntentAllowRedirects' where
  toJSON (PaymentFlowsAutomaticPaymentMethodsSetupIntentAllowRedirects'Other val) = val
  toJSON (PaymentFlowsAutomaticPaymentMethodsSetupIntentAllowRedirects'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentFlowsAutomaticPaymentMethodsSetupIntentAllowRedirects'EnumAlways) = "always"
  toJSON (PaymentFlowsAutomaticPaymentMethodsSetupIntentAllowRedirects'EnumNever) = "never"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentFlowsAutomaticPaymentMethodsSetupIntentAllowRedirects' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "always" -> PaymentFlowsAutomaticPaymentMethodsSetupIntentAllowRedirects'EnumAlways
            | val GHC.Classes.== "never" -> PaymentFlowsAutomaticPaymentMethodsSetupIntentAllowRedirects'EnumNever
            | GHC.Base.otherwise -> PaymentFlowsAutomaticPaymentMethodsSetupIntentAllowRedirects'Other val
      )
