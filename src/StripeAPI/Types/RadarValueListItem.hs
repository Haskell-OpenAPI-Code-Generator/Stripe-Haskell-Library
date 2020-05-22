{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema RadarValueListItem
module StripeAPI.Types.RadarValueListItem where

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

-- | Defines the data type for the schema radar.value_list_item
-- 
-- Value list items allow you to add specific values to a given Radar value list, which can then be used in rules.
-- 
-- Related guide: [Managing List Items](https:\/\/stripe.com\/docs\/radar\/lists\#managing-list-items).
data Radar'valueListItem = Radar'valueListItem {
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  radar'valueListItemCreated :: GHC.Integer.Type.Integer
  -- | created_by: The name or email address of the user who added this item to the value list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , radar'valueListItemCreatedBy :: GHC.Base.String
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , radar'valueListItemId :: GHC.Base.String
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , radar'valueListItemLivemode :: GHC.Types.Bool
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , radar'valueListItemObject :: Radar'valueListItemObject'
  -- | value: The value of the item.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , radar'valueListItemValue :: GHC.Base.String
  -- | value_list: The identifier of the value list this item belongs to.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , radar'valueListItemValueList :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON Radar'valueListItem
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "created" (radar'valueListItemCreated obj) : (Data.Aeson..=) "created_by" (radar'valueListItemCreatedBy obj) : (Data.Aeson..=) "id" (radar'valueListItemId obj) : (Data.Aeson..=) "livemode" (radar'valueListItemLivemode obj) : (Data.Aeson..=) "object" (radar'valueListItemObject obj) : (Data.Aeson..=) "value" (radar'valueListItemValue obj) : (Data.Aeson..=) "value_list" (radar'valueListItemValueList obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "created" (radar'valueListItemCreated obj) GHC.Base.<> ((Data.Aeson..=) "created_by" (radar'valueListItemCreatedBy obj) GHC.Base.<> ((Data.Aeson..=) "id" (radar'valueListItemId obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (radar'valueListItemLivemode obj) GHC.Base.<> ((Data.Aeson..=) "object" (radar'valueListItemObject obj) GHC.Base.<> ((Data.Aeson..=) "value" (radar'valueListItemValue obj) GHC.Base.<> (Data.Aeson..=) "value_list" (radar'valueListItemValueList obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON Radar'valueListItem
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Radar'valueListItem" (\obj -> ((((((GHC.Base.pure Radar'valueListItem GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created_by")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "value")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "value_list"))
-- | Defines the enum schema radar.value_list_itemObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data Radar'valueListItemObject'
    = Radar'valueListItemObject'EnumOther Data.Aeson.Types.Internal.Value
    | Radar'valueListItemObject'EnumTyped GHC.Base.String
    | Radar'valueListItemObject'EnumStringRadar'valueListItem
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON Radar'valueListItemObject'
    where toJSON (Radar'valueListItemObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Radar'valueListItemObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Radar'valueListItemObject'EnumStringRadar'valueListItem) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "radar.value_list_item"
instance Data.Aeson.FromJSON Radar'valueListItemObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "radar.value_list_item")
                                          then Radar'valueListItemObject'EnumStringRadar'valueListItem
                                          else Radar'valueListItemObject'EnumOther val)