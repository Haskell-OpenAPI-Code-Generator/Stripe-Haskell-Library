{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema SubscriptionScheduleCurrentPhase
module StripeAPI.Types.SubscriptionScheduleCurrentPhase where

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

-- | Defines the data type for the schema subscription_schedule_current_phase
-- 
-- 
data SubscriptionScheduleCurrentPhase = SubscriptionScheduleCurrentPhase {
  -- | end_date: The end of this phase of the subscription schedule.
  subscriptionScheduleCurrentPhaseEndDate :: GHC.Integer.Type.Integer
  -- | start_date: The start of this phase of the subscription schedule.
  , subscriptionScheduleCurrentPhaseStartDate :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON SubscriptionScheduleCurrentPhase
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "end_date" (subscriptionScheduleCurrentPhaseEndDate obj) : (Data.Aeson..=) "start_date" (subscriptionScheduleCurrentPhaseStartDate obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "end_date" (subscriptionScheduleCurrentPhaseEndDate obj) GHC.Base.<> (Data.Aeson..=) "start_date" (subscriptionScheduleCurrentPhaseStartDate obj))
instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionScheduleCurrentPhase
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SubscriptionScheduleCurrentPhase" (\obj -> (GHC.Base.pure SubscriptionScheduleCurrentPhase GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "end_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "start_date"))