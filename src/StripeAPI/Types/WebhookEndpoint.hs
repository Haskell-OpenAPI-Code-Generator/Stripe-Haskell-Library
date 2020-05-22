{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema WebhookEndpoint
module StripeAPI.Types.WebhookEndpoint where

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

-- | Defines the data type for the schema webhook_endpoint
-- 
-- You can configure [webhook endpoints](https:\/\/stripe.com\/docs\/webhooks\/) via the API to be
-- notified about events that happen in your Stripe account or connected
-- accounts.
-- 
-- Most users configure webhooks from [the dashboard](https:\/\/dashboard.stripe.com\/webhooks), which provides a user interface for registering and testing your webhook endpoints.
-- 
-- Related guide: [Setting up Webhooks](https:\/\/stripe.com\/docs\/webhooks\/configure).
data WebhookEndpoint = WebhookEndpoint {
  -- | api_version: The API version events are rendered as for this webhook endpoint.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  webhookEndpointApiVersion :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | application: The ID of the associated Connect application.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , webhookEndpointApplication :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  , webhookEndpointCreated :: GHC.Integer.Type.Integer
  -- | enabled_events: The list of events to enable for this endpoint. \`[\'*\']\` indicates that all events are enabled, except those that require explicit selection.
  , webhookEndpointEnabledEvents :: ([] GHC.Base.String)
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , webhookEndpointId :: GHC.Base.String
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , webhookEndpointLivemode :: GHC.Types.Bool
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , webhookEndpointObject :: WebhookEndpointObject'
  -- | secret: The endpoint\'s secret, used to generate [webhook signatures](https:\/\/stripe.com\/docs\/webhooks\/signatures). Only returned at creation.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , webhookEndpointSecret :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | status: The status of the webhook. It can be \`enabled\` or \`disabled\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , webhookEndpointStatus :: GHC.Base.String
  -- | url: The URL of the webhook endpoint.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , webhookEndpointUrl :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON WebhookEndpoint
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "api_version" (webhookEndpointApiVersion obj) : (Data.Aeson..=) "application" (webhookEndpointApplication obj) : (Data.Aeson..=) "created" (webhookEndpointCreated obj) : (Data.Aeson..=) "enabled_events" (webhookEndpointEnabledEvents obj) : (Data.Aeson..=) "id" (webhookEndpointId obj) : (Data.Aeson..=) "livemode" (webhookEndpointLivemode obj) : (Data.Aeson..=) "object" (webhookEndpointObject obj) : (Data.Aeson..=) "secret" (webhookEndpointSecret obj) : (Data.Aeson..=) "status" (webhookEndpointStatus obj) : (Data.Aeson..=) "url" (webhookEndpointUrl obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "api_version" (webhookEndpointApiVersion obj) GHC.Base.<> ((Data.Aeson..=) "application" (webhookEndpointApplication obj) GHC.Base.<> ((Data.Aeson..=) "created" (webhookEndpointCreated obj) GHC.Base.<> ((Data.Aeson..=) "enabled_events" (webhookEndpointEnabledEvents obj) GHC.Base.<> ((Data.Aeson..=) "id" (webhookEndpointId obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (webhookEndpointLivemode obj) GHC.Base.<> ((Data.Aeson..=) "object" (webhookEndpointObject obj) GHC.Base.<> ((Data.Aeson..=) "secret" (webhookEndpointSecret obj) GHC.Base.<> ((Data.Aeson..=) "status" (webhookEndpointStatus obj) GHC.Base.<> (Data.Aeson..=) "url" (webhookEndpointUrl obj))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON WebhookEndpoint
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "WebhookEndpoint" (\obj -> (((((((((GHC.Base.pure WebhookEndpoint GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "api_version")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "enabled_events")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "secret")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Defines the enum schema webhook_endpointObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data WebhookEndpointObject'
    = WebhookEndpointObject'EnumOther Data.Aeson.Types.Internal.Value
    | WebhookEndpointObject'EnumTyped GHC.Base.String
    | WebhookEndpointObject'EnumStringWebhookEndpoint
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON WebhookEndpointObject'
    where toJSON (WebhookEndpointObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (WebhookEndpointObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (WebhookEndpointObject'EnumStringWebhookEndpoint) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "webhook_endpoint"
instance Data.Aeson.FromJSON WebhookEndpointObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "webhook_endpoint")
                                          then WebhookEndpointObject'EnumStringWebhookEndpoint
                                          else WebhookEndpointObject'EnumOther val)