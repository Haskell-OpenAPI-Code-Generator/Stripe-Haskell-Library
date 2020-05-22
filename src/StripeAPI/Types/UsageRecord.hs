{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema UsageRecord
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

-- | Defines the data type for the schema usage_record
-- 
-- Usage records allow you to report customer usage and metrics to Stripe for
-- metered billing of subscription plans.
-- 
-- Related guide: [Metered Billing](https:\/\/stripe.com\/docs\/billing\/subscriptions\/metered-billing).
data UsageRecord = UsageRecord {
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  usageRecordId :: GHC.Base.String
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , usageRecordLivemode :: GHC.Types.Bool
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , usageRecordObject :: UsageRecordObject'
  -- | quantity: The usage quantity for the specified date.
  , usageRecordQuantity :: GHC.Integer.Type.Integer
  -- | subscription_item: The ID of the subscription item this usage record contains data for.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , usageRecordSubscriptionItem :: GHC.Base.String
  -- | timestamp: The timestamp when this usage occurred.
  , usageRecordTimestamp :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON UsageRecord
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "id" (usageRecordId obj) : (Data.Aeson..=) "livemode" (usageRecordLivemode obj) : (Data.Aeson..=) "object" (usageRecordObject obj) : (Data.Aeson..=) "quantity" (usageRecordQuantity obj) : (Data.Aeson..=) "subscription_item" (usageRecordSubscriptionItem obj) : (Data.Aeson..=) "timestamp" (usageRecordTimestamp obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "id" (usageRecordId obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (usageRecordLivemode obj) GHC.Base.<> ((Data.Aeson..=) "object" (usageRecordObject obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (usageRecordQuantity obj) GHC.Base.<> ((Data.Aeson..=) "subscription_item" (usageRecordSubscriptionItem obj) GHC.Base.<> (Data.Aeson..=) "timestamp" (usageRecordTimestamp obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON UsageRecord
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "UsageRecord" (\obj -> (((((GHC.Base.pure UsageRecord GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "subscription_item")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "timestamp"))
-- | Defines the enum schema usage_recordObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
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