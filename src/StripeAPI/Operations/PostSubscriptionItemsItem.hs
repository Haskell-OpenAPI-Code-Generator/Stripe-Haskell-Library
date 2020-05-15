{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostSubscriptionItemsItem where

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
-- POST /v1/subscription_items/{item}
postSubscriptionItemsItem :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             StripeAPI.Common.Configuration s ->
                             GHC.Base.String ->
                             PostSubscriptionItemsItemRequestBody ->
                             m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                   (Network.HTTP.Client.Types.Response PostSubscriptionItemsItemResponse))
postSubscriptionItemsItem config
                          item
                          body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSubscriptionItemsItemResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionItemsItemResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                             SubscriptionItem)
                                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionItemsItemResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/subscription_items/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel item)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSubscriptionItemsItemRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                StripeAPI.Common.Configuration s ->
                                GHC.Base.String ->
                                PostSubscriptionItemsItemRequestBody ->
                                m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSubscriptionItemsItemRaw config
                             item
                             body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/subscription_items/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel item)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSubscriptionItemsItemM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                            StripeAPI.Common.SecurityScheme s) =>
                              GHC.Base.String ->
                              PostSubscriptionItemsItemRequestBody ->
                              Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                 m
                                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                     (Network.HTTP.Client.Types.Response PostSubscriptionItemsItemResponse))
