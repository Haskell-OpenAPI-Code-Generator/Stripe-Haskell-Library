{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema CountrySpec
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

-- | Defines the data type for the schema country_spec
-- 
-- Stripe needs to collect certain pieces of information about each account
-- created. These requirements can differ depending on the account\'s country. The
-- Country Specs API makes these rules available to your integration.
-- 
-- You can also view the information from this API call as [an online
-- guide](\/docs\/connect\/required-verification-information).
data CountrySpec = CountrySpec {
  -- | default_currency: The default currency for this country. This applies to both payment methods and bank accounts.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  countrySpecDefaultCurrency :: GHC.Base.String
  -- | id: Unique identifier for the object. Represented as the ISO country code for this country.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , countrySpecId :: GHC.Base.String
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , countrySpecObject :: CountrySpecObject'
  -- | supported_bank_account_currencies: Currencies that can be accepted in the specific country (for transfers).
  , countrySpecSupportedBankAccountCurrencies :: CountrySpecSupportedBankAccountCurrencies'
  -- | supported_payment_currencies: Currencies that can be accepted in the specified country (for payments).
  , countrySpecSupportedPaymentCurrencies :: ([] GHC.Base.String)
  -- | supported_payment_methods: Payment methods available in the specified country. You may need to enable some payment methods (e.g., [ACH](https:\/\/stripe.com\/docs\/ach)) on your account before they appear in this list. The \`stripe\` payment method refers to [charging through your platform](https:\/\/stripe.com\/docs\/connect\/destination-charges).
  , countrySpecSupportedPaymentMethods :: ([] GHC.Base.String)
  -- | supported_transfer_countries: Countries that can accept transfers from the specified country.
  , countrySpecSupportedTransferCountries :: ([] GHC.Base.String)
  -- | verification_fields: 
  , countrySpecVerificationFields :: CountrySpecVerificationFields
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON CountrySpec
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "default_currency" (countrySpecDefaultCurrency obj) : (Data.Aeson..=) "id" (countrySpecId obj) : (Data.Aeson..=) "object" (countrySpecObject obj) : (Data.Aeson..=) "supported_bank_account_currencies" (countrySpecSupportedBankAccountCurrencies obj) : (Data.Aeson..=) "supported_payment_currencies" (countrySpecSupportedPaymentCurrencies obj) : (Data.Aeson..=) "supported_payment_methods" (countrySpecSupportedPaymentMethods obj) : (Data.Aeson..=) "supported_transfer_countries" (countrySpecSupportedTransferCountries obj) : (Data.Aeson..=) "verification_fields" (countrySpecVerificationFields obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "default_currency" (countrySpecDefaultCurrency obj) GHC.Base.<> ((Data.Aeson..=) "id" (countrySpecId obj) GHC.Base.<> ((Data.Aeson..=) "object" (countrySpecObject obj) GHC.Base.<> ((Data.Aeson..=) "supported_bank_account_currencies" (countrySpecSupportedBankAccountCurrencies obj) GHC.Base.<> ((Data.Aeson..=) "supported_payment_currencies" (countrySpecSupportedPaymentCurrencies obj) GHC.Base.<> ((Data.Aeson..=) "supported_payment_methods" (countrySpecSupportedPaymentMethods obj) GHC.Base.<> ((Data.Aeson..=) "supported_transfer_countries" (countrySpecSupportedTransferCountries obj) GHC.Base.<> (Data.Aeson..=) "verification_fields" (countrySpecVerificationFields obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON CountrySpec
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CountrySpec" (\obj -> (((((((GHC.Base.pure CountrySpec GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "default_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "supported_bank_account_currencies")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "supported_payment_currencies")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "supported_payment_methods")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "supported_transfer_countries")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verification_fields"))
-- | Defines the enum schema country_specObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
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
-- | Defines the data type for the schema country_specSupported_bank_account_currencies\'
-- 
-- Currencies that can be accepted in the specific country (for transfers).
data CountrySpecSupportedBankAccountCurrencies' = CountrySpecSupportedBankAccountCurrencies' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON CountrySpecSupportedBankAccountCurrencies'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON CountrySpecSupportedBankAccountCurrencies'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CountrySpecSupportedBankAccountCurrencies'" (\obj -> GHC.Base.pure CountrySpecSupportedBankAccountCurrencies')