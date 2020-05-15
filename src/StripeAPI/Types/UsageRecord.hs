{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.UsageRecord where

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

data UsageRecord
    = UsageRecord {usageRecordId :: GHC.Base.String,
                   usageRecordLivemode :: GHC.Types.Bool,
                   usageRecordObject :: UsageRecordObject',
                   usageRecordQuantity :: GHC.Integer.Type.Integer,
                   usageRecordSubscriptionItem :: GHC.Base.String,
                   usageRecordTimestamp :: GHC.Integer.Type.Integer}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data UsageRecordObject'
    = UsageRecordObject'EnumOther Data.Aeson.Types.Internal.Value
    | UsageRecordObject'EnumTyped GHC.Base.String
    | UsageRecordObject'EnumStringUsageRecord
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON UsageRecordObject'
    where toJSON (UsageRecordObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (UsageRecordObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (UsageRecordObject'EnumStringUsageRecord) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "usage_record"
instance Data.Aeson.FromJSON UsageRecordObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "usage_record")
                                          then UsageRecordObject'EnumStringUsageRecord
                                          else UsageRecordObject'EnumOther val)
instance Data.Aeson.ToJSON UsageRecord
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "id" (usageRecordId obj) : (Data.Aeson..=) "livemode" (usageRecordLivemode obj) : (Data.Aeson..=) "object" (usageRecordObject obj) : (Data.Aeson..=) "quantity" (usageRecordQuantity obj) : (Data.Aeson..=) "subscription_item" (usageRecordSubscriptionItem obj) : (Data.Aeson..=) "timestamp" (usageRecordTimestamp obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "id" (usageRecordId obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (usageRecordLivemode obj) GHC.Base.<> ((Data.Aeson..=) "object" (usageRecordObject obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (usageRecordQuantity obj) GHC.Base.<> ((Data.Aeson..=) "subscription_item" (usageRecordSubscriptionItem obj) GHC.Base.<> (Data.Aeson..=) "timestamp" (usageRecordTimestamp obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON UsageRecord
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "UsageRecord" (\obj -> (((((GHC.Base.pure UsageRecord GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "subscription_item")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "timestamp"))