{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodDetailsWechatPay
module StripeAPI.Types.PaymentMethodDetailsWechatPay where

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

-- | Defines the object schema located at @components.schemas.payment_method_details_wechat_pay@ in the specification.
data PaymentMethodDetailsWechatPay = PaymentMethodDetailsWechatPay
  { -- | fingerprint: Uniquely identifies this particular WeChat Pay account. You can use this attribute to check whether two WeChat accounts are the same.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsWechatPayFingerprint :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | transaction_id: Transaction ID of this particular WeChat Pay transaction.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsWechatPayTransactionId :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsWechatPay where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fingerprint" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsWechatPayFingerprint obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transaction_id" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsWechatPayTransactionId obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fingerprint" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsWechatPayFingerprint obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transaction_id" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsWechatPayTransactionId obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsWechatPay where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsWechatPay" (\obj -> (GHC.Base.pure PaymentMethodDetailsWechatPay GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "transaction_id"))

-- | Create a new 'PaymentMethodDetailsWechatPay' with all required fields.
mkPaymentMethodDetailsWechatPay :: PaymentMethodDetailsWechatPay
mkPaymentMethodDetailsWechatPay =
  PaymentMethodDetailsWechatPay
    { paymentMethodDetailsWechatPayFingerprint = GHC.Maybe.Nothing,
      paymentMethodDetailsWechatPayTransactionId = GHC.Maybe.Nothing
    }
