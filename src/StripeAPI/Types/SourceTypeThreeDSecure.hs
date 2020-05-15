{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.SourceTypeThreeDSecure where

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

data SourceTypeThreeDSecure
    = SourceTypeThreeDSecure {sourceTypeThreeDSecureAddressLine1Check :: (GHC.Maybe.Maybe GHC.Base.String),
                              sourceTypeThreeDSecureAddressZipCheck :: (GHC.Maybe.Maybe GHC.Base.String),
                              sourceTypeThreeDSecureAuthenticated :: (GHC.Maybe.Maybe GHC.Types.Bool),
                              sourceTypeThreeDSecureBrand :: (GHC.Maybe.Maybe GHC.Base.String),
                              sourceTypeThreeDSecureCard :: (GHC.Maybe.Maybe GHC.Base.String),
                              sourceTypeThreeDSecureCountry :: (GHC.Maybe.Maybe GHC.Base.String),
                              sourceTypeThreeDSecureCustomer :: (GHC.Maybe.Maybe GHC.Base.String),
                              sourceTypeThreeDSecureCvcCheck :: (GHC.Maybe.Maybe GHC.Base.String),
                              sourceTypeThreeDSecureDynamicLast4 :: (GHC.Maybe.Maybe GHC.Base.String),
                              sourceTypeThreeDSecureExpMonth :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                              sourceTypeThreeDSecureExpYear :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                              sourceTypeThreeDSecureFingerprint :: (GHC.Maybe.Maybe GHC.Base.String),
                              sourceTypeThreeDSecureFunding :: (GHC.Maybe.Maybe GHC.Base.String),
                              sourceTypeThreeDSecureLast4 :: (GHC.Maybe.Maybe GHC.Base.String),
                              sourceTypeThreeDSecureName :: (GHC.Maybe.Maybe GHC.Base.String),
                              sourceTypeThreeDSecureThreeDSecure :: (GHC.Maybe.Maybe GHC.Base.String),
                              sourceTypeThreeDSecureTokenizationMethod :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceTypeThreeDSecure
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address_line1_check" (sourceTypeThreeDSecureAddressLine1Check obj) : (Data.Aeson..=) "address_zip_check" (sourceTypeThreeDSecureAddressZipCheck obj) : (Data.Aeson..=) "authenticated" (sourceTypeThreeDSecureAuthenticated obj) : (Data.Aeson..=) "brand" (sourceTypeThreeDSecureBrand obj) : (Data.Aeson..=) "card" (sourceTypeThreeDSecureCard obj) : (Data.Aeson..=) "country" (sourceTypeThreeDSecureCountry obj) : (Data.Aeson..=) "customer" (sourceTypeThreeDSecureCustomer obj) : (Data.Aeson..=) "cvc_check" (sourceTypeThreeDSecureCvcCheck obj) : (Data.Aeson..=) "dynamic_last4" (sourceTypeThreeDSecureDynamicLast4 obj) : (Data.Aeson..=) "exp_month" (sourceTypeThreeDSecureExpMonth obj) : (Data.Aeson..=) "exp_year" (sourceTypeThreeDSecureExpYear obj) : (Data.Aeson..=) "fingerprint" (sourceTypeThreeDSecureFingerprint obj) : (Data.Aeson..=) "funding" (sourceTypeThreeDSecureFunding obj) : (Data.Aeson..=) "last4" (sourceTypeThreeDSecureLast4 obj) : (Data.Aeson..=) "name" (sourceTypeThreeDSecureName obj) : (Data.Aeson..=) "three_d_secure" (sourceTypeThreeDSecureThreeDSecure obj) : (Data.Aeson..=) "tokenization_method" (sourceTypeThreeDSecureTokenizationMethod obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address_line1_check" (sourceTypeThreeDSecureAddressLine1Check obj) GHC.Base.<> ((Data.Aeson..=) "address_zip_check" (sourceTypeThreeDSecureAddressZipCheck obj) GHC.Base.<> ((Data.Aeson..=) "authenticated" (sourceTypeThreeDSecureAuthenticated obj) GHC.Base.<> ((Data.Aeson..=) "brand" (sourceTypeThreeDSecureBrand obj) GHC.Base.<> ((Data.Aeson..=) "card" (sourceTypeThreeDSecureCard obj) GHC.Base.<> ((Data.Aeson..=) "country" (sourceTypeThreeDSecureCountry obj) GHC.Base.<> ((Data.Aeson..=) "customer" (sourceTypeThreeDSecureCustomer obj) GHC.Base.<> ((Data.Aeson..=) "cvc_check" (sourceTypeThreeDSecureCvcCheck obj) GHC.Base.<> ((Data.Aeson..=) "dynamic_last4" (sourceTypeThreeDSecureDynamicLast4 obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (sourceTypeThreeDSecureExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (sourceTypeThreeDSecureExpYear obj) GHC.Base.<> ((Data.Aeson..=) "fingerprint" (sourceTypeThreeDSecureFingerprint obj) GHC.Base.<> ((Data.Aeson..=) "funding" (sourceTypeThreeDSecureFunding obj) GHC.Base.<> ((Data.Aeson..=) "last4" (sourceTypeThreeDSecureLast4 obj) GHC.Base.<> ((Data.Aeson..=) "name" (sourceTypeThreeDSecureName obj) GHC.Base.<> ((Data.Aeson..=) "three_d_secure" (sourceTypeThreeDSecureThreeDSecure obj) GHC.Base.<> (Data.Aeson..=) "tokenization_method" (sourceTypeThreeDSecureTokenizationMethod obj)))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON SourceTypeThreeDSecure
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTypeThreeDSecure" (\obj -> ((((((((((((((((GHC.Base.pure SourceTypeThreeDSecure GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "authenticated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "brand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dynamic_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "funding")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "three_d_secure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tokenization_method"))