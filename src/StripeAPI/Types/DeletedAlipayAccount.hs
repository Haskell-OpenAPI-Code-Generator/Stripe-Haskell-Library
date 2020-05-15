{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.DeletedAlipayAccount where

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

data DeletedAlipayAccount
    = DeletedAlipayAccount {deletedAlipayAccountDeleted :: DeletedAlipayAccountDeleted',
                            deletedAlipayAccountId :: GHC.Base.String,
                            deletedAlipayAccountObject :: DeletedAlipayAccountObject'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data DeletedAlipayAccountDeleted'
    = DeletedAlipayAccountDeleted'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedAlipayAccountDeleted'EnumTyped GHC.Types.Bool
    | DeletedAlipayAccountDeleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedAlipayAccountDeleted'
    where toJSON (DeletedAlipayAccountDeleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedAlipayAccountDeleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedAlipayAccountDeleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON DeletedAlipayAccountDeleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then DeletedAlipayAccountDeleted'EnumBoolTrue
                                          else DeletedAlipayAccountDeleted'EnumOther val)
data DeletedAlipayAccountObject'
    = DeletedAlipayAccountObject'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedAlipayAccountObject'EnumTyped GHC.Base.String
    | DeletedAlipayAccountObject'EnumStringAlipayAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedAlipayAccountObject'
    where toJSON (DeletedAlipayAccountObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedAlipayAccountObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedAlipayAccountObject'EnumStringAlipayAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alipay_account"
instance Data.Aeson.FromJSON DeletedAlipayAccountObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alipay_account")
                                          then DeletedAlipayAccountObject'EnumStringAlipayAccount
                                          else DeletedAlipayAccountObject'EnumOther val)
instance Data.Aeson.ToJSON DeletedAlipayAccount
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "deleted" (deletedAlipayAccountDeleted obj) : (Data.Aeson..=) "id" (deletedAlipayAccountId obj) : (Data.Aeson..=) "object" (deletedAlipayAccountObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "deleted" (deletedAlipayAccountDeleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (deletedAlipayAccountId obj) GHC.Base.<> (Data.Aeson..=) "object" (deletedAlipayAccountObject obj)))
instance Data.Aeson.Types.FromJSON.FromJSON DeletedAlipayAccount
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedAlipayAccount" (\obj -> ((GHC.Base.pure DeletedAlipayAccount GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))