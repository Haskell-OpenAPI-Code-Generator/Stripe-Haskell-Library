{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema InvoiceSettingSubscriptionSchedulePhaseSetting
module StripeAPI.Types.InvoiceSettingSubscriptionSchedulePhaseSetting where

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

-- | Defines the object schema located at @components.schemas.invoice_setting_subscription_schedule_phase_setting@ in the specification.
data InvoiceSettingSubscriptionSchedulePhaseSetting = InvoiceSettingSubscriptionSchedulePhaseSetting
  { -- | days_until_due: Number of days within which a customer must pay invoices generated by this subscription schedule. This value will be \`null\` for subscription schedules where \`billing=charge_automatically\`.
    invoiceSettingSubscriptionSchedulePhaseSettingDaysUntilDue :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON InvoiceSettingSubscriptionSchedulePhaseSetting where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("days_until_due" Data.Aeson.Types.ToJSON..=)) (invoiceSettingSubscriptionSchedulePhaseSettingDaysUntilDue obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("days_until_due" Data.Aeson.Types.ToJSON..=)) (invoiceSettingSubscriptionSchedulePhaseSettingDaysUntilDue obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON InvoiceSettingSubscriptionSchedulePhaseSetting where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoiceSettingSubscriptionSchedulePhaseSetting" (\obj -> GHC.Base.pure InvoiceSettingSubscriptionSchedulePhaseSetting GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "days_until_due"))

-- | Create a new 'InvoiceSettingSubscriptionSchedulePhaseSetting' with all required fields.
mkInvoiceSettingSubscriptionSchedulePhaseSetting :: InvoiceSettingSubscriptionSchedulePhaseSetting
mkInvoiceSettingSubscriptionSchedulePhaseSetting = InvoiceSettingSubscriptionSchedulePhaseSetting {invoiceSettingSubscriptionSchedulePhaseSettingDaysUntilDue = GHC.Maybe.Nothing}
