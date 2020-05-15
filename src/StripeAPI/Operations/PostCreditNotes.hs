{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

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
-- POST /v1/credit_notes
postCreditNotes :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                 StripeAPI.Common.SecurityScheme s) =>
                   StripeAPI.Common.Configuration s ->
                   PostCreditNotesRequestBody ->
                   m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                         (Network.HTTP.Client.Types.Response PostCreditNotesResponse))
postCreditNotes config
                body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCreditNotesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCreditNotesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                               CreditNote)
                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCreditNotesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                 Error)
                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/credit_notes") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCreditNotesRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                    StripeAPI.Common.SecurityScheme s) =>
                      StripeAPI.Common.Configuration s ->
                      PostCreditNotesRequestBody ->
                      m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCreditNotesRaw config
                   body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/credit_notes") [] body StripeAPI.Common.RequestBodyEncodingFormData)
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
                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/credit_notes") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCreditNotesRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                     StripeAPI.Common.SecurityScheme s) =>
                       PostCreditNotesRequestBody ->
                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                          m
                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCreditNotesRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/credit_notes") [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostCreditNotesRequestBody
    = PostCreditNotesRequestBody {postCreditNotesRequestBodyAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                  postCreditNotesRequestBodyCreditAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                  postCreditNotesRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                  postCreditNotesRequestBodyInvoice :: GHC.Base.String,
                                  postCreditNotesRequestBodyLines :: (GHC.Maybe.Maybe ([] PostCreditNotesRequestBodyLines')),
                                  postCreditNotesRequestBodyMemo :: (GHC.Maybe.Maybe GHC.Base.String),
                                  postCreditNotesRequestBodyMetadata :: (GHC.Maybe.Maybe PostCreditNotesRequestBodyMetadata'),
                                  postCreditNotesRequestBodyOutOfBandAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                  postCreditNotesRequestBodyReason :: (GHC.Maybe.Maybe PostCreditNotesRequestBodyReason'),
                                  postCreditNotesRequestBodyRefund :: (GHC.Maybe.Maybe GHC.Base.String),
                                  postCreditNotesRequestBodyRefundAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCreditNotesRequestBodyLines'
    = PostCreditNotesRequestBodyLines' {postCreditNotesRequestBodyLines'Amount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                        postCreditNotesRequestBodyLines'Description :: (GHC.Maybe.Maybe GHC.Base.String),
                                        postCreditNotesRequestBodyLines'InvoiceLineItem :: (GHC.Maybe.Maybe GHC.Base.String),
                                        postCreditNotesRequestBodyLines'Quantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                        postCreditNotesRequestBodyLines'TaxRates :: (GHC.Maybe.Maybe PostCreditNotesRequestBodyLines'TaxRates'Variants),
                                        postCreditNotesRequestBodyLines'Type :: PostCreditNotesRequestBodyLines'Type',
                                        postCreditNotesRequestBodyLines'UnitAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                        postCreditNotesRequestBodyLines'UnitAmountDecimal :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCreditNotesRequestBodyLines'TaxRates'OneOf1
    = PostCreditNotesRequestBodyLines'TaxRates'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCreditNotesRequestBodyLines'TaxRates'OneOf1EnumTyped GHC.Base.String
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
data PostCreditNotesRequestBodyLines'TaxRates'Variants
    = PostCreditNotesRequestBodyLines'TaxRates'Variant1 PostCreditNotesRequestBodyLines'TaxRates'OneOf1
    | PostCreditNotesRequestBodyLines'TaxRates'Variant2 ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCreditNotesRequestBodyLines'TaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCreditNotesRequestBodyLines'TaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCreditNotesRequestBodyLines'Type'
    = PostCreditNotesRequestBodyLines'Type'EnumOther Data.Aeson.Types.Internal.Value
    | PostCreditNotesRequestBodyLines'Type'EnumTyped GHC.Base.String
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
instance Data.Aeson.ToJSON PostCreditNotesRequestBodyLines'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postCreditNotesRequestBodyLines'Amount obj) : (Data.Aeson..=) "description" (postCreditNotesRequestBodyLines'Description obj) : (Data.Aeson..=) "invoice_line_item" (postCreditNotesRequestBodyLines'InvoiceLineItem obj) : (Data.Aeson..=) "quantity" (postCreditNotesRequestBodyLines'Quantity obj) : (Data.Aeson..=) "tax_rates" (postCreditNotesRequestBodyLines'TaxRates obj) : (Data.Aeson..=) "type" (postCreditNotesRequestBodyLines'Type obj) : (Data.Aeson..=) "unit_amount" (postCreditNotesRequestBodyLines'UnitAmount obj) : (Data.Aeson..=) "unit_amount_decimal" (postCreditNotesRequestBodyLines'UnitAmountDecimal obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postCreditNotesRequestBodyLines'Amount obj) GHC.Base.<> ((Data.Aeson..=) "description" (postCreditNotesRequestBodyLines'Description obj) GHC.Base.<> ((Data.Aeson..=) "invoice_line_item" (postCreditNotesRequestBodyLines'InvoiceLineItem obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (postCreditNotesRequestBodyLines'Quantity obj) GHC.Base.<> ((Data.Aeson..=) "tax_rates" (postCreditNotesRequestBodyLines'TaxRates obj) GHC.Base.<> ((Data.Aeson..=) "type" (postCreditNotesRequestBodyLines'Type obj) GHC.Base.<> ((Data.Aeson..=) "unit_amount" (postCreditNotesRequestBodyLines'UnitAmount obj) GHC.Base.<> (Data.Aeson..=) "unit_amount_decimal" (postCreditNotesRequestBodyLines'UnitAmountDecimal obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCreditNotesRequestBodyLines'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCreditNotesRequestBodyLines'" (\obj -> (((((((GHC.Base.pure PostCreditNotesRequestBodyLines' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoice_line_item")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_rates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unit_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unit_amount_decimal"))
data PostCreditNotesRequestBodyMetadata'
    = PostCreditNotesRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCreditNotesRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCreditNotesRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCreditNotesRequestBodyMetadata'" (\obj -> GHC.Base.pure PostCreditNotesRequestBodyMetadata')
data PostCreditNotesRequestBodyReason'
    = PostCreditNotesRequestBodyReason'EnumOther Data.Aeson.Types.Internal.Value
    | PostCreditNotesRequestBodyReason'EnumTyped GHC.Base.String
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
instance Data.Aeson.ToJSON PostCreditNotesRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postCreditNotesRequestBodyAmount obj) : (Data.Aeson..=) "credit_amount" (postCreditNotesRequestBodyCreditAmount obj) : (Data.Aeson..=) "expand" (postCreditNotesRequestBodyExpand obj) : (Data.Aeson..=) "invoice" (postCreditNotesRequestBodyInvoice obj) : (Data.Aeson..=) "lines" (postCreditNotesRequestBodyLines obj) : (Data.Aeson..=) "memo" (postCreditNotesRequestBodyMemo obj) : (Data.Aeson..=) "metadata" (postCreditNotesRequestBodyMetadata obj) : (Data.Aeson..=) "out_of_band_amount" (postCreditNotesRequestBodyOutOfBandAmount obj) : (Data.Aeson..=) "reason" (postCreditNotesRequestBodyReason obj) : (Data.Aeson..=) "refund" (postCreditNotesRequestBodyRefund obj) : (Data.Aeson..=) "refund_amount" (postCreditNotesRequestBodyRefundAmount obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postCreditNotesRequestBodyAmount obj) GHC.Base.<> ((Data.Aeson..=) "credit_amount" (postCreditNotesRequestBodyCreditAmount obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postCreditNotesRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "invoice" (postCreditNotesRequestBodyInvoice obj) GHC.Base.<> ((Data.Aeson..=) "lines" (postCreditNotesRequestBodyLines obj) GHC.Base.<> ((Data.Aeson..=) "memo" (postCreditNotesRequestBodyMemo obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCreditNotesRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "out_of_band_amount" (postCreditNotesRequestBodyOutOfBandAmount obj) GHC.Base.<> ((Data.Aeson..=) "reason" (postCreditNotesRequestBodyReason obj) GHC.Base.<> ((Data.Aeson..=) "refund" (postCreditNotesRequestBodyRefund obj) GHC.Base.<> (Data.Aeson..=) "refund_amount" (postCreditNotesRequestBodyRefundAmount obj)))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCreditNotesRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCreditNotesRequestBody" (\obj -> ((((((((((GHC.Base.pure PostCreditNotesRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "credit_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "invoice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lines")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "memo")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "out_of_band_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_amount"))

data PostCreditNotesResponse
    = PostCreditNotesResponseError GHC.Base.String
    | PostCreditNotesResponse200 CreditNote
    | PostCreditNotesResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
