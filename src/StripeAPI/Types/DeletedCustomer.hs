{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema DeletedCustomer
module StripeAPI.Types.DeletedCustomer where

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

-- | Defines the data type for the schema deleted_customer
-- 
-- 
data DeletedCustomer = DeletedCustomer {
  -- | deleted: Always true for a deleted object
  deletedCustomerDeleted :: DeletedCustomerDeleted'
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , deletedCustomerId :: Data.Text.Internal.Text
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , deletedCustomerObject :: DeletedCustomerObject'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedCustomer
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "deleted" (deletedCustomerDeleted obj) : (Data.Aeson..=) "id" (deletedCustomerId obj) : (Data.Aeson..=) "object" (deletedCustomerObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "deleted" (deletedCustomerDeleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (deletedCustomerId obj) GHC.Base.<> (Data.Aeson..=) "object" (deletedCustomerObject obj)))
instance Data.Aeson.Types.FromJSON.FromJSON DeletedCustomer
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedCustomer" (\obj -> ((GHC.Base.pure DeletedCustomer GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))
-- | Defines the enum schema deleted_customerDeleted\'
-- 
-- Always true for a deleted object
data DeletedCustomerDeleted'
    = DeletedCustomerDeleted'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedCustomerDeleted'EnumTyped GHC.Types.Bool
    | DeletedCustomerDeleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedCustomerDeleted'
    where toJSON (DeletedCustomerDeleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedCustomerDeleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedCustomerDeleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON DeletedCustomerDeleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then DeletedCustomerDeleted'EnumBoolTrue
                                          else DeletedCustomerDeleted'EnumOther val)
-- | Defines the enum schema deleted_customerObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data DeletedCustomerObject'
    = DeletedCustomerObject'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedCustomerObject'EnumTyped Data.Text.Internal.Text
    | DeletedCustomerObject'EnumStringCustomer
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedCustomerObject'
    where toJSON (DeletedCustomerObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedCustomerObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedCustomerObject'EnumStringCustomer) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "customer"
instance Data.Aeson.FromJSON DeletedCustomerObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "customer")
                                          then DeletedCustomerObject'EnumStringCustomer
                                          else DeletedCustomerObject'EnumOther val)