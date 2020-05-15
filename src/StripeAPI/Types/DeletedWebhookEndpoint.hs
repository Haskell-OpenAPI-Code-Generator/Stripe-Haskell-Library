{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.DeletedWebhookEndpoint where

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

data DeletedWebhookEndpoint
    = DeletedWebhookEndpoint {deletedWebhookEndpointDeleted :: DeletedWebhookEndpointDeleted',
                              deletedWebhookEndpointId :: GHC.Base.String,
                              deletedWebhookEndpointObject :: DeletedWebhookEndpointObject'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data DeletedWebhookEndpointDeleted'
    = DeletedWebhookEndpointDeleted'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedWebhookEndpointDeleted'EnumTyped GHC.Types.Bool
    | DeletedWebhookEndpointDeleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedWebhookEndpointDeleted'
    where toJSON (DeletedWebhookEndpointDeleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedWebhookEndpointDeleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedWebhookEndpointDeleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON DeletedWebhookEndpointDeleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then DeletedWebhookEndpointDeleted'EnumBoolTrue
                                          else DeletedWebhookEndpointDeleted'EnumOther val)
data DeletedWebhookEndpointObject'
    = DeletedWebhookEndpointObject'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedWebhookEndpointObject'EnumTyped GHC.Base.String
    | DeletedWebhookEndpointObject'EnumStringWebhookEndpoint
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedWebhookEndpointObject'
    where toJSON (DeletedWebhookEndpointObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedWebhookEndpointObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedWebhookEndpointObject'EnumStringWebhookEndpoint) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "webhook_endpoint"
instance Data.Aeson.FromJSON DeletedWebhookEndpointObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "webhook_endpoint")
                                          then DeletedWebhookEndpointObject'EnumStringWebhookEndpoint
                                          else DeletedWebhookEndpointObject'EnumOther val)
instance Data.Aeson.ToJSON DeletedWebhookEndpoint
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "deleted" (deletedWebhookEndpointDeleted obj) : (Data.Aeson..=) "id" (deletedWebhookEndpointId obj) : (Data.Aeson..=) "object" (deletedWebhookEndpointObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "deleted" (deletedWebhookEndpointDeleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (deletedWebhookEndpointId obj) GHC.Base.<> (Data.Aeson..=) "object" (deletedWebhookEndpointObject obj)))
instance Data.Aeson.Types.FromJSON.FromJSON DeletedWebhookEndpoint
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedWebhookEndpoint" (\obj -> ((GHC.Base.pure DeletedWebhookEndpoint GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))