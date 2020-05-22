{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema PaymentMethodIdeal
module StripeAPI.Types.PaymentMethodIdeal where

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

-- | Defines the data type for the schema payment_method_ideal
-- 
-- 
data PaymentMethodIdeal = PaymentMethodIdeal {
  -- | bank: The customer\'s bank, if provided. Can be one of \`abn_amro\`, \`asn_bank\`, \`bunq\`, \`handelsbanken\`, \`ing\`, \`knab\`, \`moneyou\`, \`rabobank\`, \`regiobank\`, \`sns_bank\`, \`triodos_bank\`, or \`van_lanschot\`.
  paymentMethodIdealBank :: (GHC.Maybe.Maybe PaymentMethodIdealBank')
  -- | bic: The Bank Identifier Code of the customer\'s bank, if the bank was provided.
  , paymentMethodIdealBic :: (GHC.Maybe.Maybe PaymentMethodIdealBic')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PaymentMethodIdeal
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "bank" (paymentMethodIdealBank obj) : (Data.Aeson..=) "bic" (paymentMethodIdealBic obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "bank" (paymentMethodIdealBank obj) GHC.Base.<> (Data.Aeson..=) "bic" (paymentMethodIdealBic obj))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodIdeal
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodIdeal" (\obj -> (GHC.Base.pure PaymentMethodIdeal GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bic"))
-- | Defines the enum schema payment_method_idealBank\'
-- 
-- The customer\'s bank, if provided. Can be one of \`abn_amro\`, \`asn_bank\`, \`bunq\`, \`handelsbanken\`, \`ing\`, \`knab\`, \`moneyou\`, \`rabobank\`, \`regiobank\`, \`sns_bank\`, \`triodos_bank\`, or \`van_lanschot\`.
data PaymentMethodIdealBank'
    = PaymentMethodIdealBank'EnumOther Data.Aeson.Types.Internal.Value
    | PaymentMethodIdealBank'EnumTyped GHC.Base.String
    | PaymentMethodIdealBank'EnumStringAbnAmro
    | PaymentMethodIdealBank'EnumStringAsnBank
    | PaymentMethodIdealBank'EnumStringBunq
    | PaymentMethodIdealBank'EnumStringHandelsbanken
    | PaymentMethodIdealBank'EnumStringIng
    | PaymentMethodIdealBank'EnumStringKnab
    | PaymentMethodIdealBank'EnumStringMoneyou
    | PaymentMethodIdealBank'EnumStringRabobank
    | PaymentMethodIdealBank'EnumStringRegiobank
    | PaymentMethodIdealBank'EnumStringSnsBank
    | PaymentMethodIdealBank'EnumStringTriodosBank
    | PaymentMethodIdealBank'EnumStringVanLanschot
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PaymentMethodIdealBank'
    where toJSON (PaymentMethodIdealBank'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PaymentMethodIdealBank'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PaymentMethodIdealBank'EnumStringAbnAmro) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "abn_amro"
          toJSON (PaymentMethodIdealBank'EnumStringAsnBank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "asn_bank"
          toJSON (PaymentMethodIdealBank'EnumStringBunq) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bunq"
          toJSON (PaymentMethodIdealBank'EnumStringHandelsbanken) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "handelsbanken"
          toJSON (PaymentMethodIdealBank'EnumStringIng) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ing"
          toJSON (PaymentMethodIdealBank'EnumStringKnab) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "knab"
          toJSON (PaymentMethodIdealBank'EnumStringMoneyou) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "moneyou"
          toJSON (PaymentMethodIdealBank'EnumStringRabobank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "rabobank"
          toJSON (PaymentMethodIdealBank'EnumStringRegiobank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "regiobank"
          toJSON (PaymentMethodIdealBank'EnumStringSnsBank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sns_bank"
          toJSON (PaymentMethodIdealBank'EnumStringTriodosBank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "triodos_bank"
          toJSON (PaymentMethodIdealBank'EnumStringVanLanschot) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "van_lanschot"
instance Data.Aeson.FromJSON PaymentMethodIdealBank'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "abn_amro")
                                          then PaymentMethodIdealBank'EnumStringAbnAmro
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "asn_bank")
                                                then PaymentMethodIdealBank'EnumStringAsnBank
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bunq")
                                                      then PaymentMethodIdealBank'EnumStringBunq
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "handelsbanken")
                                                            then PaymentMethodIdealBank'EnumStringHandelsbanken
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ing")
                                                                  then PaymentMethodIdealBank'EnumStringIng
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "knab")
                                                                        then PaymentMethodIdealBank'EnumStringKnab
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "moneyou")
                                                                              then PaymentMethodIdealBank'EnumStringMoneyou
                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "rabobank")
                                                                                    then PaymentMethodIdealBank'EnumStringRabobank
                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "regiobank")
                                                                                          then PaymentMethodIdealBank'EnumStringRegiobank
                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sns_bank")
                                                                                                then PaymentMethodIdealBank'EnumStringSnsBank
                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "triodos_bank")
                                                                                                      then PaymentMethodIdealBank'EnumStringTriodosBank
                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "van_lanschot")
                                                                                                            then PaymentMethodIdealBank'EnumStringVanLanschot
                                                                                                            else PaymentMethodIdealBank'EnumOther val)
-- | Defines the enum schema payment_method_idealBic\'
-- 
-- The Bank Identifier Code of the customer\'s bank, if the bank was provided.
data PaymentMethodIdealBic'
    = PaymentMethodIdealBic'EnumOther Data.Aeson.Types.Internal.Value
    | PaymentMethodIdealBic'EnumTyped GHC.Base.String
    | PaymentMethodIdealBic'EnumStringABNANL2A
    | PaymentMethodIdealBic'EnumStringASNBNL21
    | PaymentMethodIdealBic'EnumStringBUNQNL2A
    | PaymentMethodIdealBic'EnumStringFVLBNL22
    | PaymentMethodIdealBic'EnumStringHANDNL2A
    | PaymentMethodIdealBic'EnumStringINGBNL2A
    | PaymentMethodIdealBic'EnumStringKNABNL2H
    | PaymentMethodIdealBic'EnumStringMOYONL21
    | PaymentMethodIdealBic'EnumStringRABONL2U
    | PaymentMethodIdealBic'EnumStringRBRBNL21
    | PaymentMethodIdealBic'EnumStringSNSBNL2A
    | PaymentMethodIdealBic'EnumStringTRIONL2U
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PaymentMethodIdealBic'
    where toJSON (PaymentMethodIdealBic'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PaymentMethodIdealBic'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PaymentMethodIdealBic'EnumStringABNANL2A) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ABNANL2A"
          toJSON (PaymentMethodIdealBic'EnumStringASNBNL21) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ASNBNL21"
          toJSON (PaymentMethodIdealBic'EnumStringBUNQNL2A) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "BUNQNL2A"
          toJSON (PaymentMethodIdealBic'EnumStringFVLBNL22) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "FVLBNL22"
          toJSON (PaymentMethodIdealBic'EnumStringHANDNL2A) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "HANDNL2A"
          toJSON (PaymentMethodIdealBic'EnumStringINGBNL2A) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "INGBNL2A"
          toJSON (PaymentMethodIdealBic'EnumStringKNABNL2H) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "KNABNL2H"
          toJSON (PaymentMethodIdealBic'EnumStringMOYONL21) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "MOYONL21"
          toJSON (PaymentMethodIdealBic'EnumStringRABONL2U) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "RABONL2U"
          toJSON (PaymentMethodIdealBic'EnumStringRBRBNL21) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "RBRBNL21"
          toJSON (PaymentMethodIdealBic'EnumStringSNSBNL2A) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "SNSBNL2A"
          toJSON (PaymentMethodIdealBic'EnumStringTRIONL2U) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "TRIONL2U"
instance Data.Aeson.FromJSON PaymentMethodIdealBic'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ABNANL2A")
                                          then PaymentMethodIdealBic'EnumStringABNANL2A
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ASNBNL21")
                                                then PaymentMethodIdealBic'EnumStringASNBNL21
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "BUNQNL2A")
                                                      then PaymentMethodIdealBic'EnumStringBUNQNL2A
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "FVLBNL22")
                                                            then PaymentMethodIdealBic'EnumStringFVLBNL22
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "HANDNL2A")
                                                                  then PaymentMethodIdealBic'EnumStringHANDNL2A
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "INGBNL2A")
                                                                        then PaymentMethodIdealBic'EnumStringINGBNL2A
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "KNABNL2H")
                                                                              then PaymentMethodIdealBic'EnumStringKNABNL2H
                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "MOYONL21")
                                                                                    then PaymentMethodIdealBic'EnumStringMOYONL21
                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "RABONL2U")
                                                                                          then PaymentMethodIdealBic'EnumStringRABONL2U
                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "RBRBNL21")
                                                                                                then PaymentMethodIdealBic'EnumStringRBRBNL21
                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "SNSBNL2A")
                                                                                                      then PaymentMethodIdealBic'EnumStringSNSBNL2A
                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "TRIONL2U")
                                                                                                            then PaymentMethodIdealBic'EnumStringTRIONL2U
                                                                                                            else PaymentMethodIdealBic'EnumOther val)