{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostInvoicesInvoicePay where

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
-- POST /v1/invoices/{invoice}/pay
postInvoicesInvoicePay :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          StripeAPI.Common.Configuration s ->
                          GHC.Base.String ->
                          PostInvoicesInvoicePayRequestBody ->
                          m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                (Network.HTTP.Client.Types.Response PostInvoicesInvoicePayResponse))
postInvoicesInvoicePay config
                       invoice
                       body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostInvoicesInvoicePayResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesInvoicePayResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                    Invoice)
                                                                                                                                                                                              | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesInvoicePayResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/invoices/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel invoice)) GHC.Base.++ "/pay"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postInvoicesInvoicePayRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             StripeAPI.Common.Configuration s ->
                             GHC.Base.String ->
                             PostInvoicesInvoicePayRequestBody ->
                             m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                   (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postInvoicesInvoicePayRaw config
                          invoice
                          body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/invoices/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel invoice)) GHC.Base.++ "/pay"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postInvoicesInvoicePayM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                         StripeAPI.Common.SecurityScheme s) =>
                           GHC.Base.String ->
                           PostInvoicesInvoicePayRequestBody ->
                           Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                              m
                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                  (Network.HTTP.Client.Types.Response PostInvoicesInvoicePayResponse))
postInvoicesInvoicePayM invoice
                        body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostInvoicesInvoicePayResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesInvoicePayResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                     Invoice)
                                                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesInvoicePayResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/invoices/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel invoice)) GHC.Base.++ "/pay"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postInvoicesInvoicePayRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                            StripeAPI.Common.SecurityScheme s) =>
                              GHC.Base.String ->
                              PostInvoicesInvoicePayRequestBody ->
                              Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                 m
                                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postInvoicesInvoicePayRawM invoice
                           body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/invoices/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel invoice)) GHC.Base.++ "/pay"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostInvoicesInvoicePayRequestBody
    = PostInvoicesInvoicePayRequestBody {postInvoicesInvoicePayRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                         postInvoicesInvoicePayRequestBodyForgive :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                         postInvoicesInvoicePayRequestBodyOffSession :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                         postInvoicesInvoicePayRequestBodyPaidOutOfBand :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                         postInvoicesInvoicePayRequestBodyPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String),
                                         postInvoicesInvoicePayRequestBodySource :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoicesInvoicePayRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "expand" (postInvoicesInvoicePayRequestBodyExpand obj) : (Data.Aeson..=) "forgive" (postInvoicesInvoicePayRequestBodyForgive obj) : (Data.Aeson..=) "off_session" (postInvoicesInvoicePayRequestBodyOffSession obj) : (Data.Aeson..=) "paid_out_of_band" (postInvoicesInvoicePayRequestBodyPaidOutOfBand obj) : (Data.Aeson..=) "payment_method" (postInvoicesInvoicePayRequestBodyPaymentMethod obj) : (Data.Aeson..=) "source" (postInvoicesInvoicePayRequestBodySource obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "expand" (postInvoicesInvoicePayRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "forgive" (postInvoicesInvoicePayRequestBodyForgive obj) GHC.Base.<> ((Data.Aeson..=) "off_session" (postInvoicesInvoicePayRequestBodyOffSession obj) GHC.Base.<> ((Data.Aeson..=) "paid_out_of_band" (postInvoicesInvoicePayRequestBodyPaidOutOfBand obj) GHC.Base.<> ((Data.Aeson..=) "payment_method" (postInvoicesInvoicePayRequestBodyPaymentMethod obj) GHC.Base.<> (Data.Aeson..=) "source" (postInvoicesInvoicePayRequestBodySource obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostInvoicesInvoicePayRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoicesInvoicePayRequestBody" (\obj -> (((((GHC.Base.pure PostInvoicesInvoicePayRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "forgive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "off_session")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "paid_out_of_band")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source"))

data PostInvoicesInvoicePayResponse
    = PostInvoicesInvoicePayResponseError GHC.Base.String
    | PostInvoicesInvoicePayResponse200 Invoice
    | PostInvoicesInvoicePayResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
