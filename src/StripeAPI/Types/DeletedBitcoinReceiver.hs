{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema DeletedBitcoinReceiver
module StripeAPI.Types.DeletedBitcoinReceiver where

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

-- | Defines the data type for the schema deleted_bitcoin_receiver
-- 
-- 
data DeletedBitcoinReceiver = DeletedBitcoinReceiver {
  -- | deleted: Always true for a deleted object
  deletedBitcoinReceiverDeleted :: DeletedBitcoinReceiverDeleted'
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , deletedBitcoinReceiverId :: GHC.Base.String
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , deletedBitcoinReceiverObject :: DeletedBitcoinReceiverObject'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedBitcoinReceiver
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "deleted" (deletedBitcoinReceiverDeleted obj) : (Data.Aeson..=) "id" (deletedBitcoinReceiverId obj) : (Data.Aeson..=) "object" (deletedBitcoinReceiverObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "deleted" (deletedBitcoinReceiverDeleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (deletedBitcoinReceiverId obj) GHC.Base.<> (Data.Aeson..=) "object" (deletedBitcoinReceiverObject obj)))
instance Data.Aeson.Types.FromJSON.FromJSON DeletedBitcoinReceiver
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedBitcoinReceiver" (\obj -> ((GHC.Base.pure DeletedBitcoinReceiver GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))
-- | Defines the enum schema deleted_bitcoin_receiverDeleted\'
-- 
-- Always true for a deleted object
data DeletedBitcoinReceiverDeleted'
    = DeletedBitcoinReceiverDeleted'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedBitcoinReceiverDeleted'EnumTyped GHC.Types.Bool
    | DeletedBitcoinReceiverDeleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedBitcoinReceiverDeleted'
    where toJSON (DeletedBitcoinReceiverDeleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedBitcoinReceiverDeleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedBitcoinReceiverDeleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON DeletedBitcoinReceiverDeleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then DeletedBitcoinReceiverDeleted'EnumBoolTrue
                                          else DeletedBitcoinReceiverDeleted'EnumOther val)
-- | Defines the enum schema deleted_bitcoin_receiverObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data DeletedBitcoinReceiverObject'
    = DeletedBitcoinReceiverObject'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedBitcoinReceiverObject'EnumTyped GHC.Base.String
    | DeletedBitcoinReceiverObject'EnumStringBitcoinReceiver
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedBitcoinReceiverObject'
    where toJSON (DeletedBitcoinReceiverObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedBitcoinReceiverObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedBitcoinReceiverObject'EnumStringBitcoinReceiver) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bitcoin_receiver"
instance Data.Aeson.FromJSON DeletedBitcoinReceiverObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bitcoin_receiver")
                                          then DeletedBitcoinReceiverObject'EnumStringBitcoinReceiver
                                          else DeletedBitcoinReceiverObject'EnumOther val)