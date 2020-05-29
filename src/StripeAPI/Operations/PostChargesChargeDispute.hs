{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postChargesChargeDispute
module StripeAPI.Operations.PostChargesChargeDispute where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Generics
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified StripeAPI.Common
import StripeAPI.Types

-- | > POST /v1/charges/{charge}/dispute
-- 
-- 
postChargesChargeDispute :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                      -- ^ charge | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostChargesChargeDisputeRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostChargesChargeDisputeResponse)) -- ^ Monad containing the result of the operation
postChargesChargeDispute config
                         charge
                         body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostChargesChargeDisputeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostChargesChargeDisputeResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                          Dispute)
                                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostChargesChargeDisputeResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/charges/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel charge)) GHC.Base.++ "/dispute"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/charges/{charge}/dispute
-- 
-- The same as 'postChargesChargeDispute' but returns the raw 'Data.ByteString.Char8.ByteString'
postChargesChargeDisputeRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                             StripeAPI.Common.SecurityScheme s) =>
                               StripeAPI.Common.Configuration s ->
                               GHC.Base.String ->
                               GHC.Maybe.Maybe PostChargesChargeDisputeRequestBody ->
                               m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postChargesChargeDisputeRaw config
                            charge
                            body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/charges/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel charge)) GHC.Base.++ "/dispute"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/charges/{charge}/dispute
-- 
-- Monadic version of 'postChargesChargeDispute' (use with 'StripeAPI.Common.runWithConfiguration')
postChargesChargeDisputeM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             GHC.Base.String ->
                             GHC.Maybe.Maybe PostChargesChargeDisputeRequestBody ->
                             Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                m
                                                                (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                    (Network.HTTP.Client.Types.Response PostChargesChargeDisputeResponse))
postChargesChargeDisputeM charge
                          body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostChargesChargeDisputeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostChargesChargeDisputeResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                           Dispute)
                                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostChargesChargeDisputeResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/charges/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel charge)) GHC.Base.++ "/dispute"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/charges/{charge}/dispute
-- 
-- Monadic version of 'postChargesChargeDisputeRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postChargesChargeDisputeRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                GHC.Base.String ->
                                GHC.Maybe.Maybe PostChargesChargeDisputeRequestBody ->
                                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                   m
                                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postChargesChargeDisputeRawM charge
                             body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/charges/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel charge)) GHC.Base.++ "/dispute"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postChargesChargeDisputeRequestBody
