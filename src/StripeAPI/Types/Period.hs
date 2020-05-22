{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema Period
module StripeAPI.Types.Period where

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

-- | Defines the data type for the schema period
-- 
-- 
data Period = Period {
  -- | end: The end date of this usage period. All usage up to and including this point in time is included.
  periodEnd :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | start: The start date of this usage period. All usage after this point in time is included.
  , periodStart :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON Period
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "end" (periodEnd obj) : (Data.Aeson..=) "start" (periodStart obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "end" (periodEnd obj) GHC.Base.<> (Data.Aeson..=) "start" (periodStart obj))
instance Data.Aeson.Types.FromJSON.FromJSON Period
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Period" (\obj -> (GHC.Base.pure Period GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "start"))