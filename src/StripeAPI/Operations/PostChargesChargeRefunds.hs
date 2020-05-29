{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postChargesChargeRefunds
module StripeAPI.Operations.PostChargesChargeRefunds where

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

-- | > POST /v1/charges/{charge}/refunds
-- 
-- \<p>Create a refund.\<\/p>
postChargesChargeRefunds :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                      -- ^ charge | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostChargesChargeRefundsRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostChargesChargeRefundsResponse)) -- ^ Monad containing the result of the operation
postChargesChargeRefunds config
                         charge
                         body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostChargesChargeRefundsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostChargesChargeRefundsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                          Refund)
                                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostChargesChargeRefundsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/charges/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel charge)) GHC.Base.++ "/refunds"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/charges/{charge}/refunds
-- 
-- The same as 'postChargesChargeRefunds' but returns the raw 'Data.ByteString.Char8.ByteString'
postChargesChargeRefundsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                             StripeAPI.Common.SecurityScheme s) =>
                               StripeAPI.Common.Configuration s ->
                               GHC.Base.String ->
                               GHC.Maybe.Maybe PostChargesChargeRefundsRequestBody ->
                               m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postChargesChargeRefundsRaw config
                            charge
                            body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/charges/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel charge)) GHC.Base.++ "/refunds"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/charges/{charge}/refunds
-- 
-- Monadic version of 'postChargesChargeRefunds' (use with 'StripeAPI.Common.runWithConfiguration')
postChargesChargeRefundsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             GHC.Base.String ->
                             GHC.Maybe.Maybe PostChargesChargeRefundsRequestBody ->
                             Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                m
                                                                (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                    (Network.HTTP.Client.Types.Response PostChargesChargeRefundsResponse))
postChargesChargeRefundsM charge
                          body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostChargesChargeRefundsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostChargesChargeRefundsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                           Refund)
                                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostChargesChargeRefundsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/charges/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel charge)) GHC.Base.++ "/refunds"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/charges/{charge}/refunds
-- 
-- Monadic version of 'postChargesChargeRefundsRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postChargesChargeRefundsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                GHC.Base.String ->
                                GHC.Maybe.Maybe PostChargesChargeRefundsRequestBody ->
                                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                   m
                                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postChargesChargeRefundsRawM charge
                             body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/charges/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel charge)) GHC.Base.++ "/refunds"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postChargesChargeRefundsRequestBody
-- 
-- 
data PostChargesChargeRefundsRequestBody = PostChargesChargeRefundsRequestBody {
  -- | amount
  postChargesChargeRefundsRequestBodyAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | expand: Specifies which fields in the response should be expanded.
  , postChargesChargeRefundsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postChargesChargeRefundsRequestBodyMetadata :: (GHC.Maybe.Maybe PostChargesChargeRefundsRequestBodyMetadata')
  -- | payment_intent
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesChargeRefundsRequestBodyPaymentIntent :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | reason
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesChargeRefundsRequestBodyReason :: (GHC.Maybe.Maybe PostChargesChargeRefundsRequestBodyReason')
  -- | refund_application_fee
  , postChargesChargeRefundsRequestBodyRefundApplicationFee :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | reverse_transfer
  , postChargesChargeRefundsRequestBodyReverseTransfer :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesChargeRefundsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postChargesChargeRefundsRequestBodyAmount obj) : (Data.Aeson..=) "expand" (postChargesChargeRefundsRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postChargesChargeRefundsRequestBodyMetadata obj) : (Data.Aeson..=) "payment_intent" (postChargesChargeRefundsRequestBodyPaymentIntent obj) : (Data.Aeson..=) "reason" (postChargesChargeRefundsRequestBodyReason obj) : (Data.Aeson..=) "refund_application_fee" (postChargesChargeRefundsRequestBodyRefundApplicationFee obj) : (Data.Aeson..=) "reverse_transfer" (postChargesChargeRefundsRequestBodyReverseTransfer obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postChargesChargeRefundsRequestBodyAmount obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postChargesChargeRefundsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postChargesChargeRefundsRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "payment_intent" (postChargesChargeRefundsRequestBodyPaymentIntent obj) GHC.Base.<> ((Data.Aeson..=) "reason" (postChargesChargeRefundsRequestBodyReason obj) GHC.Base.<> ((Data.Aeson..=) "refund_application_fee" (postChargesChargeRefundsRequestBodyRefundApplicationFee obj) GHC.Base.<> (Data.Aeson..=) "reverse_transfer" (postChargesChargeRefundsRequestBodyReverseTransfer obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesChargeRefundsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesChargeRefundsRequestBody" (\obj -> ((((((GHC.Base.pure PostChargesChargeRefundsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_intent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_application_fee")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reverse_transfer"))
-- | Defines the data type for the schema postChargesChargeRefundsRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostChargesChargeRefundsRequestBodyMetadata' = PostChargesChargeRefundsRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesChargeRefundsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesChargeRefundsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesChargeRefundsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostChargesChargeRefundsRequestBodyMetadata')
-- | Defines the enum schema postChargesChargeRefundsRequestBodyReason\'
-- 
-- 
data PostChargesChargeRefundsRequestBodyReason'
    = PostChargesChargeRefundsRequestBodyReason'EnumOther Data.Aeson.Types.Internal.Value
    | PostChargesChargeRefundsRequestBodyReason'EnumTyped GHC.Base.String
    | PostChargesChargeRefundsRequestBodyReason'EnumStringDuplicate
    | PostChargesChargeRefundsRequestBodyReason'EnumStringFraudulent
    | PostChargesChargeRefundsRequestBodyReason'EnumStringRequestedByCustomer
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesChargeRefundsRequestBodyReason'
    where toJSON (PostChargesChargeRefundsRequestBodyReason'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostChargesChargeRefundsRequestBodyReason'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostChargesChargeRefundsRequestBodyReason'EnumStringDuplicate) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "duplicate"
          toJSON (PostChargesChargeRefundsRequestBodyReason'EnumStringFraudulent) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fraudulent"
          toJSON (PostChargesChargeRefundsRequestBodyReason'EnumStringRequestedByCustomer) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "requested_by_customer"
instance Data.Aeson.FromJSON PostChargesChargeRefundsRequestBodyReason'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "duplicate")
                                          then PostChargesChargeRefundsRequestBodyReason'EnumStringDuplicate
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fraudulent")
                                                then PostChargesChargeRefundsRequestBodyReason'EnumStringFraudulent
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "requested_by_customer")
                                                      then PostChargesChargeRefundsRequestBodyReason'EnumStringRequestedByCustomer
                                                      else PostChargesChargeRefundsRequestBodyReason'EnumOther val)
-- | Represents a response of the operation 'postChargesChargeRefunds'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostChargesChargeRefundsResponseError' is used.
data PostChargesChargeRefundsResponse =                   
   PostChargesChargeRefundsResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostChargesChargeRefundsResponse200 Refund            -- ^ Successful response.
  | PostChargesChargeRefundsResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
