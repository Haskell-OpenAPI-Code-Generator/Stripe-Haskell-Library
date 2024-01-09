{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema InvoicesResourceInvoiceTaxId
module StripeAPI.Types.InvoicesResourceInvoiceTaxId where

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

-- | Defines the object schema located at @components.schemas.invoices_resource_invoice_tax_id@ in the specification.
data InvoicesResourceInvoiceTaxId = InvoicesResourceInvoiceTaxId
  { -- | type: The type of the tax ID, one of \`ad_nrt\`, \`ar_cuit\`, \`eu_vat\`, \`bo_tin\`, \`br_cnpj\`, \`br_cpf\`, \`cn_tin\`, \`co_nit\`, \`cr_tin\`, \`do_rcn\`, \`ec_ruc\`, \`eu_oss_vat\`, \`pe_ruc\`, \`ro_tin\`, \`rs_pib\`, \`sv_nit\`, \`uy_ruc\`, \`ve_rif\`, \`vn_tin\`, \`gb_vat\`, \`nz_gst\`, \`au_abn\`, \`au_arn\`, \`in_gst\`, \`no_vat\`, \`za_vat\`, \`ch_vat\`, \`mx_rfc\`, \`sg_uen\`, \`ru_inn\`, \`ru_kpp\`, \`ca_bn\`, \`hk_br\`, \`es_cif\`, \`tw_vat\`, \`th_vat\`, \`jp_cn\`, \`jp_rn\`, \`jp_trn\`, \`li_uid\`, \`my_itn\`, \`us_ein\`, \`kr_brn\`, \`ca_qst\`, \`ca_gst_hst\`, \`ca_pst_bc\`, \`ca_pst_mb\`, \`ca_pst_sk\`, \`my_sst\`, \`sg_gst\`, \`ae_trn\`, \`cl_tin\`, \`sa_vat\`, \`id_npwp\`, \`my_frp\`, \`il_vat\`, \`ge_vat\`, \`ua_vat\`, \`is_vat\`, \`bg_uic\`, \`hu_tin\`, \`si_tin\`, \`ke_pin\`, \`tr_tin\`, \`eg_tin\`, \`ph_tin\`, or \`unknown\`
    invoicesResourceInvoiceTaxIdType :: InvoicesResourceInvoiceTaxIdType',
    -- | value: The value of the tax ID.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    invoicesResourceInvoiceTaxIdValue :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON InvoicesResourceInvoiceTaxId where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["type" Data.Aeson.Types.ToJSON..= invoicesResourceInvoiceTaxIdType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("value" Data.Aeson.Types.ToJSON..=)) (invoicesResourceInvoiceTaxIdValue obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["type" Data.Aeson.Types.ToJSON..= invoicesResourceInvoiceTaxIdType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("value" Data.Aeson.Types.ToJSON..=)) (invoicesResourceInvoiceTaxIdValue obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON InvoicesResourceInvoiceTaxId where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoicesResourceInvoiceTaxId" (\obj -> (GHC.Base.pure InvoicesResourceInvoiceTaxId GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "value"))

-- | Create a new 'InvoicesResourceInvoiceTaxId' with all required fields.
mkInvoicesResourceInvoiceTaxId ::
  -- | 'invoicesResourceInvoiceTaxIdType'
  InvoicesResourceInvoiceTaxIdType' ->
  InvoicesResourceInvoiceTaxId
mkInvoicesResourceInvoiceTaxId invoicesResourceInvoiceTaxIdType =
  InvoicesResourceInvoiceTaxId
    { invoicesResourceInvoiceTaxIdType = invoicesResourceInvoiceTaxIdType,
      invoicesResourceInvoiceTaxIdValue = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.invoices_resource_invoice_tax_id.properties.type@ in the specification.
--
-- The type of the tax ID, one of \`ad_nrt\`, \`ar_cuit\`, \`eu_vat\`, \`bo_tin\`, \`br_cnpj\`, \`br_cpf\`, \`cn_tin\`, \`co_nit\`, \`cr_tin\`, \`do_rcn\`, \`ec_ruc\`, \`eu_oss_vat\`, \`pe_ruc\`, \`ro_tin\`, \`rs_pib\`, \`sv_nit\`, \`uy_ruc\`, \`ve_rif\`, \`vn_tin\`, \`gb_vat\`, \`nz_gst\`, \`au_abn\`, \`au_arn\`, \`in_gst\`, \`no_vat\`, \`za_vat\`, \`ch_vat\`, \`mx_rfc\`, \`sg_uen\`, \`ru_inn\`, \`ru_kpp\`, \`ca_bn\`, \`hk_br\`, \`es_cif\`, \`tw_vat\`, \`th_vat\`, \`jp_cn\`, \`jp_rn\`, \`jp_trn\`, \`li_uid\`, \`my_itn\`, \`us_ein\`, \`kr_brn\`, \`ca_qst\`, \`ca_gst_hst\`, \`ca_pst_bc\`, \`ca_pst_mb\`, \`ca_pst_sk\`, \`my_sst\`, \`sg_gst\`, \`ae_trn\`, \`cl_tin\`, \`sa_vat\`, \`id_npwp\`, \`my_frp\`, \`il_vat\`, \`ge_vat\`, \`ua_vat\`, \`is_vat\`, \`bg_uic\`, \`hu_tin\`, \`si_tin\`, \`ke_pin\`, \`tr_tin\`, \`eg_tin\`, \`ph_tin\`, or \`unknown\`
data InvoicesResourceInvoiceTaxIdType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    InvoicesResourceInvoiceTaxIdType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    InvoicesResourceInvoiceTaxIdType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"ad_nrt"@
    InvoicesResourceInvoiceTaxIdType'EnumAdNrt
  | -- | Represents the JSON value @"ae_trn"@
    InvoicesResourceInvoiceTaxIdType'EnumAeTrn
  | -- | Represents the JSON value @"ar_cuit"@
    InvoicesResourceInvoiceTaxIdType'EnumArCuit
  | -- | Represents the JSON value @"au_abn"@
    InvoicesResourceInvoiceTaxIdType'EnumAuAbn
  | -- | Represents the JSON value @"au_arn"@
    InvoicesResourceInvoiceTaxIdType'EnumAuArn
  | -- | Represents the JSON value @"bg_uic"@
    InvoicesResourceInvoiceTaxIdType'EnumBgUic
  | -- | Represents the JSON value @"bo_tin"@
    InvoicesResourceInvoiceTaxIdType'EnumBoTin
  | -- | Represents the JSON value @"br_cnpj"@
    InvoicesResourceInvoiceTaxIdType'EnumBrCnpj
  | -- | Represents the JSON value @"br_cpf"@
    InvoicesResourceInvoiceTaxIdType'EnumBrCpf
  | -- | Represents the JSON value @"ca_bn"@
    InvoicesResourceInvoiceTaxIdType'EnumCaBn
  | -- | Represents the JSON value @"ca_gst_hst"@
    InvoicesResourceInvoiceTaxIdType'EnumCaGstHst
  | -- | Represents the JSON value @"ca_pst_bc"@
    InvoicesResourceInvoiceTaxIdType'EnumCaPstBc
  | -- | Represents the JSON value @"ca_pst_mb"@
    InvoicesResourceInvoiceTaxIdType'EnumCaPstMb
  | -- | Represents the JSON value @"ca_pst_sk"@
    InvoicesResourceInvoiceTaxIdType'EnumCaPstSk
  | -- | Represents the JSON value @"ca_qst"@
    InvoicesResourceInvoiceTaxIdType'EnumCaQst
  | -- | Represents the JSON value @"ch_vat"@
    InvoicesResourceInvoiceTaxIdType'EnumChVat
  | -- | Represents the JSON value @"cl_tin"@
    InvoicesResourceInvoiceTaxIdType'EnumClTin
  | -- | Represents the JSON value @"cn_tin"@
    InvoicesResourceInvoiceTaxIdType'EnumCnTin
  | -- | Represents the JSON value @"co_nit"@
    InvoicesResourceInvoiceTaxIdType'EnumCoNit
  | -- | Represents the JSON value @"cr_tin"@
    InvoicesResourceInvoiceTaxIdType'EnumCrTin
  | -- | Represents the JSON value @"do_rcn"@
    InvoicesResourceInvoiceTaxIdType'EnumDoRcn
  | -- | Represents the JSON value @"ec_ruc"@
    InvoicesResourceInvoiceTaxIdType'EnumEcRuc
  | -- | Represents the JSON value @"eg_tin"@
    InvoicesResourceInvoiceTaxIdType'EnumEgTin
  | -- | Represents the JSON value @"es_cif"@
    InvoicesResourceInvoiceTaxIdType'EnumEsCif
  | -- | Represents the JSON value @"eu_oss_vat"@
    InvoicesResourceInvoiceTaxIdType'EnumEuOssVat
  | -- | Represents the JSON value @"eu_vat"@
    InvoicesResourceInvoiceTaxIdType'EnumEuVat
  | -- | Represents the JSON value @"gb_vat"@
    InvoicesResourceInvoiceTaxIdType'EnumGbVat
  | -- | Represents the JSON value @"ge_vat"@
    InvoicesResourceInvoiceTaxIdType'EnumGeVat
  | -- | Represents the JSON value @"hk_br"@
    InvoicesResourceInvoiceTaxIdType'EnumHkBr
  | -- | Represents the JSON value @"hu_tin"@
    InvoicesResourceInvoiceTaxIdType'EnumHuTin
  | -- | Represents the JSON value @"id_npwp"@
    InvoicesResourceInvoiceTaxIdType'EnumIdNpwp
  | -- | Represents the JSON value @"il_vat"@
    InvoicesResourceInvoiceTaxIdType'EnumIlVat
  | -- | Represents the JSON value @"in_gst"@
    InvoicesResourceInvoiceTaxIdType'EnumInGst
  | -- | Represents the JSON value @"is_vat"@
    InvoicesResourceInvoiceTaxIdType'EnumIsVat
  | -- | Represents the JSON value @"jp_cn"@
    InvoicesResourceInvoiceTaxIdType'EnumJpCn
  | -- | Represents the JSON value @"jp_rn"@
    InvoicesResourceInvoiceTaxIdType'EnumJpRn
  | -- | Represents the JSON value @"jp_trn"@
    InvoicesResourceInvoiceTaxIdType'EnumJpTrn
  | -- | Represents the JSON value @"ke_pin"@
    InvoicesResourceInvoiceTaxIdType'EnumKePin
  | -- | Represents the JSON value @"kr_brn"@
    InvoicesResourceInvoiceTaxIdType'EnumKrBrn
  | -- | Represents the JSON value @"li_uid"@
    InvoicesResourceInvoiceTaxIdType'EnumLiUid
  | -- | Represents the JSON value @"mx_rfc"@
    InvoicesResourceInvoiceTaxIdType'EnumMxRfc
  | -- | Represents the JSON value @"my_frp"@
    InvoicesResourceInvoiceTaxIdType'EnumMyFrp
  | -- | Represents the JSON value @"my_itn"@
    InvoicesResourceInvoiceTaxIdType'EnumMyItn
  | -- | Represents the JSON value @"my_sst"@
    InvoicesResourceInvoiceTaxIdType'EnumMySst
  | -- | Represents the JSON value @"no_vat"@
    InvoicesResourceInvoiceTaxIdType'EnumNoVat
  | -- | Represents the JSON value @"nz_gst"@
    InvoicesResourceInvoiceTaxIdType'EnumNzGst
  | -- | Represents the JSON value @"pe_ruc"@
    InvoicesResourceInvoiceTaxIdType'EnumPeRuc
  | -- | Represents the JSON value @"ph_tin"@
    InvoicesResourceInvoiceTaxIdType'EnumPhTin
  | -- | Represents the JSON value @"ro_tin"@
    InvoicesResourceInvoiceTaxIdType'EnumRoTin
  | -- | Represents the JSON value @"rs_pib"@
    InvoicesResourceInvoiceTaxIdType'EnumRsPib
  | -- | Represents the JSON value @"ru_inn"@
    InvoicesResourceInvoiceTaxIdType'EnumRuInn
  | -- | Represents the JSON value @"ru_kpp"@
    InvoicesResourceInvoiceTaxIdType'EnumRuKpp
  | -- | Represents the JSON value @"sa_vat"@
    InvoicesResourceInvoiceTaxIdType'EnumSaVat
  | -- | Represents the JSON value @"sg_gst"@
    InvoicesResourceInvoiceTaxIdType'EnumSgGst
  | -- | Represents the JSON value @"sg_uen"@
    InvoicesResourceInvoiceTaxIdType'EnumSgUen
  | -- | Represents the JSON value @"si_tin"@
    InvoicesResourceInvoiceTaxIdType'EnumSiTin
  | -- | Represents the JSON value @"sv_nit"@
    InvoicesResourceInvoiceTaxIdType'EnumSvNit
  | -- | Represents the JSON value @"th_vat"@
    InvoicesResourceInvoiceTaxIdType'EnumThVat
  | -- | Represents the JSON value @"tr_tin"@
    InvoicesResourceInvoiceTaxIdType'EnumTrTin
  | -- | Represents the JSON value @"tw_vat"@
    InvoicesResourceInvoiceTaxIdType'EnumTwVat
  | -- | Represents the JSON value @"ua_vat"@
    InvoicesResourceInvoiceTaxIdType'EnumUaVat
  | -- | Represents the JSON value @"unknown"@
    InvoicesResourceInvoiceTaxIdType'EnumUnknown
  | -- | Represents the JSON value @"us_ein"@
    InvoicesResourceInvoiceTaxIdType'EnumUsEin
  | -- | Represents the JSON value @"uy_ruc"@
    InvoicesResourceInvoiceTaxIdType'EnumUyRuc
  | -- | Represents the JSON value @"ve_rif"@
    InvoicesResourceInvoiceTaxIdType'EnumVeRif
  | -- | Represents the JSON value @"vn_tin"@
    InvoicesResourceInvoiceTaxIdType'EnumVnTin
  | -- | Represents the JSON value @"za_vat"@
    InvoicesResourceInvoiceTaxIdType'EnumZaVat
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON InvoicesResourceInvoiceTaxIdType' where
  toJSON (InvoicesResourceInvoiceTaxIdType'Other val) = val
  toJSON (InvoicesResourceInvoiceTaxIdType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumAdNrt) = "ad_nrt"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumAeTrn) = "ae_trn"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumArCuit) = "ar_cuit"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumAuAbn) = "au_abn"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumAuArn) = "au_arn"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumBgUic) = "bg_uic"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumBoTin) = "bo_tin"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumBrCnpj) = "br_cnpj"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumBrCpf) = "br_cpf"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumCaBn) = "ca_bn"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumCaGstHst) = "ca_gst_hst"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumCaPstBc) = "ca_pst_bc"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumCaPstMb) = "ca_pst_mb"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumCaPstSk) = "ca_pst_sk"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumCaQst) = "ca_qst"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumChVat) = "ch_vat"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumClTin) = "cl_tin"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumCnTin) = "cn_tin"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumCoNit) = "co_nit"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumCrTin) = "cr_tin"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumDoRcn) = "do_rcn"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumEcRuc) = "ec_ruc"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumEgTin) = "eg_tin"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumEsCif) = "es_cif"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumEuOssVat) = "eu_oss_vat"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumEuVat) = "eu_vat"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumGbVat) = "gb_vat"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumGeVat) = "ge_vat"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumHkBr) = "hk_br"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumHuTin) = "hu_tin"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumIdNpwp) = "id_npwp"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumIlVat) = "il_vat"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumInGst) = "in_gst"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumIsVat) = "is_vat"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumJpCn) = "jp_cn"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumJpRn) = "jp_rn"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumJpTrn) = "jp_trn"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumKePin) = "ke_pin"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumKrBrn) = "kr_brn"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumLiUid) = "li_uid"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumMxRfc) = "mx_rfc"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumMyFrp) = "my_frp"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumMyItn) = "my_itn"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumMySst) = "my_sst"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumNoVat) = "no_vat"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumNzGst) = "nz_gst"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumPeRuc) = "pe_ruc"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumPhTin) = "ph_tin"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumRoTin) = "ro_tin"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumRsPib) = "rs_pib"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumRuInn) = "ru_inn"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumRuKpp) = "ru_kpp"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumSaVat) = "sa_vat"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumSgGst) = "sg_gst"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumSgUen) = "sg_uen"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumSiTin) = "si_tin"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumSvNit) = "sv_nit"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumThVat) = "th_vat"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumTrTin) = "tr_tin"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumTwVat) = "tw_vat"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumUaVat) = "ua_vat"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumUnknown) = "unknown"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumUsEin) = "us_ein"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumUyRuc) = "uy_ruc"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumVeRif) = "ve_rif"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumVnTin) = "vn_tin"
  toJSON (InvoicesResourceInvoiceTaxIdType'EnumZaVat) = "za_vat"

instance Data.Aeson.Types.FromJSON.FromJSON InvoicesResourceInvoiceTaxIdType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "ad_nrt" -> InvoicesResourceInvoiceTaxIdType'EnumAdNrt
            | val GHC.Classes.== "ae_trn" -> InvoicesResourceInvoiceTaxIdType'EnumAeTrn
            | val GHC.Classes.== "ar_cuit" -> InvoicesResourceInvoiceTaxIdType'EnumArCuit
            | val GHC.Classes.== "au_abn" -> InvoicesResourceInvoiceTaxIdType'EnumAuAbn
            | val GHC.Classes.== "au_arn" -> InvoicesResourceInvoiceTaxIdType'EnumAuArn
            | val GHC.Classes.== "bg_uic" -> InvoicesResourceInvoiceTaxIdType'EnumBgUic
            | val GHC.Classes.== "bo_tin" -> InvoicesResourceInvoiceTaxIdType'EnumBoTin
            | val GHC.Classes.== "br_cnpj" -> InvoicesResourceInvoiceTaxIdType'EnumBrCnpj
            | val GHC.Classes.== "br_cpf" -> InvoicesResourceInvoiceTaxIdType'EnumBrCpf
            | val GHC.Classes.== "ca_bn" -> InvoicesResourceInvoiceTaxIdType'EnumCaBn
            | val GHC.Classes.== "ca_gst_hst" -> InvoicesResourceInvoiceTaxIdType'EnumCaGstHst
            | val GHC.Classes.== "ca_pst_bc" -> InvoicesResourceInvoiceTaxIdType'EnumCaPstBc
            | val GHC.Classes.== "ca_pst_mb" -> InvoicesResourceInvoiceTaxIdType'EnumCaPstMb
            | val GHC.Classes.== "ca_pst_sk" -> InvoicesResourceInvoiceTaxIdType'EnumCaPstSk
            | val GHC.Classes.== "ca_qst" -> InvoicesResourceInvoiceTaxIdType'EnumCaQst
            | val GHC.Classes.== "ch_vat" -> InvoicesResourceInvoiceTaxIdType'EnumChVat
            | val GHC.Classes.== "cl_tin" -> InvoicesResourceInvoiceTaxIdType'EnumClTin
            | val GHC.Classes.== "cn_tin" -> InvoicesResourceInvoiceTaxIdType'EnumCnTin
            | val GHC.Classes.== "co_nit" -> InvoicesResourceInvoiceTaxIdType'EnumCoNit
            | val GHC.Classes.== "cr_tin" -> InvoicesResourceInvoiceTaxIdType'EnumCrTin
            | val GHC.Classes.== "do_rcn" -> InvoicesResourceInvoiceTaxIdType'EnumDoRcn
            | val GHC.Classes.== "ec_ruc" -> InvoicesResourceInvoiceTaxIdType'EnumEcRuc
            | val GHC.Classes.== "eg_tin" -> InvoicesResourceInvoiceTaxIdType'EnumEgTin
            | val GHC.Classes.== "es_cif" -> InvoicesResourceInvoiceTaxIdType'EnumEsCif
            | val GHC.Classes.== "eu_oss_vat" -> InvoicesResourceInvoiceTaxIdType'EnumEuOssVat
            | val GHC.Classes.== "eu_vat" -> InvoicesResourceInvoiceTaxIdType'EnumEuVat
            | val GHC.Classes.== "gb_vat" -> InvoicesResourceInvoiceTaxIdType'EnumGbVat
            | val GHC.Classes.== "ge_vat" -> InvoicesResourceInvoiceTaxIdType'EnumGeVat
            | val GHC.Classes.== "hk_br" -> InvoicesResourceInvoiceTaxIdType'EnumHkBr
            | val GHC.Classes.== "hu_tin" -> InvoicesResourceInvoiceTaxIdType'EnumHuTin
            | val GHC.Classes.== "id_npwp" -> InvoicesResourceInvoiceTaxIdType'EnumIdNpwp
            | val GHC.Classes.== "il_vat" -> InvoicesResourceInvoiceTaxIdType'EnumIlVat
            | val GHC.Classes.== "in_gst" -> InvoicesResourceInvoiceTaxIdType'EnumInGst
            | val GHC.Classes.== "is_vat" -> InvoicesResourceInvoiceTaxIdType'EnumIsVat
            | val GHC.Classes.== "jp_cn" -> InvoicesResourceInvoiceTaxIdType'EnumJpCn
            | val GHC.Classes.== "jp_rn" -> InvoicesResourceInvoiceTaxIdType'EnumJpRn
            | val GHC.Classes.== "jp_trn" -> InvoicesResourceInvoiceTaxIdType'EnumJpTrn
            | val GHC.Classes.== "ke_pin" -> InvoicesResourceInvoiceTaxIdType'EnumKePin
            | val GHC.Classes.== "kr_brn" -> InvoicesResourceInvoiceTaxIdType'EnumKrBrn
            | val GHC.Classes.== "li_uid" -> InvoicesResourceInvoiceTaxIdType'EnumLiUid
            | val GHC.Classes.== "mx_rfc" -> InvoicesResourceInvoiceTaxIdType'EnumMxRfc
            | val GHC.Classes.== "my_frp" -> InvoicesResourceInvoiceTaxIdType'EnumMyFrp
            | val GHC.Classes.== "my_itn" -> InvoicesResourceInvoiceTaxIdType'EnumMyItn
            | val GHC.Classes.== "my_sst" -> InvoicesResourceInvoiceTaxIdType'EnumMySst
            | val GHC.Classes.== "no_vat" -> InvoicesResourceInvoiceTaxIdType'EnumNoVat
            | val GHC.Classes.== "nz_gst" -> InvoicesResourceInvoiceTaxIdType'EnumNzGst
            | val GHC.Classes.== "pe_ruc" -> InvoicesResourceInvoiceTaxIdType'EnumPeRuc
            | val GHC.Classes.== "ph_tin" -> InvoicesResourceInvoiceTaxIdType'EnumPhTin
            | val GHC.Classes.== "ro_tin" -> InvoicesResourceInvoiceTaxIdType'EnumRoTin
            | val GHC.Classes.== "rs_pib" -> InvoicesResourceInvoiceTaxIdType'EnumRsPib
            | val GHC.Classes.== "ru_inn" -> InvoicesResourceInvoiceTaxIdType'EnumRuInn
            | val GHC.Classes.== "ru_kpp" -> InvoicesResourceInvoiceTaxIdType'EnumRuKpp
            | val GHC.Classes.== "sa_vat" -> InvoicesResourceInvoiceTaxIdType'EnumSaVat
            | val GHC.Classes.== "sg_gst" -> InvoicesResourceInvoiceTaxIdType'EnumSgGst
            | val GHC.Classes.== "sg_uen" -> InvoicesResourceInvoiceTaxIdType'EnumSgUen
            | val GHC.Classes.== "si_tin" -> InvoicesResourceInvoiceTaxIdType'EnumSiTin
            | val GHC.Classes.== "sv_nit" -> InvoicesResourceInvoiceTaxIdType'EnumSvNit
            | val GHC.Classes.== "th_vat" -> InvoicesResourceInvoiceTaxIdType'EnumThVat
            | val GHC.Classes.== "tr_tin" -> InvoicesResourceInvoiceTaxIdType'EnumTrTin
            | val GHC.Classes.== "tw_vat" -> InvoicesResourceInvoiceTaxIdType'EnumTwVat
            | val GHC.Classes.== "ua_vat" -> InvoicesResourceInvoiceTaxIdType'EnumUaVat
            | val GHC.Classes.== "unknown" -> InvoicesResourceInvoiceTaxIdType'EnumUnknown
            | val GHC.Classes.== "us_ein" -> InvoicesResourceInvoiceTaxIdType'EnumUsEin
            | val GHC.Classes.== "uy_ruc" -> InvoicesResourceInvoiceTaxIdType'EnumUyRuc
            | val GHC.Classes.== "ve_rif" -> InvoicesResourceInvoiceTaxIdType'EnumVeRif
            | val GHC.Classes.== "vn_tin" -> InvoicesResourceInvoiceTaxIdType'EnumVnTin
            | val GHC.Classes.== "za_vat" -> InvoicesResourceInvoiceTaxIdType'EnumZaVat
            | GHC.Base.otherwise -> InvoicesResourceInvoiceTaxIdType'Other val
      )
