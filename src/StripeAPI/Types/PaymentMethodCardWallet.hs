{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodCardWallet
module StripeAPI.Types.PaymentMethodCardWallet where

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
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodCardWalletMasterpass
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodCardWalletVisaCheckout
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_method_card_wallet@ in the specification.
data PaymentMethodCardWallet = PaymentMethodCardWallet
  { -- | amex_express_checkout:
    paymentMethodCardWalletAmexExpressCheckout :: (GHC.Maybe.Maybe PaymentMethodCardWalletAmexExpressCheckout),
    -- | apple_pay:
    paymentMethodCardWalletApplePay :: (GHC.Maybe.Maybe PaymentMethodCardWalletApplePay),
    -- | dynamic_last4: (For tokenized numbers only.) The last four digits of the device account number.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletDynamicLast4 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | google_pay:
    paymentMethodCardWalletGooglePay :: (GHC.Maybe.Maybe PaymentMethodCardWalletGooglePay),
    -- | link:
    paymentMethodCardWalletLink :: (GHC.Maybe.Maybe PaymentMethodCardWalletLink),
    -- | masterpass:
    paymentMethodCardWalletMasterpass :: (GHC.Maybe.Maybe PaymentMethodCardWalletMasterpass),
    -- | samsung_pay:
    paymentMethodCardWalletSamsungPay :: (GHC.Maybe.Maybe PaymentMethodCardWalletSamsungPay),
    -- | type: The type of the card wallet, one of \`amex_express_checkout\`, \`apple_pay\`, \`google_pay\`, \`masterpass\`, \`samsung_pay\`, \`visa_checkout\`, or \`link\`. An additional hash is included on the Wallet subhash with a name matching this value. It contains additional information specific to the card wallet type.
    paymentMethodCardWalletType :: PaymentMethodCardWalletType',
    -- | visa_checkout:
    paymentMethodCardWalletVisaCheckout :: (GHC.Maybe.Maybe PaymentMethodCardWalletVisaCheckout)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodCardWallet where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amex_express_checkout" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletAmexExpressCheckout obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("apple_pay" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletApplePay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("dynamic_last4" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletDynamicLast4 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("google_pay" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletGooglePay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("link" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletLink obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("masterpass" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpass obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("samsung_pay" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletSamsungPay obj) : ["type" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("visa_checkout" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckout obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amex_express_checkout" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletAmexExpressCheckout obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("apple_pay" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletApplePay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("dynamic_last4" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletDynamicLast4 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("google_pay" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletGooglePay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("link" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletLink obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("masterpass" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpass obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("samsung_pay" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletSamsungPay obj) : ["type" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("visa_checkout" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckout obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodCardWallet where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodCardWallet" (\obj -> ((((((((GHC.Base.pure PaymentMethodCardWallet GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amex_express_checkout")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "apple_pay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "dynamic_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "google_pay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "link")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "masterpass")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "samsung_pay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "visa_checkout"))

-- | Create a new 'PaymentMethodCardWallet' with all required fields.
mkPaymentMethodCardWallet ::
  -- | 'paymentMethodCardWalletType'
  PaymentMethodCardWalletType' ->
  PaymentMethodCardWallet
mkPaymentMethodCardWallet paymentMethodCardWalletType =
  PaymentMethodCardWallet
    { paymentMethodCardWalletAmexExpressCheckout = GHC.Maybe.Nothing,
      paymentMethodCardWalletApplePay = GHC.Maybe.Nothing,
      paymentMethodCardWalletDynamicLast4 = GHC.Maybe.Nothing,
      paymentMethodCardWalletGooglePay = GHC.Maybe.Nothing,
      paymentMethodCardWalletLink = GHC.Maybe.Nothing,
      paymentMethodCardWalletMasterpass = GHC.Maybe.Nothing,
      paymentMethodCardWalletSamsungPay = GHC.Maybe.Nothing,
      paymentMethodCardWalletType = paymentMethodCardWalletType,
      paymentMethodCardWalletVisaCheckout = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.payment_method_card_wallet.properties.type@ in the specification.
--
-- The type of the card wallet, one of \`amex_express_checkout\`, \`apple_pay\`, \`google_pay\`, \`masterpass\`, \`samsung_pay\`, \`visa_checkout\`, or \`link\`. An additional hash is included on the Wallet subhash with a name matching this value. It contains additional information specific to the card wallet type.
data PaymentMethodCardWalletType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodCardWalletType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodCardWalletType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"amex_express_checkout"@
    PaymentMethodCardWalletType'EnumAmexExpressCheckout
  | -- | Represents the JSON value @"apple_pay"@
    PaymentMethodCardWalletType'EnumApplePay
  | -- | Represents the JSON value @"google_pay"@
    PaymentMethodCardWalletType'EnumGooglePay
  | -- | Represents the JSON value @"link"@
    PaymentMethodCardWalletType'EnumLink
  | -- | Represents the JSON value @"masterpass"@
    PaymentMethodCardWalletType'EnumMasterpass
  | -- | Represents the JSON value @"samsung_pay"@
    PaymentMethodCardWalletType'EnumSamsungPay
  | -- | Represents the JSON value @"visa_checkout"@
    PaymentMethodCardWalletType'EnumVisaCheckout
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodCardWalletType' where
  toJSON (PaymentMethodCardWalletType'Other val) = val
  toJSON (PaymentMethodCardWalletType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodCardWalletType'EnumAmexExpressCheckout) = "amex_express_checkout"
  toJSON (PaymentMethodCardWalletType'EnumApplePay) = "apple_pay"
  toJSON (PaymentMethodCardWalletType'EnumGooglePay) = "google_pay"
  toJSON (PaymentMethodCardWalletType'EnumLink) = "link"
  toJSON (PaymentMethodCardWalletType'EnumMasterpass) = "masterpass"
  toJSON (PaymentMethodCardWalletType'EnumSamsungPay) = "samsung_pay"
  toJSON (PaymentMethodCardWalletType'EnumVisaCheckout) = "visa_checkout"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodCardWalletType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "amex_express_checkout" -> PaymentMethodCardWalletType'EnumAmexExpressCheckout
            | val GHC.Classes.== "apple_pay" -> PaymentMethodCardWalletType'EnumApplePay
            | val GHC.Classes.== "google_pay" -> PaymentMethodCardWalletType'EnumGooglePay
            | val GHC.Classes.== "link" -> PaymentMethodCardWalletType'EnumLink
            | val GHC.Classes.== "masterpass" -> PaymentMethodCardWalletType'EnumMasterpass
            | val GHC.Classes.== "samsung_pay" -> PaymentMethodCardWalletType'EnumSamsungPay
            | val GHC.Classes.== "visa_checkout" -> PaymentMethodCardWalletType'EnumVisaCheckout
            | GHC.Base.otherwise -> PaymentMethodCardWalletType'Other val
      )
