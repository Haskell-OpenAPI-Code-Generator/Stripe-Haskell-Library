{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema AccountRequirementsError
module StripeAPI.Types.AccountRequirementsError where

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

-- | Defines the data type for the schema account_requirements_error
-- 
-- 
data AccountRequirementsError = AccountRequirementsError {
  -- | code: The code for the type of error.
  accountRequirementsErrorCode :: AccountRequirementsErrorCode'
  -- | reason: An informative message that indicates the error type and provides additional details about the error.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , accountRequirementsErrorReason :: Data.Text.Internal.Text
  -- | requirement: The specific user onboarding requirement field (in the requirements hash) that needs to be resolved.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , accountRequirementsErrorRequirement :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON AccountRequirementsError
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "code" (accountRequirementsErrorCode obj) : (Data.Aeson..=) "reason" (accountRequirementsErrorReason obj) : (Data.Aeson..=) "requirement" (accountRequirementsErrorRequirement obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "code" (accountRequirementsErrorCode obj) GHC.Base.<> ((Data.Aeson..=) "reason" (accountRequirementsErrorReason obj) GHC.Base.<> (Data.Aeson..=) "requirement" (accountRequirementsErrorRequirement obj)))
instance Data.Aeson.Types.FromJSON.FromJSON AccountRequirementsError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountRequirementsError" (\obj -> ((GHC.Base.pure AccountRequirementsError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "requirement"))
-- | Defines the enum schema account_requirements_errorCode\'
-- 
-- The code for the type of error.
data AccountRequirementsErrorCode'
    = AccountRequirementsErrorCode'EnumOther Data.Aeson.Types.Internal.Value
    | AccountRequirementsErrorCode'EnumTyped Data.Text.Internal.Text
    | AccountRequirementsErrorCode'EnumStringInvalidAddressCityStatePostalCode
    | AccountRequirementsErrorCode'EnumStringInvalidStreetAddress
    | AccountRequirementsErrorCode'EnumStringInvalidValueOther
    | AccountRequirementsErrorCode'EnumStringVerificationDocumentAddressMismatch
    | AccountRequirementsErrorCode'EnumStringVerificationDocumentAddressMissing
    | AccountRequirementsErrorCode'EnumStringVerificationDocumentCorrupt
    | AccountRequirementsErrorCode'EnumStringVerificationDocumentCountryNotSupported
    | AccountRequirementsErrorCode'EnumStringVerificationDocumentDobMismatch
    | AccountRequirementsErrorCode'EnumStringVerificationDocumentDuplicateType
    | AccountRequirementsErrorCode'EnumStringVerificationDocumentExpired
    | AccountRequirementsErrorCode'EnumStringVerificationDocumentFailedCopy
    | AccountRequirementsErrorCode'EnumStringVerificationDocumentFailedGreyscale
    | AccountRequirementsErrorCode'EnumStringVerificationDocumentFailedOther
    | AccountRequirementsErrorCode'EnumStringVerificationDocumentFailedTestMode
    | AccountRequirementsErrorCode'EnumStringVerificationDocumentFraudulent
    | AccountRequirementsErrorCode'EnumStringVerificationDocumentIdNumberMismatch
    | AccountRequirementsErrorCode'EnumStringVerificationDocumentIdNumberMissing
    | AccountRequirementsErrorCode'EnumStringVerificationDocumentIncomplete
    | AccountRequirementsErrorCode'EnumStringVerificationDocumentInvalid
    | AccountRequirementsErrorCode'EnumStringVerificationDocumentManipulated
    | AccountRequirementsErrorCode'EnumStringVerificationDocumentMissingBack
    | AccountRequirementsErrorCode'EnumStringVerificationDocumentMissingFront
    | AccountRequirementsErrorCode'EnumStringVerificationDocumentNameMismatch
    | AccountRequirementsErrorCode'EnumStringVerificationDocumentNameMissing
    | AccountRequirementsErrorCode'EnumStringVerificationDocumentNationalityMismatch
    | AccountRequirementsErrorCode'EnumStringVerificationDocumentNotReadable
    | AccountRequirementsErrorCode'EnumStringVerificationDocumentNotUploaded
    | AccountRequirementsErrorCode'EnumStringVerificationDocumentPhotoMismatch
    | AccountRequirementsErrorCode'EnumStringVerificationDocumentTooLarge
    | AccountRequirementsErrorCode'EnumStringVerificationDocumentTypeNotSupported
    | AccountRequirementsErrorCode'EnumStringVerificationFailedAddressMatch
    | AccountRequirementsErrorCode'EnumStringVerificationFailedBusinessIecNumber
    | AccountRequirementsErrorCode'EnumStringVerificationFailedDocumentMatch
    | AccountRequirementsErrorCode'EnumStringVerificationFailedIdNumberMatch
    | AccountRequirementsErrorCode'EnumStringVerificationFailedKeyedIdentity
    | AccountRequirementsErrorCode'EnumStringVerificationFailedKeyedMatch
    | AccountRequirementsErrorCode'EnumStringVerificationFailedNameMatch
    | AccountRequirementsErrorCode'EnumStringVerificationFailedOther
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON AccountRequirementsErrorCode'
    where toJSON (AccountRequirementsErrorCode'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (AccountRequirementsErrorCode'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (AccountRequirementsErrorCode'EnumStringInvalidAddressCityStatePostalCode) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "invalid_address_city_state_postal_code"
          toJSON (AccountRequirementsErrorCode'EnumStringInvalidStreetAddress) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "invalid_street_address"
          toJSON (AccountRequirementsErrorCode'EnumStringInvalidValueOther) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "invalid_value_other"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationDocumentAddressMismatch) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_address_mismatch"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationDocumentAddressMissing) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_address_missing"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationDocumentCorrupt) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_corrupt"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationDocumentCountryNotSupported) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_country_not_supported"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationDocumentDobMismatch) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_dob_mismatch"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationDocumentDuplicateType) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_duplicate_type"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationDocumentExpired) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_expired"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationDocumentFailedCopy) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_failed_copy"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationDocumentFailedGreyscale) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_failed_greyscale"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationDocumentFailedOther) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_failed_other"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationDocumentFailedTestMode) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_failed_test_mode"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationDocumentFraudulent) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_fraudulent"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationDocumentIdNumberMismatch) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_id_number_mismatch"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationDocumentIdNumberMissing) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_id_number_missing"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationDocumentIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_incomplete"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationDocumentInvalid) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_invalid"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationDocumentManipulated) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_manipulated"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationDocumentMissingBack) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_missing_back"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationDocumentMissingFront) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_missing_front"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationDocumentNameMismatch) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_name_mismatch"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationDocumentNameMissing) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_name_missing"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationDocumentNationalityMismatch) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_nationality_mismatch"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationDocumentNotReadable) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_not_readable"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationDocumentNotUploaded) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_not_uploaded"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationDocumentPhotoMismatch) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_photo_mismatch"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationDocumentTooLarge) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_too_large"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationDocumentTypeNotSupported) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_type_not_supported"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationFailedAddressMatch) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_failed_address_match"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationFailedBusinessIecNumber) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_failed_business_iec_number"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationFailedDocumentMatch) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_failed_document_match"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationFailedIdNumberMatch) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_failed_id_number_match"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationFailedKeyedIdentity) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_failed_keyed_identity"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationFailedKeyedMatch) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_failed_keyed_match"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationFailedNameMatch) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_failed_name_match"
          toJSON (AccountRequirementsErrorCode'EnumStringVerificationFailedOther) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_failed_other"
instance Data.Aeson.FromJSON AccountRequirementsErrorCode'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "invalid_address_city_state_postal_code")
                                          then AccountRequirementsErrorCode'EnumStringInvalidAddressCityStatePostalCode
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "invalid_street_address")
                                                then AccountRequirementsErrorCode'EnumStringInvalidStreetAddress
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "invalid_value_other")
                                                      then AccountRequirementsErrorCode'EnumStringInvalidValueOther
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_address_mismatch")
                                                            then AccountRequirementsErrorCode'EnumStringVerificationDocumentAddressMismatch
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_address_missing")
                                                                  then AccountRequirementsErrorCode'EnumStringVerificationDocumentAddressMissing
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_corrupt")
                                                                        then AccountRequirementsErrorCode'EnumStringVerificationDocumentCorrupt
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_country_not_supported")
                                                                              then AccountRequirementsErrorCode'EnumStringVerificationDocumentCountryNotSupported
                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_dob_mismatch")
                                                                                    then AccountRequirementsErrorCode'EnumStringVerificationDocumentDobMismatch
                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_duplicate_type")
                                                                                          then AccountRequirementsErrorCode'EnumStringVerificationDocumentDuplicateType
                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_expired")
                                                                                                then AccountRequirementsErrorCode'EnumStringVerificationDocumentExpired
                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_failed_copy")
                                                                                                      then AccountRequirementsErrorCode'EnumStringVerificationDocumentFailedCopy
                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_failed_greyscale")
                                                                                                            then AccountRequirementsErrorCode'EnumStringVerificationDocumentFailedGreyscale
                                                                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_failed_other")
                                                                                                                  then AccountRequirementsErrorCode'EnumStringVerificationDocumentFailedOther
                                                                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_failed_test_mode")
                                                                                                                        then AccountRequirementsErrorCode'EnumStringVerificationDocumentFailedTestMode
                                                                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_fraudulent")
                                                                                                                              then AccountRequirementsErrorCode'EnumStringVerificationDocumentFraudulent
                                                                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_id_number_mismatch")
                                                                                                                                    then AccountRequirementsErrorCode'EnumStringVerificationDocumentIdNumberMismatch
                                                                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_id_number_missing")
                                                                                                                                          then AccountRequirementsErrorCode'EnumStringVerificationDocumentIdNumberMissing
                                                                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_incomplete")
                                                                                                                                                then AccountRequirementsErrorCode'EnumStringVerificationDocumentIncomplete
                                                                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_invalid")
                                                                                                                                                      then AccountRequirementsErrorCode'EnumStringVerificationDocumentInvalid
                                                                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_manipulated")
                                                                                                                                                            then AccountRequirementsErrorCode'EnumStringVerificationDocumentManipulated
                                                                                                                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_missing_back")
                                                                                                                                                                  then AccountRequirementsErrorCode'EnumStringVerificationDocumentMissingBack
                                                                                                                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_missing_front")
                                                                                                                                                                        then AccountRequirementsErrorCode'EnumStringVerificationDocumentMissingFront
                                                                                                                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_name_mismatch")
                                                                                                                                                                              then AccountRequirementsErrorCode'EnumStringVerificationDocumentNameMismatch
                                                                                                                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_name_missing")
                                                                                                                                                                                    then AccountRequirementsErrorCode'EnumStringVerificationDocumentNameMissing
                                                                                                                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_nationality_mismatch")
                                                                                                                                                                                          then AccountRequirementsErrorCode'EnumStringVerificationDocumentNationalityMismatch
                                                                                                                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_not_readable")
                                                                                                                                                                                                then AccountRequirementsErrorCode'EnumStringVerificationDocumentNotReadable
                                                                                                                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_not_uploaded")
                                                                                                                                                                                                      then AccountRequirementsErrorCode'EnumStringVerificationDocumentNotUploaded
                                                                                                                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_photo_mismatch")
                                                                                                                                                                                                            then AccountRequirementsErrorCode'EnumStringVerificationDocumentPhotoMismatch
                                                                                                                                                                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_too_large")
                                                                                                                                                                                                                  then AccountRequirementsErrorCode'EnumStringVerificationDocumentTooLarge
                                                                                                                                                                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_document_type_not_supported")
                                                                                                                                                                                                                        then AccountRequirementsErrorCode'EnumStringVerificationDocumentTypeNotSupported
                                                                                                                                                                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_failed_address_match")
                                                                                                                                                                                                                              then AccountRequirementsErrorCode'EnumStringVerificationFailedAddressMatch
                                                                                                                                                                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_failed_business_iec_number")
                                                                                                                                                                                                                                    then AccountRequirementsErrorCode'EnumStringVerificationFailedBusinessIecNumber
                                                                                                                                                                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_failed_document_match")
                                                                                                                                                                                                                                          then AccountRequirementsErrorCode'EnumStringVerificationFailedDocumentMatch
                                                                                                                                                                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_failed_id_number_match")
                                                                                                                                                                                                                                                then AccountRequirementsErrorCode'EnumStringVerificationFailedIdNumberMatch
                                                                                                                                                                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_failed_keyed_identity")
                                                                                                                                                                                                                                                      then AccountRequirementsErrorCode'EnumStringVerificationFailedKeyedIdentity
                                                                                                                                                                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_failed_keyed_match")
                                                                                                                                                                                                                                                            then AccountRequirementsErrorCode'EnumStringVerificationFailedKeyedMatch
                                                                                                                                                                                                                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_failed_name_match")
                                                                                                                                                                                                                                                                  then AccountRequirementsErrorCode'EnumStringVerificationFailedNameMatch
                                                                                                                                                                                                                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verification_failed_other")
                                                                                                                                                                                                                                                                        then AccountRequirementsErrorCode'EnumStringVerificationFailedOther
                                                                                                                                                                                                                                                                        else AccountRequirementsErrorCode'EnumOther val)