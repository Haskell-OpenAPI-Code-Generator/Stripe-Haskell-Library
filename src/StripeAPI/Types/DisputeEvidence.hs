{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema DisputeEvidence
module StripeAPI.Types.DisputeEvidence where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
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
import {-# SOURCE #-} StripeAPI.Types.File
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.dispute_evidence@ in the specification.
data DisputeEvidence = DisputeEvidence
  { -- | access_activity_log: Any server or activity logs showing proof that the customer accessed or downloaded the purchased digital product. This information should include IP addresses, corresponding timestamps, and any detailed recorded activity.
    --
    -- Constraints:
    --
    -- * Maximum length of 150000
    disputeEvidenceAccessActivityLog :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | billing_address: The billing address provided by the customer.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    disputeEvidenceBillingAddress :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | cancellation_policy: (ID of a [file upload](https:\/\/stripe.com\/docs\/guides\/file-upload)) Your subscription cancellation policy, as shown to the customer.
    disputeEvidenceCancellationPolicy :: (GHC.Maybe.Maybe DisputeEvidenceCancellationPolicy'Variants),
    -- | cancellation_policy_disclosure: An explanation of how and when the customer was shown your refund policy prior to purchase.
    --
    -- Constraints:
    --
    -- * Maximum length of 150000
    disputeEvidenceCancellationPolicyDisclosure :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | cancellation_rebuttal: A justification for why the customer\'s subscription was not canceled.
    --
    -- Constraints:
    --
    -- * Maximum length of 150000
    disputeEvidenceCancellationRebuttal :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | customer_communication: (ID of a [file upload](https:\/\/stripe.com\/docs\/guides\/file-upload)) Any communication with the customer that you feel is relevant to your case. Examples include emails proving that the customer received the product or service, or demonstrating their use of or satisfaction with the product or service.
    disputeEvidenceCustomerCommunication :: (GHC.Maybe.Maybe DisputeEvidenceCustomerCommunication'Variants),
    -- | customer_email_address: The email address of the customer.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    disputeEvidenceCustomerEmailAddress :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | customer_name: The name of the customer.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    disputeEvidenceCustomerName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | customer_purchase_ip: The IP address that the customer used when making the purchase.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    disputeEvidenceCustomerPurchaseIp :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | customer_signature: (ID of a [file upload](https:\/\/stripe.com\/docs\/guides\/file-upload)) A relevant document or contract showing the customer\'s signature.
    disputeEvidenceCustomerSignature :: (GHC.Maybe.Maybe DisputeEvidenceCustomerSignature'Variants),
    -- | duplicate_charge_documentation: (ID of a [file upload](https:\/\/stripe.com\/docs\/guides\/file-upload)) Documentation for the prior charge that can uniquely identify the charge, such as a receipt, shipping label, work order, etc. This document should be paired with a similar document from the disputed payment that proves the two payments are separate.
    disputeEvidenceDuplicateChargeDocumentation :: (GHC.Maybe.Maybe DisputeEvidenceDuplicateChargeDocumentation'Variants),
    -- | duplicate_charge_explanation: An explanation of the difference between the disputed charge versus the prior charge that appears to be a duplicate.
    --
    -- Constraints:
    --
    -- * Maximum length of 150000
    disputeEvidenceDuplicateChargeExplanation :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | duplicate_charge_id: The Stripe ID for the prior charge which appears to be a duplicate of the disputed charge.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    disputeEvidenceDuplicateChargeId :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | product_description: A description of the product or service that was sold.
    --
    -- Constraints:
    --
    -- * Maximum length of 150000
    disputeEvidenceProductDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | receipt: (ID of a [file upload](https:\/\/stripe.com\/docs\/guides\/file-upload)) Any receipt or message sent to the customer notifying them of the charge.
    disputeEvidenceReceipt :: (GHC.Maybe.Maybe DisputeEvidenceReceipt'Variants),
    -- | refund_policy: (ID of a [file upload](https:\/\/stripe.com\/docs\/guides\/file-upload)) Your refund policy, as shown to the customer.
    disputeEvidenceRefundPolicy :: (GHC.Maybe.Maybe DisputeEvidenceRefundPolicy'Variants),
    -- | refund_policy_disclosure: Documentation demonstrating that the customer was shown your refund policy prior to purchase.
    --
    -- Constraints:
    --
    -- * Maximum length of 150000
    disputeEvidenceRefundPolicyDisclosure :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | refund_refusal_explanation: A justification for why the customer is not entitled to a refund.
    --
    -- Constraints:
    --
    -- * Maximum length of 150000
    disputeEvidenceRefundRefusalExplanation :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | service_date: The date on which the customer received or began receiving the purchased service, in a clear human-readable format.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    disputeEvidenceServiceDate :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | service_documentation: (ID of a [file upload](https:\/\/stripe.com\/docs\/guides\/file-upload)) Documentation showing proof that a service was provided to the customer. This could include a copy of a signed contract, work order, or other form of written agreement.
    disputeEvidenceServiceDocumentation :: (GHC.Maybe.Maybe DisputeEvidenceServiceDocumentation'Variants),
    -- | shipping_address: The address to which a physical product was shipped. You should try to include as complete address information as possible.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    disputeEvidenceShippingAddress :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | shipping_carrier: The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc. If multiple carriers were used for this purchase, please separate them with commas.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    disputeEvidenceShippingCarrier :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | shipping_date: The date on which a physical product began its route to the shipping address, in a clear human-readable format.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    disputeEvidenceShippingDate :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | shipping_documentation: (ID of a [file upload](https:\/\/stripe.com\/docs\/guides\/file-upload)) Documentation showing proof that a product was shipped to the customer at the same address the customer provided to you. This could include a copy of the shipment receipt, shipping label, etc. It should show the customer\'s full shipping address, if possible.
    disputeEvidenceShippingDocumentation :: (GHC.Maybe.Maybe DisputeEvidenceShippingDocumentation'Variants),
    -- | shipping_tracking_number: The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    disputeEvidenceShippingTrackingNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | uncategorized_file: (ID of a [file upload](https:\/\/stripe.com\/docs\/guides\/file-upload)) Any additional evidence or statements.
    disputeEvidenceUncategorizedFile :: (GHC.Maybe.Maybe DisputeEvidenceUncategorizedFile'Variants),
    -- | uncategorized_text: Any additional evidence or statements.
    --
    -- Constraints:
    --
    -- * Maximum length of 150000
    disputeEvidenceUncategorizedText :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON DisputeEvidence where
  toJSON obj = Data.Aeson.Types.Internal.object ("access_activity_log" Data.Aeson.Types.ToJSON..= disputeEvidenceAccessActivityLog obj : "billing_address" Data.Aeson.Types.ToJSON..= disputeEvidenceBillingAddress obj : "cancellation_policy" Data.Aeson.Types.ToJSON..= disputeEvidenceCancellationPolicy obj : "cancellation_policy_disclosure" Data.Aeson.Types.ToJSON..= disputeEvidenceCancellationPolicyDisclosure obj : "cancellation_rebuttal" Data.Aeson.Types.ToJSON..= disputeEvidenceCancellationRebuttal obj : "customer_communication" Data.Aeson.Types.ToJSON..= disputeEvidenceCustomerCommunication obj : "customer_email_address" Data.Aeson.Types.ToJSON..= disputeEvidenceCustomerEmailAddress obj : "customer_name" Data.Aeson.Types.ToJSON..= disputeEvidenceCustomerName obj : "customer_purchase_ip" Data.Aeson.Types.ToJSON..= disputeEvidenceCustomerPurchaseIp obj : "customer_signature" Data.Aeson.Types.ToJSON..= disputeEvidenceCustomerSignature obj : "duplicate_charge_documentation" Data.Aeson.Types.ToJSON..= disputeEvidenceDuplicateChargeDocumentation obj : "duplicate_charge_explanation" Data.Aeson.Types.ToJSON..= disputeEvidenceDuplicateChargeExplanation obj : "duplicate_charge_id" Data.Aeson.Types.ToJSON..= disputeEvidenceDuplicateChargeId obj : "product_description" Data.Aeson.Types.ToJSON..= disputeEvidenceProductDescription obj : "receipt" Data.Aeson.Types.ToJSON..= disputeEvidenceReceipt obj : "refund_policy" Data.Aeson.Types.ToJSON..= disputeEvidenceRefundPolicy obj : "refund_policy_disclosure" Data.Aeson.Types.ToJSON..= disputeEvidenceRefundPolicyDisclosure obj : "refund_refusal_explanation" Data.Aeson.Types.ToJSON..= disputeEvidenceRefundRefusalExplanation obj : "service_date" Data.Aeson.Types.ToJSON..= disputeEvidenceServiceDate obj : "service_documentation" Data.Aeson.Types.ToJSON..= disputeEvidenceServiceDocumentation obj : "shipping_address" Data.Aeson.Types.ToJSON..= disputeEvidenceShippingAddress obj : "shipping_carrier" Data.Aeson.Types.ToJSON..= disputeEvidenceShippingCarrier obj : "shipping_date" Data.Aeson.Types.ToJSON..= disputeEvidenceShippingDate obj : "shipping_documentation" Data.Aeson.Types.ToJSON..= disputeEvidenceShippingDocumentation obj : "shipping_tracking_number" Data.Aeson.Types.ToJSON..= disputeEvidenceShippingTrackingNumber obj : "uncategorized_file" Data.Aeson.Types.ToJSON..= disputeEvidenceUncategorizedFile obj : "uncategorized_text" Data.Aeson.Types.ToJSON..= disputeEvidenceUncategorizedText obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("access_activity_log" Data.Aeson.Types.ToJSON..= disputeEvidenceAccessActivityLog obj) GHC.Base.<> (("billing_address" Data.Aeson.Types.ToJSON..= disputeEvidenceBillingAddress obj) GHC.Base.<> (("cancellation_policy" Data.Aeson.Types.ToJSON..= disputeEvidenceCancellationPolicy obj) GHC.Base.<> (("cancellation_policy_disclosure" Data.Aeson.Types.ToJSON..= disputeEvidenceCancellationPolicyDisclosure obj) GHC.Base.<> (("cancellation_rebuttal" Data.Aeson.Types.ToJSON..= disputeEvidenceCancellationRebuttal obj) GHC.Base.<> (("customer_communication" Data.Aeson.Types.ToJSON..= disputeEvidenceCustomerCommunication obj) GHC.Base.<> (("customer_email_address" Data.Aeson.Types.ToJSON..= disputeEvidenceCustomerEmailAddress obj) GHC.Base.<> (("customer_name" Data.Aeson.Types.ToJSON..= disputeEvidenceCustomerName obj) GHC.Base.<> (("customer_purchase_ip" Data.Aeson.Types.ToJSON..= disputeEvidenceCustomerPurchaseIp obj) GHC.Base.<> (("customer_signature" Data.Aeson.Types.ToJSON..= disputeEvidenceCustomerSignature obj) GHC.Base.<> (("duplicate_charge_documentation" Data.Aeson.Types.ToJSON..= disputeEvidenceDuplicateChargeDocumentation obj) GHC.Base.<> (("duplicate_charge_explanation" Data.Aeson.Types.ToJSON..= disputeEvidenceDuplicateChargeExplanation obj) GHC.Base.<> (("duplicate_charge_id" Data.Aeson.Types.ToJSON..= disputeEvidenceDuplicateChargeId obj) GHC.Base.<> (("product_description" Data.Aeson.Types.ToJSON..= disputeEvidenceProductDescription obj) GHC.Base.<> (("receipt" Data.Aeson.Types.ToJSON..= disputeEvidenceReceipt obj) GHC.Base.<> (("refund_policy" Data.Aeson.Types.ToJSON..= disputeEvidenceRefundPolicy obj) GHC.Base.<> (("refund_policy_disclosure" Data.Aeson.Types.ToJSON..= disputeEvidenceRefundPolicyDisclosure obj) GHC.Base.<> (("refund_refusal_explanation" Data.Aeson.Types.ToJSON..= disputeEvidenceRefundRefusalExplanation obj) GHC.Base.<> (("service_date" Data.Aeson.Types.ToJSON..= disputeEvidenceServiceDate obj) GHC.Base.<> (("service_documentation" Data.Aeson.Types.ToJSON..= disputeEvidenceServiceDocumentation obj) GHC.Base.<> (("shipping_address" Data.Aeson.Types.ToJSON..= disputeEvidenceShippingAddress obj) GHC.Base.<> (("shipping_carrier" Data.Aeson.Types.ToJSON..= disputeEvidenceShippingCarrier obj) GHC.Base.<> (("shipping_date" Data.Aeson.Types.ToJSON..= disputeEvidenceShippingDate obj) GHC.Base.<> (("shipping_documentation" Data.Aeson.Types.ToJSON..= disputeEvidenceShippingDocumentation obj) GHC.Base.<> (("shipping_tracking_number" Data.Aeson.Types.ToJSON..= disputeEvidenceShippingTrackingNumber obj) GHC.Base.<> (("uncategorized_file" Data.Aeson.Types.ToJSON..= disputeEvidenceUncategorizedFile obj) GHC.Base.<> ("uncategorized_text" Data.Aeson.Types.ToJSON..= disputeEvidenceUncategorizedText obj)))))))))))))))))))))))))))

instance Data.Aeson.Types.FromJSON.FromJSON DisputeEvidence where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "DisputeEvidence" (\obj -> ((((((((((((((((((((((((((GHC.Base.pure DisputeEvidence GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "access_activity_log")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancellation_policy")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancellation_policy_disclosure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancellation_rebuttal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer_communication")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer_email_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer_purchase_ip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer_signature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "duplicate_charge_documentation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "duplicate_charge_explanation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "duplicate_charge_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "product_description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "receipt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_policy")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_policy_disclosure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_refusal_explanation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "service_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "service_documentation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_carrier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_documentation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_tracking_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "uncategorized_file")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "uncategorized_text"))

-- | Create a new 'DisputeEvidence' with all required fields.
mkDisputeEvidence :: DisputeEvidence
mkDisputeEvidence =
  DisputeEvidence
    { disputeEvidenceAccessActivityLog = GHC.Maybe.Nothing,
      disputeEvidenceBillingAddress = GHC.Maybe.Nothing,
      disputeEvidenceCancellationPolicy = GHC.Maybe.Nothing,
      disputeEvidenceCancellationPolicyDisclosure = GHC.Maybe.Nothing,
      disputeEvidenceCancellationRebuttal = GHC.Maybe.Nothing,
      disputeEvidenceCustomerCommunication = GHC.Maybe.Nothing,
      disputeEvidenceCustomerEmailAddress = GHC.Maybe.Nothing,
      disputeEvidenceCustomerName = GHC.Maybe.Nothing,
      disputeEvidenceCustomerPurchaseIp = GHC.Maybe.Nothing,
      disputeEvidenceCustomerSignature = GHC.Maybe.Nothing,
      disputeEvidenceDuplicateChargeDocumentation = GHC.Maybe.Nothing,
      disputeEvidenceDuplicateChargeExplanation = GHC.Maybe.Nothing,
      disputeEvidenceDuplicateChargeId = GHC.Maybe.Nothing,
      disputeEvidenceProductDescription = GHC.Maybe.Nothing,
      disputeEvidenceReceipt = GHC.Maybe.Nothing,
      disputeEvidenceRefundPolicy = GHC.Maybe.Nothing,
      disputeEvidenceRefundPolicyDisclosure = GHC.Maybe.Nothing,
      disputeEvidenceRefundRefusalExplanation = GHC.Maybe.Nothing,
      disputeEvidenceServiceDate = GHC.Maybe.Nothing,
      disputeEvidenceServiceDocumentation = GHC.Maybe.Nothing,
      disputeEvidenceShippingAddress = GHC.Maybe.Nothing,
      disputeEvidenceShippingCarrier = GHC.Maybe.Nothing,
      disputeEvidenceShippingDate = GHC.Maybe.Nothing,
      disputeEvidenceShippingDocumentation = GHC.Maybe.Nothing,
      disputeEvidenceShippingTrackingNumber = GHC.Maybe.Nothing,
      disputeEvidenceUncategorizedFile = GHC.Maybe.Nothing,
      disputeEvidenceUncategorizedText = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @components.schemas.dispute_evidence.properties.cancellation_policy.anyOf@ in the specification.
--
-- (ID of a [file upload](https:\/\/stripe.com\/docs\/guides\/file-upload)) Your subscription cancellation policy, as shown to the customer.
data DisputeEvidenceCancellationPolicy'Variants
  = DisputeEvidenceCancellationPolicy'Text Data.Text.Internal.Text
  | DisputeEvidenceCancellationPolicy'File File
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON DisputeEvidenceCancellationPolicy'Variants where
  toJSON (DisputeEvidenceCancellationPolicy'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (DisputeEvidenceCancellationPolicy'File a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON DisputeEvidenceCancellationPolicy'Variants where
  parseJSON val = case (DisputeEvidenceCancellationPolicy'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((DisputeEvidenceCancellationPolicy'File Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.dispute_evidence.properties.customer_communication.anyOf@ in the specification.
--
-- (ID of a [file upload](https:\/\/stripe.com\/docs\/guides\/file-upload)) Any communication with the customer that you feel is relevant to your case. Examples include emails proving that the customer received the product or service, or demonstrating their use of or satisfaction with the product or service.
data DisputeEvidenceCustomerCommunication'Variants
  = DisputeEvidenceCustomerCommunication'Text Data.Text.Internal.Text
  | DisputeEvidenceCustomerCommunication'File File
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON DisputeEvidenceCustomerCommunication'Variants where
  toJSON (DisputeEvidenceCustomerCommunication'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (DisputeEvidenceCustomerCommunication'File a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON DisputeEvidenceCustomerCommunication'Variants where
  parseJSON val = case (DisputeEvidenceCustomerCommunication'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((DisputeEvidenceCustomerCommunication'File Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.dispute_evidence.properties.customer_signature.anyOf@ in the specification.
--
-- (ID of a [file upload](https:\/\/stripe.com\/docs\/guides\/file-upload)) A relevant document or contract showing the customer\'s signature.
data DisputeEvidenceCustomerSignature'Variants
  = DisputeEvidenceCustomerSignature'Text Data.Text.Internal.Text
  | DisputeEvidenceCustomerSignature'File File
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON DisputeEvidenceCustomerSignature'Variants where
  toJSON (DisputeEvidenceCustomerSignature'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (DisputeEvidenceCustomerSignature'File a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON DisputeEvidenceCustomerSignature'Variants where
  parseJSON val = case (DisputeEvidenceCustomerSignature'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((DisputeEvidenceCustomerSignature'File Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.dispute_evidence.properties.duplicate_charge_documentation.anyOf@ in the specification.
--
-- (ID of a [file upload](https:\/\/stripe.com\/docs\/guides\/file-upload)) Documentation for the prior charge that can uniquely identify the charge, such as a receipt, shipping label, work order, etc. This document should be paired with a similar document from the disputed payment that proves the two payments are separate.
data DisputeEvidenceDuplicateChargeDocumentation'Variants
  = DisputeEvidenceDuplicateChargeDocumentation'Text Data.Text.Internal.Text
  | DisputeEvidenceDuplicateChargeDocumentation'File File
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON DisputeEvidenceDuplicateChargeDocumentation'Variants where
  toJSON (DisputeEvidenceDuplicateChargeDocumentation'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (DisputeEvidenceDuplicateChargeDocumentation'File a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON DisputeEvidenceDuplicateChargeDocumentation'Variants where
  parseJSON val = case (DisputeEvidenceDuplicateChargeDocumentation'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((DisputeEvidenceDuplicateChargeDocumentation'File Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.dispute_evidence.properties.receipt.anyOf@ in the specification.
--
-- (ID of a [file upload](https:\/\/stripe.com\/docs\/guides\/file-upload)) Any receipt or message sent to the customer notifying them of the charge.
data DisputeEvidenceReceipt'Variants
  = DisputeEvidenceReceipt'Text Data.Text.Internal.Text
  | DisputeEvidenceReceipt'File File
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON DisputeEvidenceReceipt'Variants where
  toJSON (DisputeEvidenceReceipt'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (DisputeEvidenceReceipt'File a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON DisputeEvidenceReceipt'Variants where
  parseJSON val = case (DisputeEvidenceReceipt'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((DisputeEvidenceReceipt'File Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.dispute_evidence.properties.refund_policy.anyOf@ in the specification.
--
-- (ID of a [file upload](https:\/\/stripe.com\/docs\/guides\/file-upload)) Your refund policy, as shown to the customer.
data DisputeEvidenceRefundPolicy'Variants
  = DisputeEvidenceRefundPolicy'Text Data.Text.Internal.Text
  | DisputeEvidenceRefundPolicy'File File
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON DisputeEvidenceRefundPolicy'Variants where
  toJSON (DisputeEvidenceRefundPolicy'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (DisputeEvidenceRefundPolicy'File a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON DisputeEvidenceRefundPolicy'Variants where
  parseJSON val = case (DisputeEvidenceRefundPolicy'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((DisputeEvidenceRefundPolicy'File Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.dispute_evidence.properties.service_documentation.anyOf@ in the specification.
--
-- (ID of a [file upload](https:\/\/stripe.com\/docs\/guides\/file-upload)) Documentation showing proof that a service was provided to the customer. This could include a copy of a signed contract, work order, or other form of written agreement.
data DisputeEvidenceServiceDocumentation'Variants
  = DisputeEvidenceServiceDocumentation'Text Data.Text.Internal.Text
  | DisputeEvidenceServiceDocumentation'File File
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON DisputeEvidenceServiceDocumentation'Variants where
  toJSON (DisputeEvidenceServiceDocumentation'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (DisputeEvidenceServiceDocumentation'File a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON DisputeEvidenceServiceDocumentation'Variants where
  parseJSON val = case (DisputeEvidenceServiceDocumentation'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((DisputeEvidenceServiceDocumentation'File Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.dispute_evidence.properties.shipping_documentation.anyOf@ in the specification.
--
-- (ID of a [file upload](https:\/\/stripe.com\/docs\/guides\/file-upload)) Documentation showing proof that a product was shipped to the customer at the same address the customer provided to you. This could include a copy of the shipment receipt, shipping label, etc. It should show the customer\'s full shipping address, if possible.
data DisputeEvidenceShippingDocumentation'Variants
  = DisputeEvidenceShippingDocumentation'Text Data.Text.Internal.Text
  | DisputeEvidenceShippingDocumentation'File File
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON DisputeEvidenceShippingDocumentation'Variants where
  toJSON (DisputeEvidenceShippingDocumentation'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (DisputeEvidenceShippingDocumentation'File a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON DisputeEvidenceShippingDocumentation'Variants where
  parseJSON val = case (DisputeEvidenceShippingDocumentation'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((DisputeEvidenceShippingDocumentation'File Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.dispute_evidence.properties.uncategorized_file.anyOf@ in the specification.
--
-- (ID of a [file upload](https:\/\/stripe.com\/docs\/guides\/file-upload)) Any additional evidence or statements.
data DisputeEvidenceUncategorizedFile'Variants
  = DisputeEvidenceUncategorizedFile'Text Data.Text.Internal.Text
  | DisputeEvidenceUncategorizedFile'File File
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON DisputeEvidenceUncategorizedFile'Variants where
  toJSON (DisputeEvidenceUncategorizedFile'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (DisputeEvidenceUncategorizedFile'File a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON DisputeEvidenceUncategorizedFile'Variants where
  parseJSON val = case (DisputeEvidenceUncategorizedFile'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((DisputeEvidenceUncategorizedFile'File Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
