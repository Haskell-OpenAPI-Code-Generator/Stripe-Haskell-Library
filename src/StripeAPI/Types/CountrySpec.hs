{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.CountrySpec where

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
import StripeAPI.Types.CountrySpecVerificationFields

data CountrySpec
    = CountrySpec {countrySpecDefaultCurrency :: GHC.Base.String,
                   countrySpecId :: GHC.Base.String,
                   countrySpecObject :: CountrySpecObject',
                   countrySpecSupportedBankAccountCurrencies :: CountrySpecSupportedBankAccountCurrencies',
                   countrySpecSupportedPaymentCurrencies :: ([] GHC.Base.String),
                   countrySpecSupportedPaymentMethods :: ([] GHC.Base.String),
                   countrySpecSupportedTransferCountries :: ([] GHC.Base.String),
                   countrySpecVerificationFields :: CountrySpecVerificationFields}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data CountrySpecObject'
    = CountrySpecObject'EnumOther Data.Aeson.Types.Internal.Value
    | CountrySpecObject'EnumTyped GHC.Base.String
    | CountrySpecObject'EnumStringCountrySpec
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON CountrySpecObject'
    where toJSON (CountrySpecObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (CountrySpecObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (CountrySpecObject'EnumStringCountrySpec) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "country_spec"
instance Data.Aeson.FromJSON CountrySpecObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "country_spec")
                                          then CountrySpecObject'EnumStringCountrySpec
                                          else CountrySpecObject'EnumOther val)
data CountrySpecSupportedBankAccountCurrencies'
    = CountrySpecSupportedBankAccountCurrencies' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON CountrySpecSupportedBankAccountCurrencies'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON CountrySpecSupportedBankAccountCurrencies'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CountrySpecSupportedBankAccountCurrencies'" (\obj -> GHC.Base.pure CountrySpecSupportedBankAccountCurrencies')
instance Data.Aeson.ToJSON CountrySpec
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "default_currency" (countrySpecDefaultCurrency obj) : (Data.Aeson..=) "id" (countrySpecId obj) : (Data.Aeson..=) "object" (countrySpecObject obj) : (Data.Aeson..=) "supported_bank_account_currencies" (countrySpecSupportedBankAccountCurrencies obj) : (Data.Aeson..=) "supported_payment_currencies" (countrySpecSupportedPaymentCurrencies obj) : (Data.Aeson..=) "supported_payment_methods" (countrySpecSupportedPaymentMethods obj) : (Data.Aeson..=) "supported_transfer_countries" (countrySpecSupportedTransferCountries obj) : (Data.Aeson..=) "verification_fields" (countrySpecVerificationFields obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "default_currency" (countrySpecDefaultCurrency obj) GHC.Base.<> ((Data.Aeson..=) "id" (countrySpecId obj) GHC.Base.<> ((Data.Aeson..=) "object" (countrySpecObject obj) GHC.Base.<> ((Data.Aeson..=) "supported_bank_account_currencies" (countrySpecSupportedBankAccountCurrencies obj) GHC.Base.<> ((Data.Aeson..=) "supported_payment_currencies" (countrySpecSupportedPaymentCurrencies obj) GHC.Base.<> ((Data.Aeson..=) "supported_payment_methods" (countrySpecSupportedPaymentMethods obj) GHC.Base.<> ((Data.Aeson..=) "supported_transfer_countries" (countrySpecSupportedTransferCountries obj) GHC.Base.<> (Data.Aeson..=) "verification_fields" (countrySpecVerificationFields obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON CountrySpec
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CountrySpec" (\obj -> (((((((GHC.Base.pure CountrySpec GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "default_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "supported_bank_account_currencies")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "supported_payment_currencies")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "supported_payment_methods")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "supported_transfer_countries")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verification_fields"))