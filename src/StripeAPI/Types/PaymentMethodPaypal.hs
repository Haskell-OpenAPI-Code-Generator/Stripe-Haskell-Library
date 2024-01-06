{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodPaypal
module StripeAPI.Types.PaymentMethodPaypal where

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

-- | Defines the object schema located at @components.schemas.payment_method_paypal@ in the specification.
data PaymentMethodPaypal = PaymentMethodPaypal
  { -- | payer_email: Owner\'s email. Values are provided by PayPal directly
    -- (if supported) at the time of authorization or settlement. They cannot be set or mutated.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodPaypalPayerEmail :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | payer_id: PayPal account PayerID. This identifier uniquely identifies the PayPal customer.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodPaypalPayerId :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodPaypal where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payer_email" Data.Aeson.Types.ToJSON..=)) (paymentMethodPaypalPayerEmail obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payer_id" Data.Aeson.Types.ToJSON..=)) (paymentMethodPaypalPayerId obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payer_email" Data.Aeson.Types.ToJSON..=)) (paymentMethodPaypalPayerEmail obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payer_id" Data.Aeson.Types.ToJSON..=)) (paymentMethodPaypalPayerId obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodPaypal where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodPaypal" (\obj -> (GHC.Base.pure PaymentMethodPaypal GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "payer_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "payer_id"))

-- | Create a new 'PaymentMethodPaypal' with all required fields.
mkPaymentMethodPaypal :: PaymentMethodPaypal
mkPaymentMethodPaypal =
  PaymentMethodPaypal
    { paymentMethodPaypalPayerEmail = GHC.Maybe.Nothing,
      paymentMethodPaypalPayerId = GHC.Maybe.Nothing
    }
