{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.DeletedInvoiceitem where

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

data DeletedInvoiceitem
    = DeletedInvoiceitem {deletedInvoiceitemDeleted :: DeletedInvoiceitemDeleted',
                          deletedInvoiceitemId :: GHC.Base.String,
                          deletedInvoiceitemObject :: DeletedInvoiceitemObject'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data DeletedInvoiceitemDeleted'
    = DeletedInvoiceitemDeleted'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedInvoiceitemDeleted'EnumTyped GHC.Types.Bool
    | DeletedInvoiceitemDeleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedInvoiceitemDeleted'
    where toJSON (DeletedInvoiceitemDeleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedInvoiceitemDeleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedInvoiceitemDeleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON DeletedInvoiceitemDeleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then DeletedInvoiceitemDeleted'EnumBoolTrue
                                          else DeletedInvoiceitemDeleted'EnumOther val)
data DeletedInvoiceitemObject'
    = DeletedInvoiceitemObject'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedInvoiceitemObject'EnumTyped GHC.Base.String
    | DeletedInvoiceitemObject'EnumStringInvoiceitem
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedInvoiceitemObject'
    where toJSON (DeletedInvoiceitemObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedInvoiceitemObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedInvoiceitemObject'EnumStringInvoiceitem) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "invoiceitem"
instance Data.Aeson.FromJSON DeletedInvoiceitemObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "invoiceitem")
                                          then DeletedInvoiceitemObject'EnumStringInvoiceitem
                                          else DeletedInvoiceitemObject'EnumOther val)
instance Data.Aeson.ToJSON DeletedInvoiceitem
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "deleted" (deletedInvoiceitemDeleted obj) : (Data.Aeson..=) "id" (deletedInvoiceitemId obj) : (Data.Aeson..=) "object" (deletedInvoiceitemObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "deleted" (deletedInvoiceitemDeleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (deletedInvoiceitemId obj) GHC.Base.<> (Data.Aeson..=) "object" (deletedInvoiceitemObject obj)))
instance Data.Aeson.Types.FromJSON.FromJSON DeletedInvoiceitem
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedInvoiceitem" (\obj -> ((GHC.Base.pure DeletedInvoiceitem GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))