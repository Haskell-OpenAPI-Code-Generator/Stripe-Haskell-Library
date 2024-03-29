{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema OutboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitions
module StripeAPI.Types.OutboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitions where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
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

-- | Defines the object schema located at @components.schemas.outbound_payments_resource_treasury_outbound_payment_resource_status_transitions@ in the specification.
data OutboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitions = OutboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitions
  { -- | canceled_at: Timestamp describing when an OutboundPayment changed status to \`canceled\`.
    outboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitionsCanceledAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | failed_at: Timestamp describing when an OutboundPayment changed status to \`failed\`.
    outboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitionsFailedAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | posted_at: Timestamp describing when an OutboundPayment changed status to \`posted\`.
    outboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitionsPostedAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | returned_at: Timestamp describing when an OutboundPayment changed status to \`returned\`.
    outboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitionsReturnedAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON OutboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitions where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("canceled_at" Data.Aeson.Types.ToJSON..=)) (outboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitionsCanceledAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("failed_at" Data.Aeson.Types.ToJSON..=)) (outboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitionsFailedAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("posted_at" Data.Aeson.Types.ToJSON..=)) (outboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitionsPostedAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("returned_at" Data.Aeson.Types.ToJSON..=)) (outboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitionsReturnedAt obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("canceled_at" Data.Aeson.Types.ToJSON..=)) (outboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitionsCanceledAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("failed_at" Data.Aeson.Types.ToJSON..=)) (outboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitionsFailedAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("posted_at" Data.Aeson.Types.ToJSON..=)) (outboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitionsPostedAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("returned_at" Data.Aeson.Types.ToJSON..=)) (outboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitionsReturnedAt obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON OutboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitions where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "OutboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitions" (\obj -> (((GHC.Base.pure OutboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "canceled_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "failed_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "posted_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "returned_at"))

-- | Create a new 'OutboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitions' with all required fields.
mkOutboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitions :: OutboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitions
mkOutboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitions =
  OutboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitions
    { outboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitionsCanceledAt = GHC.Maybe.Nothing,
      outboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitionsFailedAt = GHC.Maybe.Nothing,
      outboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitionsPostedAt = GHC.Maybe.Nothing,
      outboundPaymentsResourceTreasuryOutboundPaymentResourceStatusTransitionsReturnedAt = GHC.Maybe.Nothing
    }
