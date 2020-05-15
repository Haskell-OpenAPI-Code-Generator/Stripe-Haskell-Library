{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.PaymentMethodDetailsBancontact where

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

data PaymentMethodDetailsBancontact
    = PaymentMethodDetailsBancontact {paymentMethodDetailsBancontactBankCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                      paymentMethodDetailsBancontactBankName :: (GHC.Maybe.Maybe GHC.Base.String),
                                      paymentMethodDetailsBancontactBic :: (GHC.Maybe.Maybe GHC.Base.String),
                                      paymentMethodDetailsBancontactIbanLast4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                      paymentMethodDetailsBancontactPreferredLanguage :: (GHC.Maybe.Maybe PaymentMethodDetailsBancontactPreferredLanguage'),
                                      paymentMethodDetailsBancontactVerifiedName :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PaymentMethodDetailsBancontactPreferredLanguage'
    = PaymentMethodDetailsBancontactPreferredLanguage'EnumOther Data.Aeson.Types.Internal.Value
    | PaymentMethodDetailsBancontactPreferredLanguage'EnumTyped GHC.Base.String
    | PaymentMethodDetailsBancontactPreferredLanguage'EnumStringDe
    | PaymentMethodDetailsBancontactPreferredLanguage'EnumStringEn
    | PaymentMethodDetailsBancontactPreferredLanguage'EnumStringFr
    | PaymentMethodDetailsBancontactPreferredLanguage'EnumStringNl
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PaymentMethodDetailsBancontactPreferredLanguage'
    where toJSON (PaymentMethodDetailsBancontactPreferredLanguage'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PaymentMethodDetailsBancontactPreferredLanguage'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PaymentMethodDetailsBancontactPreferredLanguage'EnumStringDe) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "de"
          toJSON (PaymentMethodDetailsBancontactPreferredLanguage'EnumStringEn) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "en"
          toJSON (PaymentMethodDetailsBancontactPreferredLanguage'EnumStringFr) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fr"
          toJSON (PaymentMethodDetailsBancontactPreferredLanguage'EnumStringNl) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "nl"
instance Data.Aeson.FromJSON PaymentMethodDetailsBancontactPreferredLanguage'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "de")
                                          then PaymentMethodDetailsBancontactPreferredLanguage'EnumStringDe
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "en")
                                                then PaymentMethodDetailsBancontactPreferredLanguage'EnumStringEn
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fr")
                                                      then PaymentMethodDetailsBancontactPreferredLanguage'EnumStringFr
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "nl")
                                                            then PaymentMethodDetailsBancontactPreferredLanguage'EnumStringNl
                                                            else PaymentMethodDetailsBancontactPreferredLanguage'EnumOther val)
instance Data.Aeson.ToJSON PaymentMethodDetailsBancontact
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "bank_code" (paymentMethodDetailsBancontactBankCode obj) : (Data.Aeson..=) "bank_name" (paymentMethodDetailsBancontactBankName obj) : (Data.Aeson..=) "bic" (paymentMethodDetailsBancontactBic obj) : (Data.Aeson..=) "iban_last4" (paymentMethodDetailsBancontactIbanLast4 obj) : (Data.Aeson..=) "preferred_language" (paymentMethodDetailsBancontactPreferredLanguage obj) : (Data.Aeson..=) "verified_name" (paymentMethodDetailsBancontactVerifiedName obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "bank_code" (paymentMethodDetailsBancontactBankCode obj) GHC.Base.<> ((Data.Aeson..=) "bank_name" (paymentMethodDetailsBancontactBankName obj) GHC.Base.<> ((Data.Aeson..=) "bic" (paymentMethodDetailsBancontactBic obj) GHC.Base.<> ((Data.Aeson..=) "iban_last4" (paymentMethodDetailsBancontactIbanLast4 obj) GHC.Base.<> ((Data.Aeson..=) "preferred_language" (paymentMethodDetailsBancontactPreferredLanguage obj) GHC.Base.<> (Data.Aeson..=) "verified_name" (paymentMethodDetailsBancontactVerifiedName obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsBancontact
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsBancontact" (\obj -> (((((GHC.Base.pure PaymentMethodDetailsBancontact GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bic")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "iban_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "preferred_language")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_name"))