{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodDetailsBoleto
module StripeAPI.Types.PaymentMethodDetailsBoleto where

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

-- | Defines the object schema located at @components.schemas.payment_method_details_boleto@ in the specification.
data PaymentMethodDetailsBoleto = PaymentMethodDetailsBoleto
  { -- | tax_id: The tax ID of the customer (CPF for individuals consumers or CNPJ for businesses consumers)
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsBoletoTaxId :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsBoleto where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["tax_id" Data.Aeson.Types.ToJSON..= paymentMethodDetailsBoletoTaxId obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["tax_id" Data.Aeson.Types.ToJSON..= paymentMethodDetailsBoletoTaxId obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsBoleto where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsBoleto" (\obj -> GHC.Base.pure PaymentMethodDetailsBoleto GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tax_id"))

-- | Create a new 'PaymentMethodDetailsBoleto' with all required fields.
mkPaymentMethodDetailsBoleto ::
  -- | 'paymentMethodDetailsBoletoTaxId'
  Data.Text.Internal.Text ->
  PaymentMethodDetailsBoleto
mkPaymentMethodDetailsBoleto paymentMethodDetailsBoletoTaxId = PaymentMethodDetailsBoleto {paymentMethodDetailsBoletoTaxId = paymentMethodDetailsBoletoTaxId}
