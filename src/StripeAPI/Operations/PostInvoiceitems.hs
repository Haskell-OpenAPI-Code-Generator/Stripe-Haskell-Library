{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostInvoiceitems where

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
-- POST /v1/invoiceitems
postInvoiceitems :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                  StripeAPI.Common.SecurityScheme s) =>
                    StripeAPI.Common.Configuration s ->
                    PostInvoiceitemsRequestBody ->
                    m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                          (Network.HTTP.Client.Types.Response PostInvoiceitemsResponse))
postInvoiceitems config
                 body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostInvoiceitemsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostInvoiceitemsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                  Invoiceitem)
                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostInvoiceitemsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/invoiceitems") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postInvoiceitemsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                     StripeAPI.Common.SecurityScheme s) =>
                       StripeAPI.Common.Configuration s ->
                       PostInvoiceitemsRequestBody ->
                       m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                             (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postInvoiceitemsRaw config
                    body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/invoiceitems") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postInvoiceitemsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                   StripeAPI.Common.SecurityScheme s) =>
                     PostInvoiceitemsRequestBody ->
                     Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                        m
                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                            (Network.HTTP.Client.Types.Response PostInvoiceitemsResponse))
postInvoiceitemsM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostInvoiceitemsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostInvoiceitemsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                   Invoiceitem)
                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostInvoiceitemsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/invoiceitems") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postInvoiceitemsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        PostInvoiceitemsRequestBody ->
                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                           m
                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postInvoiceitemsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/invoiceitems") [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostInvoiceitemsRequestBody
    = PostInvoiceitemsRequestBody {postInvoiceitemsRequestBodyAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                   postInvoiceitemsRequestBodyCurrency :: (GHC.Maybe.Maybe GHC.Base.String),
                                   postInvoiceitemsRequestBodyCustomer :: GHC.Base.String,
                                   postInvoiceitemsRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String),
                                   postInvoiceitemsRequestBodyDiscountable :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                   postInvoiceitemsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                   postInvoiceitemsRequestBodyInvoice :: (GHC.Maybe.Maybe GHC.Base.String),
                                   postInvoiceitemsRequestBodyMetadata :: (GHC.Maybe.Maybe PostInvoiceitemsRequestBodyMetadata'),
                                   postInvoiceitemsRequestBodyPeriod :: (GHC.Maybe.Maybe PostInvoiceitemsRequestBodyPeriod'),
                                   postInvoiceitemsRequestBodyQuantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                   postInvoiceitemsRequestBodySubscription :: (GHC.Maybe.Maybe GHC.Base.String),
                                   postInvoiceitemsRequestBodyTaxRates :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                   postInvoiceitemsRequestBodyUnitAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                   postInvoiceitemsRequestBodyUnitAmountDecimal :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostInvoiceitemsRequestBodyMetadata'
    = PostInvoiceitemsRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoiceitemsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostInvoiceitemsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoiceitemsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostInvoiceitemsRequestBodyMetadata')
data PostInvoiceitemsRequestBodyPeriod'
    = PostInvoiceitemsRequestBodyPeriod' {postInvoiceitemsRequestBodyPeriod'End :: GHC.Integer.Type.Integer,
                                          postInvoiceitemsRequestBodyPeriod'Start :: GHC.Integer.Type.Integer}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoiceitemsRequestBodyPeriod'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "end" (postInvoiceitemsRequestBodyPeriod'End obj) : (Data.Aeson..=) "start" (postInvoiceitemsRequestBodyPeriod'Start obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "end" (postInvoiceitemsRequestBodyPeriod'End obj) GHC.Base.<> (Data.Aeson..=) "start" (postInvoiceitemsRequestBodyPeriod'Start obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostInvoiceitemsRequestBodyPeriod'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoiceitemsRequestBodyPeriod'" (\obj -> (GHC.Base.pure PostInvoiceitemsRequestBodyPeriod' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "start"))
instance Data.Aeson.ToJSON PostInvoiceitemsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postInvoiceitemsRequestBodyAmount obj) : (Data.Aeson..=) "currency" (postInvoiceitemsRequestBodyCurrency obj) : (Data.Aeson..=) "customer" (postInvoiceitemsRequestBodyCustomer obj) : (Data.Aeson..=) "description" (postInvoiceitemsRequestBodyDescription obj) : (Data.Aeson..=) "discountable" (postInvoiceitemsRequestBodyDiscountable obj) : (Data.Aeson..=) "expand" (postInvoiceitemsRequestBodyExpand obj) : (Data.Aeson..=) "invoice" (postInvoiceitemsRequestBodyInvoice obj) : (Data.Aeson..=) "metadata" (postInvoiceitemsRequestBodyMetadata obj) : (Data.Aeson..=) "period" (postInvoiceitemsRequestBodyPeriod obj) : (Data.Aeson..=) "quantity" (postInvoiceitemsRequestBodyQuantity obj) : (Data.Aeson..=) "subscription" (postInvoiceitemsRequestBodySubscription obj) : (Data.Aeson..=) "tax_rates" (postInvoiceitemsRequestBodyTaxRates obj) : (Data.Aeson..=) "unit_amount" (postInvoiceitemsRequestBodyUnitAmount obj) : (Data.Aeson..=) "unit_amount_decimal" (postInvoiceitemsRequestBodyUnitAmountDecimal obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postInvoiceitemsRequestBodyAmount obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postInvoiceitemsRequestBodyCurrency obj) GHC.Base.<> ((Data.Aeson..=) "customer" (postInvoiceitemsRequestBodyCustomer obj) GHC.Base.<> ((Data.Aeson..=) "description" (postInvoiceitemsRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "discountable" (postInvoiceitemsRequestBodyDiscountable obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postInvoiceitemsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "invoice" (postInvoiceitemsRequestBodyInvoice obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postInvoiceitemsRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "period" (postInvoiceitemsRequestBodyPeriod obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (postInvoiceitemsRequestBodyQuantity obj) GHC.Base.<> ((Data.Aeson..=) "subscription" (postInvoiceitemsRequestBodySubscription obj) GHC.Base.<> ((Data.Aeson..=) "tax_rates" (postInvoiceitemsRequestBodyTaxRates obj) GHC.Base.<> ((Data.Aeson..=) "unit_amount" (postInvoiceitemsRequestBodyUnitAmount obj) GHC.Base.<> (Data.Aeson..=) "unit_amount_decimal" (postInvoiceitemsRequestBodyUnitAmountDecimal obj))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostInvoiceitemsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoiceitemsRequestBody" (\obj -> (((((((((((((GHC.Base.pure PostInvoiceitemsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "discountable")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "period")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "subscription")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_rates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unit_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unit_amount_decimal"))

data PostInvoiceitemsResponse
    = PostInvoiceitemsResponseError GHC.Base.String
    | PostInvoiceitemsResponse200 Invoiceitem
    | PostInvoiceitemsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
