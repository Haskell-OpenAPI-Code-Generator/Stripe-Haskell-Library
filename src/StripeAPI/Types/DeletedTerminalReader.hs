{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema DeletedTerminalReader
module StripeAPI.Types.DeletedTerminalReader where

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

-- | Defines the data type for the schema deleted_terminal.reader
-- 
-- 
data DeletedTerminal'reader = DeletedTerminal'reader {
  -- | deleted: Always true for a deleted object
  deletedTerminal'readerDeleted :: DeletedTerminal'readerDeleted'
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , deletedTerminal'readerId :: Data.Text.Internal.Text
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , deletedTerminal'readerObject :: DeletedTerminal'readerObject'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedTerminal'reader
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "deleted" (deletedTerminal'readerDeleted obj) : (Data.Aeson..=) "id" (deletedTerminal'readerId obj) : (Data.Aeson..=) "object" (deletedTerminal'readerObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "deleted" (deletedTerminal'readerDeleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (deletedTerminal'readerId obj) GHC.Base.<> (Data.Aeson..=) "object" (deletedTerminal'readerObject obj)))
instance Data.Aeson.Types.FromJSON.FromJSON DeletedTerminal'reader
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedTerminal'reader" (\obj -> ((GHC.Base.pure DeletedTerminal'reader GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))
-- | Defines the enum schema deleted_terminal.readerDeleted\'
-- 
-- Always true for a deleted object
data DeletedTerminal'readerDeleted'
    = DeletedTerminal'readerDeleted'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedTerminal'readerDeleted'EnumTyped GHC.Types.Bool
    | DeletedTerminal'readerDeleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedTerminal'readerDeleted'
    where toJSON (DeletedTerminal'readerDeleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedTerminal'readerDeleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedTerminal'readerDeleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON DeletedTerminal'readerDeleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then DeletedTerminal'readerDeleted'EnumBoolTrue
                                          else DeletedTerminal'readerDeleted'EnumOther val)
-- | Defines the enum schema deleted_terminal.readerObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data DeletedTerminal'readerObject'
    = DeletedTerminal'readerObject'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedTerminal'readerObject'EnumTyped Data.Text.Internal.Text
    | DeletedTerminal'readerObject'EnumStringTerminal'reader
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedTerminal'readerObject'
    where toJSON (DeletedTerminal'readerObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedTerminal'readerObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedTerminal'readerObject'EnumStringTerminal'reader) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "terminal.reader"
instance Data.Aeson.FromJSON DeletedTerminal'readerObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "terminal.reader")
                                          then DeletedTerminal'readerObject'EnumStringTerminal'reader
                                          else DeletedTerminal'readerObject'EnumOther val)