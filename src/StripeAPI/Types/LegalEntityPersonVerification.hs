{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema LegalEntityPersonVerification
module StripeAPI.Types.LegalEntityPersonVerification where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
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
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias
import {-# SOURCE #-} StripeAPI.Types.File
import {-# SOURCE #-} StripeAPI.Types.LegalEntityPersonVerificationDocument
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.legal_entity_person_verification@ in the specification.
data LegalEntityPersonVerification = LegalEntityPersonVerification
  { -- | additional_document: A document showing address, either a passport, local ID card, or utility bill from a well-known utility company.
    legalEntityPersonVerificationAdditionalDocument :: (GHC.Maybe.Maybe LegalEntityPersonVerificationAdditionalDocument'),
    -- | details: A user-displayable string describing the verification state for the person. For example, this may say \"Provided identity information could not be verified\".
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    legalEntityPersonVerificationDetails :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | details_code: One of \`document_address_mismatch\`, \`document_dob_mismatch\`, \`document_duplicate_type\`, \`document_id_number_mismatch\`, \`document_name_mismatch\`, \`document_nationality_mismatch\`, \`failed_keyed_identity\`, or \`failed_other\`. A machine-readable code specifying the verification state for the person.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    legalEntityPersonVerificationDetailsCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | document:
    legalEntityPersonVerificationDocument :: (GHC.Maybe.Maybe LegalEntityPersonVerificationDocument),
    -- | status: The state of verification for the person. Possible values are \`unverified\`, \`pending\`, or \`verified\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    legalEntityPersonVerificationStatus :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON LegalEntityPersonVerification where
  toJSON obj = Data.Aeson.Types.Internal.object ("additional_document" Data.Aeson.Types.ToJSON..= legalEntityPersonVerificationAdditionalDocument obj : "details" Data.Aeson.Types.ToJSON..= legalEntityPersonVerificationDetails obj : "details_code" Data.Aeson.Types.ToJSON..= legalEntityPersonVerificationDetailsCode obj : "document" Data.Aeson.Types.ToJSON..= legalEntityPersonVerificationDocument obj : "status" Data.Aeson.Types.ToJSON..= legalEntityPersonVerificationStatus obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("additional_document" Data.Aeson.Types.ToJSON..= legalEntityPersonVerificationAdditionalDocument obj) GHC.Base.<> (("details" Data.Aeson.Types.ToJSON..= legalEntityPersonVerificationDetails obj) GHC.Base.<> (("details_code" Data.Aeson.Types.ToJSON..= legalEntityPersonVerificationDetailsCode obj) GHC.Base.<> (("document" Data.Aeson.Types.ToJSON..= legalEntityPersonVerificationDocument obj) GHC.Base.<> ("status" Data.Aeson.Types.ToJSON..= legalEntityPersonVerificationStatus obj)))))

instance Data.Aeson.Types.FromJSON.FromJSON LegalEntityPersonVerification where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "LegalEntityPersonVerification" (\obj -> ((((GHC.Base.pure LegalEntityPersonVerification GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "additional_document")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "details_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))

-- | Create a new 'LegalEntityPersonVerification' with all required fields.
mkLegalEntityPersonVerification ::
  -- | 'legalEntityPersonVerificationStatus'
  Data.Text.Internal.Text ->
  LegalEntityPersonVerification
mkLegalEntityPersonVerification legalEntityPersonVerificationStatus =
  LegalEntityPersonVerification
    { legalEntityPersonVerificationAdditionalDocument = GHC.Maybe.Nothing,
      legalEntityPersonVerificationDetails = GHC.Maybe.Nothing,
      legalEntityPersonVerificationDetailsCode = GHC.Maybe.Nothing,
      legalEntityPersonVerificationDocument = GHC.Maybe.Nothing,
      legalEntityPersonVerificationStatus = legalEntityPersonVerificationStatus
    }

-- | Defines the object schema located at @components.schemas.legal_entity_person_verification.properties.additional_document.anyOf@ in the specification.
--
-- A document showing address, either a passport, local ID card, or utility bill from a well-known utility company.
data LegalEntityPersonVerificationAdditionalDocument' = LegalEntityPersonVerificationAdditionalDocument'
  { -- | back: The back of an ID returned by a [file upload](https:\/\/stripe.com\/docs\/api\#create_file) with a \`purpose\` value of \`identity_document\`.
    legalEntityPersonVerificationAdditionalDocument'Back :: (GHC.Maybe.Maybe LegalEntityPersonVerificationAdditionalDocument'Back'Variants),
    -- | details: A user-displayable string describing the verification state of this document. For example, if a document is uploaded and the picture is too fuzzy, this may say \"Identity document is too unclear to read\".
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    legalEntityPersonVerificationAdditionalDocument'Details :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | details_code: One of \`document_corrupt\`, \`document_country_not_supported\`, \`document_expired\`, \`document_failed_copy\`, \`document_failed_other\`, \`document_failed_test_mode\`, \`document_fraudulent\`, \`document_failed_greyscale\`, \`document_incomplete\`, \`document_invalid\`, \`document_manipulated\`, \`document_missing_back\`, \`document_missing_front\`, \`document_not_readable\`, \`document_not_uploaded\`, \`document_photo_mismatch\`, \`document_too_large\`, or \`document_type_not_supported\`. A machine-readable code specifying the verification state for this document.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    legalEntityPersonVerificationAdditionalDocument'DetailsCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | front: The front of an ID returned by a [file upload](https:\/\/stripe.com\/docs\/api\#create_file) with a \`purpose\` value of \`identity_document\`.
    legalEntityPersonVerificationAdditionalDocument'Front :: (GHC.Maybe.Maybe LegalEntityPersonVerificationAdditionalDocument'Front'Variants)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON LegalEntityPersonVerificationAdditionalDocument' where
  toJSON obj = Data.Aeson.Types.Internal.object ("back" Data.Aeson.Types.ToJSON..= legalEntityPersonVerificationAdditionalDocument'Back obj : "details" Data.Aeson.Types.ToJSON..= legalEntityPersonVerificationAdditionalDocument'Details obj : "details_code" Data.Aeson.Types.ToJSON..= legalEntityPersonVerificationAdditionalDocument'DetailsCode obj : "front" Data.Aeson.Types.ToJSON..= legalEntityPersonVerificationAdditionalDocument'Front obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("back" Data.Aeson.Types.ToJSON..= legalEntityPersonVerificationAdditionalDocument'Back obj) GHC.Base.<> (("details" Data.Aeson.Types.ToJSON..= legalEntityPersonVerificationAdditionalDocument'Details obj) GHC.Base.<> (("details_code" Data.Aeson.Types.ToJSON..= legalEntityPersonVerificationAdditionalDocument'DetailsCode obj) GHC.Base.<> ("front" Data.Aeson.Types.ToJSON..= legalEntityPersonVerificationAdditionalDocument'Front obj))))

instance Data.Aeson.Types.FromJSON.FromJSON LegalEntityPersonVerificationAdditionalDocument' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "LegalEntityPersonVerificationAdditionalDocument'" (\obj -> (((GHC.Base.pure LegalEntityPersonVerificationAdditionalDocument' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "details_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))

-- | Create a new 'LegalEntityPersonVerificationAdditionalDocument'' with all required fields.
mkLegalEntityPersonVerificationAdditionalDocument' :: LegalEntityPersonVerificationAdditionalDocument'
mkLegalEntityPersonVerificationAdditionalDocument' =
  LegalEntityPersonVerificationAdditionalDocument'
    { legalEntityPersonVerificationAdditionalDocument'Back = GHC.Maybe.Nothing,
      legalEntityPersonVerificationAdditionalDocument'Details = GHC.Maybe.Nothing,
      legalEntityPersonVerificationAdditionalDocument'DetailsCode = GHC.Maybe.Nothing,
      legalEntityPersonVerificationAdditionalDocument'Front = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @components.schemas.legal_entity_person_verification.properties.additional_document.anyOf.properties.back.anyOf@ in the specification.
--
-- The back of an ID returned by a [file upload](https:\/\/stripe.com\/docs\/api\#create_file) with a \`purpose\` value of \`identity_document\`.
data LegalEntityPersonVerificationAdditionalDocument'Back'Variants
  = LegalEntityPersonVerificationAdditionalDocument'Back'Text Data.Text.Internal.Text
  | LegalEntityPersonVerificationAdditionalDocument'Back'File File
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON LegalEntityPersonVerificationAdditionalDocument'Back'Variants where
  toJSON (LegalEntityPersonVerificationAdditionalDocument'Back'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (LegalEntityPersonVerificationAdditionalDocument'Back'File a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON LegalEntityPersonVerificationAdditionalDocument'Back'Variants where
  parseJSON val = case (LegalEntityPersonVerificationAdditionalDocument'Back'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((LegalEntityPersonVerificationAdditionalDocument'Back'File Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.legal_entity_person_verification.properties.additional_document.anyOf.properties.front.anyOf@ in the specification.
--
-- The front of an ID returned by a [file upload](https:\/\/stripe.com\/docs\/api\#create_file) with a \`purpose\` value of \`identity_document\`.
data LegalEntityPersonVerificationAdditionalDocument'Front'Variants
  = LegalEntityPersonVerificationAdditionalDocument'Front'Text Data.Text.Internal.Text
  | LegalEntityPersonVerificationAdditionalDocument'Front'File File
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON LegalEntityPersonVerificationAdditionalDocument'Front'Variants where
  toJSON (LegalEntityPersonVerificationAdditionalDocument'Front'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (LegalEntityPersonVerificationAdditionalDocument'Front'File a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON LegalEntityPersonVerificationAdditionalDocument'Front'Variants where
  parseJSON val = case (LegalEntityPersonVerificationAdditionalDocument'Front'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((LegalEntityPersonVerificationAdditionalDocument'Front'File Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
