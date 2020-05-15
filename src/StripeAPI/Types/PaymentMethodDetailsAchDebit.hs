{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.PaymentMethodDetailsAchDebit where

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

data PaymentMethodDetailsAchDebit
    = PaymentMethodDetailsAchDebit {paymentMethodDetailsAchDebitAccountHolderType :: (GHC.Maybe.Maybe PaymentMethodDetailsAchDebitAccountHolderType'),
                                    paymentMethodDetailsAchDebitBankName :: (GHC.Maybe.Maybe GHC.Base.String),
                                    paymentMethodDetailsAchDebitCountry :: (GHC.Maybe.Maybe GHC.Base.String),
                                    paymentMethodDetailsAchDebitFingerprint :: (GHC.Maybe.Maybe GHC.Base.String),
                                    paymentMethodDetailsAchDebitLast4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                    paymentMethodDetailsAchDebitRoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PaymentMethodDetailsAchDebitAccountHolderType'
    = PaymentMethodDetailsAchDebitAccountHolderType'EnumOther Data.Aeson.Types.Internal.Value
    | PaymentMethodDetailsAchDebitAccountHolderType'EnumTyped GHC.Base.String
    | PaymentMethodDetailsAchDebitAccountHolderType'EnumStringCompany
    | PaymentMethodDetailsAchDebitAccountHolderType'EnumStringIndividual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PaymentMethodDetailsAchDebitAccountHolderType'
    where toJSON (PaymentMethodDetailsAchDebitAccountHolderType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PaymentMethodDetailsAchDebitAccountHolderType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PaymentMethodDetailsAchDebitAccountHolderType'EnumStringCompany) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company"
          toJSON (PaymentMethodDetailsAchDebitAccountHolderType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
instance Data.Aeson.FromJSON PaymentMethodDetailsAchDebitAccountHolderType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company")
                                          then PaymentMethodDetailsAchDebitAccountHolderType'EnumStringCompany
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                then PaymentMethodDetailsAchDebitAccountHolderType'EnumStringIndividual
                                                else PaymentMethodDetailsAchDebitAccountHolderType'EnumOther val)
instance Data.Aeson.ToJSON PaymentMethodDetailsAchDebit
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_holder_type" (paymentMethodDetailsAchDebitAccountHolderType obj) : (Data.Aeson..=) "bank_name" (paymentMethodDetailsAchDebitBankName obj) : (Data.Aeson..=) "country" (paymentMethodDetailsAchDebitCountry obj) : (Data.Aeson..=) "fingerprint" (paymentMethodDetailsAchDebitFingerprint obj) : (Data.Aeson..=) "last4" (paymentMethodDetailsAchDebitLast4 obj) : (Data.Aeson..=) "routing_number" (paymentMethodDetailsAchDebitRoutingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_holder_type" (paymentMethodDetailsAchDebitAccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "bank_name" (paymentMethodDetailsAchDebitBankName obj) GHC.Base.<> ((Data.Aeson..=) "country" (paymentMethodDetailsAchDebitCountry obj) GHC.Base.<> ((Data.Aeson..=) "fingerprint" (paymentMethodDetailsAchDebitFingerprint obj) GHC.Base.<> ((Data.Aeson..=) "last4" (paymentMethodDetailsAchDebitLast4 obj) GHC.Base.<> (Data.Aeson..=) "routing_number" (paymentMethodDetailsAchDebitRoutingNumber obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsAchDebit
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsAchDebit" (\obj -> (((((GHC.Base.pure PaymentMethodDetailsAchDebit GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number"))