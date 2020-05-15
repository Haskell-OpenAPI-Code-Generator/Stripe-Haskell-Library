{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.DeletedAccount where

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

data DeletedAccount
    = DeletedAccount {deletedAccountDeleted :: DeletedAccountDeleted',
                      deletedAccountId :: GHC.Base.String,
                      deletedAccountObject :: DeletedAccountObject'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data DeletedAccountDeleted'
    = DeletedAccountDeleted'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedAccountDeleted'EnumTyped GHC.Types.Bool
    | DeletedAccountDeleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedAccountDeleted'
    where toJSON (DeletedAccountDeleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedAccountDeleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedAccountDeleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON DeletedAccountDeleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then DeletedAccountDeleted'EnumBoolTrue
                                          else DeletedAccountDeleted'EnumOther val)
data DeletedAccountObject'
    = DeletedAccountObject'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedAccountObject'EnumTyped GHC.Base.String
    | DeletedAccountObject'EnumStringAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedAccountObject'
    where toJSON (DeletedAccountObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedAccountObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedAccountObject'EnumStringAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "account"
instance Data.Aeson.FromJSON DeletedAccountObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "account")
                                          then DeletedAccountObject'EnumStringAccount
                                          else DeletedAccountObject'EnumOther val)
instance Data.Aeson.ToJSON DeletedAccount
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "deleted" (deletedAccountDeleted obj) : (Data.Aeson..=) "id" (deletedAccountId obj) : (Data.Aeson..=) "object" (deletedAccountObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "deleted" (deletedAccountDeleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (deletedAccountId obj) GHC.Base.<> (Data.Aeson..=) "object" (deletedAccountObject obj)))
instance Data.Aeson.Types.FromJSON.FromJSON DeletedAccount
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedAccount" (\obj -> ((GHC.Base.pure DeletedAccount GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))