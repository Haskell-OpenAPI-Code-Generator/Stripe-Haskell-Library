{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentPagesCheckoutSessionCustomFields
module StripeAPI.Types.PaymentPagesCheckoutSessionCustomFields where

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
import {-# SOURCE #-} StripeAPI.Types.PaymentPagesCheckoutSessionCustomFieldsDropdown
import {-# SOURCE #-} StripeAPI.Types.PaymentPagesCheckoutSessionCustomFieldsLabel
import {-# SOURCE #-} StripeAPI.Types.PaymentPagesCheckoutSessionCustomFieldsNumeric
import {-# SOURCE #-} StripeAPI.Types.PaymentPagesCheckoutSessionCustomFieldsText
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_pages_checkout_session_custom_fields@ in the specification.
data PaymentPagesCheckoutSessionCustomFields = PaymentPagesCheckoutSessionCustomFields
  { -- | dropdown:
    paymentPagesCheckoutSessionCustomFieldsDropdown :: (GHC.Maybe.Maybe PaymentPagesCheckoutSessionCustomFieldsDropdown),
    -- | key: String of your choice that your integration can use to reconcile this field. Must be unique to this field, alphanumeric, and up to 200 characters.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentPagesCheckoutSessionCustomFieldsKey :: Data.Text.Internal.Text,
    -- | label:
    paymentPagesCheckoutSessionCustomFieldsLabel :: PaymentPagesCheckoutSessionCustomFieldsLabel,
    -- | numeric:
    paymentPagesCheckoutSessionCustomFieldsNumeric :: (GHC.Maybe.Maybe PaymentPagesCheckoutSessionCustomFieldsNumeric),
    -- | optional: Whether the customer is required to complete the field before completing the Checkout Session. Defaults to \`false\`.
    paymentPagesCheckoutSessionCustomFieldsOptional :: GHC.Types.Bool,
    -- | text:
    paymentPagesCheckoutSessionCustomFieldsText :: (GHC.Maybe.Maybe PaymentPagesCheckoutSessionCustomFieldsText),
    -- | type: The type of the field.
    paymentPagesCheckoutSessionCustomFieldsType :: PaymentPagesCheckoutSessionCustomFieldsType'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentPagesCheckoutSessionCustomFields where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("dropdown" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionCustomFieldsDropdown obj) : ["key" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionCustomFieldsKey obj] : ["label" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionCustomFieldsLabel obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("numeric" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionCustomFieldsNumeric obj) : ["optional" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionCustomFieldsOptional obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("text" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionCustomFieldsText obj) : ["type" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionCustomFieldsType obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("dropdown" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionCustomFieldsDropdown obj) : ["key" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionCustomFieldsKey obj] : ["label" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionCustomFieldsLabel obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("numeric" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionCustomFieldsNumeric obj) : ["optional" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionCustomFieldsOptional obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("text" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionCustomFieldsText obj) : ["type" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionCustomFieldsType obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentPagesCheckoutSessionCustomFields where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentPagesCheckoutSessionCustomFields" (\obj -> ((((((GHC.Base.pure PaymentPagesCheckoutSessionCustomFields GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "dropdown")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "key")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "numeric")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "optional")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "text")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))

-- | Create a new 'PaymentPagesCheckoutSessionCustomFields' with all required fields.
mkPaymentPagesCheckoutSessionCustomFields ::
  -- | 'paymentPagesCheckoutSessionCustomFieldsKey'
  Data.Text.Internal.Text ->
  -- | 'paymentPagesCheckoutSessionCustomFieldsLabel'
  PaymentPagesCheckoutSessionCustomFieldsLabel ->
  -- | 'paymentPagesCheckoutSessionCustomFieldsOptional'
  GHC.Types.Bool ->
  -- | 'paymentPagesCheckoutSessionCustomFieldsType'
  PaymentPagesCheckoutSessionCustomFieldsType' ->
  PaymentPagesCheckoutSessionCustomFields
mkPaymentPagesCheckoutSessionCustomFields paymentPagesCheckoutSessionCustomFieldsKey paymentPagesCheckoutSessionCustomFieldsLabel paymentPagesCheckoutSessionCustomFieldsOptional paymentPagesCheckoutSessionCustomFieldsType =
  PaymentPagesCheckoutSessionCustomFields
    { paymentPagesCheckoutSessionCustomFieldsDropdown = GHC.Maybe.Nothing,
      paymentPagesCheckoutSessionCustomFieldsKey = paymentPagesCheckoutSessionCustomFieldsKey,
      paymentPagesCheckoutSessionCustomFieldsLabel = paymentPagesCheckoutSessionCustomFieldsLabel,
      paymentPagesCheckoutSessionCustomFieldsNumeric = GHC.Maybe.Nothing,
      paymentPagesCheckoutSessionCustomFieldsOptional = paymentPagesCheckoutSessionCustomFieldsOptional,
      paymentPagesCheckoutSessionCustomFieldsText = GHC.Maybe.Nothing,
      paymentPagesCheckoutSessionCustomFieldsType = paymentPagesCheckoutSessionCustomFieldsType
    }

-- | Defines the enum schema located at @components.schemas.payment_pages_checkout_session_custom_fields.properties.type@ in the specification.
--
-- The type of the field.
data PaymentPagesCheckoutSessionCustomFieldsType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentPagesCheckoutSessionCustomFieldsType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentPagesCheckoutSessionCustomFieldsType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"dropdown"@
    PaymentPagesCheckoutSessionCustomFieldsType'EnumDropdown
  | -- | Represents the JSON value @"numeric"@
    PaymentPagesCheckoutSessionCustomFieldsType'EnumNumeric
  | -- | Represents the JSON value @"text"@
    PaymentPagesCheckoutSessionCustomFieldsType'EnumText
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentPagesCheckoutSessionCustomFieldsType' where
  toJSON (PaymentPagesCheckoutSessionCustomFieldsType'Other val) = val
  toJSON (PaymentPagesCheckoutSessionCustomFieldsType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentPagesCheckoutSessionCustomFieldsType'EnumDropdown) = "dropdown"
  toJSON (PaymentPagesCheckoutSessionCustomFieldsType'EnumNumeric) = "numeric"
  toJSON (PaymentPagesCheckoutSessionCustomFieldsType'EnumText) = "text"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentPagesCheckoutSessionCustomFieldsType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "dropdown" -> PaymentPagesCheckoutSessionCustomFieldsType'EnumDropdown
            | val GHC.Classes.== "numeric" -> PaymentPagesCheckoutSessionCustomFieldsType'EnumNumeric
            | val GHC.Classes.== "text" -> PaymentPagesCheckoutSessionCustomFieldsType'EnumText
            | GHC.Base.otherwise -> PaymentPagesCheckoutSessionCustomFieldsType'Other val
      )
