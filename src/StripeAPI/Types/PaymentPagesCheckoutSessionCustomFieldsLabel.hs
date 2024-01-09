{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentPagesCheckoutSessionCustomFieldsLabel
module StripeAPI.Types.PaymentPagesCheckoutSessionCustomFieldsLabel where

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

-- | Defines the object schema located at @components.schemas.payment_pages_checkout_session_custom_fields_label@ in the specification.
data PaymentPagesCheckoutSessionCustomFieldsLabel = PaymentPagesCheckoutSessionCustomFieldsLabel
  { -- | custom: Custom text for the label, displayed to the customer. Up to 50 characters.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentPagesCheckoutSessionCustomFieldsLabelCustom :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentPagesCheckoutSessionCustomFieldsLabel where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("custom" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionCustomFieldsLabelCustom obj) : ["type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "custom"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("custom" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionCustomFieldsLabelCustom obj) : ["type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "custom"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentPagesCheckoutSessionCustomFieldsLabel where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentPagesCheckoutSessionCustomFieldsLabel" (\obj -> GHC.Base.pure PaymentPagesCheckoutSessionCustomFieldsLabel GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "custom"))

-- | Create a new 'PaymentPagesCheckoutSessionCustomFieldsLabel' with all required fields.
mkPaymentPagesCheckoutSessionCustomFieldsLabel :: PaymentPagesCheckoutSessionCustomFieldsLabel
mkPaymentPagesCheckoutSessionCustomFieldsLabel = PaymentPagesCheckoutSessionCustomFieldsLabel {paymentPagesCheckoutSessionCustomFieldsLabelCustom = GHC.Maybe.Nothing}
