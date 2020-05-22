{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postInvoiceitems
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

-- | > POST /v1/invoiceitems
-- 
-- \<p>Creates an item to be added to a draft invoice. If no invoice is specified, the item will be on the next invoice created for the customer specified.\<\/p>
postInvoiceitems :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> PostInvoiceitemsRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostInvoiceitemsResponse)) -- ^ Monad containing the result of the operation
postInvoiceitems config
                 body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostInvoiceitemsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostInvoiceitemsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                  Invoiceitem)
                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostInvoiceitemsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/invoiceitems") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/invoiceitems
-- 
-- The same as 'postInvoiceitems' but returns the raw 'Data.ByteString.Char8.ByteString'
postInvoiceitemsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                     StripeAPI.Common.SecurityScheme s) =>
                       StripeAPI.Common.Configuration s ->
                       PostInvoiceitemsRequestBody ->
                       m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                             (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postInvoiceitemsRaw config
                    body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/invoiceitems") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/invoiceitems
-- 
-- Monadic version of 'postInvoiceitems' (use with 'StripeAPI.Common.runWithConfiguration')
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
-- | > POST /v1/invoiceitems
-- 
-- Monadic version of 'postInvoiceitemsRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postInvoiceitemsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        PostInvoiceitemsRequestBody ->
                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                           m
                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postInvoiceitemsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/invoiceitems") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postInvoiceitemsRequestBody
-- 
-- 
data PostInvoiceitemsRequestBody = PostInvoiceitemsRequestBody {
  -- | amount: The integer amount in **%s** of the charge to be applied to the upcoming invoice. Passing in a negative \`amount\` will reduce the \`amount_due\` on the invoice.
  postInvoiceitemsRequestBodyAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  , postInvoiceitemsRequestBodyCurrency :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | customer: The ID of the customer who will be billed when this invoice item is billed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postInvoiceitemsRequestBodyCustomer :: GHC.Base.String
  -- | description: An arbitrary string which you can attach to the invoice item. The description is displayed in the invoice for easy tracking.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postInvoiceitemsRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | discountable: Controls whether discounts apply to this invoice item. Defaults to false for prorations or negative invoice items, and true for all other invoice items.
  , postInvoiceitemsRequestBodyDiscountable :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | expand: Specifies which fields in the response should be expanded.
  , postInvoiceitemsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | invoice: The ID of an existing invoice to add this invoice item to. When left blank, the invoice item will be added to the next upcoming scheduled invoice. This is useful when adding invoice items in response to an invoice.created webhook. You can only add invoice items to draft invoices.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postInvoiceitemsRequestBodyInvoice :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postInvoiceitemsRequestBodyMetadata :: (GHC.Maybe.Maybe PostInvoiceitemsRequestBodyMetadata')
  -- | period: The period associated with this invoice item.
  , postInvoiceitemsRequestBodyPeriod :: (GHC.Maybe.Maybe PostInvoiceitemsRequestBodyPeriod')
  -- | quantity: Non-negative integer. The quantity of units for the invoice item.
  , postInvoiceitemsRequestBodyQuantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | subscription: The ID of a subscription to add this invoice item to. When left blank, the invoice item will be be added to the next upcoming scheduled invoice. When set, scheduled invoices for subscriptions other than the specified subscription will ignore the invoice item. Use this when you want to express that an invoice item has been accrued within the context of a particular subscription.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postInvoiceitemsRequestBodySubscription :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | tax_rates: The tax rates which apply to the invoice item. When set, the \`default_tax_rates\` on the invoice do not apply to this invoice item.
  , postInvoiceitemsRequestBodyTaxRates :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | unit_amount: The integer unit amount in **%s** of the charge to be applied to the upcoming invoice. This \`unit_amount\` will be multiplied by the quantity to get the full amount. Passing in a negative \`unit_amount\` will reduce the \`amount_due\` on the invoice.
  , postInvoiceitemsRequestBodyUnitAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | unit_amount_decimal: Same as \`unit_amount\`, but accepts a decimal value with at most 12 decimal places. Only one of \`unit_amount\` and \`unit_amount_decimal\` can be set.
  , postInvoiceitemsRequestBodyUnitAmountDecimal :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoiceitemsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postInvoiceitemsRequestBodyAmount obj) : (Data.Aeson..=) "currency" (postInvoiceitemsRequestBodyCurrency obj) : (Data.Aeson..=) "customer" (postInvoiceitemsRequestBodyCustomer obj) : (Data.Aeson..=) "description" (postInvoiceitemsRequestBodyDescription obj) : (Data.Aeson..=) "discountable" (postInvoiceitemsRequestBodyDiscountable obj) : (Data.Aeson..=) "expand" (postInvoiceitemsRequestBodyExpand obj) : (Data.Aeson..=) "invoice" (postInvoiceitemsRequestBodyInvoice obj) : (Data.Aeson..=) "metadata" (postInvoiceitemsRequestBodyMetadata obj) : (Data.Aeson..=) "period" (postInvoiceitemsRequestBodyPeriod obj) : (Data.Aeson..=) "quantity" (postInvoiceitemsRequestBodyQuantity obj) : (Data.Aeson..=) "subscription" (postInvoiceitemsRequestBodySubscription obj) : (Data.Aeson..=) "tax_rates" (postInvoiceitemsRequestBodyTaxRates obj) : (Data.Aeson..=) "unit_amount" (postInvoiceitemsRequestBodyUnitAmount obj) : (Data.Aeson..=) "unit_amount_decimal" (postInvoiceitemsRequestBodyUnitAmountDecimal obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postInvoiceitemsRequestBodyAmount obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postInvoiceitemsRequestBodyCurrency obj) GHC.Base.<> ((Data.Aeson..=) "customer" (postInvoiceitemsRequestBodyCustomer obj) GHC.Base.<> ((Data.Aeson..=) "description" (postInvoiceitemsRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "discountable" (postInvoiceitemsRequestBodyDiscountable obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postInvoiceitemsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "invoice" (postInvoiceitemsRequestBodyInvoice obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postInvoiceitemsRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "period" (postInvoiceitemsRequestBodyPeriod obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (postInvoiceitemsRequestBodyQuantity obj) GHC.Base.<> ((Data.Aeson..=) "subscription" (postInvoiceitemsRequestBodySubscription obj) GHC.Base.<> ((Data.Aeson..=) "tax_rates" (postInvoiceitemsRequestBodyTaxRates obj) GHC.Base.<> ((Data.Aeson..=) "unit_amount" (postInvoiceitemsRequestBodyUnitAmount obj) GHC.Base.<> (Data.Aeson..=) "unit_amount_decimal" (postInvoiceitemsRequestBodyUnitAmountDecimal obj))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostInvoiceitemsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoiceitemsRequestBody" (\obj -> (((((((((((((GHC.Base.pure PostInvoiceitemsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "discountable")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "period")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "subscription")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_rates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unit_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unit_amount_decimal"))
-- | Defines the data type for the schema postInvoiceitemsRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostInvoiceitemsRequestBodyMetadata' = PostInvoiceitemsRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoiceitemsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostInvoiceitemsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoiceitemsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostInvoiceitemsRequestBodyMetadata')
-- | Defines the data type for the schema postInvoiceitemsRequestBodyPeriod\'
-- 
-- The period associated with this invoice item.
data PostInvoiceitemsRequestBodyPeriod' = PostInvoiceitemsRequestBodyPeriod' {
  -- | end
  postInvoiceitemsRequestBodyPeriod'End :: GHC.Integer.Type.Integer
  -- | start
  , postInvoiceitemsRequestBodyPeriod'Start :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoiceitemsRequestBodyPeriod'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "end" (postInvoiceitemsRequestBodyPeriod'End obj) : (Data.Aeson..=) "start" (postInvoiceitemsRequestBodyPeriod'Start obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "end" (postInvoiceitemsRequestBodyPeriod'End obj) GHC.Base.<> (Data.Aeson..=) "start" (postInvoiceitemsRequestBodyPeriod'Start obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostInvoiceitemsRequestBodyPeriod'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoiceitemsRequestBodyPeriod'" (\obj -> (GHC.Base.pure PostInvoiceitemsRequestBodyPeriod' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "start"))
-- | Represents a response of the operation 'postInvoiceitems'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostInvoiceitemsResponseError' is used.
data PostInvoiceitemsResponse =                   
   PostInvoiceitemsResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostInvoiceitemsResponse200 Invoiceitem       -- ^ Successful response.
  | PostInvoiceitemsResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
