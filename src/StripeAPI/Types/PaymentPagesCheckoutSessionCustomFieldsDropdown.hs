{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentPagesCheckoutSessionCustomFieldsDropdown
module StripeAPI.Types.PaymentPagesCheckoutSessionCustomFieldsDropdown where

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
import {-# SOURCE #-} StripeAPI.Types.PaymentPagesCheckoutSessionCustomFieldsOption
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_pages_checkout_session_custom_fields_dropdown@ in the specification.
data PaymentPagesCheckoutSessionCustomFieldsDropdown = PaymentPagesCheckoutSessionCustomFieldsDropdown
  { -- | options: The options available for the customer to select. Up to 200 options allowed.
    paymentPagesCheckoutSessionCustomFieldsDropdownOptions :: ([PaymentPagesCheckoutSessionCustomFieldsOption]),
    -- | value: The option selected by the customer. This will be the \`value\` for the option.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentPagesCheckoutSessionCustomFieldsDropdownValue :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentPagesCheckoutSessionCustomFieldsDropdown where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["options" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionCustomFieldsDropdownOptions obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("value" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionCustomFieldsDropdownValue obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["options" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionCustomFieldsDropdownOptions obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("value" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionCustomFieldsDropdownValue obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentPagesCheckoutSessionCustomFieldsDropdown where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentPagesCheckoutSessionCustomFieldsDropdown" (\obj -> (GHC.Base.pure PaymentPagesCheckoutSessionCustomFieldsDropdown GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "options")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "value"))

-- | Create a new 'PaymentPagesCheckoutSessionCustomFieldsDropdown' with all required fields.
mkPaymentPagesCheckoutSessionCustomFieldsDropdown ::
  -- | 'paymentPagesCheckoutSessionCustomFieldsDropdownOptions'
  [PaymentPagesCheckoutSessionCustomFieldsOption] ->
  PaymentPagesCheckoutSessionCustomFieldsDropdown
mkPaymentPagesCheckoutSessionCustomFieldsDropdown paymentPagesCheckoutSessionCustomFieldsDropdownOptions =
  PaymentPagesCheckoutSessionCustomFieldsDropdown
    { paymentPagesCheckoutSessionCustomFieldsDropdownOptions = paymentPagesCheckoutSessionCustomFieldsDropdownOptions,
      paymentPagesCheckoutSessionCustomFieldsDropdownValue = GHC.Maybe.Nothing
    }
