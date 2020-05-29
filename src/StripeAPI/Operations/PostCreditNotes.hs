{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postCreditNotes
module StripeAPI.Operations.PostCreditNotes where

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

-- | > POST /v1/credit_notes
-- 
-- \<p>Issue a credit note to adjust the amount of a finalized invoice. For a \<code>status=open\<\/code> invoice, a credit note reduces
-- its \<code>amount_due\<\/code>. For a \<code>status=paid\<\/code> invoice, a credit note does not affect its \<code>amount_due\<\/code>. Instead, it can result
-- in any combination of the following:\<\/p>
-- 
-- \<ul>
--  \<li>Refund: create a new refund (using \<code>refund_amount\<\/code>) or link an existing refund (using \<code>refund\<\/code>).\<\/li>
--  \<li>Customer balance credit: credit the customer’s balance (using \<code>credit_amount\<\/code>) which will be automatically applied to their next invoice when it’s finalized.\<\/li>
--  \<li>Outside of Stripe credit: record the amount that is or will be credited outside of Stripe (using \<code>out_of_band_amount\<\/code>).\<\/li>
-- \<\/ul>
-- 
-- \<p>For post-payment credit notes the sum of the refund, credit and outside of Stripe amounts must equal the credit note total.\<\/p>
-- 
-- \<p>You may issue multiple credit notes for an invoice. Each credit note will increment the invoice’s \<code>pre_payment_credit_notes_amount\<\/code>
-- or \<code>post_payment_credit_notes_amount\<\/code> depending on its \<code>status\<\/code> at the time of credit note creation.\<\/p>
postCreditNotes :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> PostCreditNotesRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostCreditNotesResponse)) -- ^ Monad containing the result of the operation
postCreditNotes config
                body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCreditNotesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCreditNotesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                               CreditNote)
                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCreditNotesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                 Error)
                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/credit_notes") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/credit_notes
-- 
-- The same as 'postCreditNotes' but returns the raw 'Data.ByteString.Char8.ByteString'
postCreditNotesRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                    StripeAPI.Common.SecurityScheme s) =>
                      StripeAPI.Common.Configuration s ->
                      PostCreditNotesRequestBody ->
                      m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCreditNotesRaw config
                   body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/credit_notes") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/credit_notes
-- 
-- Monadic version of 'postCreditNotes' (use with 'StripeAPI.Common.runWithConfiguration')
postCreditNotesM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                  StripeAPI.Common.SecurityScheme s) =>
                    PostCreditNotesRequestBody ->
                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                       m
                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                           (Network.HTTP.Client.Types.Response PostCreditNotesResponse))
postCreditNotesM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostCreditNotesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCreditNotesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                CreditNote)
                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCreditNotesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/credit_notes") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/credit_notes
-- 
-- Monadic version of 'postCreditNotesRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postCreditNotesRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                     StripeAPI.Common.SecurityScheme s) =>
                       PostCreditNotesRequestBody ->
                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                          m
                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCreditNotesRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/credit_notes") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postCreditNotesRequestBody
