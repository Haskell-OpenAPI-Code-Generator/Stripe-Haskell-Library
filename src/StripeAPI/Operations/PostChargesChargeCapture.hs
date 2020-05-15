{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostChargesChargeCapture where

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
-- POST /v1/charges/{charge}/capture
postChargesChargeCapture :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                          StripeAPI.Common.SecurityScheme s) =>
                            StripeAPI.Common.Configuration s ->
                            GHC.Base.String ->
                            PostChargesChargeCaptureRequestBody ->
                            m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                  (Network.HTTP.Client.Types.Response PostChargesChargeCaptureResponse))
postChargesChargeCapture config
                         charge
                         body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostChargesChargeCaptureResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostChargesChargeCaptureResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                          Charge)
                                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostChargesChargeCaptureResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/charges/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel charge)) GHC.Base.++ "/capture"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postChargesChargeCaptureRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                             StripeAPI.Common.SecurityScheme s) =>
                               StripeAPI.Common.Configuration s ->
                               GHC.Base.String ->
                               PostChargesChargeCaptureRequestBody ->
                               m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postChargesChargeCaptureRaw config
                            charge
                            body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/charges/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel charge)) GHC.Base.++ "/capture"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postChargesChargeCaptureM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             GHC.Base.String ->
                             PostChargesChargeCaptureRequestBody ->
                             Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                m
                                                                (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                    (Network.HTTP.Client.Types.Response PostChargesChargeCaptureResponse))
postChargesChargeCaptureM charge
                          body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostChargesChargeCaptureResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostChargesChargeCaptureResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                           Charge)
                                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostChargesChargeCaptureResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/charges/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel charge)) GHC.Base.++ "/capture"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postChargesChargeCaptureRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                GHC.Base.String ->
                                PostChargesChargeCaptureRequestBody ->
                                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                   m
                                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postChargesChargeCaptureRawM charge
                             body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/charges/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel charge)) GHC.Base.++ "/capture"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostChargesChargeCaptureRequestBody
    = PostChargesChargeCaptureRequestBody {postChargesChargeCaptureRequestBodyAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                           postChargesChargeCaptureRequestBodyApplicationFee :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                           postChargesChargeCaptureRequestBodyApplicationFeeAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                           postChargesChargeCaptureRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                           postChargesChargeCaptureRequestBodyReceiptEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                                           postChargesChargeCaptureRequestBodyStatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String),
                                           postChargesChargeCaptureRequestBodyStatementDescriptorSuffix :: (GHC.Maybe.Maybe GHC.Base.String),
                                           postChargesChargeCaptureRequestBodyTransferData :: (GHC.Maybe.Maybe PostChargesChargeCaptureRequestBodyTransferData'),
                                           postChargesChargeCaptureRequestBodyTransferGroup :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostChargesChargeCaptureRequestBodyTransferData'
    = PostChargesChargeCaptureRequestBodyTransferData' {postChargesChargeCaptureRequestBodyTransferData'Amount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesChargeCaptureRequestBodyTransferData'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postChargesChargeCaptureRequestBodyTransferData'Amount obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postChargesChargeCaptureRequestBodyTransferData'Amount obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesChargeCaptureRequestBodyTransferData'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesChargeCaptureRequestBodyTransferData'" (\obj -> GHC.Base.pure PostChargesChargeCaptureRequestBodyTransferData' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount"))
instance Data.Aeson.ToJSON PostChargesChargeCaptureRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postChargesChargeCaptureRequestBodyAmount obj) : (Data.Aeson..=) "application_fee" (postChargesChargeCaptureRequestBodyApplicationFee obj) : (Data.Aeson..=) "application_fee_amount" (postChargesChargeCaptureRequestBodyApplicationFeeAmount obj) : (Data.Aeson..=) "expand" (postChargesChargeCaptureRequestBodyExpand obj) : (Data.Aeson..=) "receipt_email" (postChargesChargeCaptureRequestBodyReceiptEmail obj) : (Data.Aeson..=) "statement_descriptor" (postChargesChargeCaptureRequestBodyStatementDescriptor obj) : (Data.Aeson..=) "statement_descriptor_suffix" (postChargesChargeCaptureRequestBodyStatementDescriptorSuffix obj) : (Data.Aeson..=) "transfer_data" (postChargesChargeCaptureRequestBodyTransferData obj) : (Data.Aeson..=) "transfer_group" (postChargesChargeCaptureRequestBodyTransferGroup obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postChargesChargeCaptureRequestBodyAmount obj) GHC.Base.<> ((Data.Aeson..=) "application_fee" (postChargesChargeCaptureRequestBodyApplicationFee obj) GHC.Base.<> ((Data.Aeson..=) "application_fee_amount" (postChargesChargeCaptureRequestBodyApplicationFeeAmount obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postChargesChargeCaptureRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "receipt_email" (postChargesChargeCaptureRequestBodyReceiptEmail obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor" (postChargesChargeCaptureRequestBodyStatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor_suffix" (postChargesChargeCaptureRequestBodyStatementDescriptorSuffix obj) GHC.Base.<> ((Data.Aeson..=) "transfer_data" (postChargesChargeCaptureRequestBodyTransferData obj) GHC.Base.<> (Data.Aeson..=) "transfer_group" (postChargesChargeCaptureRequestBodyTransferGroup obj)))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesChargeCaptureRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesChargeCaptureRequestBody" (\obj -> ((((((((GHC.Base.pure PostChargesChargeCaptureRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "receipt_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_suffix")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transfer_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transfer_group"))

data PostChargesChargeCaptureResponse
    = PostChargesChargeCaptureResponseError GHC.Base.String
    | PostChargesChargeCaptureResponse200 Charge
    | PostChargesChargeCaptureResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
