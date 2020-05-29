{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema DeletedDiscount
module StripeAPI.Types.DeletedDiscount where

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

-- | Defines the data type for the schema deleted_discount
-- 
-- 
data DeletedDiscount = DeletedDiscount {
  -- | deleted: Always true for a deleted object
  deletedDiscountDeleted :: DeletedDiscountDeleted'
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , deletedDiscountObject :: DeletedDiscountObject'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedDiscount
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "deleted" (deletedDiscountDeleted obj) : (Data.Aeson..=) "object" (deletedDiscountObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "deleted" (deletedDiscountDeleted obj) GHC.Base.<> (Data.Aeson..=) "object" (deletedDiscountObject obj))
instance Data.Aeson.Types.FromJSON.FromJSON DeletedDiscount
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedDiscount" (\obj -> (GHC.Base.pure DeletedDiscount GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))
-- | Defines the enum schema deleted_discountDeleted\'
-- 
-- Always true for a deleted object
data DeletedDiscountDeleted'
    = DeletedDiscountDeleted'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedDiscountDeleted'EnumTyped GHC.Types.Bool
    | DeletedDiscountDeleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedDiscountDeleted'
    where toJSON (DeletedDiscountDeleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedDiscountDeleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedDiscountDeleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON DeletedDiscountDeleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then DeletedDiscountDeleted'EnumBoolTrue
                                          else DeletedDiscountDeleted'EnumOther val)
-- | Defines the enum schema deleted_discountObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data DeletedDiscountObject'
    = DeletedDiscountObject'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedDiscountObject'EnumTyped Data.Text.Internal.Text
    | DeletedDiscountObject'EnumStringDiscount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedDiscountObject'
    where toJSON (DeletedDiscountObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedDiscountObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedDiscountObject'EnumStringDiscount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "discount"
instance Data.Aeson.FromJSON DeletedDiscountObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "discount")
                                          then DeletedDiscountObject'EnumStringDiscount
                                          else DeletedDiscountObject'EnumOther val)