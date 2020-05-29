{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema TransferSchedule
module StripeAPI.Types.TransferSchedule where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Generics
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common

-- | Defines the data type for the schema transfer_schedule
-- 
-- 
data TransferSchedule = TransferSchedule {
  -- | delay_days: The number of days charges for the account will be held before being paid out.
  transferScheduleDelayDays :: GHC.Integer.Type.Integer
  -- | interval: How frequently funds will be paid out. One of \`manual\` (payouts only created via API call), \`daily\`, \`weekly\`, or \`monthly\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , transferScheduleInterval :: Data.Text.Internal.Text
  -- | monthly_anchor: The day of the month funds will be paid out. Only shown if \`interval\` is monthly. Payouts scheduled between the 29th and 31st of the month are sent on the last day of shorter months.
  , transferScheduleMonthlyAnchor :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | weekly_anchor: The day of the week funds will be paid out, of the style \'monday\', \'tuesday\', etc. Only shown if \`interval\` is weekly.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , transferScheduleWeeklyAnchor :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON TransferSchedule
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "delay_days" (transferScheduleDelayDays obj) : (Data.Aeson..=) "interval" (transferScheduleInterval obj) : (Data.Aeson..=) "monthly_anchor" (transferScheduleMonthlyAnchor obj) : (Data.Aeson..=) "weekly_anchor" (transferScheduleWeeklyAnchor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "delay_days" (transferScheduleDelayDays obj) GHC.Base.<> ((Data.Aeson..=) "interval" (transferScheduleInterval obj) GHC.Base.<> ((Data.Aeson..=) "monthly_anchor" (transferScheduleMonthlyAnchor obj) GHC.Base.<> (Data.Aeson..=) "weekly_anchor" (transferScheduleWeeklyAnchor obj))))
instance Data.Aeson.Types.FromJSON.FromJSON TransferSchedule
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "TransferSchedule" (\obj -> (((GHC.Base.pure TransferSchedule GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "delay_days")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "monthly_anchor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "weekly_anchor"))