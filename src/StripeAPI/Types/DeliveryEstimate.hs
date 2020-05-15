{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.DeliveryEstimate where

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

data DeliveryEstimate
    = DeliveryEstimate {deliveryEstimateDate :: (GHC.Maybe.Maybe GHC.Base.String),
                        deliveryEstimateEarliest :: (GHC.Maybe.Maybe GHC.Base.String),
                        deliveryEstimateLatest :: (GHC.Maybe.Maybe GHC.Base.String),
                        deliveryEstimateType :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeliveryEstimate
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "date" (deliveryEstimateDate obj) : (Data.Aeson..=) "earliest" (deliveryEstimateEarliest obj) : (Data.Aeson..=) "latest" (deliveryEstimateLatest obj) : (Data.Aeson..=) "type" (deliveryEstimateType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "date" (deliveryEstimateDate obj) GHC.Base.<> ((Data.Aeson..=) "earliest" (deliveryEstimateEarliest obj) GHC.Base.<> ((Data.Aeson..=) "latest" (deliveryEstimateLatest obj) GHC.Base.<> (Data.Aeson..=) "type" (deliveryEstimateType obj))))
instance Data.Aeson.Types.FromJSON.FromJSON DeliveryEstimate
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeliveryEstimate" (\obj -> (((GHC.Base.pure DeliveryEstimate GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "earliest")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "latest")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))