{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentLinksResourcePaymentMethodReuseAgreement
module StripeAPI.Types.PaymentLinksResourcePaymentMethodReuseAgreement where

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

-- | Defines the object schema located at @components.schemas.payment_links_resource_payment_method_reuse_agreement@ in the specification.
data PaymentLinksResourcePaymentMethodReuseAgreement = PaymentLinksResourcePaymentMethodReuseAgreement
  { -- | position: Determines the position and visibility of the payment method reuse agreement in the UI. When set to \`auto\`, Stripe\'s defaults will be used.
    --
    -- When set to \`hidden\`, the payment method reuse agreement text will always be hidden in the UI.
    paymentLinksResourcePaymentMethodReuseAgreementPosition :: PaymentLinksResourcePaymentMethodReuseAgreementPosition'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentLinksResourcePaymentMethodReuseAgreement where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["position" Data.Aeson.Types.ToJSON..= paymentLinksResourcePaymentMethodReuseAgreementPosition obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["position" Data.Aeson.Types.ToJSON..= paymentLinksResourcePaymentMethodReuseAgreementPosition obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentLinksResourcePaymentMethodReuseAgreement where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentLinksResourcePaymentMethodReuseAgreement" (\obj -> GHC.Base.pure PaymentLinksResourcePaymentMethodReuseAgreement GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "position"))

-- | Create a new 'PaymentLinksResourcePaymentMethodReuseAgreement' with all required fields.
mkPaymentLinksResourcePaymentMethodReuseAgreement ::
  -- | 'paymentLinksResourcePaymentMethodReuseAgreementPosition'
  PaymentLinksResourcePaymentMethodReuseAgreementPosition' ->
  PaymentLinksResourcePaymentMethodReuseAgreement
mkPaymentLinksResourcePaymentMethodReuseAgreement paymentLinksResourcePaymentMethodReuseAgreementPosition = PaymentLinksResourcePaymentMethodReuseAgreement {paymentLinksResourcePaymentMethodReuseAgreementPosition = paymentLinksResourcePaymentMethodReuseAgreementPosition}

-- | Defines the enum schema located at @components.schemas.payment_links_resource_payment_method_reuse_agreement.properties.position@ in the specification.
--
-- Determines the position and visibility of the payment method reuse agreement in the UI. When set to \`auto\`, Stripe\'s defaults will be used.
--
-- When set to \`hidden\`, the payment method reuse agreement text will always be hidden in the UI.
data PaymentLinksResourcePaymentMethodReuseAgreementPosition'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentLinksResourcePaymentMethodReuseAgreementPosition'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentLinksResourcePaymentMethodReuseAgreementPosition'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"auto"@
    PaymentLinksResourcePaymentMethodReuseAgreementPosition'EnumAuto
  | -- | Represents the JSON value @"hidden"@
    PaymentLinksResourcePaymentMethodReuseAgreementPosition'EnumHidden
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentLinksResourcePaymentMethodReuseAgreementPosition' where
  toJSON (PaymentLinksResourcePaymentMethodReuseAgreementPosition'Other val) = val
  toJSON (PaymentLinksResourcePaymentMethodReuseAgreementPosition'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentLinksResourcePaymentMethodReuseAgreementPosition'EnumAuto) = "auto"
  toJSON (PaymentLinksResourcePaymentMethodReuseAgreementPosition'EnumHidden) = "hidden"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentLinksResourcePaymentMethodReuseAgreementPosition' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "auto" -> PaymentLinksResourcePaymentMethodReuseAgreementPosition'EnumAuto
            | val GHC.Classes.== "hidden" -> PaymentLinksResourcePaymentMethodReuseAgreementPosition'EnumHidden
            | GHC.Base.otherwise -> PaymentLinksResourcePaymentMethodReuseAgreementPosition'Other val
      )
