{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.DeletedTerminalLocation where

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

data DeletedTerminal'location
    = DeletedTerminal'location {deletedTerminal'locationDeleted :: DeletedTerminal'locationDeleted',
                                deletedTerminal'locationId :: GHC.Base.String,
                                deletedTerminal'locationObject :: DeletedTerminal'locationObject'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data DeletedTerminal'locationDeleted'
    = DeletedTerminal'locationDeleted'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedTerminal'locationDeleted'EnumTyped GHC.Types.Bool
    | DeletedTerminal'locationDeleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedTerminal'locationDeleted'
    where toJSON (DeletedTerminal'locationDeleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedTerminal'locationDeleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedTerminal'locationDeleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON DeletedTerminal'locationDeleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then DeletedTerminal'locationDeleted'EnumBoolTrue
                                          else DeletedTerminal'locationDeleted'EnumOther val)
data DeletedTerminal'locationObject'
    = DeletedTerminal'locationObject'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedTerminal'locationObject'EnumTyped GHC.Base.String
    | DeletedTerminal'locationObject'EnumStringTerminal'location
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedTerminal'locationObject'
    where toJSON (DeletedTerminal'locationObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedTerminal'locationObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedTerminal'locationObject'EnumStringTerminal'location) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "terminal.location"
instance Data.Aeson.FromJSON DeletedTerminal'locationObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "terminal.location")
                                          then DeletedTerminal'locationObject'EnumStringTerminal'location
                                          else DeletedTerminal'locationObject'EnumOther val)
instance Data.Aeson.ToJSON DeletedTerminal'location
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "deleted" (deletedTerminal'locationDeleted obj) : (Data.Aeson..=) "id" (deletedTerminal'locationId obj) : (Data.Aeson..=) "object" (deletedTerminal'locationObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "deleted" (deletedTerminal'locationDeleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (deletedTerminal'locationId obj) GHC.Base.<> (Data.Aeson..=) "object" (deletedTerminal'locationObject obj)))
instance Data.Aeson.Types.FromJSON.FromJSON DeletedTerminal'location
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedTerminal'location" (\obj -> ((GHC.Base.pure DeletedTerminal'location GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))