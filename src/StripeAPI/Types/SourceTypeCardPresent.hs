{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SourceTypeCardPresent
module StripeAPI.Types.SourceTypeCardPresent where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text as Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.source_type_card_present@ in the specification.
data SourceTypeCardPresent = SourceTypeCardPresent
  { -- | application_cryptogram
    sourceTypeCardPresentApplicationCryptogram :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | application_preferred_name
    sourceTypeCardPresentApplicationPreferredName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | authorization_code
    sourceTypeCardPresentAuthorizationCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | authorization_response_code
    sourceTypeCardPresentAuthorizationResponseCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | brand
    sourceTypeCardPresentBrand :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | country
    sourceTypeCardPresentCountry :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | cvm_type
    sourceTypeCardPresentCvmType :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | data_type
    sourceTypeCardPresentDataType :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | dedicated_file_name
    sourceTypeCardPresentDedicatedFileName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | emv_auth_data
    sourceTypeCardPresentEmvAuthData :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | evidence_customer_signature
    sourceTypeCardPresentEvidenceCustomerSignature :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | evidence_transaction_certificate
    sourceTypeCardPresentEvidenceTransactionCertificate :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | exp_month
    sourceTypeCardPresentExpMonth :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | exp_year
    sourceTypeCardPresentExpYear :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | fingerprint
    sourceTypeCardPresentFingerprint :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | funding
    sourceTypeCardPresentFunding :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | last4
    sourceTypeCardPresentLast4 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | pos_device_id
    sourceTypeCardPresentPosDeviceId :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | pos_entry_mode
    sourceTypeCardPresentPosEntryMode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | read_method
    sourceTypeCardPresentReadMethod :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | reader
    sourceTypeCardPresentReader :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | terminal_verification_results
    sourceTypeCardPresentTerminalVerificationResults :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | transaction_status_information
    sourceTypeCardPresentTransactionStatusInformation :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SourceTypeCardPresent where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("application_cryptogram" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentApplicationCryptogram obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("application_preferred_name" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentApplicationPreferredName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authorization_code" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentAuthorizationCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authorization_response_code" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentAuthorizationResponseCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("brand" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentBrand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cvm_type" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentCvmType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("data_type" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentDataType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("dedicated_file_name" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentDedicatedFileName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("emv_auth_data" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentEmvAuthData obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("evidence_customer_signature" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentEvidenceCustomerSignature obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("evidence_transaction_certificate" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentEvidenceTransactionCertificate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exp_month" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentExpMonth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exp_year" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentExpYear obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fingerprint" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentFingerprint obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("funding" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentFunding obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last4" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentLast4 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pos_device_id" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentPosDeviceId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pos_entry_mode" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentPosEntryMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("read_method" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentReadMethod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reader" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentReader obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("terminal_verification_results" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentTerminalVerificationResults obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transaction_status_information" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentTransactionStatusInformation obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("application_cryptogram" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentApplicationCryptogram obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("application_preferred_name" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentApplicationPreferredName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authorization_code" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentAuthorizationCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authorization_response_code" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentAuthorizationResponseCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("brand" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentBrand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cvm_type" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentCvmType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("data_type" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentDataType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("dedicated_file_name" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentDedicatedFileName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("emv_auth_data" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentEmvAuthData obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("evidence_customer_signature" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentEvidenceCustomerSignature obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("evidence_transaction_certificate" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentEvidenceTransactionCertificate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exp_month" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentExpMonth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exp_year" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentExpYear obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fingerprint" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentFingerprint obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("funding" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentFunding obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last4" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentLast4 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pos_device_id" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentPosDeviceId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pos_entry_mode" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentPosEntryMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("read_method" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentReadMethod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reader" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentReader obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("terminal_verification_results" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentTerminalVerificationResults obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transaction_status_information" Data.Aeson.Types.ToJSON..=)) (sourceTypeCardPresentTransactionStatusInformation obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SourceTypeCardPresent where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTypeCardPresent" (\obj -> ((((((((((((((((((((((GHC.Base.pure SourceTypeCardPresent GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "application_cryptogram")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "application_preferred_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "authorization_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "authorization_response_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "brand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cvm_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "data_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "dedicated_file_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "emv_auth_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "evidence_customer_signature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "evidence_transaction_certificate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "funding")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "pos_device_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "pos_entry_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "read_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reader")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "terminal_verification_results")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "transaction_status_information"))

-- | Create a new 'SourceTypeCardPresent' with all required fields.
mkSourceTypeCardPresent :: SourceTypeCardPresent
mkSourceTypeCardPresent =
  SourceTypeCardPresent
    { sourceTypeCardPresentApplicationCryptogram = GHC.Maybe.Nothing,
      sourceTypeCardPresentApplicationPreferredName = GHC.Maybe.Nothing,
      sourceTypeCardPresentAuthorizationCode = GHC.Maybe.Nothing,
      sourceTypeCardPresentAuthorizationResponseCode = GHC.Maybe.Nothing,
      sourceTypeCardPresentBrand = GHC.Maybe.Nothing,
      sourceTypeCardPresentCountry = GHC.Maybe.Nothing,
      sourceTypeCardPresentCvmType = GHC.Maybe.Nothing,
      sourceTypeCardPresentDataType = GHC.Maybe.Nothing,
      sourceTypeCardPresentDedicatedFileName = GHC.Maybe.Nothing,
      sourceTypeCardPresentEmvAuthData = GHC.Maybe.Nothing,
      sourceTypeCardPresentEvidenceCustomerSignature = GHC.Maybe.Nothing,
      sourceTypeCardPresentEvidenceTransactionCertificate = GHC.Maybe.Nothing,
      sourceTypeCardPresentExpMonth = GHC.Maybe.Nothing,
      sourceTypeCardPresentExpYear = GHC.Maybe.Nothing,
      sourceTypeCardPresentFingerprint = GHC.Maybe.Nothing,
      sourceTypeCardPresentFunding = GHC.Maybe.Nothing,
      sourceTypeCardPresentLast4 = GHC.Maybe.Nothing,
      sourceTypeCardPresentPosDeviceId = GHC.Maybe.Nothing,
      sourceTypeCardPresentPosEntryMode = GHC.Maybe.Nothing,
      sourceTypeCardPresentReadMethod = GHC.Maybe.Nothing,
      sourceTypeCardPresentReader = GHC.Maybe.Nothing,
      sourceTypeCardPresentTerminalVerificationResults = GHC.Maybe.Nothing,
      sourceTypeCardPresentTransactionStatusInformation = GHC.Maybe.Nothing
    }
