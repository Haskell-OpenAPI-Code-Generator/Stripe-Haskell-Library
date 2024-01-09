{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema TaxProductResourceCustomerDetailsResourceTaxId
module StripeAPI.Types.TaxProductResourceCustomerDetailsResourceTaxId where

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

-- | Defines the object schema located at @components.schemas.tax_product_resource_customer_details_resource_tax_id@ in the specification.
data TaxProductResourceCustomerDetailsResourceTaxId = TaxProductResourceCustomerDetailsResourceTaxId
  { -- | type: The type of the tax ID, one of \`ad_nrt\`, \`ar_cuit\`, \`eu_vat\`, \`bo_tin\`, \`br_cnpj\`, \`br_cpf\`, \`cn_tin\`, \`co_nit\`, \`cr_tin\`, \`do_rcn\`, \`ec_ruc\`, \`eu_oss_vat\`, \`pe_ruc\`, \`ro_tin\`, \`rs_pib\`, \`sv_nit\`, \`uy_ruc\`, \`ve_rif\`, \`vn_tin\`, \`gb_vat\`, \`nz_gst\`, \`au_abn\`, \`au_arn\`, \`in_gst\`, \`no_vat\`, \`za_vat\`, \`ch_vat\`, \`mx_rfc\`, \`sg_uen\`, \`ru_inn\`, \`ru_kpp\`, \`ca_bn\`, \`hk_br\`, \`es_cif\`, \`tw_vat\`, \`th_vat\`, \`jp_cn\`, \`jp_rn\`, \`jp_trn\`, \`li_uid\`, \`my_itn\`, \`us_ein\`, \`kr_brn\`, \`ca_qst\`, \`ca_gst_hst\`, \`ca_pst_bc\`, \`ca_pst_mb\`, \`ca_pst_sk\`, \`my_sst\`, \`sg_gst\`, \`ae_trn\`, \`cl_tin\`, \`sa_vat\`, \`id_npwp\`, \`my_frp\`, \`il_vat\`, \`ge_vat\`, \`ua_vat\`, \`is_vat\`, \`bg_uic\`, \`hu_tin\`, \`si_tin\`, \`ke_pin\`, \`tr_tin\`, \`eg_tin\`, \`ph_tin\`, or \`unknown\`
    taxProductResourceCustomerDetailsResourceTaxIdType :: TaxProductResourceCustomerDetailsResourceTaxIdType',
    -- | value: The value of the tax ID.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    taxProductResourceCustomerDetailsResourceTaxIdValue :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON TaxProductResourceCustomerDetailsResourceTaxId where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["type" Data.Aeson.Types.ToJSON..= taxProductResourceCustomerDetailsResourceTaxIdType obj] : ["value" Data.Aeson.Types.ToJSON..= taxProductResourceCustomerDetailsResourceTaxIdValue obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["type" Data.Aeson.Types.ToJSON..= taxProductResourceCustomerDetailsResourceTaxIdType obj] : ["value" Data.Aeson.Types.ToJSON..= taxProductResourceCustomerDetailsResourceTaxIdValue obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON TaxProductResourceCustomerDetailsResourceTaxId where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "TaxProductResourceCustomerDetailsResourceTaxId" (\obj -> (GHC.Base.pure TaxProductResourceCustomerDetailsResourceTaxId GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "value"))

-- | Create a new 'TaxProductResourceCustomerDetailsResourceTaxId' with all required fields.
mkTaxProductResourceCustomerDetailsResourceTaxId ::
  -- | 'taxProductResourceCustomerDetailsResourceTaxIdType'
  TaxProductResourceCustomerDetailsResourceTaxIdType' ->
  -- | 'taxProductResourceCustomerDetailsResourceTaxIdValue'
  Data.Text.Internal.Text ->
  TaxProductResourceCustomerDetailsResourceTaxId
mkTaxProductResourceCustomerDetailsResourceTaxId taxProductResourceCustomerDetailsResourceTaxIdType taxProductResourceCustomerDetailsResourceTaxIdValue =
  TaxProductResourceCustomerDetailsResourceTaxId
    { taxProductResourceCustomerDetailsResourceTaxIdType = taxProductResourceCustomerDetailsResourceTaxIdType,
      taxProductResourceCustomerDetailsResourceTaxIdValue = taxProductResourceCustomerDetailsResourceTaxIdValue
    }

-- | Defines the enum schema located at @components.schemas.tax_product_resource_customer_details_resource_tax_id.properties.type@ in the specification.
--
-- The type of the tax ID, one of \`ad_nrt\`, \`ar_cuit\`, \`eu_vat\`, \`bo_tin\`, \`br_cnpj\`, \`br_cpf\`, \`cn_tin\`, \`co_nit\`, \`cr_tin\`, \`do_rcn\`, \`ec_ruc\`, \`eu_oss_vat\`, \`pe_ruc\`, \`ro_tin\`, \`rs_pib\`, \`sv_nit\`, \`uy_ruc\`, \`ve_rif\`, \`vn_tin\`, \`gb_vat\`, \`nz_gst\`, \`au_abn\`, \`au_arn\`, \`in_gst\`, \`no_vat\`, \`za_vat\`, \`ch_vat\`, \`mx_rfc\`, \`sg_uen\`, \`ru_inn\`, \`ru_kpp\`, \`ca_bn\`, \`hk_br\`, \`es_cif\`, \`tw_vat\`, \`th_vat\`, \`jp_cn\`, \`jp_rn\`, \`jp_trn\`, \`li_uid\`, \`my_itn\`, \`us_ein\`, \`kr_brn\`, \`ca_qst\`, \`ca_gst_hst\`, \`ca_pst_bc\`, \`ca_pst_mb\`, \`ca_pst_sk\`, \`my_sst\`, \`sg_gst\`, \`ae_trn\`, \`cl_tin\`, \`sa_vat\`, \`id_npwp\`, \`my_frp\`, \`il_vat\`, \`ge_vat\`, \`ua_vat\`, \`is_vat\`, \`bg_uic\`, \`hu_tin\`, \`si_tin\`, \`ke_pin\`, \`tr_tin\`, \`eg_tin\`, \`ph_tin\`, or \`unknown\`
data TaxProductResourceCustomerDetailsResourceTaxIdType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    TaxProductResourceCustomerDetailsResourceTaxIdType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    TaxProductResourceCustomerDetailsResourceTaxIdType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"ad_nrt"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumAdNrt
  | -- | Represents the JSON value @"ae_trn"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumAeTrn
  | -- | Represents the JSON value @"ar_cuit"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumArCuit
  | -- | Represents the JSON value @"au_abn"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumAuAbn
  | -- | Represents the JSON value @"au_arn"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumAuArn
  | -- | Represents the JSON value @"bg_uic"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumBgUic
  | -- | Represents the JSON value @"bo_tin"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumBoTin
  | -- | Represents the JSON value @"br_cnpj"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumBrCnpj
  | -- | Represents the JSON value @"br_cpf"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumBrCpf
  | -- | Represents the JSON value @"ca_bn"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumCaBn
  | -- | Represents the JSON value @"ca_gst_hst"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumCaGstHst
  | -- | Represents the JSON value @"ca_pst_bc"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumCaPstBc
  | -- | Represents the JSON value @"ca_pst_mb"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumCaPstMb
  | -- | Represents the JSON value @"ca_pst_sk"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumCaPstSk
  | -- | Represents the JSON value @"ca_qst"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumCaQst
  | -- | Represents the JSON value @"ch_vat"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumChVat
  | -- | Represents the JSON value @"cl_tin"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumClTin
  | -- | Represents the JSON value @"cn_tin"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumCnTin
  | -- | Represents the JSON value @"co_nit"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumCoNit
  | -- | Represents the JSON value @"cr_tin"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumCrTin
  | -- | Represents the JSON value @"do_rcn"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumDoRcn
  | -- | Represents the JSON value @"ec_ruc"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumEcRuc
  | -- | Represents the JSON value @"eg_tin"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumEgTin
  | -- | Represents the JSON value @"es_cif"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumEsCif
  | -- | Represents the JSON value @"eu_oss_vat"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumEuOssVat
  | -- | Represents the JSON value @"eu_vat"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumEuVat
  | -- | Represents the JSON value @"gb_vat"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumGbVat
  | -- | Represents the JSON value @"ge_vat"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumGeVat
  | -- | Represents the JSON value @"hk_br"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumHkBr
  | -- | Represents the JSON value @"hu_tin"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumHuTin
  | -- | Represents the JSON value @"id_npwp"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumIdNpwp
  | -- | Represents the JSON value @"il_vat"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumIlVat
  | -- | Represents the JSON value @"in_gst"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumInGst
  | -- | Represents the JSON value @"is_vat"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumIsVat
  | -- | Represents the JSON value @"jp_cn"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumJpCn
  | -- | Represents the JSON value @"jp_rn"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumJpRn
  | -- | Represents the JSON value @"jp_trn"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumJpTrn
  | -- | Represents the JSON value @"ke_pin"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumKePin
  | -- | Represents the JSON value @"kr_brn"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumKrBrn
  | -- | Represents the JSON value @"li_uid"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumLiUid
  | -- | Represents the JSON value @"mx_rfc"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumMxRfc
  | -- | Represents the JSON value @"my_frp"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumMyFrp
  | -- | Represents the JSON value @"my_itn"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumMyItn
  | -- | Represents the JSON value @"my_sst"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumMySst
  | -- | Represents the JSON value @"no_vat"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumNoVat
  | -- | Represents the JSON value @"nz_gst"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumNzGst
  | -- | Represents the JSON value @"pe_ruc"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumPeRuc
  | -- | Represents the JSON value @"ph_tin"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumPhTin
  | -- | Represents the JSON value @"ro_tin"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumRoTin
  | -- | Represents the JSON value @"rs_pib"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumRsPib
  | -- | Represents the JSON value @"ru_inn"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumRuInn
  | -- | Represents the JSON value @"ru_kpp"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumRuKpp
  | -- | Represents the JSON value @"sa_vat"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumSaVat
  | -- | Represents the JSON value @"sg_gst"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumSgGst
  | -- | Represents the JSON value @"sg_uen"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumSgUen
  | -- | Represents the JSON value @"si_tin"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumSiTin
  | -- | Represents the JSON value @"sv_nit"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumSvNit
  | -- | Represents the JSON value @"th_vat"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumThVat
  | -- | Represents the JSON value @"tr_tin"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumTrTin
  | -- | Represents the JSON value @"tw_vat"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumTwVat
  | -- | Represents the JSON value @"ua_vat"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumUaVat
  | -- | Represents the JSON value @"unknown"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumUnknown
  | -- | Represents the JSON value @"us_ein"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumUsEin
  | -- | Represents the JSON value @"uy_ruc"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumUyRuc
  | -- | Represents the JSON value @"ve_rif"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumVeRif
  | -- | Represents the JSON value @"vn_tin"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumVnTin
  | -- | Represents the JSON value @"za_vat"@
    TaxProductResourceCustomerDetailsResourceTaxIdType'EnumZaVat
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON TaxProductResourceCustomerDetailsResourceTaxIdType' where
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'Other val) = val
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumAdNrt) = "ad_nrt"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumAeTrn) = "ae_trn"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumArCuit) = "ar_cuit"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumAuAbn) = "au_abn"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumAuArn) = "au_arn"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumBgUic) = "bg_uic"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumBoTin) = "bo_tin"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumBrCnpj) = "br_cnpj"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumBrCpf) = "br_cpf"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumCaBn) = "ca_bn"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumCaGstHst) = "ca_gst_hst"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumCaPstBc) = "ca_pst_bc"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumCaPstMb) = "ca_pst_mb"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumCaPstSk) = "ca_pst_sk"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumCaQst) = "ca_qst"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumChVat) = "ch_vat"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumClTin) = "cl_tin"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumCnTin) = "cn_tin"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumCoNit) = "co_nit"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumCrTin) = "cr_tin"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumDoRcn) = "do_rcn"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumEcRuc) = "ec_ruc"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumEgTin) = "eg_tin"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumEsCif) = "es_cif"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumEuOssVat) = "eu_oss_vat"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumEuVat) = "eu_vat"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumGbVat) = "gb_vat"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumGeVat) = "ge_vat"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumHkBr) = "hk_br"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumHuTin) = "hu_tin"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumIdNpwp) = "id_npwp"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumIlVat) = "il_vat"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumInGst) = "in_gst"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumIsVat) = "is_vat"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumJpCn) = "jp_cn"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumJpRn) = "jp_rn"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumJpTrn) = "jp_trn"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumKePin) = "ke_pin"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumKrBrn) = "kr_brn"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumLiUid) = "li_uid"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumMxRfc) = "mx_rfc"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumMyFrp) = "my_frp"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumMyItn) = "my_itn"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumMySst) = "my_sst"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumNoVat) = "no_vat"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumNzGst) = "nz_gst"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumPeRuc) = "pe_ruc"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumPhTin) = "ph_tin"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumRoTin) = "ro_tin"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumRsPib) = "rs_pib"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumRuInn) = "ru_inn"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumRuKpp) = "ru_kpp"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumSaVat) = "sa_vat"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumSgGst) = "sg_gst"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumSgUen) = "sg_uen"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumSiTin) = "si_tin"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumSvNit) = "sv_nit"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumThVat) = "th_vat"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumTrTin) = "tr_tin"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumTwVat) = "tw_vat"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumUaVat) = "ua_vat"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumUnknown) = "unknown"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumUsEin) = "us_ein"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumUyRuc) = "uy_ruc"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumVeRif) = "ve_rif"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumVnTin) = "vn_tin"
  toJSON (TaxProductResourceCustomerDetailsResourceTaxIdType'EnumZaVat) = "za_vat"

instance Data.Aeson.Types.FromJSON.FromJSON TaxProductResourceCustomerDetailsResourceTaxIdType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "ad_nrt" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumAdNrt
            | val GHC.Classes.== "ae_trn" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumAeTrn
            | val GHC.Classes.== "ar_cuit" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumArCuit
            | val GHC.Classes.== "au_abn" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumAuAbn
            | val GHC.Classes.== "au_arn" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumAuArn
            | val GHC.Classes.== "bg_uic" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumBgUic
            | val GHC.Classes.== "bo_tin" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumBoTin
            | val GHC.Classes.== "br_cnpj" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumBrCnpj
            | val GHC.Classes.== "br_cpf" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumBrCpf
            | val GHC.Classes.== "ca_bn" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumCaBn
            | val GHC.Classes.== "ca_gst_hst" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumCaGstHst
            | val GHC.Classes.== "ca_pst_bc" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumCaPstBc
            | val GHC.Classes.== "ca_pst_mb" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumCaPstMb
            | val GHC.Classes.== "ca_pst_sk" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumCaPstSk
            | val GHC.Classes.== "ca_qst" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumCaQst
            | val GHC.Classes.== "ch_vat" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumChVat
            | val GHC.Classes.== "cl_tin" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumClTin
            | val GHC.Classes.== "cn_tin" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumCnTin
            | val GHC.Classes.== "co_nit" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumCoNit
            | val GHC.Classes.== "cr_tin" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumCrTin
            | val GHC.Classes.== "do_rcn" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumDoRcn
            | val GHC.Classes.== "ec_ruc" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumEcRuc
            | val GHC.Classes.== "eg_tin" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumEgTin
            | val GHC.Classes.== "es_cif" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumEsCif
            | val GHC.Classes.== "eu_oss_vat" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumEuOssVat
            | val GHC.Classes.== "eu_vat" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumEuVat
            | val GHC.Classes.== "gb_vat" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumGbVat
            | val GHC.Classes.== "ge_vat" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumGeVat
            | val GHC.Classes.== "hk_br" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumHkBr
            | val GHC.Classes.== "hu_tin" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumHuTin
            | val GHC.Classes.== "id_npwp" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumIdNpwp
            | val GHC.Classes.== "il_vat" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumIlVat
            | val GHC.Classes.== "in_gst" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumInGst
            | val GHC.Classes.== "is_vat" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumIsVat
            | val GHC.Classes.== "jp_cn" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumJpCn
            | val GHC.Classes.== "jp_rn" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumJpRn
            | val GHC.Classes.== "jp_trn" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumJpTrn
            | val GHC.Classes.== "ke_pin" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumKePin
            | val GHC.Classes.== "kr_brn" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumKrBrn
            | val GHC.Classes.== "li_uid" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumLiUid
            | val GHC.Classes.== "mx_rfc" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumMxRfc
            | val GHC.Classes.== "my_frp" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumMyFrp
            | val GHC.Classes.== "my_itn" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumMyItn
            | val GHC.Classes.== "my_sst" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumMySst
            | val GHC.Classes.== "no_vat" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumNoVat
            | val GHC.Classes.== "nz_gst" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumNzGst
            | val GHC.Classes.== "pe_ruc" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumPeRuc
            | val GHC.Classes.== "ph_tin" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumPhTin
            | val GHC.Classes.== "ro_tin" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumRoTin
            | val GHC.Classes.== "rs_pib" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumRsPib
            | val GHC.Classes.== "ru_inn" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumRuInn
            | val GHC.Classes.== "ru_kpp" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumRuKpp
            | val GHC.Classes.== "sa_vat" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumSaVat
            | val GHC.Classes.== "sg_gst" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumSgGst
            | val GHC.Classes.== "sg_uen" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumSgUen
            | val GHC.Classes.== "si_tin" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumSiTin
            | val GHC.Classes.== "sv_nit" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumSvNit
            | val GHC.Classes.== "th_vat" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumThVat
            | val GHC.Classes.== "tr_tin" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumTrTin
            | val GHC.Classes.== "tw_vat" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumTwVat
            | val GHC.Classes.== "ua_vat" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumUaVat
            | val GHC.Classes.== "unknown" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumUnknown
            | val GHC.Classes.== "us_ein" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumUsEin
            | val GHC.Classes.== "uy_ruc" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumUyRuc
            | val GHC.Classes.== "ve_rif" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumVeRif
            | val GHC.Classes.== "vn_tin" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumVnTin
            | val GHC.Classes.== "za_vat" -> TaxProductResourceCustomerDetailsResourceTaxIdType'EnumZaVat
            | GHC.Base.otherwise -> TaxProductResourceCustomerDetailsResourceTaxIdType'Other val
      )
