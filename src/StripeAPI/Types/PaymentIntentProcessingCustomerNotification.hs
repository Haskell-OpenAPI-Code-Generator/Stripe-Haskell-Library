{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentIntentProcessingCustomerNotification
module StripeAPI.Types.PaymentIntentProcessingCustomerNotification where

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

-- | Defines the object schema located at @components.schemas.payment_intent_processing_customer_notification@ in the specification.
data PaymentIntentProcessingCustomerNotification = PaymentIntentProcessingCustomerNotification
  { -- | approval_requested: Whether customer approval has been requested for this payment. For payments greater than INR 15000 or mandate amount, the customer must provide explicit approval of the payment with their bank.
    paymentIntentProcessingCustomerNotificationApprovalRequested :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Bool)),
    -- | completes_at: If customer approval is required, they need to provide approval before this time.
    paymentIntentProcessingCustomerNotificationCompletesAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentIntentProcessingCustomerNotification where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("approval_requested" Data.Aeson.Types.ToJSON..=)) (paymentIntentProcessingCustomerNotificationApprovalRequested obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("completes_at" Data.Aeson.Types.ToJSON..=)) (paymentIntentProcessingCustomerNotificationCompletesAt obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("approval_requested" Data.Aeson.Types.ToJSON..=)) (paymentIntentProcessingCustomerNotificationApprovalRequested obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("completes_at" Data.Aeson.Types.ToJSON..=)) (paymentIntentProcessingCustomerNotificationCompletesAt obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentProcessingCustomerNotification where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentIntentProcessingCustomerNotification" (\obj -> (GHC.Base.pure PaymentIntentProcessingCustomerNotification GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "approval_requested")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "completes_at"))

-- | Create a new 'PaymentIntentProcessingCustomerNotification' with all required fields.
mkPaymentIntentProcessingCustomerNotification :: PaymentIntentProcessingCustomerNotification
mkPaymentIntentProcessingCustomerNotification =
  PaymentIntentProcessingCustomerNotification
    { paymentIntentProcessingCustomerNotificationApprovalRequested = GHC.Maybe.Nothing,
      paymentIntentProcessingCustomerNotificationCompletesAt = GHC.Maybe.Nothing
    }
