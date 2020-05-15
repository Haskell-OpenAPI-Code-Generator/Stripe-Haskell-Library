{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.PaymentMethodDetailsSofort where

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

data PaymentMethodDetailsSofort
    = PaymentMethodDetailsSofort {paymentMethodDetailsSofortBankCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                  paymentMethodDetailsSofortBankName :: (GHC.Maybe.Maybe GHC.Base.String),
                                  paymentMethodDetailsSofortBic :: (GHC.Maybe.Maybe GHC.Base.String),
                                  paymentMethodDetailsSofortCountry :: (GHC.Maybe.Maybe GHC.Base.String),
                                  paymentMethodDetailsSofortIbanLast4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                  paymentMethodDetailsSofortVerifiedName :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PaymentMethodDetailsSofort
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "bank_code" (paymentMethodDetailsSofortBankCode obj) : (Data.Aeson..=) "bank_name" (paymentMethodDetailsSofortBankName obj) : (Data.Aeson..=) "bic" (paymentMethodDetailsSofortBic obj) : (Data.Aeson..=) "country" (paymentMethodDetailsSofortCountry obj) : (Data.Aeson..=) "iban_last4" (paymentMethodDetailsSofortIbanLast4 obj) : (Data.Aeson..=) "verified_name" (paymentMethodDetailsSofortVerifiedName obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "bank_code" (paymentMethodDetailsSofortBankCode obj) GHC.Base.<> ((Data.Aeson..=) "bank_name" (paymentMethodDetailsSofortBankName obj) GHC.Base.<> ((Data.Aeson..=) "bic" (paymentMethodDetailsSofortBic obj) GHC.Base.<> ((Data.Aeson..=) "country" (paymentMethodDetailsSofortCountry obj) GHC.Base.<> ((Data.Aeson..=) "iban_last4" (paymentMethodDetailsSofortIbanLast4 obj) GHC.Base.<> (Data.Aeson..=) "verified_name" (paymentMethodDetailsSofortVerifiedName obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsSofort
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsSofort" (\obj -> (((((GHC.Base.pure PaymentMethodDetailsSofort GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bic")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "iban_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_name"))