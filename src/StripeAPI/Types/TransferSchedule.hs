{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

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

data TransferSchedule
    = TransferSchedule {transferScheduleDelayDays :: GHC.Integer.Type.Integer,
                        transferScheduleInterval :: GHC.Base.String,
                        transferScheduleMonthlyAnchor :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                        transferScheduleWeeklyAnchor :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON TransferSchedule
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "delay_days" (transferScheduleDelayDays obj) : (Data.Aeson..=) "interval" (transferScheduleInterval obj) : (Data.Aeson..=) "monthly_anchor" (transferScheduleMonthlyAnchor obj) : (Data.Aeson..=) "weekly_anchor" (transferScheduleWeeklyAnchor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "delay_days" (transferScheduleDelayDays obj) GHC.Base.<> ((Data.Aeson..=) "interval" (transferScheduleInterval obj) GHC.Base.<> ((Data.Aeson..=) "monthly_anchor" (transferScheduleMonthlyAnchor obj) GHC.Base.<> (Data.Aeson..=) "weekly_anchor" (transferScheduleWeeklyAnchor obj))))
instance Data.Aeson.Types.FromJSON.FromJSON TransferSchedule
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "TransferSchedule" (\obj -> (((GHC.Base.pure TransferSchedule GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "delay_days")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "monthly_anchor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "weekly_anchor"))