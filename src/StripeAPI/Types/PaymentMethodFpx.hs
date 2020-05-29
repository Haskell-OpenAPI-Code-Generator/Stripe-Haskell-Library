{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema PaymentMethodFpx
module StripeAPI.Types.PaymentMethodFpx where

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

-- | Defines the data type for the schema payment_method_fpx
-- 
-- 
data PaymentMethodFpx = PaymentMethodFpx {
  -- | bank: The customer\'s bank, if provided. Can be one of \`affin_bank\`, \`alliance_bank\`, \`ambank\`, \`bank_islam\`, \`bank_muamalat\`, \`bank_rakyat\`, \`bsn\`, \`cimb\`, \`hong_leong_bank\`, \`hsbc\`, \`kfh\`, \`maybank2u\`, \`ocbc\`, \`public_bank\`, \`rhb\`, \`standard_chartered\`, \`uob\`, \`deutsche_bank\`, \`maybank2e\`, or \`pb_enterprise\`.
  paymentMethodFpxBank :: PaymentMethodFpxBank'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PaymentMethodFpx
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "bank" (paymentMethodFpxBank obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "bank" (paymentMethodFpxBank obj))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodFpx
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodFpx" (\obj -> GHC.Base.pure PaymentMethodFpx GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "bank"))
-- | Defines the enum schema payment_method_fpxBank\'
-- 
-- The customer\'s bank, if provided. Can be one of \`affin_bank\`, \`alliance_bank\`, \`ambank\`, \`bank_islam\`, \`bank_muamalat\`, \`bank_rakyat\`, \`bsn\`, \`cimb\`, \`hong_leong_bank\`, \`hsbc\`, \`kfh\`, \`maybank2u\`, \`ocbc\`, \`public_bank\`, \`rhb\`, \`standard_chartered\`, \`uob\`, \`deutsche_bank\`, \`maybank2e\`, or \`pb_enterprise\`.
data PaymentMethodFpxBank'
    = PaymentMethodFpxBank'EnumOther Data.Aeson.Types.Internal.Value
    | PaymentMethodFpxBank'EnumTyped Data.Text.Internal.Text
    | PaymentMethodFpxBank'EnumStringAffinBank
    | PaymentMethodFpxBank'EnumStringAllianceBank
    | PaymentMethodFpxBank'EnumStringAmbank
    | PaymentMethodFpxBank'EnumStringBankIslam
    | PaymentMethodFpxBank'EnumStringBankMuamalat
    | PaymentMethodFpxBank'EnumStringBankRakyat
    | PaymentMethodFpxBank'EnumStringBsn
    | PaymentMethodFpxBank'EnumStringCimb
    | PaymentMethodFpxBank'EnumStringDeutscheBank
    | PaymentMethodFpxBank'EnumStringHongLeongBank
    | PaymentMethodFpxBank'EnumStringHsbc
    | PaymentMethodFpxBank'EnumStringKfh
    | PaymentMethodFpxBank'EnumStringMaybank2e
    | PaymentMethodFpxBank'EnumStringMaybank2u
    | PaymentMethodFpxBank'EnumStringOcbc
    | PaymentMethodFpxBank'EnumStringPbEnterprise
    | PaymentMethodFpxBank'EnumStringPublicBank
    | PaymentMethodFpxBank'EnumStringRhb
    | PaymentMethodFpxBank'EnumStringStandardChartered
    | PaymentMethodFpxBank'EnumStringUob
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PaymentMethodFpxBank'
    where toJSON (PaymentMethodFpxBank'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PaymentMethodFpxBank'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PaymentMethodFpxBank'EnumStringAffinBank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "affin_bank"
          toJSON (PaymentMethodFpxBank'EnumStringAllianceBank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alliance_bank"
          toJSON (PaymentMethodFpxBank'EnumStringAmbank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ambank"
          toJSON (PaymentMethodFpxBank'EnumStringBankIslam) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_islam"
          toJSON (PaymentMethodFpxBank'EnumStringBankMuamalat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_muamalat"
          toJSON (PaymentMethodFpxBank'EnumStringBankRakyat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_rakyat"
          toJSON (PaymentMethodFpxBank'EnumStringBsn) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bsn"
          toJSON (PaymentMethodFpxBank'EnumStringCimb) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "cimb"
          toJSON (PaymentMethodFpxBank'EnumStringDeutscheBank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "deutsche_bank"
          toJSON (PaymentMethodFpxBank'EnumStringHongLeongBank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "hong_leong_bank"
          toJSON (PaymentMethodFpxBank'EnumStringHsbc) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "hsbc"
          toJSON (PaymentMethodFpxBank'EnumStringKfh) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "kfh"
          toJSON (PaymentMethodFpxBank'EnumStringMaybank2e) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "maybank2e"
          toJSON (PaymentMethodFpxBank'EnumStringMaybank2u) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "maybank2u"
          toJSON (PaymentMethodFpxBank'EnumStringOcbc) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ocbc"
          toJSON (PaymentMethodFpxBank'EnumStringPbEnterprise) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pb_enterprise"
          toJSON (PaymentMethodFpxBank'EnumStringPublicBank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public_bank"
          toJSON (PaymentMethodFpxBank'EnumStringRhb) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "rhb"
          toJSON (PaymentMethodFpxBank'EnumStringStandardChartered) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard_chartered"
          toJSON (PaymentMethodFpxBank'EnumStringUob) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "uob"
instance Data.Aeson.FromJSON PaymentMethodFpxBank'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "affin_bank")
                                          then PaymentMethodFpxBank'EnumStringAffinBank
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alliance_bank")
                                                then PaymentMethodFpxBank'EnumStringAllianceBank
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ambank")
                                                      then PaymentMethodFpxBank'EnumStringAmbank
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_islam")
                                                            then PaymentMethodFpxBank'EnumStringBankIslam
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_muamalat")
                                                                  then PaymentMethodFpxBank'EnumStringBankMuamalat
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_rakyat")
                                                                        then PaymentMethodFpxBank'EnumStringBankRakyat
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bsn")
                                                                              then PaymentMethodFpxBank'EnumStringBsn
                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "cimb")
                                                                                    then PaymentMethodFpxBank'EnumStringCimb
                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "deutsche_bank")
                                                                                          then PaymentMethodFpxBank'EnumStringDeutscheBank
                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "hong_leong_bank")
                                                                                                then PaymentMethodFpxBank'EnumStringHongLeongBank
                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "hsbc")
                                                                                                      then PaymentMethodFpxBank'EnumStringHsbc
                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "kfh")
                                                                                                            then PaymentMethodFpxBank'EnumStringKfh
                                                                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "maybank2e")
                                                                                                                  then PaymentMethodFpxBank'EnumStringMaybank2e
                                                                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "maybank2u")
                                                                                                                        then PaymentMethodFpxBank'EnumStringMaybank2u
                                                                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ocbc")
                                                                                                                              then PaymentMethodFpxBank'EnumStringOcbc
                                                                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pb_enterprise")
                                                                                                                                    then PaymentMethodFpxBank'EnumStringPbEnterprise
                                                                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public_bank")
                                                                                                                                          then PaymentMethodFpxBank'EnumStringPublicBank
                                                                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "rhb")
                                                                                                                                                then PaymentMethodFpxBank'EnumStringRhb
                                                                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard_chartered")
                                                                                                                                                      then PaymentMethodFpxBank'EnumStringStandardChartered
                                                                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "uob")
                                                                                                                                                            then PaymentMethodFpxBank'EnumStringUob
                                                                                                                                                            else PaymentMethodFpxBank'EnumOther val)