-- 
-- 
data PostChargesChargeDisputeRequestBody = PostChargesChargeDisputeRequestBody {
  -- | evidence: Evidence to upload, to respond to a dispute. Updating any field in the hash will submit all fields in the hash for review. The combined character count of all fields is limited to 150,000.
  postChargesChargeDisputeRequestBodyEvidence :: (GHC.Maybe.Maybe PostChargesChargeDisputeRequestBodyEvidence')
  -- | expand: Specifies which fields in the response should be expanded.
  , postChargesChargeDisputeRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postChargesChargeDisputeRequestBodyMetadata :: (GHC.Maybe.Maybe PostChargesChargeDisputeRequestBodyMetadata')
  -- | submit: Whether to immediately submit evidence to the bank. If \`false\`, evidence is staged on the dispute. Staged evidence is visible in the API and Dashboard, and can be submitted to the bank by making another request with this attribute set to \`true\` (the default).
  , postChargesChargeDisputeRequestBodySubmit :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesChargeDisputeRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "evidence" (postChargesChargeDisputeRequestBodyEvidence obj) : (Data.Aeson..=) "expand" (postChargesChargeDisputeRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postChargesChargeDisputeRequestBodyMetadata obj) : (Data.Aeson..=) "submit" (postChargesChargeDisputeRequestBodySubmit obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "evidence" (postChargesChargeDisputeRequestBodyEvidence obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postChargesChargeDisputeRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postChargesChargeDisputeRequestBodyMetadata obj) GHC.Base.<> (Data.Aeson..=) "submit" (postChargesChargeDisputeRequestBodySubmit obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesChargeDisputeRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesChargeDisputeRequestBody" (\obj -> (((GHC.Base.pure PostChargesChargeDisputeRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "evidence")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "submit"))
-- | Defines the data type for the schema postChargesChargeDisputeRequestBodyEvidence\'
-- 
-- Evidence to upload, to respond to a dispute. Updating any field in the hash will submit all fields in the hash for review. The combined character count of all fields is limited to 150,000.
data PostChargesChargeDisputeRequestBodyEvidence' = PostChargesChargeDisputeRequestBodyEvidence' {
  -- | access_activity_log
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 20000
  postChargesChargeDisputeRequestBodyEvidence'AccessActivityLog :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | billing_address
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesChargeDisputeRequestBodyEvidence'BillingAddress :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | cancellation_policy
  , postChargesChargeDisputeRequestBodyEvidence'CancellationPolicy :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | cancellation_policy_disclosure
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 20000
  , postChargesChargeDisputeRequestBodyEvidence'CancellationPolicyDisclosure :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | cancellation_rebuttal
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 20000
  , postChargesChargeDisputeRequestBodyEvidence'CancellationRebuttal :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | customer_communication
  , postChargesChargeDisputeRequestBodyEvidence'CustomerCommunication :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | customer_email_address
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesChargeDisputeRequestBodyEvidence'CustomerEmailAddress :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | customer_name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesChargeDisputeRequestBodyEvidence'CustomerName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | customer_purchase_ip
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesChargeDisputeRequestBodyEvidence'CustomerPurchaseIp :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | customer_signature
  , postChargesChargeDisputeRequestBodyEvidence'CustomerSignature :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | duplicate_charge_documentation
  , postChargesChargeDisputeRequestBodyEvidence'DuplicateChargeDocumentation :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | duplicate_charge_explanation
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 20000
  , postChargesChargeDisputeRequestBodyEvidence'DuplicateChargeExplanation :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | duplicate_charge_id
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesChargeDisputeRequestBodyEvidence'DuplicateChargeId :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | product_description
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 20000
  , postChargesChargeDisputeRequestBodyEvidence'ProductDescription :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | receipt
  , postChargesChargeDisputeRequestBodyEvidence'Receipt :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | refund_policy
  , postChargesChargeDisputeRequestBodyEvidence'RefundPolicy :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | refund_policy_disclosure
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 20000
  , postChargesChargeDisputeRequestBodyEvidence'RefundPolicyDisclosure :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | refund_refusal_explanation
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 20000
  , postChargesChargeDisputeRequestBodyEvidence'RefundRefusalExplanation :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | service_date
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesChargeDisputeRequestBodyEvidence'ServiceDate :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | service_documentation
  , postChargesChargeDisputeRequestBodyEvidence'ServiceDocumentation :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | shipping_address
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesChargeDisputeRequestBodyEvidence'ShippingAddress :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | shipping_carrier
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesChargeDisputeRequestBodyEvidence'ShippingCarrier :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | shipping_date
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesChargeDisputeRequestBodyEvidence'ShippingDate :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | shipping_documentation
  , postChargesChargeDisputeRequestBodyEvidence'ShippingDocumentation :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | shipping_tracking_number
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesChargeDisputeRequestBodyEvidence'ShippingTrackingNumber :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | uncategorized_file
  , postChargesChargeDisputeRequestBodyEvidence'UncategorizedFile :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | uncategorized_text
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 20000
  , postChargesChargeDisputeRequestBodyEvidence'UncategorizedText :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesChargeDisputeRequestBodyEvidence'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "access_activity_log" (postChargesChargeDisputeRequestBodyEvidence'AccessActivityLog obj) : (Data.Aeson..=) "billing_address" (postChargesChargeDisputeRequestBodyEvidence'BillingAddress obj) : (Data.Aeson..=) "cancellation_policy" (postChargesChargeDisputeRequestBodyEvidence'CancellationPolicy obj) : (Data.Aeson..=) "cancellation_policy_disclosure" (postChargesChargeDisputeRequestBodyEvidence'CancellationPolicyDisclosure obj) : (Data.Aeson..=) "cancellation_rebuttal" (postChargesChargeDisputeRequestBodyEvidence'CancellationRebuttal obj) : (Data.Aeson..=) "customer_communication" (postChargesChargeDisputeRequestBodyEvidence'CustomerCommunication obj) : (Data.Aeson..=) "customer_email_address" (postChargesChargeDisputeRequestBodyEvidence'CustomerEmailAddress obj) : (Data.Aeson..=) "customer_name" (postChargesChargeDisputeRequestBodyEvidence'CustomerName obj) : (Data.Aeson..=) "customer_purchase_ip" (postChargesChargeDisputeRequestBodyEvidence'CustomerPurchaseIp obj) : (Data.Aeson..=) "customer_signature" (postChargesChargeDisputeRequestBodyEvidence'CustomerSignature obj) : (Data.Aeson..=) "duplicate_charge_documentation" (postChargesChargeDisputeRequestBodyEvidence'DuplicateChargeDocumentation obj) : (Data.Aeson..=) "duplicate_charge_explanation" (postChargesChargeDisputeRequestBodyEvidence'DuplicateChargeExplanation obj) : (Data.Aeson..=) "duplicate_charge_id" (postChargesChargeDisputeRequestBodyEvidence'DuplicateChargeId obj) : (Data.Aeson..=) "product_description" (postChargesChargeDisputeRequestBodyEvidence'ProductDescription obj) : (Data.Aeson..=) "receipt" (postChargesChargeDisputeRequestBodyEvidence'Receipt obj) : (Data.Aeson..=) "refund_policy" (postChargesChargeDisputeRequestBodyEvidence'RefundPolicy obj) : (Data.Aeson..=) "refund_policy_disclosure" (postChargesChargeDisputeRequestBodyEvidence'RefundPolicyDisclosure obj) : (Data.Aeson..=) "refund_refusal_explanation" (postChargesChargeDisputeRequestBodyEvidence'RefundRefusalExplanation obj) : (Data.Aeson..=) "service_date" (postChargesChargeDisputeRequestBodyEvidence'ServiceDate obj) : (Data.Aeson..=) "service_documentation" (postChargesChargeDisputeRequestBodyEvidence'ServiceDocumentation obj) : (Data.Aeson..=) "shipping_address" (postChargesChargeDisputeRequestBodyEvidence'ShippingAddress obj) : (Data.Aeson..=) "shipping_carrier" (postChargesChargeDisputeRequestBodyEvidence'ShippingCarrier obj) : (Data.Aeson..=) "shipping_date" (postChargesChargeDisputeRequestBodyEvidence'ShippingDate obj) : (Data.Aeson..=) "shipping_documentation" (postChargesChargeDisputeRequestBodyEvidence'ShippingDocumentation obj) : (Data.Aeson..=) "shipping_tracking_number" (postChargesChargeDisputeRequestBodyEvidence'ShippingTrackingNumber obj) : (Data.Aeson..=) "uncategorized_file" (postChargesChargeDisputeRequestBodyEvidence'UncategorizedFile obj) : (Data.Aeson..=) "uncategorized_text" (postChargesChargeDisputeRequestBodyEvidence'UncategorizedText obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "access_activity_log" (postChargesChargeDisputeRequestBodyEvidence'AccessActivityLog obj) GHC.Base.<> ((Data.Aeson..=) "billing_address" (postChargesChargeDisputeRequestBodyEvidence'BillingAddress obj) GHC.Base.<> ((Data.Aeson..=) "cancellation_policy" (postChargesChargeDisputeRequestBodyEvidence'CancellationPolicy obj) GHC.Base.<> ((Data.Aeson..=) "cancellation_policy_disclosure" (postChargesChargeDisputeRequestBodyEvidence'CancellationPolicyDisclosure obj) GHC.Base.<> ((Data.Aeson..=) "cancellation_rebuttal" (postChargesChargeDisputeRequestBodyEvidence'CancellationRebuttal obj) GHC.Base.<> ((Data.Aeson..=) "customer_communication" (postChargesChargeDisputeRequestBodyEvidence'CustomerCommunication obj) GHC.Base.<> ((Data.Aeson..=) "customer_email_address" (postChargesChargeDisputeRequestBodyEvidence'CustomerEmailAddress obj) GHC.Base.<> ((Data.Aeson..=) "customer_name" (postChargesChargeDisputeRequestBodyEvidence'CustomerName obj) GHC.Base.<> ((Data.Aeson..=) "customer_purchase_ip" (postChargesChargeDisputeRequestBodyEvidence'CustomerPurchaseIp obj) GHC.Base.<> ((Data.Aeson..=) "customer_signature" (postChargesChargeDisputeRequestBodyEvidence'CustomerSignature obj) GHC.Base.<> ((Data.Aeson..=) "duplicate_charge_documentation" (postChargesChargeDisputeRequestBodyEvidence'DuplicateChargeDocumentation obj) GHC.Base.<> ((Data.Aeson..=) "duplicate_charge_explanation" (postChargesChargeDisputeRequestBodyEvidence'DuplicateChargeExplanation obj) GHC.Base.<> ((Data.Aeson..=) "duplicate_charge_id" (postChargesChargeDisputeRequestBodyEvidence'DuplicateChargeId obj) GHC.Base.<> ((Data.Aeson..=) "product_description" (postChargesChargeDisputeRequestBodyEvidence'ProductDescription obj) GHC.Base.<> ((Data.Aeson..=) "receipt" (postChargesChargeDisputeRequestBodyEvidence'Receipt obj) GHC.Base.<> ((Data.Aeson..=) "refund_policy" (postChargesChargeDisputeRequestBodyEvidence'RefundPolicy obj) GHC.Base.<> ((Data.Aeson..=) "refund_policy_disclosure" (postChargesChargeDisputeRequestBodyEvidence'RefundPolicyDisclosure obj) GHC.Base.<> ((Data.Aeson..=) "refund_refusal_explanation" (postChargesChargeDisputeRequestBodyEvidence'RefundRefusalExplanation obj) GHC.Base.<> ((Data.Aeson..=) "service_date" (postChargesChargeDisputeRequestBodyEvidence'ServiceDate obj) GHC.Base.<> ((Data.Aeson..=) "service_documentation" (postChargesChargeDisputeRequestBodyEvidence'ServiceDocumentation obj) GHC.Base.<> ((Data.Aeson..=) "shipping_address" (postChargesChargeDisputeRequestBodyEvidence'ShippingAddress obj) GHC.Base.<> ((Data.Aeson..=) "shipping_carrier" (postChargesChargeDisputeRequestBodyEvidence'ShippingCarrier obj) GHC.Base.<> ((Data.Aeson..=) "shipping_date" (postChargesChargeDisputeRequestBodyEvidence'ShippingDate obj) GHC.Base.<> ((Data.Aeson..=) "shipping_documentation" (postChargesChargeDisputeRequestBodyEvidence'ShippingDocumentation obj) GHC.Base.<> ((Data.Aeson..=) "shipping_tracking_number" (postChargesChargeDisputeRequestBodyEvidence'ShippingTrackingNumber obj) GHC.Base.<> ((Data.Aeson..=) "uncategorized_file" (postChargesChargeDisputeRequestBodyEvidence'UncategorizedFile obj) GHC.Base.<> (Data.Aeson..=) "uncategorized_text" (postChargesChargeDisputeRequestBodyEvidence'UncategorizedText obj)))))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesChargeDisputeRequestBodyEvidence'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesChargeDisputeRequestBodyEvidence'" (\obj -> ((((((((((((((((((((((((((GHC.Base.pure PostChargesChargeDisputeRequestBodyEvidence' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "access_activity_log")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancellation_policy")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancellation_policy_disclosure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancellation_rebuttal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer_communication")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer_email_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer_purchase_ip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer_signature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "duplicate_charge_documentation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "duplicate_charge_explanation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "duplicate_charge_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "product_description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "receipt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_policy")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_policy_disclosure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_refusal_explanation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "service_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "service_documentation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_carrier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_documentation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_tracking_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "uncategorized_file")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "uncategorized_text"))
-- | Defines the data type for the schema postChargesChargeDisputeRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostChargesChargeDisputeRequestBodyMetadata' = PostChargesChargeDisputeRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesChargeDisputeRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesChargeDisputeRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesChargeDisputeRequestBodyMetadata'" (\obj -> GHC.Base.pure PostChargesChargeDisputeRequestBodyMetadata')
-- | Represents a response of the operation 'postChargesChargeDispute'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostChargesChargeDisputeResponseError' is used.
data PostChargesChargeDisputeResponse =                   
   PostChargesChargeDisputeResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostChargesChargeDisputeResponse200 Dispute           -- ^ Successful response.
  | PostChargesChargeDisputeResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