postSubscriptionItemsItemM item
                           body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSubscriptionItemsItemResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionItemsItemResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                              SubscriptionItem)
                                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionItemsItemResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                Error)
                                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/subscription_items/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel item)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSubscriptionItemsItemRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                               StripeAPI.Common.SecurityScheme s) =>
                                 GHC.Base.String ->
                                 PostSubscriptionItemsItemRequestBody ->
                                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                    m
                                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSubscriptionItemsItemRawM item
                              body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/subscription_items/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel item)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostSubscriptionItemsItemRequestBody
    = PostSubscriptionItemsItemRequestBody {postSubscriptionItemsItemRequestBodyBillingThresholds :: (GHC.Maybe.Maybe PostSubscriptionItemsItemRequestBodyBillingThresholds'Variants),
                                            postSubscriptionItemsItemRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                            postSubscriptionItemsItemRequestBodyMetadata :: (GHC.Maybe.Maybe PostSubscriptionItemsItemRequestBodyMetadata'),
                                            postSubscriptionItemsItemRequestBodyOffSession :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                            postSubscriptionItemsItemRequestBodyPaymentBehavior :: (GHC.Maybe.Maybe PostSubscriptionItemsItemRequestBodyPaymentBehavior'),
                                            postSubscriptionItemsItemRequestBodyPlan :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postSubscriptionItemsItemRequestBodyProrate :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                            postSubscriptionItemsItemRequestBodyProrationBehavior :: (GHC.Maybe.Maybe PostSubscriptionItemsItemRequestBodyProrationBehavior'),
                                            postSubscriptionItemsItemRequestBodyProrationDate :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                            postSubscriptionItemsItemRequestBodyQuantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                            postSubscriptionItemsItemRequestBodyTaxRates :: (GHC.Maybe.Maybe PostSubscriptionItemsItemRequestBodyTaxRates'Variants)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf1
    = PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf1
    where toJSON (PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf1EnumString_
                                          else PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf1EnumOther val)
data PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf2
    = PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf2 {postSubscriptionItemsItemRequestBodyBillingThresholds'OneOf2UsageGte :: GHC.Integer.Type.Integer}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "usage_gte" (postSubscriptionItemsItemRequestBodyBillingThresholds'OneOf2UsageGte obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "usage_gte" (postSubscriptionItemsItemRequestBodyBillingThresholds'OneOf2UsageGte obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf2" (\obj -> GHC.Base.pure PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "usage_gte"))
data PostSubscriptionItemsItemRequestBodyBillingThresholds'Variants
    = PostSubscriptionItemsItemRequestBodyBillingThresholds'Variant1 PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf1
    | PostSubscriptionItemsItemRequestBodyBillingThresholds'Variant2 PostSubscriptionItemsItemRequestBodyBillingThresholds'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionItemsItemRequestBodyBillingThresholds'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionItemsItemRequestBodyBillingThresholds'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostSubscriptionItemsItemRequestBodyMetadata'
    = PostSubscriptionItemsItemRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionItemsItemRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionItemsItemRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionItemsItemRequestBodyMetadata'" (\obj -> GHC.Base.pure PostSubscriptionItemsItemRequestBodyMetadata')
data PostSubscriptionItemsItemRequestBodyPaymentBehavior'
    = PostSubscriptionItemsItemRequestBodyPaymentBehavior'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionItemsItemRequestBodyPaymentBehavior'EnumTyped GHC.Base.String
    | PostSubscriptionItemsItemRequestBodyPaymentBehavior'EnumStringAllowIncomplete
    | PostSubscriptionItemsItemRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete
    | PostSubscriptionItemsItemRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionItemsItemRequestBodyPaymentBehavior'
    where toJSON (PostSubscriptionItemsItemRequestBodyPaymentBehavior'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionItemsItemRequestBodyPaymentBehavior'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionItemsItemRequestBodyPaymentBehavior'EnumStringAllowIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "allow_incomplete"
          toJSON (PostSubscriptionItemsItemRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error_if_incomplete"
          toJSON (PostSubscriptionItemsItemRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending_if_incomplete"
instance Data.Aeson.FromJSON PostSubscriptionItemsItemRequestBodyPaymentBehavior'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "allow_incomplete")
                                          then PostSubscriptionItemsItemRequestBodyPaymentBehavior'EnumStringAllowIncomplete
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error_if_incomplete")
                                                then PostSubscriptionItemsItemRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending_if_incomplete")
                                                      then PostSubscriptionItemsItemRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete
                                                      else PostSubscriptionItemsItemRequestBodyPaymentBehavior'EnumOther val)
data PostSubscriptionItemsItemRequestBodyProrationBehavior'
    = PostSubscriptionItemsItemRequestBodyProrationBehavior'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionItemsItemRequestBodyProrationBehavior'EnumTyped GHC.Base.String
    | PostSubscriptionItemsItemRequestBodyProrationBehavior'EnumStringAlwaysInvoice
    | PostSubscriptionItemsItemRequestBodyProrationBehavior'EnumStringCreateProrations
    | PostSubscriptionItemsItemRequestBodyProrationBehavior'EnumStringNone
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionItemsItemRequestBodyProrationBehavior'
    where toJSON (PostSubscriptionItemsItemRequestBodyProrationBehavior'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionItemsItemRequestBodyProrationBehavior'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionItemsItemRequestBodyProrationBehavior'EnumStringAlwaysInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "always_invoice"
          toJSON (PostSubscriptionItemsItemRequestBodyProrationBehavior'EnumStringCreateProrations) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "create_prorations"
          toJSON (PostSubscriptionItemsItemRequestBodyProrationBehavior'EnumStringNone) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none"
instance Data.Aeson.FromJSON PostSubscriptionItemsItemRequestBodyProrationBehavior'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "always_invoice")
                                          then PostSubscriptionItemsItemRequestBodyProrationBehavior'EnumStringAlwaysInvoice
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "create_prorations")
                                                then PostSubscriptionItemsItemRequestBodyProrationBehavior'EnumStringCreateProrations
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none")
                                                      then PostSubscriptionItemsItemRequestBodyProrationBehavior'EnumStringNone
                                                      else PostSubscriptionItemsItemRequestBodyProrationBehavior'EnumOther val)
data PostSubscriptionItemsItemRequestBodyTaxRates'OneOf1
    = PostSubscriptionItemsItemRequestBodyTaxRates'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionItemsItemRequestBodyTaxRates'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionItemsItemRequestBodyTaxRates'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionItemsItemRequestBodyTaxRates'OneOf1
    where toJSON (PostSubscriptionItemsItemRequestBodyTaxRates'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionItemsItemRequestBodyTaxRates'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionItemsItemRequestBodyTaxRates'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionItemsItemRequestBodyTaxRates'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionItemsItemRequestBodyTaxRates'OneOf1EnumString_
                                          else PostSubscriptionItemsItemRequestBodyTaxRates'OneOf1EnumOther val)
data PostSubscriptionItemsItemRequestBodyTaxRates'Variants
    = PostSubscriptionItemsItemRequestBodyTaxRates'Variant1 PostSubscriptionItemsItemRequestBodyTaxRates'OneOf1
    | PostSubscriptionItemsItemRequestBodyTaxRates'Variant2 ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionItemsItemRequestBodyTaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionItemsItemRequestBodyTaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostSubscriptionItemsItemRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "billing_thresholds" (postSubscriptionItemsItemRequestBodyBillingThresholds obj) : (Data.Aeson..=) "expand" (postSubscriptionItemsItemRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postSubscriptionItemsItemRequestBodyMetadata obj) : (Data.Aeson..=) "off_session" (postSubscriptionItemsItemRequestBodyOffSession obj) : (Data.Aeson..=) "payment_behavior" (postSubscriptionItemsItemRequestBodyPaymentBehavior obj) : (Data.Aeson..=) "plan" (postSubscriptionItemsItemRequestBodyPlan obj) : (Data.Aeson..=) "prorate" (postSubscriptionItemsItemRequestBodyProrate obj) : (Data.Aeson..=) "proration_behavior" (postSubscriptionItemsItemRequestBodyProrationBehavior obj) : (Data.Aeson..=) "proration_date" (postSubscriptionItemsItemRequestBodyProrationDate obj) : (Data.Aeson..=) "quantity" (postSubscriptionItemsItemRequestBodyQuantity obj) : (Data.Aeson..=) "tax_rates" (postSubscriptionItemsItemRequestBodyTaxRates obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "billing_thresholds" (postSubscriptionItemsItemRequestBodyBillingThresholds obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postSubscriptionItemsItemRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postSubscriptionItemsItemRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "off_session" (postSubscriptionItemsItemRequestBodyOffSession obj) GHC.Base.<> ((Data.Aeson..=) "payment_behavior" (postSubscriptionItemsItemRequestBodyPaymentBehavior obj) GHC.Base.<> ((Data.Aeson..=) "plan" (postSubscriptionItemsItemRequestBodyPlan obj) GHC.Base.<> ((Data.Aeson..=) "prorate" (postSubscriptionItemsItemRequestBodyProrate obj) GHC.Base.<> ((Data.Aeson..=) "proration_behavior" (postSubscriptionItemsItemRequestBodyProrationBehavior obj) GHC.Base.<> ((Data.Aeson..=) "proration_date" (postSubscriptionItemsItemRequestBodyProrationDate obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (postSubscriptionItemsItemRequestBodyQuantity obj) GHC.Base.<> (Data.Aeson..=) "tax_rates" (postSubscriptionItemsItemRequestBodyTaxRates obj)))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionItemsItemRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionItemsItemRequestBody" (\obj -> ((((((((((GHC.Base.pure PostSubscriptionItemsItemRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "off_session")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "plan")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "prorate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proration_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proration_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_rates"))

data PostSubscriptionItemsItemResponse
    = PostSubscriptionItemsItemResponseError GHC.Base.String
    | PostSubscriptionItemsItemResponse200 SubscriptionItem
    | PostSubscriptionItemsItemResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
