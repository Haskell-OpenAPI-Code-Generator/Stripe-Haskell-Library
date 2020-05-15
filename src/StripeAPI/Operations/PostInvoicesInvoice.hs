{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostInvoicesInvoice where

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
-- POST /v1/invoices/{invoice}
postInvoicesInvoice :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                     StripeAPI.Common.SecurityScheme s) =>
                       StripeAPI.Common.Configuration s ->
                       GHC.Base.String ->
                       PostInvoicesInvoiceRequestBody ->
                       m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                             (Network.HTTP.Client.Types.Response PostInvoicesInvoiceResponse))
postInvoicesInvoice config
                    invoice
                    body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostInvoicesInvoiceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesInvoiceResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                           Invoice)
                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesInvoiceResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/invoices/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel invoice)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postInvoicesInvoiceRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          StripeAPI.Common.Configuration s ->
                          GHC.Base.String ->
                          PostInvoicesInvoiceRequestBody ->
                          m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postInvoicesInvoiceRaw config
                       invoice
                       body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/invoices/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel invoice)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postInvoicesInvoiceM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        GHC.Base.String ->
                        PostInvoicesInvoiceRequestBody ->
                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                           m
                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response PostInvoicesInvoiceResponse))
postInvoicesInvoiceM invoice
                     body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostInvoicesInvoiceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesInvoiceResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                            Invoice)
                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesInvoiceResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/invoices/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel invoice)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postInvoicesInvoiceRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                         StripeAPI.Common.SecurityScheme s) =>
                           GHC.Base.String ->
                           PostInvoicesInvoiceRequestBody ->
                           Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                              m
                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postInvoicesInvoiceRawM invoice
                        body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/invoices/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel invoice)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostInvoicesInvoiceRequestBody
    = PostInvoicesInvoiceRequestBody {postInvoicesInvoiceRequestBodyApplicationFeeAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                      postInvoicesInvoiceRequestBodyAutoAdvance :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                      postInvoicesInvoiceRequestBodyCollectionMethod :: (GHC.Maybe.Maybe PostInvoicesInvoiceRequestBodyCollectionMethod'),
                                      postInvoicesInvoiceRequestBodyCustomFields :: (GHC.Maybe.Maybe PostInvoicesInvoiceRequestBodyCustomFields'Variants),
                                      postInvoicesInvoiceRequestBodyDaysUntilDue :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                      postInvoicesInvoiceRequestBodyDefaultPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String),
                                      postInvoicesInvoiceRequestBodyDefaultSource :: (GHC.Maybe.Maybe GHC.Base.String),
                                      postInvoicesInvoiceRequestBodyDefaultTaxRates :: (GHC.Maybe.Maybe PostInvoicesInvoiceRequestBodyDefaultTaxRates'Variants),
                                      postInvoicesInvoiceRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String),
                                      postInvoicesInvoiceRequestBodyDueDate :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                      postInvoicesInvoiceRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                      postInvoicesInvoiceRequestBodyFooter :: (GHC.Maybe.Maybe GHC.Base.String),
                                      postInvoicesInvoiceRequestBodyMetadata :: (GHC.Maybe.Maybe PostInvoicesInvoiceRequestBodyMetadata'),
                                      postInvoicesInvoiceRequestBodyStatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String),
                                      postInvoicesInvoiceRequestBodyTaxPercent :: (GHC.Maybe.Maybe PostInvoicesInvoiceRequestBodyTaxPercent'Variants)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostInvoicesInvoiceRequestBodyCollectionMethod'
    = PostInvoicesInvoiceRequestBodyCollectionMethod'EnumOther Data.Aeson.Types.Internal.Value
    | PostInvoicesInvoiceRequestBodyCollectionMethod'EnumTyped GHC.Base.String
    | PostInvoicesInvoiceRequestBodyCollectionMethod'EnumStringChargeAutomatically
    | PostInvoicesInvoiceRequestBodyCollectionMethod'EnumStringSendInvoice
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoicesInvoiceRequestBodyCollectionMethod'
    where toJSON (PostInvoicesInvoiceRequestBodyCollectionMethod'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostInvoicesInvoiceRequestBodyCollectionMethod'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostInvoicesInvoiceRequestBodyCollectionMethod'EnumStringChargeAutomatically) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically"
          toJSON (PostInvoicesInvoiceRequestBodyCollectionMethod'EnumStringSendInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice"
instance Data.Aeson.FromJSON PostInvoicesInvoiceRequestBodyCollectionMethod'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically")
                                          then PostInvoicesInvoiceRequestBodyCollectionMethod'EnumStringChargeAutomatically
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice")
                                                then PostInvoicesInvoiceRequestBodyCollectionMethod'EnumStringSendInvoice
                                                else PostInvoicesInvoiceRequestBodyCollectionMethod'EnumOther val)
data PostInvoicesInvoiceRequestBodyCustomFields'OneOf1
    = PostInvoicesInvoiceRequestBodyCustomFields'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostInvoicesInvoiceRequestBodyCustomFields'OneOf1EnumTyped GHC.Base.String
    | PostInvoicesInvoiceRequestBodyCustomFields'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoicesInvoiceRequestBodyCustomFields'OneOf1
    where toJSON (PostInvoicesInvoiceRequestBodyCustomFields'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostInvoicesInvoiceRequestBodyCustomFields'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostInvoicesInvoiceRequestBodyCustomFields'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostInvoicesInvoiceRequestBodyCustomFields'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostInvoicesInvoiceRequestBodyCustomFields'OneOf1EnumString_
                                          else PostInvoicesInvoiceRequestBodyCustomFields'OneOf1EnumOther val)
data PostInvoicesInvoiceRequestBodyCustomFields'OneOf2
    = PostInvoicesInvoiceRequestBodyCustomFields'OneOf2 {postInvoicesInvoiceRequestBodyCustomFields'OneOf2Name :: GHC.Base.String,
                                                         postInvoicesInvoiceRequestBodyCustomFields'OneOf2Value :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoicesInvoiceRequestBodyCustomFields'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "name" (postInvoicesInvoiceRequestBodyCustomFields'OneOf2Name obj) : (Data.Aeson..=) "value" (postInvoicesInvoiceRequestBodyCustomFields'OneOf2Value obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "name" (postInvoicesInvoiceRequestBodyCustomFields'OneOf2Name obj) GHC.Base.<> (Data.Aeson..=) "value" (postInvoicesInvoiceRequestBodyCustomFields'OneOf2Value obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostInvoicesInvoiceRequestBodyCustomFields'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoicesInvoiceRequestBodyCustomFields'OneOf2" (\obj -> (GHC.Base.pure PostInvoicesInvoiceRequestBodyCustomFields'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "value"))
data PostInvoicesInvoiceRequestBodyCustomFields'Variants
    = PostInvoicesInvoiceRequestBodyCustomFields'Variant1 PostInvoicesInvoiceRequestBodyCustomFields'OneOf1
    | PostInvoicesInvoiceRequestBodyCustomFields'Variant2 ([] PostInvoicesInvoiceRequestBodyCustomFields'OneOf2)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostInvoicesInvoiceRequestBodyCustomFields'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostInvoicesInvoiceRequestBodyCustomFields'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostInvoicesInvoiceRequestBodyDefaultTaxRates'OneOf1
    = PostInvoicesInvoiceRequestBodyDefaultTaxRates'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostInvoicesInvoiceRequestBodyDefaultTaxRates'OneOf1EnumTyped GHC.Base.String
    | PostInvoicesInvoiceRequestBodyDefaultTaxRates'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoicesInvoiceRequestBodyDefaultTaxRates'OneOf1
    where toJSON (PostInvoicesInvoiceRequestBodyDefaultTaxRates'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostInvoicesInvoiceRequestBodyDefaultTaxRates'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostInvoicesInvoiceRequestBodyDefaultTaxRates'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostInvoicesInvoiceRequestBodyDefaultTaxRates'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostInvoicesInvoiceRequestBodyDefaultTaxRates'OneOf1EnumString_
                                          else PostInvoicesInvoiceRequestBodyDefaultTaxRates'OneOf1EnumOther val)
data PostInvoicesInvoiceRequestBodyDefaultTaxRates'Variants
    = PostInvoicesInvoiceRequestBodyDefaultTaxRates'Variant1 PostInvoicesInvoiceRequestBodyDefaultTaxRates'OneOf1
    | PostInvoicesInvoiceRequestBodyDefaultTaxRates'Variant2 ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostInvoicesInvoiceRequestBodyDefaultTaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostInvoicesInvoiceRequestBodyDefaultTaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostInvoicesInvoiceRequestBodyMetadata'
    = PostInvoicesInvoiceRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoicesInvoiceRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostInvoicesInvoiceRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoicesInvoiceRequestBodyMetadata'" (\obj -> GHC.Base.pure PostInvoicesInvoiceRequestBodyMetadata')
data PostInvoicesInvoiceRequestBodyTaxPercent'OneOf1
    = PostInvoicesInvoiceRequestBodyTaxPercent'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostInvoicesInvoiceRequestBodyTaxPercent'OneOf1EnumTyped GHC.Base.String
    | PostInvoicesInvoiceRequestBodyTaxPercent'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoicesInvoiceRequestBodyTaxPercent'OneOf1
    where toJSON (PostInvoicesInvoiceRequestBodyTaxPercent'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostInvoicesInvoiceRequestBodyTaxPercent'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostInvoicesInvoiceRequestBodyTaxPercent'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostInvoicesInvoiceRequestBodyTaxPercent'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostInvoicesInvoiceRequestBodyTaxPercent'OneOf1EnumString_
                                          else PostInvoicesInvoiceRequestBodyTaxPercent'OneOf1EnumOther val)
data PostInvoicesInvoiceRequestBodyTaxPercent'Variants
    = PostInvoicesInvoiceRequestBodyTaxPercent'Variant1 PostInvoicesInvoiceRequestBodyTaxPercent'OneOf1
    | PostInvoicesInvoiceRequestBodyTaxPercent'Variant2 GHC.Types.Double
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostInvoicesInvoiceRequestBodyTaxPercent'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostInvoicesInvoiceRequestBodyTaxPercent'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostInvoicesInvoiceRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "application_fee_amount" (postInvoicesInvoiceRequestBodyApplicationFeeAmount obj) : (Data.Aeson..=) "auto_advance" (postInvoicesInvoiceRequestBodyAutoAdvance obj) : (Data.Aeson..=) "collection_method" (postInvoicesInvoiceRequestBodyCollectionMethod obj) : (Data.Aeson..=) "custom_fields" (postInvoicesInvoiceRequestBodyCustomFields obj) : (Data.Aeson..=) "days_until_due" (postInvoicesInvoiceRequestBodyDaysUntilDue obj) : (Data.Aeson..=) "default_payment_method" (postInvoicesInvoiceRequestBodyDefaultPaymentMethod obj) : (Data.Aeson..=) "default_source" (postInvoicesInvoiceRequestBodyDefaultSource obj) : (Data.Aeson..=) "default_tax_rates" (postInvoicesInvoiceRequestBodyDefaultTaxRates obj) : (Data.Aeson..=) "description" (postInvoicesInvoiceRequestBodyDescription obj) : (Data.Aeson..=) "due_date" (postInvoicesInvoiceRequestBodyDueDate obj) : (Data.Aeson..=) "expand" (postInvoicesInvoiceRequestBodyExpand obj) : (Data.Aeson..=) "footer" (postInvoicesInvoiceRequestBodyFooter obj) : (Data.Aeson..=) "metadata" (postInvoicesInvoiceRequestBodyMetadata obj) : (Data.Aeson..=) "statement_descriptor" (postInvoicesInvoiceRequestBodyStatementDescriptor obj) : (Data.Aeson..=) "tax_percent" (postInvoicesInvoiceRequestBodyTaxPercent obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "application_fee_amount" (postInvoicesInvoiceRequestBodyApplicationFeeAmount obj) GHC.Base.<> ((Data.Aeson..=) "auto_advance" (postInvoicesInvoiceRequestBodyAutoAdvance obj) GHC.Base.<> ((Data.Aeson..=) "collection_method" (postInvoicesInvoiceRequestBodyCollectionMethod obj) GHC.Base.<> ((Data.Aeson..=) "custom_fields" (postInvoicesInvoiceRequestBodyCustomFields obj) GHC.Base.<> ((Data.Aeson..=) "days_until_due" (postInvoicesInvoiceRequestBodyDaysUntilDue obj) GHC.Base.<> ((Data.Aeson..=) "default_payment_method" (postInvoicesInvoiceRequestBodyDefaultPaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "default_source" (postInvoicesInvoiceRequestBodyDefaultSource obj) GHC.Base.<> ((Data.Aeson..=) "default_tax_rates" (postInvoicesInvoiceRequestBodyDefaultTaxRates obj) GHC.Base.<> ((Data.Aeson..=) "description" (postInvoicesInvoiceRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "due_date" (postInvoicesInvoiceRequestBodyDueDate obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postInvoicesInvoiceRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "footer" (postInvoicesInvoiceRequestBodyFooter obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postInvoicesInvoiceRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor" (postInvoicesInvoiceRequestBodyStatementDescriptor obj) GHC.Base.<> (Data.Aeson..=) "tax_percent" (postInvoicesInvoiceRequestBodyTaxPercent obj)))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostInvoicesInvoiceRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoicesInvoiceRequestBody" (\obj -> ((((((((((((((GHC.Base.pure PostInvoicesInvoiceRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "auto_advance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "collection_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "custom_fields")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "days_until_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_tax_rates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "due_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "footer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_percent"))

data PostInvoicesInvoiceResponse
    = PostInvoicesInvoiceResponseError GHC.Base.String
    | PostInvoicesInvoiceResponse200 Invoice
    | PostInvoicesInvoiceResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
