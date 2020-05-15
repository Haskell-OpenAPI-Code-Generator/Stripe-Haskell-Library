{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.ApplePayDomain where

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

data ApplePayDomain
    = ApplePayDomain {applePayDomainCreated :: GHC.Integer.Type.Integer,
                      applePayDomainDomainName :: GHC.Base.String,
                      applePayDomainId :: GHC.Base.String,
                      applePayDomainLivemode :: GHC.Types.Bool,
                      applePayDomainObject :: ApplePayDomainObject'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data ApplePayDomainObject'
    = ApplePayDomainObject'EnumOther Data.Aeson.Types.Internal.Value
    | ApplePayDomainObject'EnumTyped GHC.Base.String
    | ApplePayDomainObject'EnumStringApplePayDomain
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON ApplePayDomainObject'
    where toJSON (ApplePayDomainObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (ApplePayDomainObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (ApplePayDomainObject'EnumStringApplePayDomain) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "apple_pay_domain"
instance Data.Aeson.FromJSON ApplePayDomainObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "apple_pay_domain")
                                          then ApplePayDomainObject'EnumStringApplePayDomain
                                          else ApplePayDomainObject'EnumOther val)
instance Data.Aeson.ToJSON ApplePayDomain
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "created" (applePayDomainCreated obj) : (Data.Aeson..=) "domain_name" (applePayDomainDomainName obj) : (Data.Aeson..=) "id" (applePayDomainId obj) : (Data.Aeson..=) "livemode" (applePayDomainLivemode obj) : (Data.Aeson..=) "object" (applePayDomainObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "created" (applePayDomainCreated obj) GHC.Base.<> ((Data.Aeson..=) "domain_name" (applePayDomainDomainName obj) GHC.Base.<> ((Data.Aeson..=) "id" (applePayDomainId obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (applePayDomainLivemode obj) GHC.Base.<> (Data.Aeson..=) "object" (applePayDomainObject obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON ApplePayDomain
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ApplePayDomain" (\obj -> ((((GHC.Base.pure ApplePayDomain GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "domain_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))