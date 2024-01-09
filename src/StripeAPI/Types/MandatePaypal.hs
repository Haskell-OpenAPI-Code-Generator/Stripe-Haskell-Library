{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema MandatePaypal
module StripeAPI.Types.MandatePaypal where

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

-- | Defines the object schema located at @components.schemas.mandate_paypal@ in the specification.
data MandatePaypal = MandatePaypal
  { -- | billing_agreement_id: The PayPal Billing Agreement ID (BAID). This is an ID generated by PayPal which represents the mandate between the merchant and the customer.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    mandatePaypalBillingAgreementId :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | payer_id: PayPal account PayerID. This identifier uniquely identifies the PayPal customer.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    mandatePaypalPayerId :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON MandatePaypal where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("billing_agreement_id" Data.Aeson.Types.ToJSON..=)) (mandatePaypalBillingAgreementId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payer_id" Data.Aeson.Types.ToJSON..=)) (mandatePaypalPayerId obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("billing_agreement_id" Data.Aeson.Types.ToJSON..=)) (mandatePaypalBillingAgreementId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payer_id" Data.Aeson.Types.ToJSON..=)) (mandatePaypalPayerId obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON MandatePaypal where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "MandatePaypal" (\obj -> (GHC.Base.pure MandatePaypal GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "billing_agreement_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "payer_id"))

-- | Create a new 'MandatePaypal' with all required fields.
mkMandatePaypal :: MandatePaypal
mkMandatePaypal =
  MandatePaypal
    { mandatePaypalBillingAgreementId = GHC.Maybe.Nothing,
      mandatePaypalPayerId = GHC.Maybe.Nothing
    }
