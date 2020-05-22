{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema SourceTypeCard
module StripeAPI.Types.SourceTypeCard where

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

-- | Defines the data type for the schema source_type_card
-- 
-- 
data SourceTypeCard = SourceTypeCard {
  -- | address_line1_check
  sourceTypeCardAddressLine1Check :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_zip_check
  , sourceTypeCardAddressZipCheck :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | brand
  , sourceTypeCardBrand :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  , sourceTypeCardCountry :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | cvc_check
  , sourceTypeCardCvcCheck :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | dynamic_last4
  , sourceTypeCardDynamicLast4 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | exp_month
  , sourceTypeCardExpMonth :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | exp_year
  , sourceTypeCardExpYear :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | fingerprint
  , sourceTypeCardFingerprint :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | funding
  , sourceTypeCardFunding :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | last4
  , sourceTypeCardLast4 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | name
  , sourceTypeCardName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | three_d_secure
  , sourceTypeCardThreeDSecure :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | tokenization_method
  , sourceTypeCardTokenizationMethod :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceTypeCard
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address_line1_check" (sourceTypeCardAddressLine1Check obj) : (Data.Aeson..=) "address_zip_check" (sourceTypeCardAddressZipCheck obj) : (Data.Aeson..=) "brand" (sourceTypeCardBrand obj) : (Data.Aeson..=) "country" (sourceTypeCardCountry obj) : (Data.Aeson..=) "cvc_check" (sourceTypeCardCvcCheck obj) : (Data.Aeson..=) "dynamic_last4" (sourceTypeCardDynamicLast4 obj) : (Data.Aeson..=) "exp_month" (sourceTypeCardExpMonth obj) : (Data.Aeson..=) "exp_year" (sourceTypeCardExpYear obj) : (Data.Aeson..=) "fingerprint" (sourceTypeCardFingerprint obj) : (Data.Aeson..=) "funding" (sourceTypeCardFunding obj) : (Data.Aeson..=) "last4" (sourceTypeCardLast4 obj) : (Data.Aeson..=) "name" (sourceTypeCardName obj) : (Data.Aeson..=) "three_d_secure" (sourceTypeCardThreeDSecure obj) : (Data.Aeson..=) "tokenization_method" (sourceTypeCardTokenizationMethod obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address_line1_check" (sourceTypeCardAddressLine1Check obj) GHC.Base.<> ((Data.Aeson..=) "address_zip_check" (sourceTypeCardAddressZipCheck obj) GHC.Base.<> ((Data.Aeson..=) "brand" (sourceTypeCardBrand obj) GHC.Base.<> ((Data.Aeson..=) "country" (sourceTypeCardCountry obj) GHC.Base.<> ((Data.Aeson..=) "cvc_check" (sourceTypeCardCvcCheck obj) GHC.Base.<> ((Data.Aeson..=) "dynamic_last4" (sourceTypeCardDynamicLast4 obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (sourceTypeCardExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (sourceTypeCardExpYear obj) GHC.Base.<> ((Data.Aeson..=) "fingerprint" (sourceTypeCardFingerprint obj) GHC.Base.<> ((Data.Aeson..=) "funding" (sourceTypeCardFunding obj) GHC.Base.<> ((Data.Aeson..=) "last4" (sourceTypeCardLast4 obj) GHC.Base.<> ((Data.Aeson..=) "name" (sourceTypeCardName obj) GHC.Base.<> ((Data.Aeson..=) "three_d_secure" (sourceTypeCardThreeDSecure obj) GHC.Base.<> (Data.Aeson..=) "tokenization_method" (sourceTypeCardTokenizationMethod obj))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON SourceTypeCard
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTypeCard" (\obj -> (((((((((((((GHC.Base.pure SourceTypeCard GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "brand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dynamic_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "funding")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "three_d_secure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tokenization_method"))