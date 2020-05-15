{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.NotificationEventRequest where

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

data NotificationEventRequest
    = NotificationEventRequest {notificationEventRequestId :: (GHC.Maybe.Maybe GHC.Base.String),
                                notificationEventRequestIdempotencyKey :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON NotificationEventRequest
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "id" (notificationEventRequestId obj) : (Data.Aeson..=) "idempotency_key" (notificationEventRequestIdempotencyKey obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "id" (notificationEventRequestId obj) GHC.Base.<> (Data.Aeson..=) "idempotency_key" (notificationEventRequestIdempotencyKey obj))
instance Data.Aeson.Types.FromJSON.FromJSON NotificationEventRequest
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "NotificationEventRequest" (\obj -> (GHC.Base.pure NotificationEventRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "idempotency_key"))