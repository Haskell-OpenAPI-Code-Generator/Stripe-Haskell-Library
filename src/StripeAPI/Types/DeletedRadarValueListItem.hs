{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.DeletedRadarValueListItem where

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

data DeletedRadar'valueListItem
    = DeletedRadar'valueListItem {deletedRadar'valueListItemDeleted :: DeletedRadar'valueListItemDeleted',
                                  deletedRadar'valueListItemId :: GHC.Base.String,
                                  deletedRadar'valueListItemObject :: DeletedRadar'valueListItemObject'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data DeletedRadar'valueListItemDeleted'
    = DeletedRadar'valueListItemDeleted'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedRadar'valueListItemDeleted'EnumTyped GHC.Types.Bool
    | DeletedRadar'valueListItemDeleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedRadar'valueListItemDeleted'
    where toJSON (DeletedRadar'valueListItemDeleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedRadar'valueListItemDeleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedRadar'valueListItemDeleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON DeletedRadar'valueListItemDeleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then DeletedRadar'valueListItemDeleted'EnumBoolTrue
                                          else DeletedRadar'valueListItemDeleted'EnumOther val)
data DeletedRadar'valueListItemObject'
    = DeletedRadar'valueListItemObject'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedRadar'valueListItemObject'EnumTyped GHC.Base.String
    | DeletedRadar'valueListItemObject'EnumStringRadar'valueListItem
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedRadar'valueListItemObject'
    where toJSON (DeletedRadar'valueListItemObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedRadar'valueListItemObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedRadar'valueListItemObject'EnumStringRadar'valueListItem) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "radar.value_list_item"
instance Data.Aeson.FromJSON DeletedRadar'valueListItemObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "radar.value_list_item")
                                          then DeletedRadar'valueListItemObject'EnumStringRadar'valueListItem
                                          else DeletedRadar'valueListItemObject'EnumOther val)
instance Data.Aeson.ToJSON DeletedRadar'valueListItem
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "deleted" (deletedRadar'valueListItemDeleted obj) : (Data.Aeson..=) "id" (deletedRadar'valueListItemId obj) : (Data.Aeson..=) "object" (deletedRadar'valueListItemObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "deleted" (deletedRadar'valueListItemDeleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (deletedRadar'valueListItemId obj) GHC.Base.<> (Data.Aeson..=) "object" (deletedRadar'valueListItemObject obj)))
instance Data.Aeson.Types.FromJSON.FromJSON DeletedRadar'valueListItem
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedRadar'valueListItem" (\obj -> ((GHC.Base.pure DeletedRadar'valueListItem GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))