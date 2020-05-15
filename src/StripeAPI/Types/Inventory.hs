{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.Inventory where

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

data Inventory
    = Inventory {inventoryQuantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                 inventoryType :: GHC.Base.String,
                 inventoryValue :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON Inventory
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "quantity" (inventoryQuantity obj) : (Data.Aeson..=) "type" (inventoryType obj) : (Data.Aeson..=) "value" (inventoryValue obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "quantity" (inventoryQuantity obj) GHC.Base.<> ((Data.Aeson..=) "type" (inventoryType obj) GHC.Base.<> (Data.Aeson..=) "value" (inventoryValue obj)))
instance Data.Aeson.Types.FromJSON.FromJSON Inventory
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Inventory" (\obj -> ((GHC.Base.pure Inventory GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "value"))