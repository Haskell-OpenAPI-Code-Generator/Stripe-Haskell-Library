{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostInvoices where

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
-- POST /v1/invoices
postInvoices :: forall m s . (StripeAPI.Common.MonadHTTP m,
                              StripeAPI.Common.SecurityScheme s) =>
                StripeAPI.Common.Configuration s ->
                PostInvoicesRequestBody ->
                m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                      (Network.HTTP.Client.Types.Response PostInvoicesResponse))
postInvoices config
             body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostInvoicesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      Invoice)
                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/invoices") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postInvoicesRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                 StripeAPI.Common.SecurityScheme s) =>
                   StripeAPI.Common.Configuration s ->
                   PostInvoicesRequestBody ->
                   m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postInvoicesRaw config
                body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/invoices") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postInvoicesM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                               StripeAPI.Common.SecurityScheme s) =>
                 PostInvoicesRequestBody ->
                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                    m
                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                        (Network.HTTP.Client.Types.Response PostInvoicesResponse))
postInvoicesM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostInvoicesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                       Invoice)
                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/invoices") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postInvoicesRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                  StripeAPI.Common.SecurityScheme s) =>
                    PostInvoicesRequestBody ->
                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                       m
                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postInvoicesRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/invoices") [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostInvoicesRequestBody
    = PostInvoicesRequestBody {postInvoicesRequestBodyApplicationFeeAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                               postInvoicesRequestBodyAutoAdvance :: (GHC.Maybe.Maybe GHC.Types.Bool),
                               postInvoicesRequestBodyCollectionMethod :: (GHC.Maybe.Maybe PostInvoicesRequestBodyCollectionMethod'),
                               postInvoicesRequestBodyCustomFields :: (GHC.Maybe.Maybe PostInvoicesRequestBodyCustomFields'Variants),
                               postInvoicesRequestBodyCustomer :: GHC.Base.String,
                               postInvoicesRequestBodyDaysUntilDue :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                               postInvoicesRequestBodyDefaultPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String),
                               postInvoicesRequestBodyDefaultSource :: (GHC.Maybe.Maybe GHC.Base.String),
                               postInvoicesRequestBodyDefaultTaxRates :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                               postInvoicesRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String),
                               postInvoicesRequestBodyDueDate :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                               postInvoicesRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                               postInvoicesRequestBodyFooter :: (GHC.Maybe.Maybe GHC.Base.String),
                               postInvoicesRequestBodyMetadata :: (GHC.Maybe.Maybe PostInvoicesRequestBodyMetadata'),
                               postInvoicesRequestBodyStatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String),
                               postInvoicesRequestBodySubscription :: (GHC.Maybe.Maybe GHC.Base.String),
                               postInvoicesRequestBodyTaxPercent :: (GHC.Maybe.Maybe GHC.Types.Double)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostInvoicesRequestBodyCollectionMethod'
    = PostInvoicesRequestBodyCollectionMethod'EnumOther Data.Aeson.Types.Internal.Value
    | PostInvoicesRequestBodyCollectionMethod'EnumTyped GHC.Base.String
    | PostInvoicesRequestBodyCollectionMethod'EnumStringChargeAutomatically
    | PostInvoicesRequestBodyCollectionMethod'EnumStringSendInvoice
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoicesRequestBodyCollectionMethod'
    where toJSON (PostInvoicesRequestBodyCollectionMethod'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostInvoicesRequestBodyCollectionMethod'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostInvoicesRequestBodyCollectionMethod'EnumStringChargeAutomatically) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically"
          toJSON (PostInvoicesRequestBodyCollectionMethod'EnumStringSendInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice"
instance Data.Aeson.FromJSON PostInvoicesRequestBodyCollectionMethod'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically")
                                          then PostInvoicesRequestBodyCollectionMethod'EnumStringChargeAutomatically
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice")
                                                then PostInvoicesRequestBodyCollectionMethod'EnumStringSendInvoice
                                                else PostInvoicesRequestBodyCollectionMethod'EnumOther val)
data PostInvoicesRequestBodyCustomFields'OneOf1
    = PostInvoicesRequestBodyCustomFields'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostInvoicesRequestBodyCustomFields'OneOf1EnumTyped GHC.Base.String
    | PostInvoicesRequestBodyCustomFields'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoicesRequestBodyCustomFields'OneOf1
    where toJSON (PostInvoicesRequestBodyCustomFields'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostInvoicesRequestBodyCustomFields'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostInvoicesRequestBodyCustomFields'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostInvoicesRequestBodyCustomFields'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostInvoicesRequestBodyCustomFields'OneOf1EnumString_
                                          else PostInvoicesRequestBodyCustomFields'OneOf1EnumOther val)
data PostInvoicesRequestBodyCustomFields'OneOf2
    = PostInvoicesRequestBodyCustomFields'OneOf2 {postInvoicesRequestBodyCustomFields'OneOf2Name :: GHC.Base.String,
                                                  postInvoicesRequestBodyCustomFields'OneOf2Value :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoicesRequestBodyCustomFields'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "name" (postInvoicesRequestBodyCustomFields'OneOf2Name obj) : (Data.Aeson..=) "value" (postInvoicesRequestBodyCustomFields'OneOf2Value obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "name" (postInvoicesRequestBodyCustomFields'OneOf2Name obj) GHC.Base.<> (Data.Aeson..=) "value" (postInvoicesRequestBodyCustomFields'OneOf2Value obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostInvoicesRequestBodyCustomFields'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoicesRequestBodyCustomFields'OneOf2" (\obj -> (GHC.Base.pure PostInvoicesRequestBodyCustomFields'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "value"))
data PostInvoicesRequestBodyCustomFields'Variants
    = PostInvoicesRequestBodyCustomFields'Variant1 PostInvoicesRequestBodyCustomFields'OneOf1
    | PostInvoicesRequestBodyCustomFields'Variant2 ([] PostInvoicesRequestBodyCustomFields'OneOf2)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostInvoicesRequestBodyCustomFields'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostInvoicesRequestBodyCustomFields'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostInvoicesRequestBodyMetadata'
    = PostInvoicesRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoicesRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostInvoicesRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoicesRequestBodyMetadata'" (\obj -> GHC.Base.pure PostInvoicesRequestBodyMetadata')
instance Data.Aeson.ToJSON PostInvoicesRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "application_fee_amount" (postInvoicesRequestBodyApplicationFeeAmount obj) : (Data.Aeson..=) "auto_advance" (postInvoicesRequestBodyAutoAdvance obj) : (Data.Aeson..=) "collection_method" (postInvoicesRequestBodyCollectionMethod obj) : (Data.Aeson..=) "custom_fields" (postInvoicesRequestBodyCustomFields obj) : (Data.Aeson..=) "customer" (postInvoicesRequestBodyCustomer obj) : (Data.Aeson..=) "days_until_due" (postInvoicesRequestBodyDaysUntilDue obj) : (Data.Aeson..=) "default_payment_method" (postInvoicesRequestBodyDefaultPaymentMethod obj) : (Data.Aeson..=) "default_source" (postInvoicesRequestBodyDefaultSource obj) : (Data.Aeson..=) "default_tax_rates" (postInvoicesRequestBodyDefaultTaxRates obj) : (Data.Aeson..=) "description" (postInvoicesRequestBodyDescription obj) : (Data.Aeson..=) "due_date" (postInvoicesRequestBodyDueDate obj) : (Data.Aeson..=) "expand" (postInvoicesRequestBodyExpand obj) : (Data.Aeson..=) "footer" (postInvoicesRequestBodyFooter obj) : (Data.Aeson..=) "metadata" (postInvoicesRequestBodyMetadata obj) : (Data.Aeson..=) "statement_descriptor" (postInvoicesRequestBodyStatementDescriptor obj) : (Data.Aeson..=) "subscription" (postInvoicesRequestBodySubscription obj) : (Data.Aeson..=) "tax_percent" (postInvoicesRequestBodyTaxPercent obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "application_fee_amount" (postInvoicesRequestBodyApplicationFeeAmount obj) GHC.Base.<> ((Data.Aeson..=) "auto_advance" (postInvoicesRequestBodyAutoAdvance obj) GHC.Base.<> ((Data.Aeson..=) "collection_method" (postInvoicesRequestBodyCollectionMethod obj) GHC.Base.<> ((Data.Aeson..=) "custom_fields" (postInvoicesRequestBodyCustomFields obj) GHC.Base.<> ((Data.Aeson..=) "customer" (postInvoicesRequestBodyCustomer obj) GHC.Base.<> ((Data.Aeson..=) "days_until_due" (postInvoicesRequestBodyDaysUntilDue obj) GHC.Base.<> ((Data.Aeson..=) "default_payment_method" (postInvoicesRequestBodyDefaultPaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "default_source" (postInvoicesRequestBodyDefaultSource obj) GHC.Base.<> ((Data.Aeson..=) "default_tax_rates" (postInvoicesRequestBodyDefaultTaxRates obj) GHC.Base.<> ((Data.Aeson..=) "description" (postInvoicesRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "due_date" (postInvoicesRequestBodyDueDate obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postInvoicesRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "footer" (postInvoicesRequestBodyFooter obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postInvoicesRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor" (postInvoicesRequestBodyStatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "subscription" (postInvoicesRequestBodySubscription obj) GHC.Base.<> (Data.Aeson..=) "tax_percent" (postInvoicesRequestBodyTaxPercent obj)))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostInvoicesRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoicesRequestBody" (\obj -> ((((((((((((((((GHC.Base.pure PostInvoicesRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "auto_advance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "collection_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "custom_fields")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "days_until_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_tax_rates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "due_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "footer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "subscription")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_percent"))

data PostInvoicesResponse
    = PostInvoicesResponseError GHC.Base.String
    | PostInvoicesResponse200 Invoice
    | PostInvoicesResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
