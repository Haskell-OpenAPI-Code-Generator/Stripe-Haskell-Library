{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

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

data Radar'valueList
    = Radar'valueList {radar'valueListAlias :: GHC.Base.String,
                       radar'valueListCreated :: GHC.Integer.Type.Integer,
                       radar'valueListCreatedBy :: GHC.Base.String,
                       radar'valueListId :: GHC.Base.String,
                       radar'valueListItemType :: Radar'valueListItemType',
                       radar'valueListListItems :: Radar'valueListListItems',
                       radar'valueListLivemode :: GHC.Types.Bool,
                       radar'valueListMetadata :: Radar'valueListMetadata',
                       radar'valueListName :: GHC.Base.String,
                       radar'valueListObject :: Radar'valueListObject'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data Radar'valueListItemType'
    = Radar'valueListItemType'EnumOther Data.Aeson.Types.Internal.Value
    | Radar'valueListItemType'EnumTyped GHC.Base.String
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
data Radar'valueListListItems'
    = Radar'valueListListItems' {radar'valueListListItems'Data :: ([] Radar'valueListItem),
                                 radar'valueListListItems'HasMore :: GHC.Types.Bool,
                                 radar'valueListListItems'Object :: Radar'valueListListItems'Object',
                                 radar'valueListListItems'Url :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data Radar'valueListListItems'Object'
    = Radar'valueListListItems'Object'EnumOther Data.Aeson.Types.Internal.Value
    | Radar'valueListListItems'Object'EnumTyped GHC.Base.String
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
instance Data.Aeson.ToJSON Radar'valueListListItems'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (radar'valueListListItems'Data obj) : (Data.Aeson..=) "has_more" (radar'valueListListItems'HasMore obj) : (Data.Aeson..=) "object" (radar'valueListListItems'Object obj) : (Data.Aeson..=) "url" (radar'valueListListItems'Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (radar'valueListListItems'Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (radar'valueListListItems'HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (radar'valueListListItems'Object obj) GHC.Base.<> (Data.Aeson..=) "url" (radar'valueListListItems'Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON Radar'valueListListItems'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Radar'valueListListItems'" (\obj -> (((GHC.Base.pure Radar'valueListListItems' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
data Radar'valueListMetadata'
    = Radar'valueListMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON Radar'valueListMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON Radar'valueListMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Radar'valueListMetadata'" (\obj -> GHC.Base.pure Radar'valueListMetadata')
data Radar'valueListObject'
    = Radar'valueListObject'EnumOther Data.Aeson.Types.Internal.Value
    | Radar'valueListObject'EnumTyped GHC.Base.String
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
instance Data.Aeson.ToJSON Radar'valueList
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "alias" (radar'valueListAlias obj) : (Data.Aeson..=) "created" (radar'valueListCreated obj) : (Data.Aeson..=) "created_by" (radar'valueListCreatedBy obj) : (Data.Aeson..=) "id" (radar'valueListId obj) : (Data.Aeson..=) "item_type" (radar'valueListItemType obj) : (Data.Aeson..=) "list_items" (radar'valueListListItems obj) : (Data.Aeson..=) "livemode" (radar'valueListLivemode obj) : (Data.Aeson..=) "metadata" (radar'valueListMetadata obj) : (Data.Aeson..=) "name" (radar'valueListName obj) : (Data.Aeson..=) "object" (radar'valueListObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "alias" (radar'valueListAlias obj) GHC.Base.<> ((Data.Aeson..=) "created" (radar'valueListCreated obj) GHC.Base.<> ((Data.Aeson..=) "created_by" (radar'valueListCreatedBy obj) GHC.Base.<> ((Data.Aeson..=) "id" (radar'valueListId obj) GHC.Base.<> ((Data.Aeson..=) "item_type" (radar'valueListItemType obj) GHC.Base.<> ((Data.Aeson..=) "list_items" (radar'valueListListItems obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (radar'valueListLivemode obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (radar'valueListMetadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (radar'valueListName obj) GHC.Base.<> (Data.Aeson..=) "object" (radar'valueListObject obj))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON Radar'valueList
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Radar'valueList" (\obj -> (((((((((GHC.Base.pure Radar'valueList GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "alias")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created_by")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "item_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "list_items")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))