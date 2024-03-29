{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentLinksResourceSubscriptionData
module StripeAPI.Types.PaymentLinksResourceSubscriptionData where

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

-- | Defines the object schema located at @components.schemas.payment_links_resource_subscription_data@ in the specification.
data PaymentLinksResourceSubscriptionData = PaymentLinksResourceSubscriptionData
  { -- | trial_period_days: Integer representing the number of trial period days before the customer is charged for the first time.
    paymentLinksResourceSubscriptionDataTrialPeriodDays :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentLinksResourceSubscriptionData where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("trial_period_days" Data.Aeson.Types.ToJSON..=)) (paymentLinksResourceSubscriptionDataTrialPeriodDays obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("trial_period_days" Data.Aeson.Types.ToJSON..=)) (paymentLinksResourceSubscriptionDataTrialPeriodDays obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentLinksResourceSubscriptionData where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentLinksResourceSubscriptionData" (\obj -> GHC.Base.pure PaymentLinksResourceSubscriptionData GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "trial_period_days"))

-- | Create a new 'PaymentLinksResourceSubscriptionData' with all required fields.
mkPaymentLinksResourceSubscriptionData :: PaymentLinksResourceSubscriptionData
mkPaymentLinksResourceSubscriptionData = PaymentLinksResourceSubscriptionData {paymentLinksResourceSubscriptionDataTrialPeriodDays = GHC.Maybe.Nothing}
