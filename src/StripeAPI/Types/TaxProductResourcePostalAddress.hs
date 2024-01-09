{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema TaxProductResourcePostalAddress
module StripeAPI.Types.TaxProductResourcePostalAddress where

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

-- | Defines the object schema located at @components.schemas.tax_product_resource_postal_address@ in the specification.
data TaxProductResourcePostalAddress = TaxProductResourcePostalAddress
  { -- | city: City, district, suburb, town, or village.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    taxProductResourcePostalAddressCity :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    taxProductResourcePostalAddressCountry :: Data.Text.Internal.Text,
    -- | line1: Address line 1 (e.g., street, PO Box, or company name).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    taxProductResourcePostalAddressLine1 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | line2: Address line 2 (e.g., apartment, suite, unit, or building).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    taxProductResourcePostalAddressLine2 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | postal_code: ZIP or postal code.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    taxProductResourcePostalAddressPostalCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | state: State\/province as an [ISO 3166-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-2) subdivision code, without country prefix. Example: \"NY\" or \"TX\".
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    taxProductResourcePostalAddressState :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON TaxProductResourcePostalAddress where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (taxProductResourcePostalAddressCity obj) : ["country" Data.Aeson.Types.ToJSON..= taxProductResourcePostalAddressCountry obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line1" Data.Aeson.Types.ToJSON..=)) (taxProductResourcePostalAddressLine1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line2" Data.Aeson.Types.ToJSON..=)) (taxProductResourcePostalAddressLine2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (taxProductResourcePostalAddressPostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (taxProductResourcePostalAddressState obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (taxProductResourcePostalAddressCity obj) : ["country" Data.Aeson.Types.ToJSON..= taxProductResourcePostalAddressCountry obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line1" Data.Aeson.Types.ToJSON..=)) (taxProductResourcePostalAddressLine1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line2" Data.Aeson.Types.ToJSON..=)) (taxProductResourcePostalAddressLine2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (taxProductResourcePostalAddressPostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (taxProductResourcePostalAddressState obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON TaxProductResourcePostalAddress where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "TaxProductResourcePostalAddress" (\obj -> (((((GHC.Base.pure TaxProductResourcePostalAddress GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "state"))

-- | Create a new 'TaxProductResourcePostalAddress' with all required fields.
mkTaxProductResourcePostalAddress ::
  -- | 'taxProductResourcePostalAddressCountry'
  Data.Text.Internal.Text ->
  TaxProductResourcePostalAddress
mkTaxProductResourcePostalAddress taxProductResourcePostalAddressCountry =
  TaxProductResourcePostalAddress
    { taxProductResourcePostalAddressCity = GHC.Maybe.Nothing,
      taxProductResourcePostalAddressCountry = taxProductResourcePostalAddressCountry,
      taxProductResourcePostalAddressLine1 = GHC.Maybe.Nothing,
      taxProductResourcePostalAddressLine2 = GHC.Maybe.Nothing,
      taxProductResourcePostalAddressPostalCode = GHC.Maybe.Nothing,
      taxProductResourcePostalAddressState = GHC.Maybe.Nothing
    }
