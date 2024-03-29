{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentPagesCheckoutSessionTaxId
module StripeAPI.Types.PaymentPagesCheckoutSessionTaxId where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_pages_checkout_session_tax_id@ in the specification.
data PaymentPagesCheckoutSessionTaxId = PaymentPagesCheckoutSessionTaxId
  { -- | type: The type of the tax ID, one of \`eu_vat\`, \`br_cnpj\`, \`br_cpf\`, \`eu_oss_vat\`, \`gb_vat\`, \`nz_gst\`, \`au_abn\`, \`au_arn\`, \`in_gst\`, \`no_vat\`, \`za_vat\`, \`ch_vat\`, \`mx_rfc\`, \`sg_uen\`, \`ru_inn\`, \`ru_kpp\`, \`ca_bn\`, \`hk_br\`, \`es_cif\`, \`tw_vat\`, \`th_vat\`, \`jp_cn\`, \`jp_rn\`, \`li_uid\`, \`my_itn\`, \`us_ein\`, \`kr_brn\`, \`ca_qst\`, \`ca_gst_hst\`, \`ca_pst_bc\`, \`ca_pst_mb\`, \`ca_pst_sk\`, \`my_sst\`, \`sg_gst\`, \`ae_trn\`, \`cl_tin\`, \`sa_vat\`, \`id_npwp\`, \`my_frp\`, \`il_vat\`, \`ge_vat\`, \`ua_vat\`, \`is_vat\`, \`bg_uic\`, \`hu_tin\`, \`si_tin\`, or \`unknown\`
    paymentPagesCheckoutSessionTaxIdType :: PaymentPagesCheckoutSessionTaxIdType',
    -- | value: The value of the tax ID.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentPagesCheckoutSessionTaxIdValue :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentPagesCheckoutSessionTaxId where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["type" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionTaxIdType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("value" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionTaxIdValue obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["type" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionTaxIdType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("value" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionTaxIdValue obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentPagesCheckoutSessionTaxId where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentPagesCheckoutSessionTaxId" (\obj -> (GHC.Base.pure PaymentPagesCheckoutSessionTaxId GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "value"))

-- | Create a new 'PaymentPagesCheckoutSessionTaxId' with all required fields.
mkPaymentPagesCheckoutSessionTaxId ::
  -- | 'paymentPagesCheckoutSessionTaxIdType'
  PaymentPagesCheckoutSessionTaxIdType' ->
  PaymentPagesCheckoutSessionTaxId
mkPaymentPagesCheckoutSessionTaxId paymentPagesCheckoutSessionTaxIdType =
  PaymentPagesCheckoutSessionTaxId
    { paymentPagesCheckoutSessionTaxIdType = paymentPagesCheckoutSessionTaxIdType,
      paymentPagesCheckoutSessionTaxIdValue = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.payment_pages_checkout_session_tax_id.properties.type@ in the specification.
--
-- The type of the tax ID, one of \`eu_vat\`, \`br_cnpj\`, \`br_cpf\`, \`eu_oss_vat\`, \`gb_vat\`, \`nz_gst\`, \`au_abn\`, \`au_arn\`, \`in_gst\`, \`no_vat\`, \`za_vat\`, \`ch_vat\`, \`mx_rfc\`, \`sg_uen\`, \`ru_inn\`, \`ru_kpp\`, \`ca_bn\`, \`hk_br\`, \`es_cif\`, \`tw_vat\`, \`th_vat\`, \`jp_cn\`, \`jp_rn\`, \`li_uid\`, \`my_itn\`, \`us_ein\`, \`kr_brn\`, \`ca_qst\`, \`ca_gst_hst\`, \`ca_pst_bc\`, \`ca_pst_mb\`, \`ca_pst_sk\`, \`my_sst\`, \`sg_gst\`, \`ae_trn\`, \`cl_tin\`, \`sa_vat\`, \`id_npwp\`, \`my_frp\`, \`il_vat\`, \`ge_vat\`, \`ua_vat\`, \`is_vat\`, \`bg_uic\`, \`hu_tin\`, \`si_tin\`, or \`unknown\`
data PaymentPagesCheckoutSessionTaxIdType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentPagesCheckoutSessionTaxIdType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentPagesCheckoutSessionTaxIdType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"ae_trn"@
    PaymentPagesCheckoutSessionTaxIdType'EnumAeTrn
  | -- | Represents the JSON value @"au_abn"@
    PaymentPagesCheckoutSessionTaxIdType'EnumAuAbn
  | -- | Represents the JSON value @"au_arn"@
    PaymentPagesCheckoutSessionTaxIdType'EnumAuArn
  | -- | Represents the JSON value @"bg_uic"@
    PaymentPagesCheckoutSessionTaxIdType'EnumBgUic
  | -- | Represents the JSON value @"br_cnpj"@
    PaymentPagesCheckoutSessionTaxIdType'EnumBrCnpj
  | -- | Represents the JSON value @"br_cpf"@
    PaymentPagesCheckoutSessionTaxIdType'EnumBrCpf
  | -- | Represents the JSON value @"ca_bn"@
    PaymentPagesCheckoutSessionTaxIdType'EnumCaBn
  | -- | Represents the JSON value @"ca_gst_hst"@
    PaymentPagesCheckoutSessionTaxIdType'EnumCaGstHst
  | -- | Represents the JSON value @"ca_pst_bc"@
    PaymentPagesCheckoutSessionTaxIdType'EnumCaPstBc
  | -- | Represents the JSON value @"ca_pst_mb"@
    PaymentPagesCheckoutSessionTaxIdType'EnumCaPstMb
  | -- | Represents the JSON value @"ca_pst_sk"@
    PaymentPagesCheckoutSessionTaxIdType'EnumCaPstSk
  | -- | Represents the JSON value @"ca_qst"@
    PaymentPagesCheckoutSessionTaxIdType'EnumCaQst
  | -- | Represents the JSON value @"ch_vat"@
    PaymentPagesCheckoutSessionTaxIdType'EnumChVat
  | -- | Represents the JSON value @"cl_tin"@
    PaymentPagesCheckoutSessionTaxIdType'EnumClTin
  | -- | Represents the JSON value @"es_cif"@
    PaymentPagesCheckoutSessionTaxIdType'EnumEsCif
  | -- | Represents the JSON value @"eu_oss_vat"@
    PaymentPagesCheckoutSessionTaxIdType'EnumEuOssVat
  | -- | Represents the JSON value @"eu_vat"@
    PaymentPagesCheckoutSessionTaxIdType'EnumEuVat
  | -- | Represents the JSON value @"gb_vat"@
    PaymentPagesCheckoutSessionTaxIdType'EnumGbVat
  | -- | Represents the JSON value @"ge_vat"@
    PaymentPagesCheckoutSessionTaxIdType'EnumGeVat
  | -- | Represents the JSON value @"hk_br"@
    PaymentPagesCheckoutSessionTaxIdType'EnumHkBr
  | -- | Represents the JSON value @"hu_tin"@
    PaymentPagesCheckoutSessionTaxIdType'EnumHuTin
  | -- | Represents the JSON value @"id_npwp"@
    PaymentPagesCheckoutSessionTaxIdType'EnumIdNpwp
  | -- | Represents the JSON value @"il_vat"@
    PaymentPagesCheckoutSessionTaxIdType'EnumIlVat
  | -- | Represents the JSON value @"in_gst"@
    PaymentPagesCheckoutSessionTaxIdType'EnumInGst
  | -- | Represents the JSON value @"is_vat"@
    PaymentPagesCheckoutSessionTaxIdType'EnumIsVat
  | -- | Represents the JSON value @"jp_cn"@
    PaymentPagesCheckoutSessionTaxIdType'EnumJpCn
  | -- | Represents the JSON value @"jp_rn"@
    PaymentPagesCheckoutSessionTaxIdType'EnumJpRn
  | -- | Represents the JSON value @"kr_brn"@
    PaymentPagesCheckoutSessionTaxIdType'EnumKrBrn
  | -- | Represents the JSON value @"li_uid"@
    PaymentPagesCheckoutSessionTaxIdType'EnumLiUid
  | -- | Represents the JSON value @"mx_rfc"@
    PaymentPagesCheckoutSessionTaxIdType'EnumMxRfc
  | -- | Represents the JSON value @"my_frp"@
    PaymentPagesCheckoutSessionTaxIdType'EnumMyFrp
  | -- | Represents the JSON value @"my_itn"@
    PaymentPagesCheckoutSessionTaxIdType'EnumMyItn
  | -- | Represents the JSON value @"my_sst"@
    PaymentPagesCheckoutSessionTaxIdType'EnumMySst
  | -- | Represents the JSON value @"no_vat"@
    PaymentPagesCheckoutSessionTaxIdType'EnumNoVat
  | -- | Represents the JSON value @"nz_gst"@
    PaymentPagesCheckoutSessionTaxIdType'EnumNzGst
  | -- | Represents the JSON value @"ru_inn"@
    PaymentPagesCheckoutSessionTaxIdType'EnumRuInn
  | -- | Represents the JSON value @"ru_kpp"@
    PaymentPagesCheckoutSessionTaxIdType'EnumRuKpp
  | -- | Represents the JSON value @"sa_vat"@
    PaymentPagesCheckoutSessionTaxIdType'EnumSaVat
  | -- | Represents the JSON value @"sg_gst"@
    PaymentPagesCheckoutSessionTaxIdType'EnumSgGst
  | -- | Represents the JSON value @"sg_uen"@
    PaymentPagesCheckoutSessionTaxIdType'EnumSgUen
  | -- | Represents the JSON value @"si_tin"@
    PaymentPagesCheckoutSessionTaxIdType'EnumSiTin
  | -- | Represents the JSON value @"th_vat"@
    PaymentPagesCheckoutSessionTaxIdType'EnumThVat
  | -- | Represents the JSON value @"tw_vat"@
    PaymentPagesCheckoutSessionTaxIdType'EnumTwVat
  | -- | Represents the JSON value @"ua_vat"@
    PaymentPagesCheckoutSessionTaxIdType'EnumUaVat
  | -- | Represents the JSON value @"unknown"@
    PaymentPagesCheckoutSessionTaxIdType'EnumUnknown
  | -- | Represents the JSON value @"us_ein"@
    PaymentPagesCheckoutSessionTaxIdType'EnumUsEin
  | -- | Represents the JSON value @"za_vat"@
    PaymentPagesCheckoutSessionTaxIdType'EnumZaVat
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentPagesCheckoutSessionTaxIdType' where
  toJSON (PaymentPagesCheckoutSessionTaxIdType'Other val) = val
  toJSON (PaymentPagesCheckoutSessionTaxIdType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumAeTrn) = "ae_trn"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumAuAbn) = "au_abn"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumAuArn) = "au_arn"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumBgUic) = "bg_uic"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumBrCnpj) = "br_cnpj"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumBrCpf) = "br_cpf"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumCaBn) = "ca_bn"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumCaGstHst) = "ca_gst_hst"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumCaPstBc) = "ca_pst_bc"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumCaPstMb) = "ca_pst_mb"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumCaPstSk) = "ca_pst_sk"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumCaQst) = "ca_qst"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumChVat) = "ch_vat"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumClTin) = "cl_tin"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumEsCif) = "es_cif"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumEuOssVat) = "eu_oss_vat"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumEuVat) = "eu_vat"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumGbVat) = "gb_vat"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumGeVat) = "ge_vat"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumHkBr) = "hk_br"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumHuTin) = "hu_tin"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumIdNpwp) = "id_npwp"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumIlVat) = "il_vat"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumInGst) = "in_gst"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumIsVat) = "is_vat"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumJpCn) = "jp_cn"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumJpRn) = "jp_rn"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumKrBrn) = "kr_brn"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumLiUid) = "li_uid"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumMxRfc) = "mx_rfc"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumMyFrp) = "my_frp"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumMyItn) = "my_itn"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumMySst) = "my_sst"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumNoVat) = "no_vat"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumNzGst) = "nz_gst"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumRuInn) = "ru_inn"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumRuKpp) = "ru_kpp"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumSaVat) = "sa_vat"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumSgGst) = "sg_gst"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumSgUen) = "sg_uen"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumSiTin) = "si_tin"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumThVat) = "th_vat"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumTwVat) = "tw_vat"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumUaVat) = "ua_vat"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumUnknown) = "unknown"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumUsEin) = "us_ein"
  toJSON (PaymentPagesCheckoutSessionTaxIdType'EnumZaVat) = "za_vat"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentPagesCheckoutSessionTaxIdType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "ae_trn" -> PaymentPagesCheckoutSessionTaxIdType'EnumAeTrn
            | val GHC.Classes.== "au_abn" -> PaymentPagesCheckoutSessionTaxIdType'EnumAuAbn
            | val GHC.Classes.== "au_arn" -> PaymentPagesCheckoutSessionTaxIdType'EnumAuArn
            | val GHC.Classes.== "bg_uic" -> PaymentPagesCheckoutSessionTaxIdType'EnumBgUic
            | val GHC.Classes.== "br_cnpj" -> PaymentPagesCheckoutSessionTaxIdType'EnumBrCnpj
            | val GHC.Classes.== "br_cpf" -> PaymentPagesCheckoutSessionTaxIdType'EnumBrCpf
            | val GHC.Classes.== "ca_bn" -> PaymentPagesCheckoutSessionTaxIdType'EnumCaBn
            | val GHC.Classes.== "ca_gst_hst" -> PaymentPagesCheckoutSessionTaxIdType'EnumCaGstHst
            | val GHC.Classes.== "ca_pst_bc" -> PaymentPagesCheckoutSessionTaxIdType'EnumCaPstBc
            | val GHC.Classes.== "ca_pst_mb" -> PaymentPagesCheckoutSessionTaxIdType'EnumCaPstMb
            | val GHC.Classes.== "ca_pst_sk" -> PaymentPagesCheckoutSessionTaxIdType'EnumCaPstSk
            | val GHC.Classes.== "ca_qst" -> PaymentPagesCheckoutSessionTaxIdType'EnumCaQst
            | val GHC.Classes.== "ch_vat" -> PaymentPagesCheckoutSessionTaxIdType'EnumChVat
            | val GHC.Classes.== "cl_tin" -> PaymentPagesCheckoutSessionTaxIdType'EnumClTin
            | val GHC.Classes.== "es_cif" -> PaymentPagesCheckoutSessionTaxIdType'EnumEsCif
            | val GHC.Classes.== "eu_oss_vat" -> PaymentPagesCheckoutSessionTaxIdType'EnumEuOssVat
            | val GHC.Classes.== "eu_vat" -> PaymentPagesCheckoutSessionTaxIdType'EnumEuVat
            | val GHC.Classes.== "gb_vat" -> PaymentPagesCheckoutSessionTaxIdType'EnumGbVat
            | val GHC.Classes.== "ge_vat" -> PaymentPagesCheckoutSessionTaxIdType'EnumGeVat
            | val GHC.Classes.== "hk_br" -> PaymentPagesCheckoutSessionTaxIdType'EnumHkBr
            | val GHC.Classes.== "hu_tin" -> PaymentPagesCheckoutSessionTaxIdType'EnumHuTin
            | val GHC.Classes.== "id_npwp" -> PaymentPagesCheckoutSessionTaxIdType'EnumIdNpwp
            | val GHC.Classes.== "il_vat" -> PaymentPagesCheckoutSessionTaxIdType'EnumIlVat
            | val GHC.Classes.== "in_gst" -> PaymentPagesCheckoutSessionTaxIdType'EnumInGst
            | val GHC.Classes.== "is_vat" -> PaymentPagesCheckoutSessionTaxIdType'EnumIsVat
            | val GHC.Classes.== "jp_cn" -> PaymentPagesCheckoutSessionTaxIdType'EnumJpCn
            | val GHC.Classes.== "jp_rn" -> PaymentPagesCheckoutSessionTaxIdType'EnumJpRn
            | val GHC.Classes.== "kr_brn" -> PaymentPagesCheckoutSessionTaxIdType'EnumKrBrn
            | val GHC.Classes.== "li_uid" -> PaymentPagesCheckoutSessionTaxIdType'EnumLiUid
            | val GHC.Classes.== "mx_rfc" -> PaymentPagesCheckoutSessionTaxIdType'EnumMxRfc
            | val GHC.Classes.== "my_frp" -> PaymentPagesCheckoutSessionTaxIdType'EnumMyFrp
            | val GHC.Classes.== "my_itn" -> PaymentPagesCheckoutSessionTaxIdType'EnumMyItn
            | val GHC.Classes.== "my_sst" -> PaymentPagesCheckoutSessionTaxIdType'EnumMySst
            | val GHC.Classes.== "no_vat" -> PaymentPagesCheckoutSessionTaxIdType'EnumNoVat
            | val GHC.Classes.== "nz_gst" -> PaymentPagesCheckoutSessionTaxIdType'EnumNzGst
            | val GHC.Classes.== "ru_inn" -> PaymentPagesCheckoutSessionTaxIdType'EnumRuInn
            | val GHC.Classes.== "ru_kpp" -> PaymentPagesCheckoutSessionTaxIdType'EnumRuKpp
            | val GHC.Classes.== "sa_vat" -> PaymentPagesCheckoutSessionTaxIdType'EnumSaVat
            | val GHC.Classes.== "sg_gst" -> PaymentPagesCheckoutSessionTaxIdType'EnumSgGst
            | val GHC.Classes.== "sg_uen" -> PaymentPagesCheckoutSessionTaxIdType'EnumSgUen
            | val GHC.Classes.== "si_tin" -> PaymentPagesCheckoutSessionTaxIdType'EnumSiTin
            | val GHC.Classes.== "th_vat" -> PaymentPagesCheckoutSessionTaxIdType'EnumThVat
            | val GHC.Classes.== "tw_vat" -> PaymentPagesCheckoutSessionTaxIdType'EnumTwVat
            | val GHC.Classes.== "ua_vat" -> PaymentPagesCheckoutSessionTaxIdType'EnumUaVat
            | val GHC.Classes.== "unknown" -> PaymentPagesCheckoutSessionTaxIdType'EnumUnknown
            | val GHC.Classes.== "us_ein" -> PaymentPagesCheckoutSessionTaxIdType'EnumUsEin
            | val GHC.Classes.== "za_vat" -> PaymentPagesCheckoutSessionTaxIdType'EnumZaVat
            | GHC.Base.otherwise -> PaymentPagesCheckoutSessionTaxIdType'Other val
      )
