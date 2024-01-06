{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema InvoicesInvoiceRendering
module StripeAPI.Types.InvoicesInvoiceRendering where

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
import {-# SOURCE #-} StripeAPI.Types.InvoiceRenderingPdf
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.invoices_invoice_rendering@ in the specification.
data InvoicesInvoiceRendering = InvoicesInvoiceRendering
  { -- | amount_tax_display: How line-item prices and amounts will be displayed with respect to tax on invoice PDFs.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    invoicesInvoiceRenderingAmountTaxDisplay :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | pdf: Invoice pdf rendering options
    invoicesInvoiceRenderingPdf :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable InvoicesInvoiceRenderingPdf'NonNullable))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON InvoicesInvoiceRendering where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_tax_display" Data.Aeson.Types.ToJSON..=)) (invoicesInvoiceRenderingAmountTaxDisplay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pdf" Data.Aeson.Types.ToJSON..=)) (invoicesInvoiceRenderingPdf obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_tax_display" Data.Aeson.Types.ToJSON..=)) (invoicesInvoiceRenderingAmountTaxDisplay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pdf" Data.Aeson.Types.ToJSON..=)) (invoicesInvoiceRenderingPdf obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON InvoicesInvoiceRendering where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoicesInvoiceRendering" (\obj -> (GHC.Base.pure InvoicesInvoiceRendering GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount_tax_display")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "pdf"))

-- | Create a new 'InvoicesInvoiceRendering' with all required fields.
mkInvoicesInvoiceRendering :: InvoicesInvoiceRendering
mkInvoicesInvoiceRendering =
  InvoicesInvoiceRendering
    { invoicesInvoiceRenderingAmountTaxDisplay = GHC.Maybe.Nothing,
      invoicesInvoiceRenderingPdf = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.invoices_invoice_rendering.properties.pdf.anyOf@ in the specification.
--
-- Invoice pdf rendering options
data InvoicesInvoiceRenderingPdf'NonNullable = InvoicesInvoiceRenderingPdf'NonNullable
  { -- | page_size: Page size of invoice pdf. Options include a4, letter, and auto. If set to auto, page size will be switched to a4 or letter based on customer locale.
    invoicesInvoiceRenderingPdf'NonNullablePageSize :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable InvoicesInvoiceRenderingPdf'NonNullablePageSize'NonNullable))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON InvoicesInvoiceRenderingPdf'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("page_size" Data.Aeson.Types.ToJSON..=)) (invoicesInvoiceRenderingPdf'NonNullablePageSize obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("page_size" Data.Aeson.Types.ToJSON..=)) (invoicesInvoiceRenderingPdf'NonNullablePageSize obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON InvoicesInvoiceRenderingPdf'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoicesInvoiceRenderingPdf'NonNullable" (\obj -> GHC.Base.pure InvoicesInvoiceRenderingPdf'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "page_size"))

-- | Create a new 'InvoicesInvoiceRenderingPdf'NonNullable' with all required fields.
mkInvoicesInvoiceRenderingPdf'NonNullable :: InvoicesInvoiceRenderingPdf'NonNullable
mkInvoicesInvoiceRenderingPdf'NonNullable = InvoicesInvoiceRenderingPdf'NonNullable {invoicesInvoiceRenderingPdf'NonNullablePageSize = GHC.Maybe.Nothing}

-- | Defines the enum schema located at @components.schemas.invoices_invoice_rendering.properties.pdf.anyOf.properties.page_size@ in the specification.
--
-- Page size of invoice pdf. Options include a4, letter, and auto. If set to auto, page size will be switched to a4 or letter based on customer locale.
data InvoicesInvoiceRenderingPdf'NonNullablePageSize'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    InvoicesInvoiceRenderingPdf'NonNullablePageSize'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    InvoicesInvoiceRenderingPdf'NonNullablePageSize'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"a4"@
    InvoicesInvoiceRenderingPdf'NonNullablePageSize'NonNullableEnumA4
  | -- | Represents the JSON value @"auto"@
    InvoicesInvoiceRenderingPdf'NonNullablePageSize'NonNullableEnumAuto
  | -- | Represents the JSON value @"letter"@
    InvoicesInvoiceRenderingPdf'NonNullablePageSize'NonNullableEnumLetter
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON InvoicesInvoiceRenderingPdf'NonNullablePageSize'NonNullable where
  toJSON (InvoicesInvoiceRenderingPdf'NonNullablePageSize'NonNullableOther val) = val
  toJSON (InvoicesInvoiceRenderingPdf'NonNullablePageSize'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (InvoicesInvoiceRenderingPdf'NonNullablePageSize'NonNullableEnumA4) = "a4"
  toJSON (InvoicesInvoiceRenderingPdf'NonNullablePageSize'NonNullableEnumAuto) = "auto"
  toJSON (InvoicesInvoiceRenderingPdf'NonNullablePageSize'NonNullableEnumLetter) = "letter"

instance Data.Aeson.Types.FromJSON.FromJSON InvoicesInvoiceRenderingPdf'NonNullablePageSize'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "a4" -> InvoicesInvoiceRenderingPdf'NonNullablePageSize'NonNullableEnumA4
            | val GHC.Classes.== "auto" -> InvoicesInvoiceRenderingPdf'NonNullablePageSize'NonNullableEnumAuto
            | val GHC.Classes.== "letter" -> InvoicesInvoiceRenderingPdf'NonNullablePageSize'NonNullableEnumLetter
            | GHC.Base.otherwise -> InvoicesInvoiceRenderingPdf'NonNullablePageSize'NonNullableOther val
      )
