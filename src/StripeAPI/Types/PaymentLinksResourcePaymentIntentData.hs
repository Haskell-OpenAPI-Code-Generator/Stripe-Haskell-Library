{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentLinksResourcePaymentIntentData
module StripeAPI.Types.PaymentLinksResourcePaymentIntentData where

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

-- | Defines the object schema located at @components.schemas.payment_links_resource_payment_intent_data@ in the specification.
data PaymentLinksResourcePaymentIntentData = PaymentLinksResourcePaymentIntentData
  { -- | capture_method: Indicates when the funds will be captured from the customer\'s account.
    paymentLinksResourcePaymentIntentDataCaptureMethod :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentLinksResourcePaymentIntentDataCaptureMethod'NonNullable)),
    -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentLinksResourcePaymentIntentDataDescription :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that will set metadata on [Payment Intents](https:\/\/stripe.com\/docs\/api\/payment_intents) generated from this payment link.
    paymentLinksResourcePaymentIntentDataMetadata :: Data.Aeson.Types.Internal.Object,
    -- | setup_future_usage: Indicates that you intend to make future payments with the payment method collected during checkout.
    paymentLinksResourcePaymentIntentDataSetupFutureUsage :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentLinksResourcePaymentIntentDataSetupFutureUsage'NonNullable)),
    -- | statement_descriptor: Extra information about the payment. This will appear on your customer\'s statement when this payment succeeds in creating a charge.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentLinksResourcePaymentIntentDataStatementDescriptor :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | statement_descriptor_suffix: Provides information about the charge that customers see on their statements. Concatenated with the prefix (shortened descriptor) or statement descriptor that\'s set on the account to form the complete statement descriptor. Maximum 22 characters for the concatenated descriptor.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentLinksResourcePaymentIntentDataStatementDescriptorSuffix :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | transfer_group: A string that identifies the resulting payment as part of a group. See the PaymentIntents [use case for connected accounts](https:\/\/stripe.com\/docs\/connect\/separate-charges-and-transfers) for details.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentLinksResourcePaymentIntentDataTransferGroup :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentLinksResourcePaymentIntentData where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("capture_method" Data.Aeson.Types.ToJSON..=)) (paymentLinksResourcePaymentIntentDataCaptureMethod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (paymentLinksResourcePaymentIntentDataDescription obj) : ["metadata" Data.Aeson.Types.ToJSON..= paymentLinksResourcePaymentIntentDataMetadata obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_future_usage" Data.Aeson.Types.ToJSON..=)) (paymentLinksResourcePaymentIntentDataSetupFutureUsage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor" Data.Aeson.Types.ToJSON..=)) (paymentLinksResourcePaymentIntentDataStatementDescriptor obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor_suffix" Data.Aeson.Types.ToJSON..=)) (paymentLinksResourcePaymentIntentDataStatementDescriptorSuffix obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transfer_group" Data.Aeson.Types.ToJSON..=)) (paymentLinksResourcePaymentIntentDataTransferGroup obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("capture_method" Data.Aeson.Types.ToJSON..=)) (paymentLinksResourcePaymentIntentDataCaptureMethod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (paymentLinksResourcePaymentIntentDataDescription obj) : ["metadata" Data.Aeson.Types.ToJSON..= paymentLinksResourcePaymentIntentDataMetadata obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_future_usage" Data.Aeson.Types.ToJSON..=)) (paymentLinksResourcePaymentIntentDataSetupFutureUsage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor" Data.Aeson.Types.ToJSON..=)) (paymentLinksResourcePaymentIntentDataStatementDescriptor obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor_suffix" Data.Aeson.Types.ToJSON..=)) (paymentLinksResourcePaymentIntentDataStatementDescriptorSuffix obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transfer_group" Data.Aeson.Types.ToJSON..=)) (paymentLinksResourcePaymentIntentDataTransferGroup obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentLinksResourcePaymentIntentData where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentLinksResourcePaymentIntentData" (\obj -> ((((((GHC.Base.pure PaymentLinksResourcePaymentIntentData GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "capture_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "setup_future_usage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "statement_descriptor_suffix")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "transfer_group"))

-- | Create a new 'PaymentLinksResourcePaymentIntentData' with all required fields.
mkPaymentLinksResourcePaymentIntentData ::
  -- | 'paymentLinksResourcePaymentIntentDataMetadata'
  Data.Aeson.Types.Internal.Object ->
  PaymentLinksResourcePaymentIntentData
mkPaymentLinksResourcePaymentIntentData paymentLinksResourcePaymentIntentDataMetadata =
  PaymentLinksResourcePaymentIntentData
    { paymentLinksResourcePaymentIntentDataCaptureMethod = GHC.Maybe.Nothing,
      paymentLinksResourcePaymentIntentDataDescription = GHC.Maybe.Nothing,
      paymentLinksResourcePaymentIntentDataMetadata = paymentLinksResourcePaymentIntentDataMetadata,
      paymentLinksResourcePaymentIntentDataSetupFutureUsage = GHC.Maybe.Nothing,
      paymentLinksResourcePaymentIntentDataStatementDescriptor = GHC.Maybe.Nothing,
      paymentLinksResourcePaymentIntentDataStatementDescriptorSuffix = GHC.Maybe.Nothing,
      paymentLinksResourcePaymentIntentDataTransferGroup = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.payment_links_resource_payment_intent_data.properties.capture_method@ in the specification.
--
-- Indicates when the funds will be captured from the customer\'s account.
data PaymentLinksResourcePaymentIntentDataCaptureMethod'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentLinksResourcePaymentIntentDataCaptureMethod'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentLinksResourcePaymentIntentDataCaptureMethod'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"automatic"@
    PaymentLinksResourcePaymentIntentDataCaptureMethod'NonNullableEnumAutomatic
  | -- | Represents the JSON value @"automatic_async"@
    PaymentLinksResourcePaymentIntentDataCaptureMethod'NonNullableEnumAutomaticAsync
  | -- | Represents the JSON value @"manual"@
    PaymentLinksResourcePaymentIntentDataCaptureMethod'NonNullableEnumManual
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentLinksResourcePaymentIntentDataCaptureMethod'NonNullable where
  toJSON (PaymentLinksResourcePaymentIntentDataCaptureMethod'NonNullableOther val) = val
  toJSON (PaymentLinksResourcePaymentIntentDataCaptureMethod'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentLinksResourcePaymentIntentDataCaptureMethod'NonNullableEnumAutomatic) = "automatic"
  toJSON (PaymentLinksResourcePaymentIntentDataCaptureMethod'NonNullableEnumAutomaticAsync) = "automatic_async"
  toJSON (PaymentLinksResourcePaymentIntentDataCaptureMethod'NonNullableEnumManual) = "manual"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentLinksResourcePaymentIntentDataCaptureMethod'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "automatic" -> PaymentLinksResourcePaymentIntentDataCaptureMethod'NonNullableEnumAutomatic
            | val GHC.Classes.== "automatic_async" -> PaymentLinksResourcePaymentIntentDataCaptureMethod'NonNullableEnumAutomaticAsync
            | val GHC.Classes.== "manual" -> PaymentLinksResourcePaymentIntentDataCaptureMethod'NonNullableEnumManual
            | GHC.Base.otherwise -> PaymentLinksResourcePaymentIntentDataCaptureMethod'NonNullableOther val
      )

-- | Defines the enum schema located at @components.schemas.payment_links_resource_payment_intent_data.properties.setup_future_usage@ in the specification.
--
-- Indicates that you intend to make future payments with the payment method collected during checkout.
data PaymentLinksResourcePaymentIntentDataSetupFutureUsage'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentLinksResourcePaymentIntentDataSetupFutureUsage'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentLinksResourcePaymentIntentDataSetupFutureUsage'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"off_session"@
    PaymentLinksResourcePaymentIntentDataSetupFutureUsage'NonNullableEnumOffSession
  | -- | Represents the JSON value @"on_session"@
    PaymentLinksResourcePaymentIntentDataSetupFutureUsage'NonNullableEnumOnSession
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentLinksResourcePaymentIntentDataSetupFutureUsage'NonNullable where
  toJSON (PaymentLinksResourcePaymentIntentDataSetupFutureUsage'NonNullableOther val) = val
  toJSON (PaymentLinksResourcePaymentIntentDataSetupFutureUsage'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentLinksResourcePaymentIntentDataSetupFutureUsage'NonNullableEnumOffSession) = "off_session"
  toJSON (PaymentLinksResourcePaymentIntentDataSetupFutureUsage'NonNullableEnumOnSession) = "on_session"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentLinksResourcePaymentIntentDataSetupFutureUsage'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "off_session" -> PaymentLinksResourcePaymentIntentDataSetupFutureUsage'NonNullableEnumOffSession
            | val GHC.Classes.== "on_session" -> PaymentLinksResourcePaymentIntentDataSetupFutureUsage'NonNullableEnumOnSession
            | GHC.Base.otherwise -> PaymentLinksResourcePaymentIntentDataSetupFutureUsage'NonNullableOther val
      )
