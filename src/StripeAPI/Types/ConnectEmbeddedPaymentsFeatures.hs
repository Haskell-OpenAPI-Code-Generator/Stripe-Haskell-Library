{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema ConnectEmbeddedPaymentsFeatures
module StripeAPI.Types.ConnectEmbeddedPaymentsFeatures where

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

-- | Defines the object schema located at @components.schemas.connect_embedded_payments_features@ in the specification.
data ConnectEmbeddedPaymentsFeatures = ConnectEmbeddedPaymentsFeatures
  { -- | capture_payments: Whether to allow capturing and cancelling payment intents. This is \`true\` by default.
    connectEmbeddedPaymentsFeaturesCapturePayments :: GHC.Types.Bool,
    -- | dispute_management: Whether to allow responding to disputes, including submitting evidence and accepting disputes. This is \`true\` by default.
    connectEmbeddedPaymentsFeaturesDisputeManagement :: GHC.Types.Bool,
    -- | refund_management: Whether to allow sending refunds. This is \`true\` by default.
    connectEmbeddedPaymentsFeaturesRefundManagement :: GHC.Types.Bool
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON ConnectEmbeddedPaymentsFeatures where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["capture_payments" Data.Aeson.Types.ToJSON..= connectEmbeddedPaymentsFeaturesCapturePayments obj] : ["dispute_management" Data.Aeson.Types.ToJSON..= connectEmbeddedPaymentsFeaturesDisputeManagement obj] : ["refund_management" Data.Aeson.Types.ToJSON..= connectEmbeddedPaymentsFeaturesRefundManagement obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["capture_payments" Data.Aeson.Types.ToJSON..= connectEmbeddedPaymentsFeaturesCapturePayments obj] : ["dispute_management" Data.Aeson.Types.ToJSON..= connectEmbeddedPaymentsFeaturesDisputeManagement obj] : ["refund_management" Data.Aeson.Types.ToJSON..= connectEmbeddedPaymentsFeaturesRefundManagement obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON ConnectEmbeddedPaymentsFeatures where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "ConnectEmbeddedPaymentsFeatures" (\obj -> ((GHC.Base.pure ConnectEmbeddedPaymentsFeatures GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "capture_payments")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "dispute_management")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "refund_management"))

-- | Create a new 'ConnectEmbeddedPaymentsFeatures' with all required fields.
mkConnectEmbeddedPaymentsFeatures ::
  -- | 'connectEmbeddedPaymentsFeaturesCapturePayments'
  GHC.Types.Bool ->
  -- | 'connectEmbeddedPaymentsFeaturesDisputeManagement'
  GHC.Types.Bool ->
  -- | 'connectEmbeddedPaymentsFeaturesRefundManagement'
  GHC.Types.Bool ->
  ConnectEmbeddedPaymentsFeatures
mkConnectEmbeddedPaymentsFeatures connectEmbeddedPaymentsFeaturesCapturePayments connectEmbeddedPaymentsFeaturesDisputeManagement connectEmbeddedPaymentsFeaturesRefundManagement =
  ConnectEmbeddedPaymentsFeatures
    { connectEmbeddedPaymentsFeaturesCapturePayments = connectEmbeddedPaymentsFeaturesCapturePayments,
      connectEmbeddedPaymentsFeaturesDisputeManagement = connectEmbeddedPaymentsFeaturesDisputeManagement,
      connectEmbeddedPaymentsFeaturesRefundManagement = connectEmbeddedPaymentsFeaturesRefundManagement
    }
