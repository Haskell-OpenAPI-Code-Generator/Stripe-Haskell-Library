{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.SourceOrder where

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
import StripeAPI.Types.Shipping
import StripeAPI.Types.SourceOrderItem

data SourceOrder
    = SourceOrder {sourceOrderAmount :: GHC.Integer.Type.Integer,
                   sourceOrderCurrency :: GHC.Base.String,
                   sourceOrderEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                   sourceOrderItems :: (GHC.Maybe.Maybe ([] SourceOrderItem)),
                   sourceOrderShipping :: (GHC.Maybe.Maybe Shipping)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceOrder
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (sourceOrderAmount obj) : (Data.Aeson..=) "currency" (sourceOrderCurrency obj) : (Data.Aeson..=) "email" (sourceOrderEmail obj) : (Data.Aeson..=) "items" (sourceOrderItems obj) : (Data.Aeson..=) "shipping" (sourceOrderShipping obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (sourceOrderAmount obj) GHC.Base.<> ((Data.Aeson..=) "currency" (sourceOrderCurrency obj) GHC.Base.<> ((Data.Aeson..=) "email" (sourceOrderEmail obj) GHC.Base.<> ((Data.Aeson..=) "items" (sourceOrderItems obj) GHC.Base.<> (Data.Aeson..=) "shipping" (sourceOrderShipping obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON SourceOrder
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceOrder" (\obj -> ((((GHC.Base.pure SourceOrder GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "items")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping"))