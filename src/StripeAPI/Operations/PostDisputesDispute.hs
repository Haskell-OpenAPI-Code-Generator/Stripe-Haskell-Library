{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostDisputesDispute where

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

-- | No summary provided
--
-- POST /v1/disputes/{dispute}
postDisputesDispute :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                     StripeAPI.Common.SecurityScheme s) =>
                       StripeAPI.Common.Configuration s ->
                       GHC.Base.String ->
                       PostDisputesDisputeRequestBody ->
                       m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                             (Network.HTTP.Client.Types.Response PostDisputesDisputeResponse))
postDisputesDispute config
                    dispute
                    body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostDisputesDisputeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostDisputesDisputeResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                           Dispute)
                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostDisputesDisputeResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/disputes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel dispute)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postDisputesDisputeRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          StripeAPI.Common.Configuration s ->
                          GHC.Base.String ->
                          PostDisputesDisputeRequestBody ->
                          m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postDisputesDisputeRaw config
                       dispute
                       body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/disputes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel dispute)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postDisputesDisputeM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        GHC.Base.String ->
                        PostDisputesDisputeRequestBody ->
                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                           m
                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response PostDisputesDisputeResponse))
postDisputesDisputeM dispute
                     body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostDisputesDisputeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostDisputesDisputeResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                            Dispute)
                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostDisputesDisputeResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/disputes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel dispute)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postDisputesDisputeRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                         StripeAPI.Common.SecurityScheme s) =>
                           GHC.Base.String ->
                           PostDisputesDisputeRequestBody ->
                           Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                              m
                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postDisputesDisputeRawM dispute
                        body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/disputes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel dispute)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostDisputesDisputeRequestBody
    = PostDisputesDisputeRequestBody {postDisputesDisputeRequestBodyEvidence :: (GHC.Maybe.Maybe PostDisputesDisputeRequestBodyEvidence'),
                                      postDisputesDisputeRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                      postDisputesDisputeRequestBodyMetadata :: (GHC.Maybe.Maybe PostDisputesDisputeRequestBodyMetadata'),
                                      postDisputesDisputeRequestBodySubmit :: (GHC.Maybe.Maybe GHC.Types.Bool)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostDisputesDisputeRequestBodyEvidence'
    = PostDisputesDisputeRequestBodyEvidence' {postDisputesDisputeRequestBodyEvidence'AccessActivityLog :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postDisputesDisputeRequestBodyEvidence'BillingAddress :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postDisputesDisputeRequestBodyEvidence'CancellationPolicy :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postDisputesDisputeRequestBodyEvidence'CancellationPolicyDisclosure :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postDisputesDisputeRequestBodyEvidence'CancellationRebuttal :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postDisputesDisputeRequestBodyEvidence'CustomerCommunication :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postDisputesDisputeRequestBodyEvidence'CustomerEmailAddress :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postDisputesDisputeRequestBodyEvidence'CustomerName :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postDisputesDisputeRequestBodyEvidence'CustomerPurchaseIp :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postDisputesDisputeRequestBodyEvidence'CustomerSignature :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postDisputesDisputeRequestBodyEvidence'DuplicateChargeDocumentation :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postDisputesDisputeRequestBodyEvidence'DuplicateChargeExplanation :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postDisputesDisputeRequestBodyEvidence'DuplicateChargeId :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postDisputesDisputeRequestBodyEvidence'ProductDescription :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postDisputesDisputeRequestBodyEvidence'Receipt :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postDisputesDisputeRequestBodyEvidence'RefundPolicy :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postDisputesDisputeRequestBodyEvidence'RefundPolicyDisclosure :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postDisputesDisputeRequestBodyEvidence'RefundRefusalExplanation :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postDisputesDisputeRequestBodyEvidence'ServiceDate :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postDisputesDisputeRequestBodyEvidence'ServiceDocumentation :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postDisputesDisputeRequestBodyEvidence'ShippingAddress :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postDisputesDisputeRequestBodyEvidence'ShippingCarrier :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postDisputesDisputeRequestBodyEvidence'ShippingDate :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postDisputesDisputeRequestBodyEvidence'ShippingDocumentation :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postDisputesDisputeRequestBodyEvidence'ShippingTrackingNumber :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postDisputesDisputeRequestBodyEvidence'UncategorizedFile :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postDisputesDisputeRequestBodyEvidence'UncategorizedText :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostDisputesDisputeRequestBodyEvidence'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "access_activity_log" (postDisputesDisputeRequestBodyEvidence'AccessActivityLog obj) : (Data.Aeson..=) "billing_address" (postDisputesDisputeRequestBodyEvidence'BillingAddress obj) : (Data.Aeson..=) "cancellation_policy" (postDisputesDisputeRequestBodyEvidence'CancellationPolicy obj) : (Data.Aeson..=) "cancellation_policy_disclosure" (postDisputesDisputeRequestBodyEvidence'CancellationPolicyDisclosure obj) : (Data.Aeson..=) "cancellation_rebuttal" (postDisputesDisputeRequestBodyEvidence'CancellationRebuttal obj) : (Data.Aeson..=) "customer_communication" (postDisputesDisputeRequestBodyEvidence'CustomerCommunication obj) : (Data.Aeson..=) "customer_email_address" (postDisputesDisputeRequestBodyEvidence'CustomerEmailAddress obj) : (Data.Aeson..=) "customer_name" (postDisputesDisputeRequestBodyEvidence'CustomerName obj) : (Data.Aeson..=) "customer_purchase_ip" (postDisputesDisputeRequestBodyEvidence'CustomerPurchaseIp obj) : (Data.Aeson..=) "customer_signature" (postDisputesDisputeRequestBodyEvidence'CustomerSignature obj) : (Data.Aeson..=) "duplicate_charge_documentation" (postDisputesDisputeRequestBodyEvidence'DuplicateChargeDocumentation obj) : (Data.Aeson..=) "duplicate_charge_explanation" (postDisputesDisputeRequestBodyEvidence'DuplicateChargeExplanation obj) : (Data.Aeson..=) "duplicate_charge_id" (postDisputesDisputeRequestBodyEvidence'DuplicateChargeId obj) : (Data.Aeson..=) "product_description" (postDisputesDisputeRequestBodyEvidence'ProductDescription obj) : (Data.Aeson..=) "receipt" (postDisputesDisputeRequestBodyEvidence'Receipt obj) : (Data.Aeson..=) "refund_policy" (postDisputesDisputeRequestBodyEvidence'RefundPolicy obj) : (Data.Aeson..=) "refund_policy_disclosure" (postDisputesDisputeRequestBodyEvidence'RefundPolicyDisclosure obj) : (Data.Aeson..=) "refund_refusal_explanation" (postDisputesDisputeRequestBodyEvidence'RefundRefusalExplanation obj) : (Data.Aeson..=) "service_date" (postDisputesDisputeRequestBodyEvidence'ServiceDate obj) : (Data.Aeson..=) "service_documentation" (postDisputesDisputeRequestBodyEvidence'ServiceDocumentation obj) : (Data.Aeson..=) "shipping_address" (postDisputesDisputeRequestBodyEvidence'ShippingAddress obj) : (Data.Aeson..=) "shipping_carrier" (postDisputesDisputeRequestBodyEvidence'ShippingCarrier obj) : (Data.Aeson..=) "shipping_date" (postDisputesDisputeRequestBodyEvidence'ShippingDate obj) : (Data.Aeson..=) "shipping_documentation" (postDisputesDisputeRequestBodyEvidence'ShippingDocumentation obj) : (Data.Aeson..=) "shipping_tracking_number" (postDisputesDisputeRequestBodyEvidence'ShippingTrackingNumber obj) : (Data.Aeson..=) "uncategorized_file" (postDisputesDisputeRequestBodyEvidence'UncategorizedFile obj) : (Data.Aeson..=) "uncategorized_text" (postDisputesDisputeRequestBodyEvidence'UncategorizedText obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "access_activity_log" (postDisputesDisputeRequestBodyEvidence'AccessActivityLog obj) GHC.Base.<> ((Data.Aeson..=) "billing_address" (postDisputesDisputeRequestBodyEvidence'BillingAddress obj) GHC.Base.<> ((Data.Aeson..=) "cancellation_policy" (postDisputesDisputeRequestBodyEvidence'CancellationPolicy obj) GHC.Base.<> ((Data.Aeson..=) "cancellation_policy_disclosure" (postDisputesDisputeRequestBodyEvidence'CancellationPolicyDisclosure obj) GHC.Base.<> ((Data.Aeson..=) "cancellation_rebuttal" (postDisputesDisputeRequestBodyEvidence'CancellationRebuttal obj) GHC.Base.<> ((Data.Aeson..=) "customer_communication" (postDisputesDisputeRequestBodyEvidence'CustomerCommunication obj) GHC.Base.<> ((Data.Aeson..=) "customer_email_address" (postDisputesDisputeRequestBodyEvidence'CustomerEmailAddress obj) GHC.Base.<> ((Data.Aeson..=) "customer_name" (postDisputesDisputeRequestBodyEvidence'CustomerName obj) GHC.Base.<> ((Data.Aeson..=) "customer_purchase_ip" (postDisputesDisputeRequestBodyEvidence'CustomerPurchaseIp obj) GHC.Base.<> ((Data.Aeson..=) "customer_signature" (postDisputesDisputeRequestBodyEvidence'CustomerSignature obj) GHC.Base.<> ((Data.Aeson..=) "duplicate_charge_documentation" (postDisputesDisputeRequestBodyEvidence'DuplicateChargeDocumentation obj) GHC.Base.<> ((Data.Aeson..=) "duplicate_charge_explanation" (postDisputesDisputeRequestBodyEvidence'DuplicateChargeExplanation obj) GHC.Base.<> ((Data.Aeson..=) "duplicate_charge_id" (postDisputesDisputeRequestBodyEvidence'DuplicateChargeId obj) GHC.Base.<> ((Data.Aeson..=) "product_description" (postDisputesDisputeRequestBodyEvidence'ProductDescription obj) GHC.Base.<> ((Data.Aeson..=) "receipt" (postDisputesDisputeRequestBodyEvidence'Receipt obj) GHC.Base.<> ((Data.Aeson..=) "refund_policy" (postDisputesDisputeRequestBodyEvidence'RefundPolicy obj) GHC.Base.<> ((Data.Aeson..=) "refund_policy_disclosure" (postDisputesDisputeRequestBodyEvidence'RefundPolicyDisclosure obj) GHC.Base.<> ((Data.Aeson..=) "refund_refusal_explanation" (postDisputesDisputeRequestBodyEvidence'RefundRefusalExplanation obj) GHC.Base.<> ((Data.Aeson..=) "service_date" (postDisputesDisputeRequestBodyEvidence'ServiceDate obj) GHC.Base.<> ((Data.Aeson..=) "service_documentation" (postDisputesDisputeRequestBodyEvidence'ServiceDocumentation obj) GHC.Base.<> ((Data.Aeson..=) "shipping_address" (postDisputesDisputeRequestBodyEvidence'ShippingAddress obj) GHC.Base.<> ((Data.Aeson..=) "shipping_carrier" (postDisputesDisputeRequestBodyEvidence'ShippingCarrier obj) GHC.Base.<> ((Data.Aeson..=) "shipping_date" (postDisputesDisputeRequestBodyEvidence'ShippingDate obj) GHC.Base.<> ((Data.Aeson..=) "shipping_documentation" (postDisputesDisputeRequestBodyEvidence'ShippingDocumentation obj) GHC.Base.<> ((Data.Aeson..=) "shipping_tracking_number" (postDisputesDisputeRequestBodyEvidence'ShippingTrackingNumber obj) GHC.Base.<> ((Data.Aeson..=) "uncategorized_file" (postDisputesDisputeRequestBodyEvidence'UncategorizedFile obj) GHC.Base.<> (Data.Aeson..=) "uncategorized_text" (postDisputesDisputeRequestBodyEvidence'UncategorizedText obj)))))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostDisputesDisputeRequestBodyEvidence'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostDisputesDisputeRequestBodyEvidence'" (\obj -> ((((((((((((((((((((((((((GHC.Base.pure PostDisputesDisputeRequestBodyEvidence' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "access_activity_log")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancellation_policy")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancellation_policy_disclosure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancellation_rebuttal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer_communication")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer_email_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer_purchase_ip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer_signature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "duplicate_charge_documentation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "duplicate_charge_explanation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "duplicate_charge_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "product_description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "receipt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_policy")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_policy_disclosure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_refusal_explanation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "service_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "service_documentation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_carrier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_documentation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_tracking_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "uncategorized_file")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "uncategorized_text"))
data PostDisputesDisputeRequestBodyMetadata'
    = PostDisputesDisputeRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostDisputesDisputeRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostDisputesDisputeRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostDisputesDisputeRequestBodyMetadata'" (\obj -> GHC.Base.pure PostDisputesDisputeRequestBodyMetadata')
instance Data.Aeson.ToJSON PostDisputesDisputeRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "evidence" (postDisputesDisputeRequestBodyEvidence obj) : (Data.Aeson..=) "expand" (postDisputesDisputeRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postDisputesDisputeRequestBodyMetadata obj) : (Data.Aeson..=) "submit" (postDisputesDisputeRequestBodySubmit obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "evidence" (postDisputesDisputeRequestBodyEvidence obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postDisputesDisputeRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postDisputesDisputeRequestBodyMetadata obj) GHC.Base.<> (Data.Aeson..=) "submit" (postDisputesDisputeRequestBodySubmit obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostDisputesDisputeRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostDisputesDisputeRequestBody" (\obj -> (((GHC.Base.pure PostDisputesDisputeRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "evidence")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "submit"))

data PostDisputesDisputeResponse
    = PostDisputesDisputeResponseError GHC.Base.String
    | PostDisputesDisputeResponse200 Dispute
    | PostDisputesDisputeResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
