{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodCardWalletVisaCheckout
module StripeAPI.Types.PaymentMethodCardWalletVisaCheckout where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
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
import {-# SOURCE #-} StripeAPI.Types.Address
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_method_card_wallet_visa_checkout@ in the specification.
data PaymentMethodCardWalletVisaCheckout = PaymentMethodCardWalletVisaCheckout
  { -- | billing_address: Owner\'s verified billing address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
    paymentMethodCardWalletVisaCheckoutBillingAddress :: (GHC.Maybe.Maybe PaymentMethodCardWalletVisaCheckoutBillingAddress'),
    -- | email: Owner\'s verified email. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletVisaCheckoutEmail :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | name: Owner\'s verified full name. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletVisaCheckoutName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | shipping_address: Owner\'s verified shipping address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
    paymentMethodCardWalletVisaCheckoutShippingAddress :: (GHC.Maybe.Maybe PaymentMethodCardWalletVisaCheckoutShippingAddress')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodCardWalletVisaCheckout where
  toJSON obj = Data.Aeson.Types.Internal.object ("billing_address" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutBillingAddress obj : "email" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutEmail obj : "name" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutName obj : "shipping_address" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutShippingAddress obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("billing_address" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutBillingAddress obj) GHC.Base.<> (("email" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutEmail obj) GHC.Base.<> (("name" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutName obj) GHC.Base.<> ("shipping_address" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutShippingAddress obj))))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodCardWalletVisaCheckout where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodCardWalletVisaCheckout" (\obj -> (((GHC.Base.pure PaymentMethodCardWalletVisaCheckout GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_address"))

-- | Create a new 'PaymentMethodCardWalletVisaCheckout' with all required fields.
mkPaymentMethodCardWalletVisaCheckout :: PaymentMethodCardWalletVisaCheckout
mkPaymentMethodCardWalletVisaCheckout =
  PaymentMethodCardWalletVisaCheckout
    { paymentMethodCardWalletVisaCheckoutBillingAddress = GHC.Maybe.Nothing,
      paymentMethodCardWalletVisaCheckoutEmail = GHC.Maybe.Nothing,
      paymentMethodCardWalletVisaCheckoutName = GHC.Maybe.Nothing,
      paymentMethodCardWalletVisaCheckoutShippingAddress = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.payment_method_card_wallet_visa_checkout.properties.billing_address.anyOf@ in the specification.
--
-- Owner\\\'s verified billing address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
data PaymentMethodCardWalletVisaCheckoutBillingAddress' = PaymentMethodCardWalletVisaCheckoutBillingAddress'
  { -- | city: City, district, suburb, town, or village.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletVisaCheckoutBillingAddress'City :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletVisaCheckoutBillingAddress'Country :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | line1: Address line 1 (e.g., street, PO Box, or company name).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletVisaCheckoutBillingAddress'Line1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | line2: Address line 2 (e.g., apartment, suite, unit, or building).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletVisaCheckoutBillingAddress'Line2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | postal_code: ZIP or postal code.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletVisaCheckoutBillingAddress'PostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | state: State, county, province, or region.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletVisaCheckoutBillingAddress'State :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodCardWalletVisaCheckoutBillingAddress' where
  toJSON obj = Data.Aeson.Types.Internal.object ("city" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutBillingAddress'City obj : "country" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutBillingAddress'Country obj : "line1" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutBillingAddress'Line1 obj : "line2" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutBillingAddress'Line2 obj : "postal_code" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutBillingAddress'PostalCode obj : "state" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutBillingAddress'State obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("city" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutBillingAddress'City obj) GHC.Base.<> (("country" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutBillingAddress'Country obj) GHC.Base.<> (("line1" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutBillingAddress'Line1 obj) GHC.Base.<> (("line2" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutBillingAddress'Line2 obj) GHC.Base.<> (("postal_code" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutBillingAddress'PostalCode obj) GHC.Base.<> ("state" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutBillingAddress'State obj))))))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodCardWalletVisaCheckoutBillingAddress' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodCardWalletVisaCheckoutBillingAddress'" (\obj -> (((((GHC.Base.pure PaymentMethodCardWalletVisaCheckoutBillingAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))

-- | Create a new 'PaymentMethodCardWalletVisaCheckoutBillingAddress'' with all required fields.
mkPaymentMethodCardWalletVisaCheckoutBillingAddress' :: PaymentMethodCardWalletVisaCheckoutBillingAddress'
mkPaymentMethodCardWalletVisaCheckoutBillingAddress' =
  PaymentMethodCardWalletVisaCheckoutBillingAddress'
    { paymentMethodCardWalletVisaCheckoutBillingAddress'City = GHC.Maybe.Nothing,
      paymentMethodCardWalletVisaCheckoutBillingAddress'Country = GHC.Maybe.Nothing,
      paymentMethodCardWalletVisaCheckoutBillingAddress'Line1 = GHC.Maybe.Nothing,
      paymentMethodCardWalletVisaCheckoutBillingAddress'Line2 = GHC.Maybe.Nothing,
      paymentMethodCardWalletVisaCheckoutBillingAddress'PostalCode = GHC.Maybe.Nothing,
      paymentMethodCardWalletVisaCheckoutBillingAddress'State = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.payment_method_card_wallet_visa_checkout.properties.shipping_address.anyOf@ in the specification.
--
-- Owner\\\'s verified shipping address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
data PaymentMethodCardWalletVisaCheckoutShippingAddress' = PaymentMethodCardWalletVisaCheckoutShippingAddress'
  { -- | city: City, district, suburb, town, or village.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletVisaCheckoutShippingAddress'City :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletVisaCheckoutShippingAddress'Country :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | line1: Address line 1 (e.g., street, PO Box, or company name).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletVisaCheckoutShippingAddress'Line1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | line2: Address line 2 (e.g., apartment, suite, unit, or building).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletVisaCheckoutShippingAddress'Line2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | postal_code: ZIP or postal code.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletVisaCheckoutShippingAddress'PostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | state: State, county, province, or region.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletVisaCheckoutShippingAddress'State :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodCardWalletVisaCheckoutShippingAddress' where
  toJSON obj = Data.Aeson.Types.Internal.object ("city" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutShippingAddress'City obj : "country" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutShippingAddress'Country obj : "line1" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutShippingAddress'Line1 obj : "line2" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutShippingAddress'Line2 obj : "postal_code" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutShippingAddress'PostalCode obj : "state" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutShippingAddress'State obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("city" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutShippingAddress'City obj) GHC.Base.<> (("country" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutShippingAddress'Country obj) GHC.Base.<> (("line1" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutShippingAddress'Line1 obj) GHC.Base.<> (("line2" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutShippingAddress'Line2 obj) GHC.Base.<> (("postal_code" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutShippingAddress'PostalCode obj) GHC.Base.<> ("state" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletVisaCheckoutShippingAddress'State obj))))))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodCardWalletVisaCheckoutShippingAddress' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodCardWalletVisaCheckoutShippingAddress'" (\obj -> (((((GHC.Base.pure PaymentMethodCardWalletVisaCheckoutShippingAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))

-- | Create a new 'PaymentMethodCardWalletVisaCheckoutShippingAddress'' with all required fields.
mkPaymentMethodCardWalletVisaCheckoutShippingAddress' :: PaymentMethodCardWalletVisaCheckoutShippingAddress'
mkPaymentMethodCardWalletVisaCheckoutShippingAddress' =
  PaymentMethodCardWalletVisaCheckoutShippingAddress'
    { paymentMethodCardWalletVisaCheckoutShippingAddress'City = GHC.Maybe.Nothing,
      paymentMethodCardWalletVisaCheckoutShippingAddress'Country = GHC.Maybe.Nothing,
      paymentMethodCardWalletVisaCheckoutShippingAddress'Line1 = GHC.Maybe.Nothing,
      paymentMethodCardWalletVisaCheckoutShippingAddress'Line2 = GHC.Maybe.Nothing,
      paymentMethodCardWalletVisaCheckoutShippingAddress'PostalCode = GHC.Maybe.Nothing,
      paymentMethodCardWalletVisaCheckoutShippingAddress'State = GHC.Maybe.Nothing
    }
