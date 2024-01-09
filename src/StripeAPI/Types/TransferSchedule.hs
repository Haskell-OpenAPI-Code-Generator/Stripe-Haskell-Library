{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema TransferSchedule
module StripeAPI.Types.TransferSchedule where

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
import qualified Data.Text as Data.Text.Internal
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

-- | Defines the object schema located at @components.schemas.transfer_schedule@ in the specification.
data TransferSchedule = TransferSchedule
  { -- | delay_days: The number of days charges for the account will be held before being paid out.
    transferScheduleDelayDays :: GHC.Types.Int,
    -- | interval: How frequently funds will be paid out. One of \`manual\` (payouts only created via API call), \`daily\`, \`weekly\`, or \`monthly\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    transferScheduleInterval :: Data.Text.Internal.Text,
    -- | monthly_anchor: The day of the month funds will be paid out. Only shown if \`interval\` is monthly. Payouts scheduled between the 29th and 31st of the month are sent on the last day of shorter months.
    transferScheduleMonthlyAnchor :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | weekly_anchor: The day of the week funds will be paid out, of the style \'monday\', \'tuesday\', etc. Only shown if \`interval\` is weekly.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    transferScheduleWeeklyAnchor :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON TransferSchedule where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["delay_days" Data.Aeson.Types.ToJSON..= transferScheduleDelayDays obj] : ["interval" Data.Aeson.Types.ToJSON..= transferScheduleInterval obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("monthly_anchor" Data.Aeson.Types.ToJSON..=)) (transferScheduleMonthlyAnchor obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("weekly_anchor" Data.Aeson.Types.ToJSON..=)) (transferScheduleWeeklyAnchor obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["delay_days" Data.Aeson.Types.ToJSON..= transferScheduleDelayDays obj] : ["interval" Data.Aeson.Types.ToJSON..= transferScheduleInterval obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("monthly_anchor" Data.Aeson.Types.ToJSON..=)) (transferScheduleMonthlyAnchor obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("weekly_anchor" Data.Aeson.Types.ToJSON..=)) (transferScheduleWeeklyAnchor obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON TransferSchedule where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "TransferSchedule" (\obj -> (((GHC.Base.pure TransferSchedule GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "delay_days")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "monthly_anchor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "weekly_anchor"))

-- | Create a new 'TransferSchedule' with all required fields.
mkTransferSchedule ::
  -- | 'transferScheduleDelayDays'
  GHC.Types.Int ->
  -- | 'transferScheduleInterval'
  Data.Text.Internal.Text ->
  TransferSchedule
mkTransferSchedule transferScheduleDelayDays transferScheduleInterval =
  TransferSchedule
    { transferScheduleDelayDays = transferScheduleDelayDays,
      transferScheduleInterval = transferScheduleInterval,
      transferScheduleMonthlyAnchor = GHC.Maybe.Nothing,
      transferScheduleWeeklyAnchor = GHC.Maybe.Nothing
    }
