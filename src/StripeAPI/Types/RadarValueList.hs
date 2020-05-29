{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema RadarValueList
module StripeAPI.Types.RadarValueList where

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
import StripeAPI.Types.RadarValueListItem

-- | Defines the data type for the schema radar.value_list
-- 
-- Value lists allow you to group values together which can then be referenced in rules.
-- 
-- Related guide: [Default Stripe Lists](https:\/\/stripe.com\/docs\/radar\/lists\#managing-list-items).
data Radar'valueList = Radar'valueList {
  -- | alias: The name of the value list for use in rules.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  radar'valueListAlias :: Data.Text.Internal.Text
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  , radar'valueListCreated :: GHC.Integer.Type.Integer
  -- | created_by: The name or email address of the user who created this value list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , radar'valueListCreatedBy :: Data.Text.Internal.Text
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , radar'valueListId :: Data.Text.Internal.Text
  -- | item_type: The type of items in the value list. One of \`card_fingerprint\`, \`card_bin\`, \`email\`, \`ip_address\`, \`country\`, \`string\`, or \`case_sensitive_string\`.
  , radar'valueListItemType :: Radar'valueListItemType'
  -- | list_items: List of items contained within this value list.
  , radar'valueListListItems :: Radar'valueListListItems'
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , radar'valueListLivemode :: GHC.Types.Bool
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  , radar'valueListMetadata :: Radar'valueListMetadata'
  -- | name: The name of the value list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , radar'valueListName :: Data.Text.Internal.Text
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , radar'valueListObject :: Radar'valueListObject'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON Radar'valueList
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "alias" (radar'valueListAlias obj) : (Data.Aeson..=) "created" (radar'valueListCreated obj) : (Data.Aeson..=) "created_by" (radar'valueListCreatedBy obj) : (Data.Aeson..=) "id" (radar'valueListId obj) : (Data.Aeson..=) "item_type" (radar'valueListItemType obj) : (Data.Aeson..=) "list_items" (radar'valueListListItems obj) : (Data.Aeson..=) "livemode" (radar'valueListLivemode obj) : (Data.Aeson..=) "metadata" (radar'valueListMetadata obj) : (Data.Aeson..=) "name" (radar'valueListName obj) : (Data.Aeson..=) "object" (radar'valueListObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "alias" (radar'valueListAlias obj) GHC.Base.<> ((Data.Aeson..=) "created" (radar'valueListCreated obj) GHC.Base.<> ((Data.Aeson..=) "created_by" (radar'valueListCreatedBy obj) GHC.Base.<> ((Data.Aeson..=) "id" (radar'valueListId obj) GHC.Base.<> ((Data.Aeson..=) "item_type" (radar'valueListItemType obj) GHC.Base.<> ((Data.Aeson..=) "list_items" (radar'valueListListItems obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (radar'valueListLivemode obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (radar'valueListMetadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (radar'valueListName obj) GHC.Base.<> (Data.Aeson..=) "object" (radar'valueListObject obj))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON Radar'valueList
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Radar'valueList" (\obj -> (((((((((GHC.Base.pure Radar'valueList GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "alias")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created_by")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "item_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "list_items")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))
-- | Defines the enum schema radar.value_listItem_type\'
-- 
-- The type of items in the value list. One of \`card_fingerprint\`, \`card_bin\`, \`email\`, \`ip_address\`, \`country\`, \`string\`, or \`case_sensitive_string\`.
data Radar'valueListItemType'
    = Radar'valueListItemType'EnumOther Data.Aeson.Types.Internal.Value
    | Radar'valueListItemType'EnumTyped Data.Text.Internal.Text
    | Radar'valueListItemType'EnumStringCardBin
    | Radar'valueListItemType'EnumStringCardFingerprint
    | Radar'valueListItemType'EnumStringCaseSensitiveString
    | Radar'valueListItemType'EnumStringCountry
    | Radar'valueListItemType'EnumStringEmail
    | Radar'valueListItemType'EnumStringIpAddress
    | Radar'valueListItemType'EnumStringString
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON Radar'valueListItemType'
    where toJSON (Radar'valueListItemType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Radar'valueListItemType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Radar'valueListItemType'EnumStringCardBin) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_bin"
          toJSON (Radar'valueListItemType'EnumStringCardFingerprint) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_fingerprint"
          toJSON (Radar'valueListItemType'EnumStringCaseSensitiveString) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "case_sensitive_string"
          toJSON (Radar'valueListItemType'EnumStringCountry) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "country"
          toJSON (Radar'valueListItemType'EnumStringEmail) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "email"
          toJSON (Radar'valueListItemType'EnumStringIpAddress) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ip_address"
          toJSON (Radar'valueListItemType'EnumStringString) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "string"
instance Data.Aeson.FromJSON Radar'valueListItemType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_bin")
                                          then Radar'valueListItemType'EnumStringCardBin
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_fingerprint")
                                                then Radar'valueListItemType'EnumStringCardFingerprint
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "case_sensitive_string")
                                                      then Radar'valueListItemType'EnumStringCaseSensitiveString
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "country")
                                                            then Radar'valueListItemType'EnumStringCountry
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "email")
                                                                  then Radar'valueListItemType'EnumStringEmail
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ip_address")
                                                                        then Radar'valueListItemType'EnumStringIpAddress
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "string")
                                                                              then Radar'valueListItemType'EnumStringString
                                                                              else Radar'valueListItemType'EnumOther val)
-- | Defines the data type for the schema radar.value_listList_items\'
-- 
-- List of items contained within this value list.
data Radar'valueListListItems' = Radar'valueListListItems' {
  -- | data: Details about each object.
  radar'valueListListItems'Data :: ([] Radar'valueListItem)
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , radar'valueListListItems'HasMore :: GHC.Types.Bool
  -- | object: String representing the object\'s type. Objects of the same type share the same value. Always has the value \`list\`.
  , radar'valueListListItems'Object :: Radar'valueListListItems'Object'
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , radar'valueListListItems'Url :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON Radar'valueListListItems'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (radar'valueListListItems'Data obj) : (Data.Aeson..=) "has_more" (radar'valueListListItems'HasMore obj) : (Data.Aeson..=) "object" (radar'valueListListItems'Object obj) : (Data.Aeson..=) "url" (radar'valueListListItems'Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (radar'valueListListItems'Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (radar'valueListListItems'HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (radar'valueListListItems'Object obj) GHC.Base.<> (Data.Aeson..=) "url" (radar'valueListListItems'Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON Radar'valueListListItems'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Radar'valueListListItems'" (\obj -> (((GHC.Base.pure Radar'valueListListItems' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Defines the enum schema radar.value_listList_items\'Object\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value. Always has the value \`list\`.
data Radar'valueListListItems'Object'
    = Radar'valueListListItems'Object'EnumOther Data.Aeson.Types.Internal.Value
    | Radar'valueListListItems'Object'EnumTyped Data.Text.Internal.Text
    | Radar'valueListListItems'Object'EnumStringList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON Radar'valueListListItems'Object'
    where toJSON (Radar'valueListListItems'Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Radar'valueListListItems'Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Radar'valueListListItems'Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"
instance Data.Aeson.FromJSON Radar'valueListListItems'Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
                                          then Radar'valueListListItems'Object'EnumStringList
                                          else Radar'valueListListItems'Object'EnumOther val)
-- | Defines the data type for the schema radar.value_listMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
data Radar'valueListMetadata' = Radar'valueListMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON Radar'valueListMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON Radar'valueListMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Radar'valueListMetadata'" (\obj -> GHC.Base.pure Radar'valueListMetadata')
-- | Defines the enum schema radar.value_listObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data Radar'valueListObject'
    = Radar'valueListObject'EnumOther Data.Aeson.Types.Internal.Value
    | Radar'valueListObject'EnumTyped Data.Text.Internal.Text
    | Radar'valueListObject'EnumStringRadar'valueList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON Radar'valueListObject'
    where toJSON (Radar'valueListObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Radar'valueListObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Radar'valueListObject'EnumStringRadar'valueList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "radar.value_list"
instance Data.Aeson.FromJSON Radar'valueListObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "radar.value_list")
                                          then Radar'valueListObject'EnumStringRadar'valueList
                                          else Radar'valueListObject'EnumOther val)