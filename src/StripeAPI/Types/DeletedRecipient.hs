{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.DeletedRecipient where

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

data DeletedRecipient
    = DeletedRecipient {deletedRecipientDeleted :: DeletedRecipientDeleted',
                        deletedRecipientId :: GHC.Base.String,
                        deletedRecipientObject :: DeletedRecipientObject'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data DeletedRecipientDeleted'
    = DeletedRecipientDeleted'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedRecipientDeleted'EnumTyped GHC.Types.Bool
    | DeletedRecipientDeleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedRecipientDeleted'
    where toJSON (DeletedRecipientDeleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedRecipientDeleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedRecipientDeleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON DeletedRecipientDeleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then DeletedRecipientDeleted'EnumBoolTrue
                                          else DeletedRecipientDeleted'EnumOther val)
data DeletedRecipientObject'
    = DeletedRecipientObject'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedRecipientObject'EnumTyped GHC.Base.String
    | DeletedRecipientObject'EnumStringRecipient
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedRecipientObject'
    where toJSON (DeletedRecipientObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedRecipientObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedRecipientObject'EnumStringRecipient) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "recipient"
instance Data.Aeson.FromJSON DeletedRecipientObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "recipient")
                                          then DeletedRecipientObject'EnumStringRecipient
                                          else DeletedRecipientObject'EnumOther val)
instance Data.Aeson.ToJSON DeletedRecipient
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "deleted" (deletedRecipientDeleted obj) : (Data.Aeson..=) "id" (deletedRecipientId obj) : (Data.Aeson..=) "object" (deletedRecipientObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "deleted" (deletedRecipientDeleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (deletedRecipientId obj) GHC.Base.<> (Data.Aeson..=) "object" (deletedRecipientObject obj)))
instance Data.Aeson.Types.FromJSON.FromJSON DeletedRecipient
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedRecipient" (\obj -> ((GHC.Base.pure DeletedRecipient GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))