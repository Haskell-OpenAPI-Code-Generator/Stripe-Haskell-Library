{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema TaxProductResourceTaxRateDetails
module StripeAPI.Types.TaxProductResourceTaxRateDetails where

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

-- | Defines the object schema located at @components.schemas.tax_product_resource_tax_rate_details@ in the specification.
data TaxProductResourceTaxRateDetails = TaxProductResourceTaxRateDetails
  { -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    taxProductResourceTaxRateDetailsCountry :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | percentage_decimal: The tax rate percentage as a string. For example, 8.5% is represented as \`\"8.5\"\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    taxProductResourceTaxRateDetailsPercentageDecimal :: Data.Text.Internal.Text,
    -- | state: State, county, province, or region.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    taxProductResourceTaxRateDetailsState :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | tax_type: The tax type, such as \`vat\` or \`sales_tax\`.
    taxProductResourceTaxRateDetailsTaxType :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable TaxProductResourceTaxRateDetailsTaxType'NonNullable))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON TaxProductResourceTaxRateDetails where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (taxProductResourceTaxRateDetailsCountry obj) : ["percentage_decimal" Data.Aeson.Types.ToJSON..= taxProductResourceTaxRateDetailsPercentageDecimal obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (taxProductResourceTaxRateDetailsState obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_type" Data.Aeson.Types.ToJSON..=)) (taxProductResourceTaxRateDetailsTaxType obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (taxProductResourceTaxRateDetailsCountry obj) : ["percentage_decimal" Data.Aeson.Types.ToJSON..= taxProductResourceTaxRateDetailsPercentageDecimal obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (taxProductResourceTaxRateDetailsState obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_type" Data.Aeson.Types.ToJSON..=)) (taxProductResourceTaxRateDetailsTaxType obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON TaxProductResourceTaxRateDetails where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "TaxProductResourceTaxRateDetails" (\obj -> (((GHC.Base.pure TaxProductResourceTaxRateDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "percentage_decimal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "tax_type"))

-- | Create a new 'TaxProductResourceTaxRateDetails' with all required fields.
mkTaxProductResourceTaxRateDetails ::
  -- | 'taxProductResourceTaxRateDetailsPercentageDecimal'
  Data.Text.Internal.Text ->
  TaxProductResourceTaxRateDetails
mkTaxProductResourceTaxRateDetails taxProductResourceTaxRateDetailsPercentageDecimal =
  TaxProductResourceTaxRateDetails
    { taxProductResourceTaxRateDetailsCountry = GHC.Maybe.Nothing,
      taxProductResourceTaxRateDetailsPercentageDecimal = taxProductResourceTaxRateDetailsPercentageDecimal,
      taxProductResourceTaxRateDetailsState = GHC.Maybe.Nothing,
      taxProductResourceTaxRateDetailsTaxType = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.tax_product_resource_tax_rate_details.properties.tax_type@ in the specification.
--
-- The tax type, such as \`vat\` or \`sales_tax\`.
data TaxProductResourceTaxRateDetailsTaxType'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    TaxProductResourceTaxRateDetailsTaxType'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    TaxProductResourceTaxRateDetailsTaxType'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"amusement_tax"@
    TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumAmusementTax
  | -- | Represents the JSON value @"communications_tax"@
    TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumCommunicationsTax
  | -- | Represents the JSON value @"gst"@
    TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumGst
  | -- | Represents the JSON value @"hst"@
    TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumHst
  | -- | Represents the JSON value @"igst"@
    TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumIgst
  | -- | Represents the JSON value @"jct"@
    TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumJct
  | -- | Represents the JSON value @"lease_tax"@
    TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumLeaseTax
  | -- | Represents the JSON value @"pst"@
    TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumPst
  | -- | Represents the JSON value @"qst"@
    TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumQst
  | -- | Represents the JSON value @"rst"@
    TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumRst
  | -- | Represents the JSON value @"sales_tax"@
    TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumSalesTax
  | -- | Represents the JSON value @"vat"@
    TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumVat
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON TaxProductResourceTaxRateDetailsTaxType'NonNullable where
  toJSON (TaxProductResourceTaxRateDetailsTaxType'NonNullableOther val) = val
  toJSON (TaxProductResourceTaxRateDetailsTaxType'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumAmusementTax) = "amusement_tax"
  toJSON (TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumCommunicationsTax) = "communications_tax"
  toJSON (TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumGst) = "gst"
  toJSON (TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumHst) = "hst"
  toJSON (TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumIgst) = "igst"
  toJSON (TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumJct) = "jct"
  toJSON (TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumLeaseTax) = "lease_tax"
  toJSON (TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumPst) = "pst"
  toJSON (TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumQst) = "qst"
  toJSON (TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumRst) = "rst"
  toJSON (TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumSalesTax) = "sales_tax"
  toJSON (TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumVat) = "vat"

instance Data.Aeson.Types.FromJSON.FromJSON TaxProductResourceTaxRateDetailsTaxType'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "amusement_tax" -> TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumAmusementTax
            | val GHC.Classes.== "communications_tax" -> TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumCommunicationsTax
            | val GHC.Classes.== "gst" -> TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumGst
            | val GHC.Classes.== "hst" -> TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumHst
            | val GHC.Classes.== "igst" -> TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumIgst
            | val GHC.Classes.== "jct" -> TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumJct
            | val GHC.Classes.== "lease_tax" -> TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumLeaseTax
            | val GHC.Classes.== "pst" -> TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumPst
            | val GHC.Classes.== "qst" -> TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumQst
            | val GHC.Classes.== "rst" -> TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumRst
            | val GHC.Classes.== "sales_tax" -> TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumSalesTax
            | val GHC.Classes.== "vat" -> TaxProductResourceTaxRateDetailsTaxType'NonNullableEnumVat
            | GHC.Base.otherwise -> TaxProductResourceTaxRateDetailsTaxType'NonNullableOther val
      )
