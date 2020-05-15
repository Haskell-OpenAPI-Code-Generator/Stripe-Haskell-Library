{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

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

data WebhookEndpoint
    = WebhookEndpoint {webhookEndpointApiVersion :: (GHC.Maybe.Maybe GHC.Base.String),
                       webhookEndpointApplication :: (GHC.Maybe.Maybe GHC.Base.String),
                       webhookEndpointCreated :: GHC.Integer.Type.Integer,
                       webhookEndpointEnabledEvents :: ([] GHC.Base.String),
                       webhookEndpointId :: GHC.Base.String,
                       webhookEndpointLivemode :: GHC.Types.Bool,
                       webhookEndpointObject :: WebhookEndpointObject',
                       webhookEndpointSecret :: (GHC.Maybe.Maybe GHC.Base.String),
                       webhookEndpointStatus :: GHC.Base.String,
                       webhookEndpointUrl :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
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
instance Data.Aeson.ToJSON WebhookEndpoint
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "api_version" (webhookEndpointApiVersion obj) : (Data.Aeson..=) "application" (webhookEndpointApplication obj) : (Data.Aeson..=) "created" (webhookEndpointCreated obj) : (Data.Aeson..=) "enabled_events" (webhookEndpointEnabledEvents obj) : (Data.Aeson..=) "id" (webhookEndpointId obj) : (Data.Aeson..=) "livemode" (webhookEndpointLivemode obj) : (Data.Aeson..=) "object" (webhookEndpointObject obj) : (Data.Aeson..=) "secret" (webhookEndpointSecret obj) : (Data.Aeson..=) "status" (webhookEndpointStatus obj) : (Data.Aeson..=) "url" (webhookEndpointUrl obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "api_version" (webhookEndpointApiVersion obj) GHC.Base.<> ((Data.Aeson..=) "application" (webhookEndpointApplication obj) GHC.Base.<> ((Data.Aeson..=) "created" (webhookEndpointCreated obj) GHC.Base.<> ((Data.Aeson..=) "enabled_events" (webhookEndpointEnabledEvents obj) GHC.Base.<> ((Data.Aeson..=) "id" (webhookEndpointId obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (webhookEndpointLivemode obj) GHC.Base.<> ((Data.Aeson..=) "object" (webhookEndpointObject obj) GHC.Base.<> ((Data.Aeson..=) "secret" (webhookEndpointSecret obj) GHC.Base.<> ((Data.Aeson..=) "status" (webhookEndpointStatus obj) GHC.Base.<> (Data.Aeson..=) "url" (webhookEndpointUrl obj))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON WebhookEndpoint
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "WebhookEndpoint" (\obj -> (((((((((GHC.Base.pure WebhookEndpoint GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "api_version")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "enabled_events")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "secret")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))