-- 
-- 
data PostCreditNotesRequestBody = PostCreditNotesRequestBody {
  -- | amount: The integer amount in **%s** representing the total amount of the credit note.
  postCreditNotesRequestBodyAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | credit_amount: The integer amount in **%s** representing the amount to credit the customer\'s balance, which will be automatically applied to their next invoice.
  , postCreditNotesRequestBodyCreditAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | expand: Specifies which fields in the response should be expanded.
  , postCreditNotesRequestBodyExpand :: (GHC.Maybe.Maybe ([] Data.Text.Internal.Text))
  -- | invoice: ID of the invoice.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCreditNotesRequestBodyInvoice :: Data.Text.Internal.Text
  -- | lines: Line items that make up the credit note.
  , postCreditNotesRequestBodyLines :: (GHC.Maybe.Maybe ([] PostCreditNotesRequestBodyLines'))
  -- | memo: The credit note\'s memo appears on the credit note PDF.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCreditNotesRequestBodyMemo :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postCreditNotesRequestBodyMetadata :: (GHC.Maybe.Maybe PostCreditNotesRequestBodyMetadata')
  -- | out_of_band_amount: The integer amount in **%s** representing the amount that is credited outside of Stripe.
  , postCreditNotesRequestBodyOutOfBandAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | reason: Reason for issuing this credit note, one of \`duplicate\`, \`fraudulent\`, \`order_change\`, or \`product_unsatisfactory\`
  , postCreditNotesRequestBodyReason :: (GHC.Maybe.Maybe PostCreditNotesRequestBodyReason')
  -- | refund: ID of an existing refund to link this credit note to.
  , postCreditNotesRequestBodyRefund :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | refund_amount: The integer amount in **%s** representing the amount to refund. If set, a refund will be created for the charge associated with the invoice.
  , postCreditNotesRequestBodyRefundAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCreditNotesRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postCreditNotesRequestBodyAmount obj) : (Data.Aeson..=) "credit_amount" (postCreditNotesRequestBodyCreditAmount obj) : (Data.Aeson..=) "expand" (postCreditNotesRequestBodyExpand obj) : (Data.Aeson..=) "invoice" (postCreditNotesRequestBodyInvoice obj) : (Data.Aeson..=) "lines" (postCreditNotesRequestBodyLines obj) : (Data.Aeson..=) "memo" (postCreditNotesRequestBodyMemo obj) : (Data.Aeson..=) "metadata" (postCreditNotesRequestBodyMetadata obj) : (Data.Aeson..=) "out_of_band_amount" (postCreditNotesRequestBodyOutOfBandAmount obj) : (Data.Aeson..=) "reason" (postCreditNotesRequestBodyReason obj) : (Data.Aeson..=) "refund" (postCreditNotesRequestBodyRefund obj) : (Data.Aeson..=) "refund_amount" (postCreditNotesRequestBodyRefundAmount obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postCreditNotesRequestBodyAmount obj) GHC.Base.<> ((Data.Aeson..=) "credit_amount" (postCreditNotesRequestBodyCreditAmount obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postCreditNotesRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "invoice" (postCreditNotesRequestBodyInvoice obj) GHC.Base.<> ((Data.Aeson..=) "lines" (postCreditNotesRequestBodyLines obj) GHC.Base.<> ((Data.Aeson..=) "memo" (postCreditNotesRequestBodyMemo obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCreditNotesRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "out_of_band_amount" (postCreditNotesRequestBodyOutOfBandAmount obj) GHC.Base.<> ((Data.Aeson..=) "reason" (postCreditNotesRequestBodyReason obj) GHC.Base.<> ((Data.Aeson..=) "refund" (postCreditNotesRequestBodyRefund obj) GHC.Base.<> (Data.Aeson..=) "refund_amount" (postCreditNotesRequestBodyRefundAmount obj)))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCreditNotesRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCreditNotesRequestBody" (\obj -> ((((((((((GHC.Base.pure PostCreditNotesRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "credit_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "invoice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lines")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "memo")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "out_of_band_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_amount"))
-- | Defines the data type for the schema postCreditNotesRequestBodyLines\'
-- 
-- 
data PostCreditNotesRequestBodyLines' = PostCreditNotesRequestBodyLines' {
  -- | amount
  postCreditNotesRequestBodyLines'Amount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | description
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCreditNotesRequestBodyLines'Description :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | invoice_line_item
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCreditNotesRequestBodyLines'InvoiceLineItem :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | quantity
  , postCreditNotesRequestBodyLines'Quantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | tax_rates
  , postCreditNotesRequestBodyLines'TaxRates :: (GHC.Maybe.Maybe PostCreditNotesRequestBodyLines'TaxRates'Variants)
  -- | type
  , postCreditNotesRequestBodyLines'Type :: PostCreditNotesRequestBodyLines'Type'
  -- | unit_amount
  , postCreditNotesRequestBodyLines'UnitAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | unit_amount_decimal
  , postCreditNotesRequestBodyLines'UnitAmountDecimal :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCreditNotesRequestBodyLines'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postCreditNotesRequestBodyLines'Amount obj) : (Data.Aeson..=) "description" (postCreditNotesRequestBodyLines'Description obj) : (Data.Aeson..=) "invoice_line_item" (postCreditNotesRequestBodyLines'InvoiceLineItem obj) : (Data.Aeson..=) "quantity" (postCreditNotesRequestBodyLines'Quantity obj) : (Data.Aeson..=) "tax_rates" (postCreditNotesRequestBodyLines'TaxRates obj) : (Data.Aeson..=) "type" (postCreditNotesRequestBodyLines'Type obj) : (Data.Aeson..=) "unit_amount" (postCreditNotesRequestBodyLines'UnitAmount obj) : (Data.Aeson..=) "unit_amount_decimal" (postCreditNotesRequestBodyLines'UnitAmountDecimal obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postCreditNotesRequestBodyLines'Amount obj) GHC.Base.<> ((Data.Aeson..=) "description" (postCreditNotesRequestBodyLines'Description obj) GHC.Base.<> ((Data.Aeson..=) "invoice_line_item" (postCreditNotesRequestBodyLines'InvoiceLineItem obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (postCreditNotesRequestBodyLines'Quantity obj) GHC.Base.<> ((Data.Aeson..=) "tax_rates" (postCreditNotesRequestBodyLines'TaxRates obj) GHC.Base.<> ((Data.Aeson..=) "type" (postCreditNotesRequestBodyLines'Type obj) GHC.Base.<> ((Data.Aeson..=) "unit_amount" (postCreditNotesRequestBodyLines'UnitAmount obj) GHC.Base.<> (Data.Aeson..=) "unit_amount_decimal" (postCreditNotesRequestBodyLines'UnitAmountDecimal obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCreditNotesRequestBodyLines'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCreditNotesRequestBodyLines'" (\obj -> (((((((GHC.Base.pure PostCreditNotesRequestBodyLines' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoice_line_item")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_rates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unit_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unit_amount_decimal"))
-- | Defines the enum schema postCreditNotesRequestBodyLines\'Tax_rates\'OneOf1
-- 
-- 
data PostCreditNotesRequestBodyLines'TaxRates'OneOf1
    = PostCreditNotesRequestBodyLines'TaxRates'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCreditNotesRequestBodyLines'TaxRates'OneOf1EnumTyped Data.Text.Internal.Text
    | PostCreditNotesRequestBodyLines'TaxRates'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCreditNotesRequestBodyLines'TaxRates'OneOf1
    where toJSON (PostCreditNotesRequestBodyLines'TaxRates'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCreditNotesRequestBodyLines'TaxRates'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCreditNotesRequestBodyLines'TaxRates'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCreditNotesRequestBodyLines'TaxRates'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCreditNotesRequestBodyLines'TaxRates'OneOf1EnumString_
                                          else PostCreditNotesRequestBodyLines'TaxRates'OneOf1EnumOther val)
-- | Define the one-of schema postCreditNotesRequestBodyLines\'Tax_rates\'
-- 
-- 
data PostCreditNotesRequestBodyLines'TaxRates'Variants
    = PostCreditNotesRequestBodyLines'TaxRates'PostCreditNotesRequestBodyLines'TaxRates'OneOf1 PostCreditNotesRequestBodyLines'TaxRates'OneOf1
    | PostCreditNotesRequestBodyLines'TaxRates'ListText ([] Data.Text.Internal.Text)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCreditNotesRequestBodyLines'TaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCreditNotesRequestBodyLines'TaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postCreditNotesRequestBodyLines\'Type\'
-- 
-- 
data PostCreditNotesRequestBodyLines'Type'
    = PostCreditNotesRequestBodyLines'Type'EnumOther Data.Aeson.Types.Internal.Value
    | PostCreditNotesRequestBodyLines'Type'EnumTyped Data.Text.Internal.Text
    | PostCreditNotesRequestBodyLines'Type'EnumStringCustomLineItem
    | PostCreditNotesRequestBodyLines'Type'EnumStringInvoiceLineItem
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCreditNotesRequestBodyLines'Type'
    where toJSON (PostCreditNotesRequestBodyLines'Type'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCreditNotesRequestBodyLines'Type'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCreditNotesRequestBodyLines'Type'EnumStringCustomLineItem) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "custom_line_item"
          toJSON (PostCreditNotesRequestBodyLines'Type'EnumStringInvoiceLineItem) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "invoice_line_item"
instance Data.Aeson.FromJSON PostCreditNotesRequestBodyLines'Type'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "custom_line_item")
                                          then PostCreditNotesRequestBodyLines'Type'EnumStringCustomLineItem
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "invoice_line_item")
                                                then PostCreditNotesRequestBodyLines'Type'EnumStringInvoiceLineItem
                                                else PostCreditNotesRequestBodyLines'Type'EnumOther val)
-- | Defines the data type for the schema postCreditNotesRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostCreditNotesRequestBodyMetadata' = PostCreditNotesRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCreditNotesRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCreditNotesRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCreditNotesRequestBodyMetadata'" (\obj -> GHC.Base.pure PostCreditNotesRequestBodyMetadata')
-- | Defines the enum schema postCreditNotesRequestBodyReason\'
-- 
-- Reason for issuing this credit note, one of \`duplicate\`, \`fraudulent\`, \`order_change\`, or \`product_unsatisfactory\`
data PostCreditNotesRequestBodyReason'
    = PostCreditNotesRequestBodyReason'EnumOther Data.Aeson.Types.Internal.Value
    | PostCreditNotesRequestBodyReason'EnumTyped Data.Text.Internal.Text
    | PostCreditNotesRequestBodyReason'EnumStringDuplicate
    | PostCreditNotesRequestBodyReason'EnumStringFraudulent
    | PostCreditNotesRequestBodyReason'EnumStringOrderChange
    | PostCreditNotesRequestBodyReason'EnumStringProductUnsatisfactory
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCreditNotesRequestBodyReason'
    where toJSON (PostCreditNotesRequestBodyReason'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCreditNotesRequestBodyReason'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCreditNotesRequestBodyReason'EnumStringDuplicate) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "duplicate"
          toJSON (PostCreditNotesRequestBodyReason'EnumStringFraudulent) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fraudulent"
          toJSON (PostCreditNotesRequestBodyReason'EnumStringOrderChange) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "order_change"
          toJSON (PostCreditNotesRequestBodyReason'EnumStringProductUnsatisfactory) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "product_unsatisfactory"
instance Data.Aeson.FromJSON PostCreditNotesRequestBodyReason'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "duplicate")
                                          then PostCreditNotesRequestBodyReason'EnumStringDuplicate
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fraudulent")
                                                then PostCreditNotesRequestBodyReason'EnumStringFraudulent
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "order_change")
                                                      then PostCreditNotesRequestBodyReason'EnumStringOrderChange
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "product_unsatisfactory")
                                                            then PostCreditNotesRequestBodyReason'EnumStringProductUnsatisfactory
                                                            else PostCreditNotesRequestBodyReason'EnumOther val)
-- | Represents a response of the operation 'postCreditNotes'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostCreditNotesResponseError' is used.
data PostCreditNotesResponse =                   
   PostCreditNotesResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostCreditNotesResponse200 CreditNote        -- ^ Successful response.
  | PostCreditNotesResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
