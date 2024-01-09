{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema IssuingDisputeOtherEvidence
module StripeAPI.Types.IssuingDisputeOtherEvidence where

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
import {-# SOURCE #-} StripeAPI.Types.File
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.issuing_dispute_other_evidence@ in the specification.
data IssuingDisputeOtherEvidence = IssuingDisputeOtherEvidence
  { -- | additional_documentation: (ID of a [file upload](https:\/\/stripe.com\/docs\/guides\/file-upload)) Additional documentation supporting the dispute.
    issuingDisputeOtherEvidenceAdditionalDocumentation :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable IssuingDisputeOtherEvidenceAdditionalDocumentation'NonNullableVariants)),
    -- | explanation: Explanation of why the cardholder is disputing this transaction.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    issuingDisputeOtherEvidenceExplanation :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | product_description: Description of the merchandise or service that was purchased.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    issuingDisputeOtherEvidenceProductDescription :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | product_type: Whether the product was a merchandise or service.
    issuingDisputeOtherEvidenceProductType :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable IssuingDisputeOtherEvidenceProductType'NonNullable))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON IssuingDisputeOtherEvidence where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("additional_documentation" Data.Aeson.Types.ToJSON..=)) (issuingDisputeOtherEvidenceAdditionalDocumentation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("explanation" Data.Aeson.Types.ToJSON..=)) (issuingDisputeOtherEvidenceExplanation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("product_description" Data.Aeson.Types.ToJSON..=)) (issuingDisputeOtherEvidenceProductDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("product_type" Data.Aeson.Types.ToJSON..=)) (issuingDisputeOtherEvidenceProductType obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("additional_documentation" Data.Aeson.Types.ToJSON..=)) (issuingDisputeOtherEvidenceAdditionalDocumentation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("explanation" Data.Aeson.Types.ToJSON..=)) (issuingDisputeOtherEvidenceExplanation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("product_description" Data.Aeson.Types.ToJSON..=)) (issuingDisputeOtherEvidenceProductDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("product_type" Data.Aeson.Types.ToJSON..=)) (issuingDisputeOtherEvidenceProductType obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON IssuingDisputeOtherEvidence where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingDisputeOtherEvidence" (\obj -> (((GHC.Base.pure IssuingDisputeOtherEvidence GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "additional_documentation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "explanation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "product_description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "product_type"))

-- | Create a new 'IssuingDisputeOtherEvidence' with all required fields.
mkIssuingDisputeOtherEvidence :: IssuingDisputeOtherEvidence
mkIssuingDisputeOtherEvidence =
  IssuingDisputeOtherEvidence
    { issuingDisputeOtherEvidenceAdditionalDocumentation = GHC.Maybe.Nothing,
      issuingDisputeOtherEvidenceExplanation = GHC.Maybe.Nothing,
      issuingDisputeOtherEvidenceProductDescription = GHC.Maybe.Nothing,
      issuingDisputeOtherEvidenceProductType = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @components.schemas.issuing_dispute_other_evidence.properties.additional_documentation.anyOf@ in the specification.
--
-- (ID of a [file upload](https:\/\/stripe.com\/docs\/guides\/file-upload)) Additional documentation supporting the dispute.
data IssuingDisputeOtherEvidenceAdditionalDocumentation'NonNullableVariants
  = IssuingDisputeOtherEvidenceAdditionalDocumentation'NonNullableText Data.Text.Internal.Text
  | IssuingDisputeOtherEvidenceAdditionalDocumentation'NonNullableFile File
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON IssuingDisputeOtherEvidenceAdditionalDocumentation'NonNullableVariants where
  toJSON (IssuingDisputeOtherEvidenceAdditionalDocumentation'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (IssuingDisputeOtherEvidenceAdditionalDocumentation'NonNullableFile a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON IssuingDisputeOtherEvidenceAdditionalDocumentation'NonNullableVariants where
  parseJSON val = case (IssuingDisputeOtherEvidenceAdditionalDocumentation'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((IssuingDisputeOtherEvidenceAdditionalDocumentation'NonNullableFile Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the enum schema located at @components.schemas.issuing_dispute_other_evidence.properties.product_type@ in the specification.
--
-- Whether the product was a merchandise or service.
data IssuingDisputeOtherEvidenceProductType'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    IssuingDisputeOtherEvidenceProductType'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    IssuingDisputeOtherEvidenceProductType'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"merchandise"@
    IssuingDisputeOtherEvidenceProductType'NonNullableEnumMerchandise
  | -- | Represents the JSON value @"service"@
    IssuingDisputeOtherEvidenceProductType'NonNullableEnumService
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON IssuingDisputeOtherEvidenceProductType'NonNullable where
  toJSON (IssuingDisputeOtherEvidenceProductType'NonNullableOther val) = val
  toJSON (IssuingDisputeOtherEvidenceProductType'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (IssuingDisputeOtherEvidenceProductType'NonNullableEnumMerchandise) = "merchandise"
  toJSON (IssuingDisputeOtherEvidenceProductType'NonNullableEnumService) = "service"

instance Data.Aeson.Types.FromJSON.FromJSON IssuingDisputeOtherEvidenceProductType'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "merchandise" -> IssuingDisputeOtherEvidenceProductType'NonNullableEnumMerchandise
            | val GHC.Classes.== "service" -> IssuingDisputeOtherEvidenceProductType'NonNullableEnumService
            | GHC.Base.otherwise -> IssuingDisputeOtherEvidenceProductType'NonNullableOther val
      )
