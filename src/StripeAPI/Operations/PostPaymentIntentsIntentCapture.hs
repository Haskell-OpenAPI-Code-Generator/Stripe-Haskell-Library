{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostPaymentIntentsIntentCapture where

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
-- POST /v1/payment_intents/{intent}/capture
postPaymentIntentsIntentCapture :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                 StripeAPI.Common.SecurityScheme s) =>
                                   StripeAPI.Common.Configuration s ->
                                   GHC.Base.String ->
                                   PostPaymentIntentsIntentCaptureRequestBody ->
                                   m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                         (Network.HTTP.Client.Types.Response PostPaymentIntentsIntentCaptureResponse))
postPaymentIntentsIntentCapture config
                                intent
                                body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostPaymentIntentsIntentCaptureResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentCaptureResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                               PaymentIntent)
                                                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentCaptureResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                 Error)
                                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/payment_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/capture"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postPaymentIntentsIntentCaptureRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                    StripeAPI.Common.SecurityScheme s) =>
                                      StripeAPI.Common.Configuration s ->
                                      GHC.Base.String ->
                                      PostPaymentIntentsIntentCaptureRequestBody ->
                                      m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPaymentIntentsIntentCaptureRaw config
                                   intent
                                   body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/payment_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/capture"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postPaymentIntentsIntentCaptureM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                  StripeAPI.Common.SecurityScheme s) =>
                                    GHC.Base.String ->
                                    PostPaymentIntentsIntentCaptureRequestBody ->
                                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                       m
                                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                           (Network.HTTP.Client.Types.Response PostPaymentIntentsIntentCaptureResponse))
postPaymentIntentsIntentCaptureM intent
                                 body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostPaymentIntentsIntentCaptureResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentCaptureResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                PaymentIntent)
                                                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentCaptureResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/payment_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/capture"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postPaymentIntentsIntentCaptureRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                     StripeAPI.Common.SecurityScheme s) =>
                                       GHC.Base.String ->
                                       PostPaymentIntentsIntentCaptureRequestBody ->
                                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                          m
                                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPaymentIntentsIntentCaptureRawM intent
                                    body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/payment_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/capture"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostPaymentIntentsIntentCaptureRequestBody
    = PostPaymentIntentsIntentCaptureRequestBody {postPaymentIntentsIntentCaptureRequestBodyAmountToCapture :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                  postPaymentIntentsIntentCaptureRequestBodyApplicationFeeAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                  postPaymentIntentsIntentCaptureRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                                  postPaymentIntentsIntentCaptureRequestBodyStatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postPaymentIntentsIntentCaptureRequestBodyStatementDescriptorSuffix :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postPaymentIntentsIntentCaptureRequestBodyTransferData :: (GHC.Maybe.Maybe PostPaymentIntentsIntentCaptureRequestBodyTransferData')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostPaymentIntentsIntentCaptureRequestBodyTransferData'
    = PostPaymentIntentsIntentCaptureRequestBodyTransferData' {postPaymentIntentsIntentCaptureRequestBodyTransferData'Amount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentCaptureRequestBodyTransferData'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postPaymentIntentsIntentCaptureRequestBodyTransferData'Amount obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postPaymentIntentsIntentCaptureRequestBodyTransferData'Amount obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentCaptureRequestBodyTransferData'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentCaptureRequestBodyTransferData'" (\obj -> GHC.Base.pure PostPaymentIntentsIntentCaptureRequestBodyTransferData' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount"))
instance Data.Aeson.ToJSON PostPaymentIntentsIntentCaptureRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount_to_capture" (postPaymentIntentsIntentCaptureRequestBodyAmountToCapture obj) : (Data.Aeson..=) "application_fee_amount" (postPaymentIntentsIntentCaptureRequestBodyApplicationFeeAmount obj) : (Data.Aeson..=) "expand" (postPaymentIntentsIntentCaptureRequestBodyExpand obj) : (Data.Aeson..=) "statement_descriptor" (postPaymentIntentsIntentCaptureRequestBodyStatementDescriptor obj) : (Data.Aeson..=) "statement_descriptor_suffix" (postPaymentIntentsIntentCaptureRequestBodyStatementDescriptorSuffix obj) : (Data.Aeson..=) "transfer_data" (postPaymentIntentsIntentCaptureRequestBodyTransferData obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount_to_capture" (postPaymentIntentsIntentCaptureRequestBodyAmountToCapture obj) GHC.Base.<> ((Data.Aeson..=) "application_fee_amount" (postPaymentIntentsIntentCaptureRequestBodyApplicationFeeAmount obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postPaymentIntentsIntentCaptureRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor" (postPaymentIntentsIntentCaptureRequestBodyStatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor_suffix" (postPaymentIntentsIntentCaptureRequestBodyStatementDescriptorSuffix obj) GHC.Base.<> (Data.Aeson..=) "transfer_data" (postPaymentIntentsIntentCaptureRequestBodyTransferData obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentCaptureRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentCaptureRequestBody" (\obj -> (((((GHC.Base.pure PostPaymentIntentsIntentCaptureRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_to_capture")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_suffix")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transfer_data"))

data PostPaymentIntentsIntentCaptureResponse
    = PostPaymentIntentsIntentCaptureResponseError GHC.Base.String
    | PostPaymentIntentsIntentCaptureResponse200 PaymentIntent
    | PostPaymentIntentsIntentCaptureResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
