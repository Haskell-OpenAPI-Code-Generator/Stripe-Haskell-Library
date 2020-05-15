{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.DeletedProduct where

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

data DeletedProduct
    = DeletedProduct {deletedProductDeleted :: DeletedProductDeleted',
                      deletedProductId :: GHC.Base.String,
                      deletedProductObject :: DeletedProductObject'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data DeletedProductDeleted'
    = DeletedProductDeleted'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedProductDeleted'EnumTyped GHC.Types.Bool
    | DeletedProductDeleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedProductDeleted'
    where toJSON (DeletedProductDeleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedProductDeleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedProductDeleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON DeletedProductDeleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then DeletedProductDeleted'EnumBoolTrue
                                          else DeletedProductDeleted'EnumOther val)
data DeletedProductObject'
    = DeletedProductObject'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedProductObject'EnumTyped GHC.Base.String
    | DeletedProductObject'EnumStringProduct
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedProductObject'
    where toJSON (DeletedProductObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedProductObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedProductObject'EnumStringProduct) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "product"
instance Data.Aeson.FromJSON DeletedProductObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "product")
                                          then DeletedProductObject'EnumStringProduct
                                          else DeletedProductObject'EnumOther val)
instance Data.Aeson.ToJSON DeletedProduct
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "deleted" (deletedProductDeleted obj) : (Data.Aeson..=) "id" (deletedProductId obj) : (Data.Aeson..=) "object" (deletedProductObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "deleted" (deletedProductDeleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (deletedProductId obj) GHC.Base.<> (Data.Aeson..=) "object" (deletedProductObject obj)))
instance Data.Aeson.Types.FromJSON.FromJSON DeletedProduct
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedProduct" (\obj -> ((GHC.Base.pure DeletedProduct GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))