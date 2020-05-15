{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.DeletedApplePayDomain where

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

data DeletedApplePayDomain
    = DeletedApplePayDomain {deletedApplePayDomainDeleted :: DeletedApplePayDomainDeleted',
                             deletedApplePayDomainId :: GHC.Base.String,
                             deletedApplePayDomainObject :: DeletedApplePayDomainObject'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data DeletedApplePayDomainDeleted'
    = DeletedApplePayDomainDeleted'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedApplePayDomainDeleted'EnumTyped GHC.Types.Bool
    | DeletedApplePayDomainDeleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedApplePayDomainDeleted'
    where toJSON (DeletedApplePayDomainDeleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedApplePayDomainDeleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedApplePayDomainDeleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON DeletedApplePayDomainDeleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then DeletedApplePayDomainDeleted'EnumBoolTrue
                                          else DeletedApplePayDomainDeleted'EnumOther val)
data DeletedApplePayDomainObject'
    = DeletedApplePayDomainObject'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedApplePayDomainObject'EnumTyped GHC.Base.String
    | DeletedApplePayDomainObject'EnumStringApplePayDomain
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedApplePayDomainObject'
    where toJSON (DeletedApplePayDomainObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedApplePayDomainObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedApplePayDomainObject'EnumStringApplePayDomain) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "apple_pay_domain"
instance Data.Aeson.FromJSON DeletedApplePayDomainObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "apple_pay_domain")
                                          then DeletedApplePayDomainObject'EnumStringApplePayDomain
                                          else DeletedApplePayDomainObject'EnumOther val)
instance Data.Aeson.ToJSON DeletedApplePayDomain
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "deleted" (deletedApplePayDomainDeleted obj) : (Data.Aeson..=) "id" (deletedApplePayDomainId obj) : (Data.Aeson..=) "object" (deletedApplePayDomainObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "deleted" (deletedApplePayDomainDeleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (deletedApplePayDomainId obj) GHC.Base.<> (Data.Aeson..=) "object" (deletedApplePayDomainObject obj)))
instance Data.Aeson.Types.FromJSON.FromJSON DeletedApplePayDomain
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedApplePayDomain" (\obj -> ((GHC.Base.pure DeletedApplePayDomain GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))