{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentIntentNextAction
module StripeAPI.Types.PaymentIntentNextAction where

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
import {-# SOURCE #-} StripeAPI.Types.PaymentIntentNextActionAlipayHandleRedirect
import {-# SOURCE #-} StripeAPI.Types.PaymentIntentNextActionBoleto
import {-# SOURCE #-} StripeAPI.Types.PaymentIntentNextActionCardAwaitNotification
import {-# SOURCE #-} StripeAPI.Types.PaymentIntentNextActionCashappHandleRedirectOrDisplayQrCode
import {-# SOURCE #-} StripeAPI.Types.PaymentIntentNextActionDisplayBankTransferInstructions
import {-# SOURCE #-} StripeAPI.Types.PaymentIntentNextActionDisplayOxxoDetails
import {-# SOURCE #-} StripeAPI.Types.PaymentIntentNextActionKonbini
import {-# SOURCE #-} StripeAPI.Types.PaymentIntentNextActionPaynowDisplayQrCode
import {-# SOURCE #-} StripeAPI.Types.PaymentIntentNextActionPixDisplayQrCode
import {-# SOURCE #-} StripeAPI.Types.PaymentIntentNextActionPromptpayDisplayQrCode
import {-# SOURCE #-} StripeAPI.Types.PaymentIntentNextActionRedirectToUrl
import {-# SOURCE #-} StripeAPI.Types.PaymentIntentNextActionVerifyWithMicrodeposits
import {-# SOURCE #-} StripeAPI.Types.PaymentIntentNextActionWechatPayDisplayQrCode
import {-# SOURCE #-} StripeAPI.Types.PaymentIntentNextActionWechatPayRedirectToAndroidApp
import {-# SOURCE #-} StripeAPI.Types.PaymentIntentNextActionWechatPayRedirectToIosApp
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_intent_next_action@ in the specification.
data PaymentIntentNextAction = PaymentIntentNextAction
  { -- | alipay_handle_redirect:
    paymentIntentNextActionAlipayHandleRedirect :: (GHC.Maybe.Maybe PaymentIntentNextActionAlipayHandleRedirect),
    -- | boleto_display_details:
    paymentIntentNextActionBoletoDisplayDetails :: (GHC.Maybe.Maybe PaymentIntentNextActionBoleto),
    -- | card_await_notification:
    paymentIntentNextActionCardAwaitNotification :: (GHC.Maybe.Maybe PaymentIntentNextActionCardAwaitNotification),
    -- | cashapp_handle_redirect_or_display_qr_code:
    paymentIntentNextActionCashappHandleRedirectOrDisplayQrCode :: (GHC.Maybe.Maybe PaymentIntentNextActionCashappHandleRedirectOrDisplayQrCode),
    -- | display_bank_transfer_instructions:
    paymentIntentNextActionDisplayBankTransferInstructions :: (GHC.Maybe.Maybe PaymentIntentNextActionDisplayBankTransferInstructions),
    -- | konbini_display_details:
    paymentIntentNextActionKonbiniDisplayDetails :: (GHC.Maybe.Maybe PaymentIntentNextActionKonbini),
    -- | oxxo_display_details:
    paymentIntentNextActionOxxoDisplayDetails :: (GHC.Maybe.Maybe PaymentIntentNextActionDisplayOxxoDetails),
    -- | paynow_display_qr_code:
    paymentIntentNextActionPaynowDisplayQrCode :: (GHC.Maybe.Maybe PaymentIntentNextActionPaynowDisplayQrCode),
    -- | pix_display_qr_code:
    paymentIntentNextActionPixDisplayQrCode :: (GHC.Maybe.Maybe PaymentIntentNextActionPixDisplayQrCode),
    -- | promptpay_display_qr_code:
    paymentIntentNextActionPromptpayDisplayQrCode :: (GHC.Maybe.Maybe PaymentIntentNextActionPromptpayDisplayQrCode),
    -- | redirect_to_url:
    paymentIntentNextActionRedirectToUrl :: (GHC.Maybe.Maybe PaymentIntentNextActionRedirectToUrl),
    -- | type: Type of the next action to perform, one of \`redirect_to_url\`, \`use_stripe_sdk\`, \`alipay_handle_redirect\`, \`oxxo_display_details\`, or \`verify_with_microdeposits\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentIntentNextActionType :: Data.Text.Internal.Text,
    -- | use_stripe_sdk: When confirming a PaymentIntent with Stripe.js, Stripe.js depends on the contents of this dictionary to invoke authentication flows. The shape of the contents is subject to change and is only intended to be used by Stripe.js.
    paymentIntentNextActionUseStripeSdk :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | verify_with_microdeposits:
    paymentIntentNextActionVerifyWithMicrodeposits :: (GHC.Maybe.Maybe PaymentIntentNextActionVerifyWithMicrodeposits),
    -- | wechat_pay_display_qr_code:
    paymentIntentNextActionWechatPayDisplayQrCode :: (GHC.Maybe.Maybe PaymentIntentNextActionWechatPayDisplayQrCode),
    -- | wechat_pay_redirect_to_android_app:
    paymentIntentNextActionWechatPayRedirectToAndroidApp :: (GHC.Maybe.Maybe PaymentIntentNextActionWechatPayRedirectToAndroidApp),
    -- | wechat_pay_redirect_to_ios_app:
    paymentIntentNextActionWechatPayRedirectToIosApp :: (GHC.Maybe.Maybe PaymentIntentNextActionWechatPayRedirectToIosApp)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentIntentNextAction where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("alipay_handle_redirect" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionAlipayHandleRedirect obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("boleto_display_details" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionBoletoDisplayDetails obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card_await_notification" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionCardAwaitNotification obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cashapp_handle_redirect_or_display_qr_code" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionCashappHandleRedirectOrDisplayQrCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("display_bank_transfer_instructions" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionDisplayBankTransferInstructions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("konbini_display_details" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionKonbiniDisplayDetails obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("oxxo_display_details" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionOxxoDisplayDetails obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("paynow_display_qr_code" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionPaynowDisplayQrCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pix_display_qr_code" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionPixDisplayQrCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("promptpay_display_qr_code" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionPromptpayDisplayQrCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("redirect_to_url" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionRedirectToUrl obj) : ["type" Data.Aeson.Types.ToJSON..= paymentIntentNextActionType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("use_stripe_sdk" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionUseStripeSdk obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verify_with_microdeposits" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionVerifyWithMicrodeposits obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("wechat_pay_display_qr_code" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionWechatPayDisplayQrCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("wechat_pay_redirect_to_android_app" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionWechatPayRedirectToAndroidApp obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("wechat_pay_redirect_to_ios_app" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionWechatPayRedirectToIosApp obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("alipay_handle_redirect" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionAlipayHandleRedirect obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("boleto_display_details" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionBoletoDisplayDetails obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card_await_notification" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionCardAwaitNotification obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cashapp_handle_redirect_or_display_qr_code" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionCashappHandleRedirectOrDisplayQrCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("display_bank_transfer_instructions" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionDisplayBankTransferInstructions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("konbini_display_details" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionKonbiniDisplayDetails obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("oxxo_display_details" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionOxxoDisplayDetails obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("paynow_display_qr_code" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionPaynowDisplayQrCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pix_display_qr_code" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionPixDisplayQrCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("promptpay_display_qr_code" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionPromptpayDisplayQrCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("redirect_to_url" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionRedirectToUrl obj) : ["type" Data.Aeson.Types.ToJSON..= paymentIntentNextActionType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("use_stripe_sdk" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionUseStripeSdk obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verify_with_microdeposits" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionVerifyWithMicrodeposits obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("wechat_pay_display_qr_code" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionWechatPayDisplayQrCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("wechat_pay_redirect_to_android_app" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionWechatPayRedirectToAndroidApp obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("wechat_pay_redirect_to_ios_app" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionWechatPayRedirectToIosApp obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentNextAction where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentIntentNextAction" (\obj -> ((((((((((((((((GHC.Base.pure PaymentIntentNextAction GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "alipay_handle_redirect")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "boleto_display_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "card_await_notification")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cashapp_handle_redirect_or_display_qr_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "display_bank_transfer_instructions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "konbini_display_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "oxxo_display_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "paynow_display_qr_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "pix_display_qr_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "promptpay_display_qr_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "redirect_to_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "use_stripe_sdk")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "verify_with_microdeposits")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "wechat_pay_display_qr_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "wechat_pay_redirect_to_android_app")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "wechat_pay_redirect_to_ios_app"))

-- | Create a new 'PaymentIntentNextAction' with all required fields.
mkPaymentIntentNextAction ::
  -- | 'paymentIntentNextActionType'
  Data.Text.Internal.Text ->
  PaymentIntentNextAction
mkPaymentIntentNextAction paymentIntentNextActionType =
  PaymentIntentNextAction
    { paymentIntentNextActionAlipayHandleRedirect = GHC.Maybe.Nothing,
      paymentIntentNextActionBoletoDisplayDetails = GHC.Maybe.Nothing,
      paymentIntentNextActionCardAwaitNotification = GHC.Maybe.Nothing,
      paymentIntentNextActionCashappHandleRedirectOrDisplayQrCode = GHC.Maybe.Nothing,
      paymentIntentNextActionDisplayBankTransferInstructions = GHC.Maybe.Nothing,
      paymentIntentNextActionKonbiniDisplayDetails = GHC.Maybe.Nothing,
      paymentIntentNextActionOxxoDisplayDetails = GHC.Maybe.Nothing,
      paymentIntentNextActionPaynowDisplayQrCode = GHC.Maybe.Nothing,
      paymentIntentNextActionPixDisplayQrCode = GHC.Maybe.Nothing,
      paymentIntentNextActionPromptpayDisplayQrCode = GHC.Maybe.Nothing,
      paymentIntentNextActionRedirectToUrl = GHC.Maybe.Nothing,
      paymentIntentNextActionType = paymentIntentNextActionType,
      paymentIntentNextActionUseStripeSdk = GHC.Maybe.Nothing,
      paymentIntentNextActionVerifyWithMicrodeposits = GHC.Maybe.Nothing,
      paymentIntentNextActionWechatPayDisplayQrCode = GHC.Maybe.Nothing,
      paymentIntentNextActionWechatPayRedirectToAndroidApp = GHC.Maybe.Nothing,
      paymentIntentNextActionWechatPayRedirectToIosApp = GHC.Maybe.Nothing
    }
