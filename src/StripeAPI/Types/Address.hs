{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema Address
module StripeAPI.Types.Address where

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

-- | Defines the data type for the schema address
-- 
-- 
data Address = Address {
  -- | city: City, district, suburb, town, or village.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  addressCity :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , addressCountry :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line1: Address line 1 (e.g., street, PO Box, or company name).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , addressLine1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line2: Address line 2 (e.g., apartment, suite, unit, or building).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , addressLine2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | postal_code: ZIP or postal code.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , addressPostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | state: State, county, province, or region.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , addressState :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON Address
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (addressCity obj) : (Data.Aeson..=) "country" (addressCountry obj) : (Data.Aeson..=) "line1" (addressLine1 obj) : (Data.Aeson..=) "line2" (addressLine2 obj) : (Data.Aeson..=) "postal_code" (addressPostalCode obj) : (Data.Aeson..=) "state" (addressState obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (addressCity obj) GHC.Base.<> ((Data.Aeson..=) "country" (addressCountry obj) GHC.Base.<> ((Data.Aeson..=) "line1" (addressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (addressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (addressPostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (addressState obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON Address
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Address" (\obj -> (((((GHC.Base.pure Address GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))