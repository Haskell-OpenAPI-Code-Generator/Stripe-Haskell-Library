{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.SourceOrderItem where

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

data SourceOrderItem
    = SourceOrderItem {sourceOrderItemAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                       sourceOrderItemCurrency :: (GHC.Maybe.Maybe GHC.Base.String),
                       sourceOrderItemDescription :: (GHC.Maybe.Maybe GHC.Base.String),
                       sourceOrderItemQuantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                       sourceOrderItemType :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceOrderItem
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (sourceOrderItemAmount obj) : (Data.Aeson..=) "currency" (sourceOrderItemCurrency obj) : (Data.Aeson..=) "description" (sourceOrderItemDescription obj) : (Data.Aeson..=) "quantity" (sourceOrderItemQuantity obj) : (Data.Aeson..=) "type" (sourceOrderItemType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (sourceOrderItemAmount obj) GHC.Base.<> ((Data.Aeson..=) "currency" (sourceOrderItemCurrency obj) GHC.Base.<> ((Data.Aeson..=) "description" (sourceOrderItemDescription obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (sourceOrderItemQuantity obj) GHC.Base.<> (Data.Aeson..=) "type" (sourceOrderItemType obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON SourceOrderItem
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceOrderItem" (\obj -> ((((GHC.Base.pure SourceOrderItem GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type"))