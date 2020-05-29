{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema LegalEntityJapanAddress
module StripeAPI.Types.LegalEntityJapanAddress where

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

-- | Defines the data type for the schema legal_entity_japan_address
-- 
-- 
data LegalEntityJapanAddress = LegalEntityJapanAddress {
  -- | city: City\/Ward.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  legalEntityJapanAddressCity :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , legalEntityJapanAddressCountry :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line1: Block\/Building number.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , legalEntityJapanAddressLine1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line2: Building details.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , legalEntityJapanAddressLine2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | postal_code: ZIP or postal code.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , legalEntityJapanAddressPostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | state: Prefecture.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , legalEntityJapanAddressState :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | town: Town\/cho-me.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , legalEntityJapanAddressTown :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON LegalEntityJapanAddress
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (legalEntityJapanAddressCity obj) : (Data.Aeson..=) "country" (legalEntityJapanAddressCountry obj) : (Data.Aeson..=) "line1" (legalEntityJapanAddressLine1 obj) : (Data.Aeson..=) "line2" (legalEntityJapanAddressLine2 obj) : (Data.Aeson..=) "postal_code" (legalEntityJapanAddressPostalCode obj) : (Data.Aeson..=) "state" (legalEntityJapanAddressState obj) : (Data.Aeson..=) "town" (legalEntityJapanAddressTown obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (legalEntityJapanAddressCity obj) GHC.Base.<> ((Data.Aeson..=) "country" (legalEntityJapanAddressCountry obj) GHC.Base.<> ((Data.Aeson..=) "line1" (legalEntityJapanAddressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (legalEntityJapanAddressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (legalEntityJapanAddressPostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (legalEntityJapanAddressState obj) GHC.Base.<> (Data.Aeson..=) "town" (legalEntityJapanAddressTown obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON LegalEntityJapanAddress
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "LegalEntityJapanAddress" (\obj -> ((((((GHC.Base.pure LegalEntityJapanAddress GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))