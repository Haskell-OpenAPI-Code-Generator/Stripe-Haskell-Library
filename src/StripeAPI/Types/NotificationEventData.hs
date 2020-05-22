{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema NotificationEventData
module StripeAPI.Types.NotificationEventData where

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

-- | Defines the data type for the schema notification_event_data
-- 
-- 
data NotificationEventData = NotificationEventData {
  -- | object: Object containing the API resource relevant to the event. For example, an \`invoice.created\` event will have a full [invoice object](https:\/\/stripe.com\/docs\/api\#invoice_object) as the value of the object key.
  notificationEventDataObject :: NotificationEventDataObject'
  -- | previous_attributes: Object containing the names of the attributes that have changed, and their previous values (sent along only with *.updated events).
  , notificationEventDataPreviousAttributes :: (GHC.Maybe.Maybe NotificationEventDataPreviousAttributes')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON NotificationEventData
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "object" (notificationEventDataObject obj) : (Data.Aeson..=) "previous_attributes" (notificationEventDataPreviousAttributes obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "object" (notificationEventDataObject obj) GHC.Base.<> (Data.Aeson..=) "previous_attributes" (notificationEventDataPreviousAttributes obj))
instance Data.Aeson.Types.FromJSON.FromJSON NotificationEventData
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "NotificationEventData" (\obj -> (GHC.Base.pure NotificationEventData GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "previous_attributes"))
-- | Defines the data type for the schema notification_event_dataObject\'
-- 
-- Object containing the API resource relevant to the event. For example, an \`invoice.created\` event will have a full [invoice object](https:\/\/stripe.com\/docs\/api\#invoice_object) as the value of the object key.
data NotificationEventDataObject' = NotificationEventDataObject' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON NotificationEventDataObject'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON NotificationEventDataObject'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "NotificationEventDataObject'" (\obj -> GHC.Base.pure NotificationEventDataObject')
-- | Defines the data type for the schema notification_event_dataPrevious_attributes\'
-- 
-- Object containing the names of the attributes that have changed, and their previous values (sent along only with *.updated events).
data NotificationEventDataPreviousAttributes' = NotificationEventDataPreviousAttributes' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON NotificationEventDataPreviousAttributes'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON NotificationEventDataPreviousAttributes'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "NotificationEventDataPreviousAttributes'" (\obj -> GHC.Base.pure NotificationEventDataPreviousAttributes')