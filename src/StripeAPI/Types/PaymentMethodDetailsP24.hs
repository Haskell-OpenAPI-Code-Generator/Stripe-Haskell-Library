{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodDetailsP24
module StripeAPI.Types.PaymentMethodDetailsP24 where

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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_method_details_p24@ in the specification.
data PaymentMethodDetailsP24 = PaymentMethodDetailsP24
  { -- | bank: The customer\'s bank. Can be one of \`ing\`, \`citi_handlowy\`, \`tmobile_usbugi_bankowe\`, \`plus_bank\`, \`etransfer_pocztowy24\`, \`banki_spbdzielcze\`, \`bank_nowy_bfg_sa\`, \`getin_bank\`, \`blik\`, \`noble_pay\`, \`ideabank\`, \`envelobank\`, \`santander_przelew24\`, \`nest_przelew\`, \`mbank_mtransfer\`, \`inteligo\`, \`pbac_z_ipko\`, \`bnp_paribas\`, \`credit_agricole\`, \`toyota_bank\`, \`bank_pekao_sa\`, \`volkswagen_bank\`, \`bank_millennium\`, \`alior_bank\`, or \`boz\`.
    paymentMethodDetailsP24Bank :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodDetailsP24Bank'NonNullable)),
    -- | reference: Unique reference for this Przelewy24 payment.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsP24Reference :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | verified_name: Owner\'s verified full name. Values are verified or provided by Przelewy24 directly
    -- (if supported) at the time of authorization or settlement. They cannot be set or mutated.
    -- Przelewy24 rarely provides this information so the attribute is usually empty.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsP24VerifiedName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsP24 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsP24Bank obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reference" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsP24Reference obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verified_name" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsP24VerifiedName obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsP24Bank obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reference" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsP24Reference obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verified_name" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsP24VerifiedName obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsP24 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsP24" (\obj -> ((GHC.Base.pure PaymentMethodDetailsP24 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bank")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reference")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "verified_name"))

-- | Create a new 'PaymentMethodDetailsP24' with all required fields.
mkPaymentMethodDetailsP24 :: PaymentMethodDetailsP24
mkPaymentMethodDetailsP24 =
  PaymentMethodDetailsP24
    { paymentMethodDetailsP24Bank = GHC.Maybe.Nothing,
      paymentMethodDetailsP24Reference = GHC.Maybe.Nothing,
      paymentMethodDetailsP24VerifiedName = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.payment_method_details_p24.properties.bank@ in the specification.
--
-- The customer\'s bank. Can be one of \`ing\`, \`citi_handlowy\`, \`tmobile_usbugi_bankowe\`, \`plus_bank\`, \`etransfer_pocztowy24\`, \`banki_spbdzielcze\`, \`bank_nowy_bfg_sa\`, \`getin_bank\`, \`blik\`, \`noble_pay\`, \`ideabank\`, \`envelobank\`, \`santander_przelew24\`, \`nest_przelew\`, \`mbank_mtransfer\`, \`inteligo\`, \`pbac_z_ipko\`, \`bnp_paribas\`, \`credit_agricole\`, \`toyota_bank\`, \`bank_pekao_sa\`, \`volkswagen_bank\`, \`bank_millennium\`, \`alior_bank\`, or \`boz\`.
data PaymentMethodDetailsP24Bank'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodDetailsP24Bank'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodDetailsP24Bank'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"alior_bank"@
    PaymentMethodDetailsP24Bank'NonNullableEnumAliorBank
  | -- | Represents the JSON value @"bank_millennium"@
    PaymentMethodDetailsP24Bank'NonNullableEnumBankMillennium
  | -- | Represents the JSON value @"bank_nowy_bfg_sa"@
    PaymentMethodDetailsP24Bank'NonNullableEnumBankNowyBfgSa
  | -- | Represents the JSON value @"bank_pekao_sa"@
    PaymentMethodDetailsP24Bank'NonNullableEnumBankPekaoSa
  | -- | Represents the JSON value @"banki_spbdzielcze"@
    PaymentMethodDetailsP24Bank'NonNullableEnumBankiSpbdzielcze
  | -- | Represents the JSON value @"blik"@
    PaymentMethodDetailsP24Bank'NonNullableEnumBlik
  | -- | Represents the JSON value @"bnp_paribas"@
    PaymentMethodDetailsP24Bank'NonNullableEnumBnpParibas
  | -- | Represents the JSON value @"boz"@
    PaymentMethodDetailsP24Bank'NonNullableEnumBoz
  | -- | Represents the JSON value @"citi_handlowy"@
    PaymentMethodDetailsP24Bank'NonNullableEnumCitiHandlowy
  | -- | Represents the JSON value @"credit_agricole"@
    PaymentMethodDetailsP24Bank'NonNullableEnumCreditAgricole
  | -- | Represents the JSON value @"envelobank"@
    PaymentMethodDetailsP24Bank'NonNullableEnumEnvelobank
  | -- | Represents the JSON value @"etransfer_pocztowy24"@
    PaymentMethodDetailsP24Bank'NonNullableEnumEtransferPocztowy24
  | -- | Represents the JSON value @"getin_bank"@
    PaymentMethodDetailsP24Bank'NonNullableEnumGetinBank
  | -- | Represents the JSON value @"ideabank"@
    PaymentMethodDetailsP24Bank'NonNullableEnumIdeabank
  | -- | Represents the JSON value @"ing"@
    PaymentMethodDetailsP24Bank'NonNullableEnumIng
  | -- | Represents the JSON value @"inteligo"@
    PaymentMethodDetailsP24Bank'NonNullableEnumInteligo
  | -- | Represents the JSON value @"mbank_mtransfer"@
    PaymentMethodDetailsP24Bank'NonNullableEnumMbankMtransfer
  | -- | Represents the JSON value @"nest_przelew"@
    PaymentMethodDetailsP24Bank'NonNullableEnumNestPrzelew
  | -- | Represents the JSON value @"noble_pay"@
    PaymentMethodDetailsP24Bank'NonNullableEnumNoblePay
  | -- | Represents the JSON value @"pbac_z_ipko"@
    PaymentMethodDetailsP24Bank'NonNullableEnumPbacZIpko
  | -- | Represents the JSON value @"plus_bank"@
    PaymentMethodDetailsP24Bank'NonNullableEnumPlusBank
  | -- | Represents the JSON value @"santander_przelew24"@
    PaymentMethodDetailsP24Bank'NonNullableEnumSantanderPrzelew24
  | -- | Represents the JSON value @"tmobile_usbugi_bankowe"@
    PaymentMethodDetailsP24Bank'NonNullableEnumTmobileUsbugiBankowe
  | -- | Represents the JSON value @"toyota_bank"@
    PaymentMethodDetailsP24Bank'NonNullableEnumToyotaBank
  | -- | Represents the JSON value @"volkswagen_bank"@
    PaymentMethodDetailsP24Bank'NonNullableEnumVolkswagenBank
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsP24Bank'NonNullable where
  toJSON (PaymentMethodDetailsP24Bank'NonNullableOther val) = val
  toJSON (PaymentMethodDetailsP24Bank'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodDetailsP24Bank'NonNullableEnumAliorBank) = "alior_bank"
  toJSON (PaymentMethodDetailsP24Bank'NonNullableEnumBankMillennium) = "bank_millennium"
  toJSON (PaymentMethodDetailsP24Bank'NonNullableEnumBankNowyBfgSa) = "bank_nowy_bfg_sa"
  toJSON (PaymentMethodDetailsP24Bank'NonNullableEnumBankPekaoSa) = "bank_pekao_sa"
  toJSON (PaymentMethodDetailsP24Bank'NonNullableEnumBankiSpbdzielcze) = "banki_spbdzielcze"
  toJSON (PaymentMethodDetailsP24Bank'NonNullableEnumBlik) = "blik"
  toJSON (PaymentMethodDetailsP24Bank'NonNullableEnumBnpParibas) = "bnp_paribas"
  toJSON (PaymentMethodDetailsP24Bank'NonNullableEnumBoz) = "boz"
  toJSON (PaymentMethodDetailsP24Bank'NonNullableEnumCitiHandlowy) = "citi_handlowy"
  toJSON (PaymentMethodDetailsP24Bank'NonNullableEnumCreditAgricole) = "credit_agricole"
  toJSON (PaymentMethodDetailsP24Bank'NonNullableEnumEnvelobank) = "envelobank"
  toJSON (PaymentMethodDetailsP24Bank'NonNullableEnumEtransferPocztowy24) = "etransfer_pocztowy24"
  toJSON (PaymentMethodDetailsP24Bank'NonNullableEnumGetinBank) = "getin_bank"
  toJSON (PaymentMethodDetailsP24Bank'NonNullableEnumIdeabank) = "ideabank"
  toJSON (PaymentMethodDetailsP24Bank'NonNullableEnumIng) = "ing"
  toJSON (PaymentMethodDetailsP24Bank'NonNullableEnumInteligo) = "inteligo"
  toJSON (PaymentMethodDetailsP24Bank'NonNullableEnumMbankMtransfer) = "mbank_mtransfer"
  toJSON (PaymentMethodDetailsP24Bank'NonNullableEnumNestPrzelew) = "nest_przelew"
  toJSON (PaymentMethodDetailsP24Bank'NonNullableEnumNoblePay) = "noble_pay"
  toJSON (PaymentMethodDetailsP24Bank'NonNullableEnumPbacZIpko) = "pbac_z_ipko"
  toJSON (PaymentMethodDetailsP24Bank'NonNullableEnumPlusBank) = "plus_bank"
  toJSON (PaymentMethodDetailsP24Bank'NonNullableEnumSantanderPrzelew24) = "santander_przelew24"
  toJSON (PaymentMethodDetailsP24Bank'NonNullableEnumTmobileUsbugiBankowe) = "tmobile_usbugi_bankowe"
  toJSON (PaymentMethodDetailsP24Bank'NonNullableEnumToyotaBank) = "toyota_bank"
  toJSON (PaymentMethodDetailsP24Bank'NonNullableEnumVolkswagenBank) = "volkswagen_bank"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsP24Bank'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "alior_bank" -> PaymentMethodDetailsP24Bank'NonNullableEnumAliorBank
            | val GHC.Classes.== "bank_millennium" -> PaymentMethodDetailsP24Bank'NonNullableEnumBankMillennium
            | val GHC.Classes.== "bank_nowy_bfg_sa" -> PaymentMethodDetailsP24Bank'NonNullableEnumBankNowyBfgSa
            | val GHC.Classes.== "bank_pekao_sa" -> PaymentMethodDetailsP24Bank'NonNullableEnumBankPekaoSa
            | val GHC.Classes.== "banki_spbdzielcze" -> PaymentMethodDetailsP24Bank'NonNullableEnumBankiSpbdzielcze
            | val GHC.Classes.== "blik" -> PaymentMethodDetailsP24Bank'NonNullableEnumBlik
            | val GHC.Classes.== "bnp_paribas" -> PaymentMethodDetailsP24Bank'NonNullableEnumBnpParibas
            | val GHC.Classes.== "boz" -> PaymentMethodDetailsP24Bank'NonNullableEnumBoz
            | val GHC.Classes.== "citi_handlowy" -> PaymentMethodDetailsP24Bank'NonNullableEnumCitiHandlowy
            | val GHC.Classes.== "credit_agricole" -> PaymentMethodDetailsP24Bank'NonNullableEnumCreditAgricole
            | val GHC.Classes.== "envelobank" -> PaymentMethodDetailsP24Bank'NonNullableEnumEnvelobank
            | val GHC.Classes.== "etransfer_pocztowy24" -> PaymentMethodDetailsP24Bank'NonNullableEnumEtransferPocztowy24
            | val GHC.Classes.== "getin_bank" -> PaymentMethodDetailsP24Bank'NonNullableEnumGetinBank
            | val GHC.Classes.== "ideabank" -> PaymentMethodDetailsP24Bank'NonNullableEnumIdeabank
            | val GHC.Classes.== "ing" -> PaymentMethodDetailsP24Bank'NonNullableEnumIng
            | val GHC.Classes.== "inteligo" -> PaymentMethodDetailsP24Bank'NonNullableEnumInteligo
            | val GHC.Classes.== "mbank_mtransfer" -> PaymentMethodDetailsP24Bank'NonNullableEnumMbankMtransfer
            | val GHC.Classes.== "nest_przelew" -> PaymentMethodDetailsP24Bank'NonNullableEnumNestPrzelew
            | val GHC.Classes.== "noble_pay" -> PaymentMethodDetailsP24Bank'NonNullableEnumNoblePay
            | val GHC.Classes.== "pbac_z_ipko" -> PaymentMethodDetailsP24Bank'NonNullableEnumPbacZIpko
            | val GHC.Classes.== "plus_bank" -> PaymentMethodDetailsP24Bank'NonNullableEnumPlusBank
            | val GHC.Classes.== "santander_przelew24" -> PaymentMethodDetailsP24Bank'NonNullableEnumSantanderPrzelew24
            | val GHC.Classes.== "tmobile_usbugi_bankowe" -> PaymentMethodDetailsP24Bank'NonNullableEnumTmobileUsbugiBankowe
            | val GHC.Classes.== "toyota_bank" -> PaymentMethodDetailsP24Bank'NonNullableEnumToyotaBank
            | val GHC.Classes.== "volkswagen_bank" -> PaymentMethodDetailsP24Bank'NonNullableEnumVolkswagenBank
            | GHC.Base.otherwise -> PaymentMethodDetailsP24Bank'NonNullableOther val
      )
