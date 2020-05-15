{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.SourceTypeCardPresent where

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

data SourceTypeCardPresent
    = SourceTypeCardPresent {sourceTypeCardPresentApplicationCryptogram :: (GHC.Maybe.Maybe GHC.Base.String),
                             sourceTypeCardPresentApplicationPreferredName :: (GHC.Maybe.Maybe GHC.Base.String),
                             sourceTypeCardPresentAuthorizationCode :: (GHC.Maybe.Maybe GHC.Base.String),
                             sourceTypeCardPresentAuthorizationResponseCode :: (GHC.Maybe.Maybe GHC.Base.String),
                             sourceTypeCardPresentBrand :: (GHC.Maybe.Maybe GHC.Base.String),
                             sourceTypeCardPresentCountry :: (GHC.Maybe.Maybe GHC.Base.String),
                             sourceTypeCardPresentCvmType :: (GHC.Maybe.Maybe GHC.Base.String),
                             sourceTypeCardPresentDataType :: (GHC.Maybe.Maybe GHC.Base.String),
                             sourceTypeCardPresentDedicatedFileName :: (GHC.Maybe.Maybe GHC.Base.String),
                             sourceTypeCardPresentEmvAuthData :: (GHC.Maybe.Maybe GHC.Base.String),
                             sourceTypeCardPresentEvidenceCustomerSignature :: (GHC.Maybe.Maybe GHC.Base.String),
                             sourceTypeCardPresentEvidenceTransactionCertificate :: (GHC.Maybe.Maybe GHC.Base.String),
                             sourceTypeCardPresentExpMonth :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                             sourceTypeCardPresentExpYear :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                             sourceTypeCardPresentFingerprint :: (GHC.Maybe.Maybe GHC.Base.String),
                             sourceTypeCardPresentFunding :: (GHC.Maybe.Maybe GHC.Base.String),
                             sourceTypeCardPresentLast4 :: (GHC.Maybe.Maybe GHC.Base.String),
                             sourceTypeCardPresentPosDeviceId :: (GHC.Maybe.Maybe GHC.Base.String),
                             sourceTypeCardPresentPosEntryMode :: (GHC.Maybe.Maybe GHC.Base.String),
                             sourceTypeCardPresentReadMethod :: (GHC.Maybe.Maybe GHC.Base.String),
                             sourceTypeCardPresentReader :: (GHC.Maybe.Maybe GHC.Base.String),
                             sourceTypeCardPresentTerminalVerificationResults :: (GHC.Maybe.Maybe GHC.Base.String),
                             sourceTypeCardPresentTransactionStatusInformation :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceTypeCardPresent
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "application_cryptogram" (sourceTypeCardPresentApplicationCryptogram obj) : (Data.Aeson..=) "application_preferred_name" (sourceTypeCardPresentApplicationPreferredName obj) : (Data.Aeson..=) "authorization_code" (sourceTypeCardPresentAuthorizationCode obj) : (Data.Aeson..=) "authorization_response_code" (sourceTypeCardPresentAuthorizationResponseCode obj) : (Data.Aeson..=) "brand" (sourceTypeCardPresentBrand obj) : (Data.Aeson..=) "country" (sourceTypeCardPresentCountry obj) : (Data.Aeson..=) "cvm_type" (sourceTypeCardPresentCvmType obj) : (Data.Aeson..=) "data_type" (sourceTypeCardPresentDataType obj) : (Data.Aeson..=) "dedicated_file_name" (sourceTypeCardPresentDedicatedFileName obj) : (Data.Aeson..=) "emv_auth_data" (sourceTypeCardPresentEmvAuthData obj) : (Data.Aeson..=) "evidence_customer_signature" (sourceTypeCardPresentEvidenceCustomerSignature obj) : (Data.Aeson..=) "evidence_transaction_certificate" (sourceTypeCardPresentEvidenceTransactionCertificate obj) : (Data.Aeson..=) "exp_month" (sourceTypeCardPresentExpMonth obj) : (Data.Aeson..=) "exp_year" (sourceTypeCardPresentExpYear obj) : (Data.Aeson..=) "fingerprint" (sourceTypeCardPresentFingerprint obj) : (Data.Aeson..=) "funding" (sourceTypeCardPresentFunding obj) : (Data.Aeson..=) "last4" (sourceTypeCardPresentLast4 obj) : (Data.Aeson..=) "pos_device_id" (sourceTypeCardPresentPosDeviceId obj) : (Data.Aeson..=) "pos_entry_mode" (sourceTypeCardPresentPosEntryMode obj) : (Data.Aeson..=) "read_method" (sourceTypeCardPresentReadMethod obj) : (Data.Aeson..=) "reader" (sourceTypeCardPresentReader obj) : (Data.Aeson..=) "terminal_verification_results" (sourceTypeCardPresentTerminalVerificationResults obj) : (Data.Aeson..=) "transaction_status_information" (sourceTypeCardPresentTransactionStatusInformation obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "application_cryptogram" (sourceTypeCardPresentApplicationCryptogram obj) GHC.Base.<> ((Data.Aeson..=) "application_preferred_name" (sourceTypeCardPresentApplicationPreferredName obj) GHC.Base.<> ((Data.Aeson..=) "authorization_code" (sourceTypeCardPresentAuthorizationCode obj) GHC.Base.<> ((Data.Aeson..=) "authorization_response_code" (sourceTypeCardPresentAuthorizationResponseCode obj) GHC.Base.<> ((Data.Aeson..=) "brand" (sourceTypeCardPresentBrand obj) GHC.Base.<> ((Data.Aeson..=) "country" (sourceTypeCardPresentCountry obj) GHC.Base.<> ((Data.Aeson..=) "cvm_type" (sourceTypeCardPresentCvmType obj) GHC.Base.<> ((Data.Aeson..=) "data_type" (sourceTypeCardPresentDataType obj) GHC.Base.<> ((Data.Aeson..=) "dedicated_file_name" (sourceTypeCardPresentDedicatedFileName obj) GHC.Base.<> ((Data.Aeson..=) "emv_auth_data" (sourceTypeCardPresentEmvAuthData obj) GHC.Base.<> ((Data.Aeson..=) "evidence_customer_signature" (sourceTypeCardPresentEvidenceCustomerSignature obj) GHC.Base.<> ((Data.Aeson..=) "evidence_transaction_certificate" (sourceTypeCardPresentEvidenceTransactionCertificate obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (sourceTypeCardPresentExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (sourceTypeCardPresentExpYear obj) GHC.Base.<> ((Data.Aeson..=) "fingerprint" (sourceTypeCardPresentFingerprint obj) GHC.Base.<> ((Data.Aeson..=) "funding" (sourceTypeCardPresentFunding obj) GHC.Base.<> ((Data.Aeson..=) "last4" (sourceTypeCardPresentLast4 obj) GHC.Base.<> ((Data.Aeson..=) "pos_device_id" (sourceTypeCardPresentPosDeviceId obj) GHC.Base.<> ((Data.Aeson..=) "pos_entry_mode" (sourceTypeCardPresentPosEntryMode obj) GHC.Base.<> ((Data.Aeson..=) "read_method" (sourceTypeCardPresentReadMethod obj) GHC.Base.<> ((Data.Aeson..=) "reader" (sourceTypeCardPresentReader obj) GHC.Base.<> ((Data.Aeson..=) "terminal_verification_results" (sourceTypeCardPresentTerminalVerificationResults obj) GHC.Base.<> (Data.Aeson..=) "transaction_status_information" (sourceTypeCardPresentTransactionStatusInformation obj)))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON SourceTypeCardPresent
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTypeCardPresent" (\obj -> ((((((((((((((((((((((GHC.Base.pure SourceTypeCardPresent GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_cryptogram")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_preferred_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "authorization_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "authorization_response_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "brand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvm_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "data_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dedicated_file_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "emv_auth_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "evidence_customer_signature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "evidence_transaction_certificate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "funding")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pos_device_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pos_entry_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "read_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reader")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "terminal_verification_results")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transaction_status_information"))