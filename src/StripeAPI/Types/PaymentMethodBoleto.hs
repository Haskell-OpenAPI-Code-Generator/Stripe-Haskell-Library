{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodBoleto
module StripeAPI.Types.PaymentMethodBoleto where

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

-- | Defines the object schema located at @components.schemas.payment_method_boleto@ in the specification.
data PaymentMethodBoleto = PaymentMethodBoleto
  { -- | tax_id: Uniquely identifies the customer tax id (CNPJ or CPF)
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodBoletoTaxId :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodBoleto where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["tax_id" Data.Aeson.Types.ToJSON..= paymentMethodBoletoTaxId obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["tax_id" Data.Aeson.Types.ToJSON..= paymentMethodBoletoTaxId obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodBoleto where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodBoleto" (\obj -> GHC.Base.pure PaymentMethodBoleto GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tax_id"))

-- | Create a new 'PaymentMethodBoleto' with all required fields.
mkPaymentMethodBoleto ::
  -- | 'paymentMethodBoletoTaxId'
  Data.Text.Internal.Text ->
  PaymentMethodBoleto
mkPaymentMethodBoleto paymentMethodBoletoTaxId = PaymentMethodBoleto {paymentMethodBoletoTaxId = paymentMethodBoletoTaxId}
