{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postChargesChargeRefund
module StripeAPI.Operations.PostChargesChargeRefund where

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

-- | > POST /v1/charges/{charge}/refund
-- 
-- \<p>When you create a new refund, you must specify a Charge or a PaymentIntent object on which to create it.\<\/p>
-- 
-- \<p>Creating a new refund will refund a charge that has previously been created but not yet refunded.
-- Funds will be refunded to the credit or debit card that was originally charged.\<\/p>
-- 
-- \<p>You can optionally refund only part of a charge.
-- You can do so multiple times, until the entire charge has been refunded.\<\/p>
-- 
-- \<p>Once entirely refunded, a charge can’t be refunded again.
-- This method will raise an error when called on an already-refunded charge,
-- or when trying to refund more money than is left on a charge.\<\/p>
postChargesChargeRefund :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                     -- ^ charge | Constraints: Maximum length of 5000
  -> PostChargesChargeRefundRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostChargesChargeRefundResponse)) -- ^ Monad containing the result of the operation
postChargesChargeRefund config
                        charge
                        body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostChargesChargeRefundResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostChargesChargeRefundResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                       Charge)
                                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostChargesChargeRefundResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/charges/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel charge)) GHC.Base.++ "/refund"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/charges/{charge}/refund
-- 
-- The same as 'postChargesChargeRefund' but returns the raw 'Data.ByteString.Char8.ByteString'
postChargesChargeRefundRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                            StripeAPI.Common.SecurityScheme s) =>
                              StripeAPI.Common.Configuration s ->
                              GHC.Base.String ->
                              PostChargesChargeRefundRequestBody ->
                              m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                    (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postChargesChargeRefundRaw config
                           charge
                           body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/charges/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel charge)) GHC.Base.++ "/refund"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/charges/{charge}/refund
-- 
-- Monadic version of 'postChargesChargeRefund' (use with 'StripeAPI.Common.runWithConfiguration')
postChargesChargeRefundM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                          StripeAPI.Common.SecurityScheme s) =>
                            GHC.Base.String ->
                            PostChargesChargeRefundRequestBody ->
                            Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                               m
                                                               (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                   (Network.HTTP.Client.Types.Response PostChargesChargeRefundResponse))
postChargesChargeRefundM charge
                         body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostChargesChargeRefundResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostChargesChargeRefundResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                        Charge)
                                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostChargesChargeRefundResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/charges/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel charge)) GHC.Base.++ "/refund"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/charges/{charge}/refund
-- 
-- Monadic version of 'postChargesChargeRefundRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postChargesChargeRefundRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                             StripeAPI.Common.SecurityScheme s) =>
                               GHC.Base.String ->
                               PostChargesChargeRefundRequestBody ->
                               Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                  m
                                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postChargesChargeRefundRawM charge
                            body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/charges/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel charge)) GHC.Base.++ "/refund"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postChargesChargeRefundRequestBody
-- 
-- 
data PostChargesChargeRefundRequestBody = PostChargesChargeRefundRequestBody {
  -- | amount
  postChargesChargeRefundRequestBodyAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | expand: Specifies which fields in the response should be expanded.
  , postChargesChargeRefundRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postChargesChargeRefundRequestBodyMetadata :: (GHC.Maybe.Maybe PostChargesChargeRefundRequestBodyMetadata')
  -- | payment_intent
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesChargeRefundRequestBodyPaymentIntent :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | reason
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesChargeRefundRequestBodyReason :: (GHC.Maybe.Maybe PostChargesChargeRefundRequestBodyReason')
  -- | refund_application_fee
  , postChargesChargeRefundRequestBodyRefundApplicationFee :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | reverse_transfer
  , postChargesChargeRefundRequestBodyReverseTransfer :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesChargeRefundRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postChargesChargeRefundRequestBodyAmount obj) : (Data.Aeson..=) "expand" (postChargesChargeRefundRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postChargesChargeRefundRequestBodyMetadata obj) : (Data.Aeson..=) "payment_intent" (postChargesChargeRefundRequestBodyPaymentIntent obj) : (Data.Aeson..=) "reason" (postChargesChargeRefundRequestBodyReason obj) : (Data.Aeson..=) "refund_application_fee" (postChargesChargeRefundRequestBodyRefundApplicationFee obj) : (Data.Aeson..=) "reverse_transfer" (postChargesChargeRefundRequestBodyReverseTransfer obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postChargesChargeRefundRequestBodyAmount obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postChargesChargeRefundRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postChargesChargeRefundRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "payment_intent" (postChargesChargeRefundRequestBodyPaymentIntent obj) GHC.Base.<> ((Data.Aeson..=) "reason" (postChargesChargeRefundRequestBodyReason obj) GHC.Base.<> ((Data.Aeson..=) "refund_application_fee" (postChargesChargeRefundRequestBodyRefundApplicationFee obj) GHC.Base.<> (Data.Aeson..=) "reverse_transfer" (postChargesChargeRefundRequestBodyReverseTransfer obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesChargeRefundRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesChargeRefundRequestBody" (\obj -> ((((((GHC.Base.pure PostChargesChargeRefundRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_intent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_application_fee")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reverse_transfer"))
-- | Defines the data type for the schema postChargesChargeRefundRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostChargesChargeRefundRequestBodyMetadata' = PostChargesChargeRefundRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesChargeRefundRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesChargeRefundRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesChargeRefundRequestBodyMetadata'" (\obj -> GHC.Base.pure PostChargesChargeRefundRequestBodyMetadata')
-- | Defines the enum schema postChargesChargeRefundRequestBodyReason\'
-- 
-- 
data PostChargesChargeRefundRequestBodyReason'
    = PostChargesChargeRefundRequestBodyReason'EnumOther Data.Aeson.Types.Internal.Value
    | PostChargesChargeRefundRequestBodyReason'EnumTyped GHC.Base.String
    | PostChargesChargeRefundRequestBodyReason'EnumStringDuplicate
    | PostChargesChargeRefundRequestBodyReason'EnumStringFraudulent
    | PostChargesChargeRefundRequestBodyReason'EnumStringRequestedByCustomer
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesChargeRefundRequestBodyReason'
    where toJSON (PostChargesChargeRefundRequestBodyReason'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostChargesChargeRefundRequestBodyReason'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostChargesChargeRefundRequestBodyReason'EnumStringDuplicate) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "duplicate"
          toJSON (PostChargesChargeRefundRequestBodyReason'EnumStringFraudulent) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fraudulent"
          toJSON (PostChargesChargeRefundRequestBodyReason'EnumStringRequestedByCustomer) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "requested_by_customer"
instance Data.Aeson.FromJSON PostChargesChargeRefundRequestBodyReason'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "duplicate")
                                          then PostChargesChargeRefundRequestBodyReason'EnumStringDuplicate
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fraudulent")
                                                then PostChargesChargeRefundRequestBodyReason'EnumStringFraudulent
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "requested_by_customer")
                                                      then PostChargesChargeRefundRequestBodyReason'EnumStringRequestedByCustomer
                                                      else PostChargesChargeRefundRequestBodyReason'EnumOther val)
-- | Represents a response of the operation 'postChargesChargeRefund'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostChargesChargeRefundResponseError' is used.
data PostChargesChargeRefundResponse =                   
   PostChargesChargeRefundResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostChargesChargeRefundResponse200 Charge            -- ^ Successful response.
  | PostChargesChargeRefundResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
