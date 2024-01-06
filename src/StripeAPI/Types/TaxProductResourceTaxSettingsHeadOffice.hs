{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema TaxProductResourceTaxSettingsHeadOffice
module StripeAPI.Types.TaxProductResourceTaxSettingsHeadOffice where

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
import {-# SOURCE #-} StripeAPI.Types.Address
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.tax_product_resource_tax_settings_head_office@ in the specification.
data TaxProductResourceTaxSettingsHeadOffice = TaxProductResourceTaxSettingsHeadOffice
  { -- | address:
    taxProductResourceTaxSettingsHeadOfficeAddress :: Address
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON TaxProductResourceTaxSettingsHeadOffice where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["address" Data.Aeson.Types.ToJSON..= taxProductResourceTaxSettingsHeadOfficeAddress obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["address" Data.Aeson.Types.ToJSON..= taxProductResourceTaxSettingsHeadOfficeAddress obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON TaxProductResourceTaxSettingsHeadOffice where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "TaxProductResourceTaxSettingsHeadOffice" (\obj -> GHC.Base.pure TaxProductResourceTaxSettingsHeadOffice GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address"))

-- | Create a new 'TaxProductResourceTaxSettingsHeadOffice' with all required fields.
mkTaxProductResourceTaxSettingsHeadOffice ::
  -- | 'taxProductResourceTaxSettingsHeadOfficeAddress'
  Address ->
  TaxProductResourceTaxSettingsHeadOffice
mkTaxProductResourceTaxSettingsHeadOffice taxProductResourceTaxSettingsHeadOfficeAddress = TaxProductResourceTaxSettingsHeadOffice {taxProductResourceTaxSettingsHeadOfficeAddress = taxProductResourceTaxSettingsHeadOfficeAddress}
