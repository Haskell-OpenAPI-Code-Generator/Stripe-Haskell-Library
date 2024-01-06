{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentPagesCheckoutSessionConsent
module StripeAPI.Types.PaymentPagesCheckoutSessionConsent where

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

-- | Defines the object schema located at @components.schemas.payment_pages_checkout_session_consent@ in the specification.
data PaymentPagesCheckoutSessionConsent = PaymentPagesCheckoutSessionConsent
  { -- | promotions: If \`opt_in\`, the customer consents to receiving promotional communications
    -- from the merchant about this Checkout Session.
    paymentPagesCheckoutSessionConsentPromotions :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentPagesCheckoutSessionConsentPromotions'NonNullable)),
    -- | terms_of_service: If \`accepted\`, the customer in this Checkout Session has agreed to the merchant\'s terms of service.
    paymentPagesCheckoutSessionConsentTermsOfService :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentPagesCheckoutSessionConsentTermsOfService'NonNullable))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentPagesCheckoutSessionConsent where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("promotions" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionConsentPromotions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("terms_of_service" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionConsentTermsOfService obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("promotions" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionConsentPromotions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("terms_of_service" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionConsentTermsOfService obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentPagesCheckoutSessionConsent where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentPagesCheckoutSessionConsent" (\obj -> (GHC.Base.pure PaymentPagesCheckoutSessionConsent GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "promotions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "terms_of_service"))

-- | Create a new 'PaymentPagesCheckoutSessionConsent' with all required fields.
mkPaymentPagesCheckoutSessionConsent :: PaymentPagesCheckoutSessionConsent
mkPaymentPagesCheckoutSessionConsent =
  PaymentPagesCheckoutSessionConsent
    { paymentPagesCheckoutSessionConsentPromotions = GHC.Maybe.Nothing,
      paymentPagesCheckoutSessionConsentTermsOfService = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.payment_pages_checkout_session_consent.properties.promotions@ in the specification.
--
-- If \`opt_in\`, the customer consents to receiving promotional communications
-- from the merchant about this Checkout Session.
data PaymentPagesCheckoutSessionConsentPromotions'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentPagesCheckoutSessionConsentPromotions'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentPagesCheckoutSessionConsentPromotions'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"opt_in"@
    PaymentPagesCheckoutSessionConsentPromotions'NonNullableEnumOptIn
  | -- | Represents the JSON value @"opt_out"@
    PaymentPagesCheckoutSessionConsentPromotions'NonNullableEnumOptOut
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentPagesCheckoutSessionConsentPromotions'NonNullable where
  toJSON (PaymentPagesCheckoutSessionConsentPromotions'NonNullableOther val) = val
  toJSON (PaymentPagesCheckoutSessionConsentPromotions'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentPagesCheckoutSessionConsentPromotions'NonNullableEnumOptIn) = "opt_in"
  toJSON (PaymentPagesCheckoutSessionConsentPromotions'NonNullableEnumOptOut) = "opt_out"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentPagesCheckoutSessionConsentPromotions'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "opt_in" -> PaymentPagesCheckoutSessionConsentPromotions'NonNullableEnumOptIn
            | val GHC.Classes.== "opt_out" -> PaymentPagesCheckoutSessionConsentPromotions'NonNullableEnumOptOut
            | GHC.Base.otherwise -> PaymentPagesCheckoutSessionConsentPromotions'NonNullableOther val
      )

-- | Defines the enum schema located at @components.schemas.payment_pages_checkout_session_consent.properties.terms_of_service@ in the specification.
--
-- If \`accepted\`, the customer in this Checkout Session has agreed to the merchant\'s terms of service.
data PaymentPagesCheckoutSessionConsentTermsOfService'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentPagesCheckoutSessionConsentTermsOfService'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentPagesCheckoutSessionConsentTermsOfService'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"accepted"@
    PaymentPagesCheckoutSessionConsentTermsOfService'NonNullableEnumAccepted
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentPagesCheckoutSessionConsentTermsOfService'NonNullable where
  toJSON (PaymentPagesCheckoutSessionConsentTermsOfService'NonNullableOther val) = val
  toJSON (PaymentPagesCheckoutSessionConsentTermsOfService'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentPagesCheckoutSessionConsentTermsOfService'NonNullableEnumAccepted) = "accepted"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentPagesCheckoutSessionConsentTermsOfService'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "accepted" -> PaymentPagesCheckoutSessionConsentTermsOfService'NonNullableEnumAccepted
            | GHC.Base.otherwise -> PaymentPagesCheckoutSessionConsentTermsOfService'NonNullableOther val
      )
