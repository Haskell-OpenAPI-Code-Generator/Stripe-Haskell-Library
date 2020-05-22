{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema PaymentMethodDetailsIdeal
module StripeAPI.Types.PaymentMethodDetailsIdeal where

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

-- | Defines the data type for the schema payment_method_details_ideal
-- 
-- 
data PaymentMethodDetailsIdeal = PaymentMethodDetailsIdeal {
  -- | bank: The customer\'s bank. Can be one of \`abn_amro\`, \`asn_bank\`, \`bunq\`, \`handelsbanken\`, \`ing\`, \`knab\`, \`moneyou\`, \`rabobank\`, \`regiobank\`, \`sns_bank\`, \`triodos_bank\`, or \`van_lanschot\`.
  paymentMethodDetailsIdealBank :: (GHC.Maybe.Maybe PaymentMethodDetailsIdealBank')
  -- | bic: The Bank Identifier Code of the customer\'s bank.
  , paymentMethodDetailsIdealBic :: (GHC.Maybe.Maybe PaymentMethodDetailsIdealBic')
  -- | iban_last4: Last four characters of the IBAN.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodDetailsIdealIbanLast4 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | verified_name: Owner\'s verified full name. Values are verified or provided by iDEAL directly
  -- (if supported) at the time of authorization or settlement. They cannot be set or mutated.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodDetailsIdealVerifiedName :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PaymentMethodDetailsIdeal
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "bank" (paymentMethodDetailsIdealBank obj) : (Data.Aeson..=) "bic" (paymentMethodDetailsIdealBic obj) : (Data.Aeson..=) "iban_last4" (paymentMethodDetailsIdealIbanLast4 obj) : (Data.Aeson..=) "verified_name" (paymentMethodDetailsIdealVerifiedName obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "bank" (paymentMethodDetailsIdealBank obj) GHC.Base.<> ((Data.Aeson..=) "bic" (paymentMethodDetailsIdealBic obj) GHC.Base.<> ((Data.Aeson..=) "iban_last4" (paymentMethodDetailsIdealIbanLast4 obj) GHC.Base.<> (Data.Aeson..=) "verified_name" (paymentMethodDetailsIdealVerifiedName obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsIdeal
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsIdeal" (\obj -> (((GHC.Base.pure PaymentMethodDetailsIdeal GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bic")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "iban_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_name"))
-- | Defines the enum schema payment_method_details_idealBank\'
-- 
-- The customer\'s bank. Can be one of \`abn_amro\`, \`asn_bank\`, \`bunq\`, \`handelsbanken\`, \`ing\`, \`knab\`, \`moneyou\`, \`rabobank\`, \`regiobank\`, \`sns_bank\`, \`triodos_bank\`, or \`van_lanschot\`.
data PaymentMethodDetailsIdealBank'
    = PaymentMethodDetailsIdealBank'EnumOther Data.Aeson.Types.Internal.Value
    | PaymentMethodDetailsIdealBank'EnumTyped GHC.Base.String
    | PaymentMethodDetailsIdealBank'EnumStringAbnAmro
    | PaymentMethodDetailsIdealBank'EnumStringAsnBank
    | PaymentMethodDetailsIdealBank'EnumStringBunq
    | PaymentMethodDetailsIdealBank'EnumStringHandelsbanken
    | PaymentMethodDetailsIdealBank'EnumStringIng
    | PaymentMethodDetailsIdealBank'EnumStringKnab
    | PaymentMethodDetailsIdealBank'EnumStringMoneyou
    | PaymentMethodDetailsIdealBank'EnumStringRabobank
    | PaymentMethodDetailsIdealBank'EnumStringRegiobank
    | PaymentMethodDetailsIdealBank'EnumStringSnsBank
    | PaymentMethodDetailsIdealBank'EnumStringTriodosBank
    | PaymentMethodDetailsIdealBank'EnumStringVanLanschot
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PaymentMethodDetailsIdealBank'
    where toJSON (PaymentMethodDetailsIdealBank'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PaymentMethodDetailsIdealBank'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PaymentMethodDetailsIdealBank'EnumStringAbnAmro) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "abn_amro"
          toJSON (PaymentMethodDetailsIdealBank'EnumStringAsnBank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "asn_bank"
          toJSON (PaymentMethodDetailsIdealBank'EnumStringBunq) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bunq"
          toJSON (PaymentMethodDetailsIdealBank'EnumStringHandelsbanken) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "handelsbanken"
          toJSON (PaymentMethodDetailsIdealBank'EnumStringIng) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ing"
          toJSON (PaymentMethodDetailsIdealBank'EnumStringKnab) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "knab"
          toJSON (PaymentMethodDetailsIdealBank'EnumStringMoneyou) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "moneyou"
          toJSON (PaymentMethodDetailsIdealBank'EnumStringRabobank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "rabobank"
          toJSON (PaymentMethodDetailsIdealBank'EnumStringRegiobank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "regiobank"
          toJSON (PaymentMethodDetailsIdealBank'EnumStringSnsBank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sns_bank"
          toJSON (PaymentMethodDetailsIdealBank'EnumStringTriodosBank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "triodos_bank"
          toJSON (PaymentMethodDetailsIdealBank'EnumStringVanLanschot) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "van_lanschot"
instance Data.Aeson.FromJSON PaymentMethodDetailsIdealBank'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "abn_amro")
                                          then PaymentMethodDetailsIdealBank'EnumStringAbnAmro
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "asn_bank")
                                                then PaymentMethodDetailsIdealBank'EnumStringAsnBank
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bunq")
                                                      then PaymentMethodDetailsIdealBank'EnumStringBunq
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "handelsbanken")
                                                            then PaymentMethodDetailsIdealBank'EnumStringHandelsbanken
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ing")
                                                                  then PaymentMethodDetailsIdealBank'EnumStringIng
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "knab")
                                                                        then PaymentMethodDetailsIdealBank'EnumStringKnab
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "moneyou")
                                                                              then PaymentMethodDetailsIdealBank'EnumStringMoneyou
                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "rabobank")
                                                                                    then PaymentMethodDetailsIdealBank'EnumStringRabobank
                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "regiobank")
                                                                                          then PaymentMethodDetailsIdealBank'EnumStringRegiobank
                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sns_bank")
                                                                                                then PaymentMethodDetailsIdealBank'EnumStringSnsBank
                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "triodos_bank")
                                                                                                      then PaymentMethodDetailsIdealBank'EnumStringTriodosBank
                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "van_lanschot")
                                                                                                            then PaymentMethodDetailsIdealBank'EnumStringVanLanschot
                                                                                                            else PaymentMethodDetailsIdealBank'EnumOther val)
-- | Defines the enum schema payment_method_details_idealBic\'
-- 
-- The Bank Identifier Code of the customer\'s bank.
data PaymentMethodDetailsIdealBic'
    = PaymentMethodDetailsIdealBic'EnumOther Data.Aeson.Types.Internal.Value
    | PaymentMethodDetailsIdealBic'EnumTyped GHC.Base.String
    | PaymentMethodDetailsIdealBic'EnumStringABNANL2A
    | PaymentMethodDetailsIdealBic'EnumStringASNBNL21
    | PaymentMethodDetailsIdealBic'EnumStringBUNQNL2A
    | PaymentMethodDetailsIdealBic'EnumStringFVLBNL22
    | PaymentMethodDetailsIdealBic'EnumStringHANDNL2A
    | PaymentMethodDetailsIdealBic'EnumStringINGBNL2A
    | PaymentMethodDetailsIdealBic'EnumStringKNABNL2H
    | PaymentMethodDetailsIdealBic'EnumStringMOYONL21
    | PaymentMethodDetailsIdealBic'EnumStringRABONL2U
    | PaymentMethodDetailsIdealBic'EnumStringRBRBNL21
    | PaymentMethodDetailsIdealBic'EnumStringSNSBNL2A
    | PaymentMethodDetailsIdealBic'EnumStringTRIONL2U
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PaymentMethodDetailsIdealBic'
    where toJSON (PaymentMethodDetailsIdealBic'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PaymentMethodDetailsIdealBic'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PaymentMethodDetailsIdealBic'EnumStringABNANL2A) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ABNANL2A"
          toJSON (PaymentMethodDetailsIdealBic'EnumStringASNBNL21) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ASNBNL21"
          toJSON (PaymentMethodDetailsIdealBic'EnumStringBUNQNL2A) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "BUNQNL2A"
          toJSON (PaymentMethodDetailsIdealBic'EnumStringFVLBNL22) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "FVLBNL22"
          toJSON (PaymentMethodDetailsIdealBic'EnumStringHANDNL2A) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "HANDNL2A"
          toJSON (PaymentMethodDetailsIdealBic'EnumStringINGBNL2A) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "INGBNL2A"
          toJSON (PaymentMethodDetailsIdealBic'EnumStringKNABNL2H) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "KNABNL2H"
          toJSON (PaymentMethodDetailsIdealBic'EnumStringMOYONL21) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "MOYONL21"
          toJSON (PaymentMethodDetailsIdealBic'EnumStringRABONL2U) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "RABONL2U"
          toJSON (PaymentMethodDetailsIdealBic'EnumStringRBRBNL21) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "RBRBNL21"
          toJSON (PaymentMethodDetailsIdealBic'EnumStringSNSBNL2A) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "SNSBNL2A"
          toJSON (PaymentMethodDetailsIdealBic'EnumStringTRIONL2U) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "TRIONL2U"
instance Data.Aeson.FromJSON PaymentMethodDetailsIdealBic'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ABNANL2A")
                                          then PaymentMethodDetailsIdealBic'EnumStringABNANL2A
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ASNBNL21")
                                                then PaymentMethodDetailsIdealBic'EnumStringASNBNL21
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "BUNQNL2A")
                                                      then PaymentMethodDetailsIdealBic'EnumStringBUNQNL2A
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "FVLBNL22")
                                                            then PaymentMethodDetailsIdealBic'EnumStringFVLBNL22
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "HANDNL2A")
                                                                  then PaymentMethodDetailsIdealBic'EnumStringHANDNL2A
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "INGBNL2A")
                                                                        then PaymentMethodDetailsIdealBic'EnumStringINGBNL2A
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "KNABNL2H")
                                                                              then PaymentMethodDetailsIdealBic'EnumStringKNABNL2H
                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "MOYONL21")
                                                                                    then PaymentMethodDetailsIdealBic'EnumStringMOYONL21
                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "RABONL2U")
                                                                                          then PaymentMethodDetailsIdealBic'EnumStringRABONL2U
                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "RBRBNL21")
                                                                                                then PaymentMethodDetailsIdealBic'EnumStringRBRBNL21
                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "SNSBNL2A")
                                                                                                      then PaymentMethodDetailsIdealBic'EnumStringSNSBNL2A
                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "TRIONL2U")
                                                                                                            then PaymentMethodDetailsIdealBic'EnumStringTRIONL2U
                                                                                                            else PaymentMethodDetailsIdealBic'EnumOther val)