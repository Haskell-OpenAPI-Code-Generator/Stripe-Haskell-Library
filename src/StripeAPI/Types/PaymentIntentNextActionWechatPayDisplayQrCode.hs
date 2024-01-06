{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentIntentNextActionWechatPayDisplayQrCode
module StripeAPI.Types.PaymentIntentNextActionWechatPayDisplayQrCode where

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

-- | Defines the object schema located at @components.schemas.payment_intent_next_action_wechat_pay_display_qr_code@ in the specification.
data PaymentIntentNextActionWechatPayDisplayQrCode = PaymentIntentNextActionWechatPayDisplayQrCode
  { -- | data: The data being used to generate QR code
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentIntentNextActionWechatPayDisplayQrCodeData :: Data.Text.Internal.Text,
    -- | hosted_instructions_url: The URL to the hosted WeChat Pay instructions page, which allows customers to view the WeChat Pay QR code.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentIntentNextActionWechatPayDisplayQrCodeHostedInstructionsUrl :: Data.Text.Internal.Text,
    -- | image_data_url: The base64 image data for a pre-generated QR code
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentIntentNextActionWechatPayDisplayQrCodeImageDataUrl :: Data.Text.Internal.Text,
    -- | image_url_png: The image_url_png string used to render QR code
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentIntentNextActionWechatPayDisplayQrCodeImageUrlPng :: Data.Text.Internal.Text,
    -- | image_url_svg: The image_url_svg string used to render QR code
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentIntentNextActionWechatPayDisplayQrCodeImageUrlSvg :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentIntentNextActionWechatPayDisplayQrCode where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= paymentIntentNextActionWechatPayDisplayQrCodeData obj] : ["hosted_instructions_url" Data.Aeson.Types.ToJSON..= paymentIntentNextActionWechatPayDisplayQrCodeHostedInstructionsUrl obj] : ["image_data_url" Data.Aeson.Types.ToJSON..= paymentIntentNextActionWechatPayDisplayQrCodeImageDataUrl obj] : ["image_url_png" Data.Aeson.Types.ToJSON..= paymentIntentNextActionWechatPayDisplayQrCodeImageUrlPng obj] : ["image_url_svg" Data.Aeson.Types.ToJSON..= paymentIntentNextActionWechatPayDisplayQrCodeImageUrlSvg obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= paymentIntentNextActionWechatPayDisplayQrCodeData obj] : ["hosted_instructions_url" Data.Aeson.Types.ToJSON..= paymentIntentNextActionWechatPayDisplayQrCodeHostedInstructionsUrl obj] : ["image_data_url" Data.Aeson.Types.ToJSON..= paymentIntentNextActionWechatPayDisplayQrCodeImageDataUrl obj] : ["image_url_png" Data.Aeson.Types.ToJSON..= paymentIntentNextActionWechatPayDisplayQrCodeImageUrlPng obj] : ["image_url_svg" Data.Aeson.Types.ToJSON..= paymentIntentNextActionWechatPayDisplayQrCodeImageUrlSvg obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentNextActionWechatPayDisplayQrCode where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentIntentNextActionWechatPayDisplayQrCode" (\obj -> ((((GHC.Base.pure PaymentIntentNextActionWechatPayDisplayQrCode GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "hosted_instructions_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "image_data_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "image_url_png")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "image_url_svg"))

-- | Create a new 'PaymentIntentNextActionWechatPayDisplayQrCode' with all required fields.
mkPaymentIntentNextActionWechatPayDisplayQrCode ::
  -- | 'paymentIntentNextActionWechatPayDisplayQrCodeData'
  Data.Text.Internal.Text ->
  -- | 'paymentIntentNextActionWechatPayDisplayQrCodeHostedInstructionsUrl'
  Data.Text.Internal.Text ->
  -- | 'paymentIntentNextActionWechatPayDisplayQrCodeImageDataUrl'
  Data.Text.Internal.Text ->
  -- | 'paymentIntentNextActionWechatPayDisplayQrCodeImageUrlPng'
  Data.Text.Internal.Text ->
  -- | 'paymentIntentNextActionWechatPayDisplayQrCodeImageUrlSvg'
  Data.Text.Internal.Text ->
  PaymentIntentNextActionWechatPayDisplayQrCode
mkPaymentIntentNextActionWechatPayDisplayQrCode paymentIntentNextActionWechatPayDisplayQrCodeData paymentIntentNextActionWechatPayDisplayQrCodeHostedInstructionsUrl paymentIntentNextActionWechatPayDisplayQrCodeImageDataUrl paymentIntentNextActionWechatPayDisplayQrCodeImageUrlPng paymentIntentNextActionWechatPayDisplayQrCodeImageUrlSvg =
  PaymentIntentNextActionWechatPayDisplayQrCode
    { paymentIntentNextActionWechatPayDisplayQrCodeData = paymentIntentNextActionWechatPayDisplayQrCodeData,
      paymentIntentNextActionWechatPayDisplayQrCodeHostedInstructionsUrl = paymentIntentNextActionWechatPayDisplayQrCodeHostedInstructionsUrl,
      paymentIntentNextActionWechatPayDisplayQrCodeImageDataUrl = paymentIntentNextActionWechatPayDisplayQrCodeImageDataUrl,
      paymentIntentNextActionWechatPayDisplayQrCodeImageUrlPng = paymentIntentNextActionWechatPayDisplayQrCodeImageUrlPng,
      paymentIntentNextActionWechatPayDisplayQrCodeImageUrlSvg = paymentIntentNextActionWechatPayDisplayQrCodeImageUrlSvg
    }
