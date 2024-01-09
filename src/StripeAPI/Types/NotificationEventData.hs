{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema NotificationEventData
module StripeAPI.Types.NotificationEventData where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text as Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.notification_event_data@ in the specification.
data NotificationEventData = NotificationEventData
  { -- | object: Object containing the API resource relevant to the event. For example, an \`invoice.created\` event will have a full [invoice object](https:\/\/stripe.com\/docs\/api\#invoice_object) as the value of the object key.
    notificationEventDataObject :: Data.Aeson.Types.Internal.Object,
    -- | previous_attributes: Object containing the names of the updated attributes and their values prior to the event (only included in events of type \`*.updated\`). If an array attribute has any updated elements, this object contains the entire array. In Stripe API versions 2017-04-06 or earlier, an updated array attribute in this object includes only the updated array elements.
    notificationEventDataPreviousAttributes :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON NotificationEventData where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["object" Data.Aeson.Types.ToJSON..= notificationEventDataObject obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("previous_attributes" Data.Aeson.Types.ToJSON..=)) (notificationEventDataPreviousAttributes obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["object" Data.Aeson.Types.ToJSON..= notificationEventDataObject obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("previous_attributes" Data.Aeson.Types.ToJSON..=)) (notificationEventDataPreviousAttributes obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON NotificationEventData where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "NotificationEventData" (\obj -> (GHC.Base.pure NotificationEventData GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "previous_attributes"))

-- | Create a new 'NotificationEventData' with all required fields.
mkNotificationEventData ::
  -- | 'notificationEventDataObject'
  Data.Aeson.Types.Internal.Object ->
  NotificationEventData
mkNotificationEventData notificationEventDataObject =
  NotificationEventData
    { notificationEventDataObject = notificationEventDataObject,
      notificationEventDataPreviousAttributes = GHC.Maybe.Nothing
    }
