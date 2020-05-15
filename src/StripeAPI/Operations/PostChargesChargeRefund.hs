{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

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

-- | No summary provided
--
-- POST /v1/charges/{charge}/refund
postChargesChargeRefund :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                         StripeAPI.Common.SecurityScheme s) =>
                           StripeAPI.Common.Configuration s ->
                           GHC.Base.String ->
                           PostChargesChargeRefundRequestBody ->
                           m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                 (Network.HTTP.Client.Types.Response PostChargesChargeRefundResponse))
postChargesChargeRefund config
                        charge
                        body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostChargesChargeRefundResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostChargesChargeRefundResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                       Charge)
                                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostChargesChargeRefundResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/charges/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel charge)) GHC.Base.++ "/refund"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
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
data PostChargesChargeRefundRequestBody
    = PostChargesChargeRefundRequestBody {postChargesChargeRefundRequestBodyAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                          postChargesChargeRefundRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                          postChargesChargeRefundRequestBodyMetadata :: (GHC.Maybe.Maybe PostChargesChargeRefundRequestBodyMetadata'),
                                          postChargesChargeRefundRequestBodyPaymentIntent :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postChargesChargeRefundRequestBodyReason :: (GHC.Maybe.Maybe PostChargesChargeRefundRequestBodyReason'),
                                          postChargesChargeRefundRequestBodyRefundApplicationFee :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                          postChargesChargeRefundRequestBodyReverseTransfer :: (GHC.Maybe.Maybe GHC.Types.Bool)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostChargesChargeRefundRequestBodyMetadata'
    = PostChargesChargeRefundRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesChargeRefundRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesChargeRefundRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesChargeRefundRequestBodyMetadata'" (\obj -> GHC.Base.pure PostChargesChargeRefundRequestBodyMetadata')
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
instance Data.Aeson.ToJSON PostChargesChargeRefundRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postChargesChargeRefundRequestBodyAmount obj) : (Data.Aeson..=) "expand" (postChargesChargeRefundRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postChargesChargeRefundRequestBodyMetadata obj) : (Data.Aeson..=) "payment_intent" (postChargesChargeRefundRequestBodyPaymentIntent obj) : (Data.Aeson..=) "reason" (postChargesChargeRefundRequestBodyReason obj) : (Data.Aeson..=) "refund_application_fee" (postChargesChargeRefundRequestBodyRefundApplicationFee obj) : (Data.Aeson..=) "reverse_transfer" (postChargesChargeRefundRequestBodyReverseTransfer obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postChargesChargeRefundRequestBodyAmount obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postChargesChargeRefundRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postChargesChargeRefundRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "payment_intent" (postChargesChargeRefundRequestBodyPaymentIntent obj) GHC.Base.<> ((Data.Aeson..=) "reason" (postChargesChargeRefundRequestBodyReason obj) GHC.Base.<> ((Data.Aeson..=) "refund_application_fee" (postChargesChargeRefundRequestBodyRefundApplicationFee obj) GHC.Base.<> (Data.Aeson..=) "reverse_transfer" (postChargesChargeRefundRequestBodyReverseTransfer obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesChargeRefundRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesChargeRefundRequestBody" (\obj -> ((((((GHC.Base.pure PostChargesChargeRefundRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_intent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_application_fee")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reverse_transfer"))

data PostChargesChargeRefundResponse
    = PostChargesChargeRefundResponseError GHC.Base.String
    | PostChargesChargeRefundResponse200 Charge
    | PostChargesChargeRefundResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
