{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.RadarReviewResourceSession where

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

data RadarReviewResourceSession
    = RadarReviewResourceSession {radarReviewResourceSessionBrowser :: (GHC.Maybe.Maybe GHC.Base.String),
                                  radarReviewResourceSessionDevice :: (GHC.Maybe.Maybe GHC.Base.String),
                                  radarReviewResourceSessionPlatform :: (GHC.Maybe.Maybe GHC.Base.String),
                                  radarReviewResourceSessionVersion :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON RadarReviewResourceSession
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "browser" (radarReviewResourceSessionBrowser obj) : (Data.Aeson..=) "device" (radarReviewResourceSessionDevice obj) : (Data.Aeson..=) "platform" (radarReviewResourceSessionPlatform obj) : (Data.Aeson..=) "version" (radarReviewResourceSessionVersion obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "browser" (radarReviewResourceSessionBrowser obj) GHC.Base.<> ((Data.Aeson..=) "device" (radarReviewResourceSessionDevice obj) GHC.Base.<> ((Data.Aeson..=) "platform" (radarReviewResourceSessionPlatform obj) GHC.Base.<> (Data.Aeson..=) "version" (radarReviewResourceSessionVersion obj))))
instance Data.Aeson.Types.FromJSON.FromJSON RadarReviewResourceSession
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "RadarReviewResourceSession" (\obj -> (((GHC.Base.pure RadarReviewResourceSession GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "browser")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "device")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "platform")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "version"))