{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.DeletedPerson where

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

data DeletedPerson
    = DeletedPerson {deletedPersonDeleted :: DeletedPersonDeleted',
                     deletedPersonId :: GHC.Base.String,
                     deletedPersonObject :: DeletedPersonObject'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data DeletedPersonDeleted'
    = DeletedPersonDeleted'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedPersonDeleted'EnumTyped GHC.Types.Bool
    | DeletedPersonDeleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedPersonDeleted'
    where toJSON (DeletedPersonDeleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedPersonDeleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedPersonDeleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON DeletedPersonDeleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then DeletedPersonDeleted'EnumBoolTrue
                                          else DeletedPersonDeleted'EnumOther val)
data DeletedPersonObject'
    = DeletedPersonObject'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedPersonObject'EnumTyped GHC.Base.String
    | DeletedPersonObject'EnumStringPerson
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedPersonObject'
    where toJSON (DeletedPersonObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedPersonObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedPersonObject'EnumStringPerson) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "person"
instance Data.Aeson.FromJSON DeletedPersonObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "person")
                                          then DeletedPersonObject'EnumStringPerson
                                          else DeletedPersonObject'EnumOther val)
instance Data.Aeson.ToJSON DeletedPerson
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "deleted" (deletedPersonDeleted obj) : (Data.Aeson..=) "id" (deletedPersonId obj) : (Data.Aeson..=) "object" (deletedPersonObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "deleted" (deletedPersonDeleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (deletedPersonId obj) GHC.Base.<> (Data.Aeson..=) "object" (deletedPersonObject obj)))
instance Data.Aeson.Types.FromJSON.FromJSON DeletedPerson
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedPerson" (\obj -> ((GHC.Base.pure DeletedPerson GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))