{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostSubscriptionSchedulesSchedule where

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
-- POST /v1/subscription_schedules/{schedule}
postSubscriptionSchedulesSchedule :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                   StripeAPI.Common.SecurityScheme s) =>
                                     StripeAPI.Common.Configuration s ->
                                     GHC.Base.String ->
                                     PostSubscriptionSchedulesScheduleRequestBody ->
                                     m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                           (Network.HTTP.Client.Types.Response PostSubscriptionSchedulesScheduleResponse))
postSubscriptionSchedulesSchedule config
                                  schedule
                                  body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSubscriptionSchedulesScheduleResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionSchedulesScheduleResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     SubscriptionSchedule)
                                                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionSchedulesScheduleResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/subscription_schedules/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel schedule)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSubscriptionSchedulesScheduleRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                      StripeAPI.Common.SecurityScheme s) =>
                                        StripeAPI.Common.Configuration s ->
                                        GHC.Base.String ->
                                        PostSubscriptionSchedulesScheduleRequestBody ->
                                        m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSubscriptionSchedulesScheduleRaw config
                                     schedule
                                     body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/subscription_schedules/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel schedule)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSubscriptionSchedulesScheduleM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                    StripeAPI.Common.SecurityScheme s) =>
                                      GHC.Base.String ->
                                      PostSubscriptionSchedulesScheduleRequestBody ->
                                      Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                         m
                                                                         (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                             (Network.HTTP.Client.Types.Response PostSubscriptionSchedulesScheduleResponse))
postSubscriptionSchedulesScheduleM schedule
                                   body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSubscriptionSchedulesScheduleResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionSchedulesScheduleResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      SubscriptionSchedule)
                                                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionSchedulesScheduleResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/subscription_schedules/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel schedule)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSubscriptionSchedulesScheduleRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                       StripeAPI.Common.SecurityScheme s) =>
                                         GHC.Base.String ->
                                         PostSubscriptionSchedulesScheduleRequestBody ->
                                         Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                            m
                                                                            (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSubscriptionSchedulesScheduleRawM schedule
                                      body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/subscription_schedules/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel schedule)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostSubscriptionSchedulesScheduleRequestBody
    = PostSubscriptionSchedulesScheduleRequestBody {postSubscriptionSchedulesScheduleRequestBodyDefaultSettings :: (GHC.Maybe.Maybe PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'),
                                                    postSubscriptionSchedulesScheduleRequestBodyEndBehavior :: (GHC.Maybe.Maybe PostSubscriptionSchedulesScheduleRequestBodyEndBehavior'),
                                                    postSubscriptionSchedulesScheduleRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                                    postSubscriptionSchedulesScheduleRequestBodyMetadata :: (GHC.Maybe.Maybe PostSubscriptionSchedulesScheduleRequestBodyMetadata'),
                                                    postSubscriptionSchedulesScheduleRequestBodyPhases :: (GHC.Maybe.Maybe ([] PostSubscriptionSchedulesScheduleRequestBodyPhases')),
                                                    postSubscriptionSchedulesScheduleRequestBodyProrate :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                    postSubscriptionSchedulesScheduleRequestBodyProrationBehavior :: (GHC.Maybe.Maybe PostSubscriptionSchedulesScheduleRequestBodyProrationBehavior')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'
    = PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings' {postSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds :: (GHC.Maybe.Maybe PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'Variants),
                                                                    postSubscriptionSchedulesScheduleRequestBodyDefaultSettings'CollectionMethod :: (GHC.Maybe.Maybe PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'CollectionMethod'),
                                                                    postSubscriptionSchedulesScheduleRequestBodyDefaultSettings'DefaultPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                    postSubscriptionSchedulesScheduleRequestBodyDefaultSettings'InvoiceSettings :: (GHC.Maybe.Maybe PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'InvoiceSettings')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'OneOf1
    = PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'OneOf1
    where toJSON (PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'OneOf1EnumString_
                                          else PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'OneOf1EnumOther val)
data PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'OneOf2
    = PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'OneOf2 {postSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'OneOf2AmountGte :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                                                            postSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'OneOf2ResetBillingCycleAnchor :: (GHC.Maybe.Maybe GHC.Types.Bool)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount_gte" (postSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'OneOf2AmountGte obj) : (Data.Aeson..=) "reset_billing_cycle_anchor" (postSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'OneOf2ResetBillingCycleAnchor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount_gte" (postSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'OneOf2AmountGte obj) GHC.Base.<> (Data.Aeson..=) "reset_billing_cycle_anchor" (postSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'OneOf2ResetBillingCycleAnchor obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'OneOf2" (\obj -> (GHC.Base.pure PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reset_billing_cycle_anchor"))
data PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'Variants
    = PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'Variant1 PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'OneOf1
    | PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'Variant2 PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'CollectionMethod'
    = PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'CollectionMethod'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'CollectionMethod'EnumTyped GHC.Base.String
    | PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'CollectionMethod'EnumStringChargeAutomatically
    | PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'CollectionMethod'EnumStringSendInvoice
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'CollectionMethod'
    where toJSON (PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'CollectionMethod'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'CollectionMethod'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'CollectionMethod'EnumStringChargeAutomatically) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically"
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'CollectionMethod'EnumStringSendInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice"
instance Data.Aeson.FromJSON PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'CollectionMethod'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically")
                                          then PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'CollectionMethod'EnumStringChargeAutomatically
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice")
                                                then PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'CollectionMethod'EnumStringSendInvoice
                                                else PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'CollectionMethod'EnumOther val)
data PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'InvoiceSettings'
    = PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'InvoiceSettings' {postSubscriptionSchedulesScheduleRequestBodyDefaultSettings'InvoiceSettings'DaysUntilDue :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'InvoiceSettings'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "days_until_due" (postSubscriptionSchedulesScheduleRequestBodyDefaultSettings'InvoiceSettings'DaysUntilDue obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "days_until_due" (postSubscriptionSchedulesScheduleRequestBodyDefaultSettings'InvoiceSettings'DaysUntilDue obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'InvoiceSettings'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'InvoiceSettings'" (\obj -> GHC.Base.pure PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'InvoiceSettings' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "days_until_due"))
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "billing_thresholds" (postSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds obj) : (Data.Aeson..=) "collection_method" (postSubscriptionSchedulesScheduleRequestBodyDefaultSettings'CollectionMethod obj) : (Data.Aeson..=) "default_payment_method" (postSubscriptionSchedulesScheduleRequestBodyDefaultSettings'DefaultPaymentMethod obj) : (Data.Aeson..=) "invoice_settings" (postSubscriptionSchedulesScheduleRequestBodyDefaultSettings'InvoiceSettings obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "billing_thresholds" (postSubscriptionSchedulesScheduleRequestBodyDefaultSettings'BillingThresholds obj) GHC.Base.<> ((Data.Aeson..=) "collection_method" (postSubscriptionSchedulesScheduleRequestBodyDefaultSettings'CollectionMethod obj) GHC.Base.<> ((Data.Aeson..=) "default_payment_method" (postSubscriptionSchedulesScheduleRequestBodyDefaultSettings'DefaultPaymentMethod obj) GHC.Base.<> (Data.Aeson..=) "invoice_settings" (postSubscriptionSchedulesScheduleRequestBodyDefaultSettings'InvoiceSettings obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings'" (\obj -> (((GHC.Base.pure PostSubscriptionSchedulesScheduleRequestBodyDefaultSettings' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "collection_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoice_settings"))
data PostSubscriptionSchedulesScheduleRequestBodyEndBehavior'
    = PostSubscriptionSchedulesScheduleRequestBodyEndBehavior'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionSchedulesScheduleRequestBodyEndBehavior'EnumTyped GHC.Base.String
    | PostSubscriptionSchedulesScheduleRequestBodyEndBehavior'EnumStringCancel
    | PostSubscriptionSchedulesScheduleRequestBodyEndBehavior'EnumStringNone
    | PostSubscriptionSchedulesScheduleRequestBodyEndBehavior'EnumStringRelease
    | PostSubscriptionSchedulesScheduleRequestBodyEndBehavior'EnumStringRenew
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyEndBehavior'
    where toJSON (PostSubscriptionSchedulesScheduleRequestBodyEndBehavior'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyEndBehavior'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyEndBehavior'EnumStringCancel) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "cancel"
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyEndBehavior'EnumStringNone) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none"
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyEndBehavior'EnumStringRelease) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "release"
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyEndBehavior'EnumStringRenew) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "renew"
instance Data.Aeson.FromJSON PostSubscriptionSchedulesScheduleRequestBodyEndBehavior'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "cancel")
                                          then PostSubscriptionSchedulesScheduleRequestBodyEndBehavior'EnumStringCancel
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none")
                                                then PostSubscriptionSchedulesScheduleRequestBodyEndBehavior'EnumStringNone
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "release")
                                                      then PostSubscriptionSchedulesScheduleRequestBodyEndBehavior'EnumStringRelease
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "renew")
                                                            then PostSubscriptionSchedulesScheduleRequestBodyEndBehavior'EnumStringRenew
                                                            else PostSubscriptionSchedulesScheduleRequestBodyEndBehavior'EnumOther val)
data PostSubscriptionSchedulesScheduleRequestBodyMetadata'
    = PostSubscriptionSchedulesScheduleRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesScheduleRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesScheduleRequestBodyMetadata'" (\obj -> GHC.Base.pure PostSubscriptionSchedulesScheduleRequestBodyMetadata')
data PostSubscriptionSchedulesScheduleRequestBodyPhases'
    = PostSubscriptionSchedulesScheduleRequestBodyPhases' {postSubscriptionSchedulesScheduleRequestBodyPhases'ApplicationFeePercent :: (GHC.Maybe.Maybe GHC.Types.Double),
                                                           postSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds :: (GHC.Maybe.Maybe PostSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'Variants),
                                                           postSubscriptionSchedulesScheduleRequestBodyPhases'CollectionMethod :: (GHC.Maybe.Maybe PostSubscriptionSchedulesScheduleRequestBodyPhases'CollectionMethod'),
                                                           postSubscriptionSchedulesScheduleRequestBodyPhases'Coupon :: (GHC.Maybe.Maybe GHC.Base.String),
                                                           postSubscriptionSchedulesScheduleRequestBodyPhases'DefaultPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String),
                                                           postSubscriptionSchedulesScheduleRequestBodyPhases'DefaultTaxRates :: (GHC.Maybe.Maybe PostSubscriptionSchedulesScheduleRequestBodyPhases'DefaultTaxRates'Variants),
                                                           postSubscriptionSchedulesScheduleRequestBodyPhases'EndDate :: (GHC.Maybe.Maybe PostSubscriptionSchedulesScheduleRequestBodyPhases'EndDate'Variants),
                                                           postSubscriptionSchedulesScheduleRequestBodyPhases'InvoiceSettings :: (GHC.Maybe.Maybe PostSubscriptionSchedulesScheduleRequestBodyPhases'InvoiceSettings'),
                                                           postSubscriptionSchedulesScheduleRequestBodyPhases'Iterations :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                           postSubscriptionSchedulesScheduleRequestBodyPhases'Plans :: ([] PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'),
                                                           postSubscriptionSchedulesScheduleRequestBodyPhases'ProrationBehavior :: (GHC.Maybe.Maybe PostSubscriptionSchedulesScheduleRequestBodyPhases'ProrationBehavior'),
                                                           postSubscriptionSchedulesScheduleRequestBodyPhases'StartDate :: (GHC.Maybe.Maybe PostSubscriptionSchedulesScheduleRequestBodyPhases'StartDate'Variants),
                                                           postSubscriptionSchedulesScheduleRequestBodyPhases'TaxPercent :: (GHC.Maybe.Maybe GHC.Types.Double),
                                                           postSubscriptionSchedulesScheduleRequestBodyPhases'Trial :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                           postSubscriptionSchedulesScheduleRequestBodyPhases'TrialEnd :: (GHC.Maybe.Maybe PostSubscriptionSchedulesScheduleRequestBodyPhases'TrialEnd'Variants)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'OneOf1
    = PostSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'OneOf1
    where toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'OneOf1EnumString_
                                          else PostSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'OneOf1EnumOther val)
data PostSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'OneOf2
    = PostSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'OneOf2 {postSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'OneOf2AmountGte :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                                                   postSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'OneOf2ResetBillingCycleAnchor :: (GHC.Maybe.Maybe GHC.Types.Bool)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount_gte" (postSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'OneOf2AmountGte obj) : (Data.Aeson..=) "reset_billing_cycle_anchor" (postSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'OneOf2ResetBillingCycleAnchor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount_gte" (postSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'OneOf2AmountGte obj) GHC.Base.<> (Data.Aeson..=) "reset_billing_cycle_anchor" (postSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'OneOf2ResetBillingCycleAnchor obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'OneOf2" (\obj -> (GHC.Base.pure PostSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reset_billing_cycle_anchor"))
data PostSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'Variants
    = PostSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'Variant1 PostSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'OneOf1
    | PostSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'Variant2 PostSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostSubscriptionSchedulesScheduleRequestBodyPhases'CollectionMethod'
    = PostSubscriptionSchedulesScheduleRequestBodyPhases'CollectionMethod'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionSchedulesScheduleRequestBodyPhases'CollectionMethod'EnumTyped GHC.Base.String
    | PostSubscriptionSchedulesScheduleRequestBodyPhases'CollectionMethod'EnumStringChargeAutomatically
    | PostSubscriptionSchedulesScheduleRequestBodyPhases'CollectionMethod'EnumStringSendInvoice
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'CollectionMethod'
    where toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'CollectionMethod'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'CollectionMethod'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'CollectionMethod'EnumStringChargeAutomatically) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically"
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'CollectionMethod'EnumStringSendInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice"
instance Data.Aeson.FromJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'CollectionMethod'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically")
                                          then PostSubscriptionSchedulesScheduleRequestBodyPhases'CollectionMethod'EnumStringChargeAutomatically
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice")
                                                then PostSubscriptionSchedulesScheduleRequestBodyPhases'CollectionMethod'EnumStringSendInvoice
                                                else PostSubscriptionSchedulesScheduleRequestBodyPhases'CollectionMethod'EnumOther val)
data PostSubscriptionSchedulesScheduleRequestBodyPhases'DefaultTaxRates'OneOf1
    = PostSubscriptionSchedulesScheduleRequestBodyPhases'DefaultTaxRates'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionSchedulesScheduleRequestBodyPhases'DefaultTaxRates'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionSchedulesScheduleRequestBodyPhases'DefaultTaxRates'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'DefaultTaxRates'OneOf1
    where toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'DefaultTaxRates'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'DefaultTaxRates'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'DefaultTaxRates'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'DefaultTaxRates'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionSchedulesScheduleRequestBodyPhases'DefaultTaxRates'OneOf1EnumString_
                                          else PostSubscriptionSchedulesScheduleRequestBodyPhases'DefaultTaxRates'OneOf1EnumOther val)
data PostSubscriptionSchedulesScheduleRequestBodyPhases'DefaultTaxRates'Variants
    = PostSubscriptionSchedulesScheduleRequestBodyPhases'DefaultTaxRates'Variant1 PostSubscriptionSchedulesScheduleRequestBodyPhases'DefaultTaxRates'OneOf1
    | PostSubscriptionSchedulesScheduleRequestBodyPhases'DefaultTaxRates'Variant2 ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'DefaultTaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'DefaultTaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostSubscriptionSchedulesScheduleRequestBodyPhases'EndDate'OneOf1
    = PostSubscriptionSchedulesScheduleRequestBodyPhases'EndDate'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionSchedulesScheduleRequestBodyPhases'EndDate'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionSchedulesScheduleRequestBodyPhases'EndDate'OneOf1EnumStringNow
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'EndDate'OneOf1
    where toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'EndDate'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'EndDate'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'EndDate'OneOf1EnumStringNow) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now"
instance Data.Aeson.FromJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'EndDate'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now")
                                          then PostSubscriptionSchedulesScheduleRequestBodyPhases'EndDate'OneOf1EnumStringNow
                                          else PostSubscriptionSchedulesScheduleRequestBodyPhases'EndDate'OneOf1EnumOther val)
data PostSubscriptionSchedulesScheduleRequestBodyPhases'EndDate'Variants
    = PostSubscriptionSchedulesScheduleRequestBodyPhases'EndDate'Variant1 PostSubscriptionSchedulesScheduleRequestBodyPhases'EndDate'OneOf1
    | PostSubscriptionSchedulesScheduleRequestBodyPhases'EndDate'Variant2 GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'EndDate'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'EndDate'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostSubscriptionSchedulesScheduleRequestBodyPhases'InvoiceSettings'
    = PostSubscriptionSchedulesScheduleRequestBodyPhases'InvoiceSettings' {postSubscriptionSchedulesScheduleRequestBodyPhases'InvoiceSettings'DaysUntilDue :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'InvoiceSettings'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "days_until_due" (postSubscriptionSchedulesScheduleRequestBodyPhases'InvoiceSettings'DaysUntilDue obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "days_until_due" (postSubscriptionSchedulesScheduleRequestBodyPhases'InvoiceSettings'DaysUntilDue obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'InvoiceSettings'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesScheduleRequestBodyPhases'InvoiceSettings'" (\obj -> GHC.Base.pure PostSubscriptionSchedulesScheduleRequestBodyPhases'InvoiceSettings' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "days_until_due"))
data PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'
    = PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans' {postSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds :: (GHC.Maybe.Maybe PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds'Variants),
                                                                 postSubscriptionSchedulesScheduleRequestBodyPhases'Plans'Plan :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                 postSubscriptionSchedulesScheduleRequestBodyPhases'Plans'Quantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                                 postSubscriptionSchedulesScheduleRequestBodyPhases'Plans'TaxRates :: (GHC.Maybe.Maybe PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'TaxRates'Variants)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds'OneOf1
    = PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds'OneOf1
    where toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds'OneOf1EnumString_
                                          else PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds'OneOf1EnumOther val)
data PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds'OneOf2
    = PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds'OneOf2 {postSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds'OneOf2UsageGte :: GHC.Integer.Type.Integer}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "usage_gte" (postSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds'OneOf2UsageGte obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "usage_gte" (postSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds'OneOf2UsageGte obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds'OneOf2" (\obj -> GHC.Base.pure PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "usage_gte"))
data PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds'Variants
    = PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds'Variant1 PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds'OneOf1
    | PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds'Variant2 PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'TaxRates'OneOf1
    = PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'TaxRates'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'TaxRates'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'TaxRates'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'TaxRates'OneOf1
    where toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'TaxRates'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'TaxRates'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'TaxRates'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'TaxRates'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'TaxRates'OneOf1EnumString_
                                          else PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'TaxRates'OneOf1EnumOther val)
data PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'TaxRates'Variants
    = PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'TaxRates'Variant1 PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'TaxRates'OneOf1
    | PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'TaxRates'Variant2 ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'TaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'TaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "billing_thresholds" (postSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds obj) : (Data.Aeson..=) "plan" (postSubscriptionSchedulesScheduleRequestBodyPhases'Plans'Plan obj) : (Data.Aeson..=) "quantity" (postSubscriptionSchedulesScheduleRequestBodyPhases'Plans'Quantity obj) : (Data.Aeson..=) "tax_rates" (postSubscriptionSchedulesScheduleRequestBodyPhases'Plans'TaxRates obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "billing_thresholds" (postSubscriptionSchedulesScheduleRequestBodyPhases'Plans'BillingThresholds obj) GHC.Base.<> ((Data.Aeson..=) "plan" (postSubscriptionSchedulesScheduleRequestBodyPhases'Plans'Plan obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (postSubscriptionSchedulesScheduleRequestBodyPhases'Plans'Quantity obj) GHC.Base.<> (Data.Aeson..=) "tax_rates" (postSubscriptionSchedulesScheduleRequestBodyPhases'Plans'TaxRates obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans'" (\obj -> (((GHC.Base.pure PostSubscriptionSchedulesScheduleRequestBodyPhases'Plans' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "plan")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_rates"))
data PostSubscriptionSchedulesScheduleRequestBodyPhases'ProrationBehavior'
    = PostSubscriptionSchedulesScheduleRequestBodyPhases'ProrationBehavior'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionSchedulesScheduleRequestBodyPhases'ProrationBehavior'EnumTyped GHC.Base.String
    | PostSubscriptionSchedulesScheduleRequestBodyPhases'ProrationBehavior'EnumStringAlwaysInvoice
    | PostSubscriptionSchedulesScheduleRequestBodyPhases'ProrationBehavior'EnumStringCreateProrations
    | PostSubscriptionSchedulesScheduleRequestBodyPhases'ProrationBehavior'EnumStringNone
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'ProrationBehavior'
    where toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'ProrationBehavior'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'ProrationBehavior'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'ProrationBehavior'EnumStringAlwaysInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "always_invoice"
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'ProrationBehavior'EnumStringCreateProrations) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "create_prorations"
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'ProrationBehavior'EnumStringNone) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none"
instance Data.Aeson.FromJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'ProrationBehavior'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "always_invoice")
                                          then PostSubscriptionSchedulesScheduleRequestBodyPhases'ProrationBehavior'EnumStringAlwaysInvoice
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "create_prorations")
                                                then PostSubscriptionSchedulesScheduleRequestBodyPhases'ProrationBehavior'EnumStringCreateProrations
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none")
                                                      then PostSubscriptionSchedulesScheduleRequestBodyPhases'ProrationBehavior'EnumStringNone
                                                      else PostSubscriptionSchedulesScheduleRequestBodyPhases'ProrationBehavior'EnumOther val)
data PostSubscriptionSchedulesScheduleRequestBodyPhases'StartDate'OneOf1
    = PostSubscriptionSchedulesScheduleRequestBodyPhases'StartDate'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionSchedulesScheduleRequestBodyPhases'StartDate'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionSchedulesScheduleRequestBodyPhases'StartDate'OneOf1EnumStringNow
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'StartDate'OneOf1
    where toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'StartDate'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'StartDate'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'StartDate'OneOf1EnumStringNow) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now"
instance Data.Aeson.FromJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'StartDate'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now")
                                          then PostSubscriptionSchedulesScheduleRequestBodyPhases'StartDate'OneOf1EnumStringNow
                                          else PostSubscriptionSchedulesScheduleRequestBodyPhases'StartDate'OneOf1EnumOther val)
data PostSubscriptionSchedulesScheduleRequestBodyPhases'StartDate'Variants
    = PostSubscriptionSchedulesScheduleRequestBodyPhases'StartDate'Variant1 PostSubscriptionSchedulesScheduleRequestBodyPhases'StartDate'OneOf1
    | PostSubscriptionSchedulesScheduleRequestBodyPhases'StartDate'Variant2 GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'StartDate'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'StartDate'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostSubscriptionSchedulesScheduleRequestBodyPhases'TrialEnd'OneOf1
    = PostSubscriptionSchedulesScheduleRequestBodyPhases'TrialEnd'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionSchedulesScheduleRequestBodyPhases'TrialEnd'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionSchedulesScheduleRequestBodyPhases'TrialEnd'OneOf1EnumStringNow
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'TrialEnd'OneOf1
    where toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'TrialEnd'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'TrialEnd'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyPhases'TrialEnd'OneOf1EnumStringNow) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now"
instance Data.Aeson.FromJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'TrialEnd'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now")
                                          then PostSubscriptionSchedulesScheduleRequestBodyPhases'TrialEnd'OneOf1EnumStringNow
                                          else PostSubscriptionSchedulesScheduleRequestBodyPhases'TrialEnd'OneOf1EnumOther val)
data PostSubscriptionSchedulesScheduleRequestBodyPhases'TrialEnd'Variants
    = PostSubscriptionSchedulesScheduleRequestBodyPhases'TrialEnd'Variant1 PostSubscriptionSchedulesScheduleRequestBodyPhases'TrialEnd'OneOf1
    | PostSubscriptionSchedulesScheduleRequestBodyPhases'TrialEnd'Variant2 GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'TrialEnd'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'TrialEnd'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "application_fee_percent" (postSubscriptionSchedulesScheduleRequestBodyPhases'ApplicationFeePercent obj) : (Data.Aeson..=) "billing_thresholds" (postSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds obj) : (Data.Aeson..=) "collection_method" (postSubscriptionSchedulesScheduleRequestBodyPhases'CollectionMethod obj) : (Data.Aeson..=) "coupon" (postSubscriptionSchedulesScheduleRequestBodyPhases'Coupon obj) : (Data.Aeson..=) "default_payment_method" (postSubscriptionSchedulesScheduleRequestBodyPhases'DefaultPaymentMethod obj) : (Data.Aeson..=) "default_tax_rates" (postSubscriptionSchedulesScheduleRequestBodyPhases'DefaultTaxRates obj) : (Data.Aeson..=) "end_date" (postSubscriptionSchedulesScheduleRequestBodyPhases'EndDate obj) : (Data.Aeson..=) "invoice_settings" (postSubscriptionSchedulesScheduleRequestBodyPhases'InvoiceSettings obj) : (Data.Aeson..=) "iterations" (postSubscriptionSchedulesScheduleRequestBodyPhases'Iterations obj) : (Data.Aeson..=) "plans" (postSubscriptionSchedulesScheduleRequestBodyPhases'Plans obj) : (Data.Aeson..=) "proration_behavior" (postSubscriptionSchedulesScheduleRequestBodyPhases'ProrationBehavior obj) : (Data.Aeson..=) "start_date" (postSubscriptionSchedulesScheduleRequestBodyPhases'StartDate obj) : (Data.Aeson..=) "tax_percent" (postSubscriptionSchedulesScheduleRequestBodyPhases'TaxPercent obj) : (Data.Aeson..=) "trial" (postSubscriptionSchedulesScheduleRequestBodyPhases'Trial obj) : (Data.Aeson..=) "trial_end" (postSubscriptionSchedulesScheduleRequestBodyPhases'TrialEnd obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "application_fee_percent" (postSubscriptionSchedulesScheduleRequestBodyPhases'ApplicationFeePercent obj) GHC.Base.<> ((Data.Aeson..=) "billing_thresholds" (postSubscriptionSchedulesScheduleRequestBodyPhases'BillingThresholds obj) GHC.Base.<> ((Data.Aeson..=) "collection_method" (postSubscriptionSchedulesScheduleRequestBodyPhases'CollectionMethod obj) GHC.Base.<> ((Data.Aeson..=) "coupon" (postSubscriptionSchedulesScheduleRequestBodyPhases'Coupon obj) GHC.Base.<> ((Data.Aeson..=) "default_payment_method" (postSubscriptionSchedulesScheduleRequestBodyPhases'DefaultPaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "default_tax_rates" (postSubscriptionSchedulesScheduleRequestBodyPhases'DefaultTaxRates obj) GHC.Base.<> ((Data.Aeson..=) "end_date" (postSubscriptionSchedulesScheduleRequestBodyPhases'EndDate obj) GHC.Base.<> ((Data.Aeson..=) "invoice_settings" (postSubscriptionSchedulesScheduleRequestBodyPhases'InvoiceSettings obj) GHC.Base.<> ((Data.Aeson..=) "iterations" (postSubscriptionSchedulesScheduleRequestBodyPhases'Iterations obj) GHC.Base.<> ((Data.Aeson..=) "plans" (postSubscriptionSchedulesScheduleRequestBodyPhases'Plans obj) GHC.Base.<> ((Data.Aeson..=) "proration_behavior" (postSubscriptionSchedulesScheduleRequestBodyPhases'ProrationBehavior obj) GHC.Base.<> ((Data.Aeson..=) "start_date" (postSubscriptionSchedulesScheduleRequestBodyPhases'StartDate obj) GHC.Base.<> ((Data.Aeson..=) "tax_percent" (postSubscriptionSchedulesScheduleRequestBodyPhases'TaxPercent obj) GHC.Base.<> ((Data.Aeson..=) "trial" (postSubscriptionSchedulesScheduleRequestBodyPhases'Trial obj) GHC.Base.<> (Data.Aeson..=) "trial_end" (postSubscriptionSchedulesScheduleRequestBodyPhases'TrialEnd obj)))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesScheduleRequestBodyPhases'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesScheduleRequestBodyPhases'" (\obj -> ((((((((((((((GHC.Base.pure PostSubscriptionSchedulesScheduleRequestBodyPhases' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "collection_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "coupon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_tax_rates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "end_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoice_settings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "iterations")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "plans")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proration_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "start_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_end"))
data PostSubscriptionSchedulesScheduleRequestBodyProrationBehavior'
    = PostSubscriptionSchedulesScheduleRequestBodyProrationBehavior'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionSchedulesScheduleRequestBodyProrationBehavior'EnumTyped GHC.Base.String
    | PostSubscriptionSchedulesScheduleRequestBodyProrationBehavior'EnumStringAlwaysInvoice
    | PostSubscriptionSchedulesScheduleRequestBodyProrationBehavior'EnumStringCreateProrations
    | PostSubscriptionSchedulesScheduleRequestBodyProrationBehavior'EnumStringNone
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBodyProrationBehavior'
    where toJSON (PostSubscriptionSchedulesScheduleRequestBodyProrationBehavior'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyProrationBehavior'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyProrationBehavior'EnumStringAlwaysInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "always_invoice"
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyProrationBehavior'EnumStringCreateProrations) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "create_prorations"
          toJSON (PostSubscriptionSchedulesScheduleRequestBodyProrationBehavior'EnumStringNone) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none"
instance Data.Aeson.FromJSON PostSubscriptionSchedulesScheduleRequestBodyProrationBehavior'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "always_invoice")
                                          then PostSubscriptionSchedulesScheduleRequestBodyProrationBehavior'EnumStringAlwaysInvoice
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "create_prorations")
                                                then PostSubscriptionSchedulesScheduleRequestBodyProrationBehavior'EnumStringCreateProrations
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none")
                                                      then PostSubscriptionSchedulesScheduleRequestBodyProrationBehavior'EnumStringNone
                                                      else PostSubscriptionSchedulesScheduleRequestBodyProrationBehavior'EnumOther val)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "default_settings" (postSubscriptionSchedulesScheduleRequestBodyDefaultSettings obj) : (Data.Aeson..=) "end_behavior" (postSubscriptionSchedulesScheduleRequestBodyEndBehavior obj) : (Data.Aeson..=) "expand" (postSubscriptionSchedulesScheduleRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postSubscriptionSchedulesScheduleRequestBodyMetadata obj) : (Data.Aeson..=) "phases" (postSubscriptionSchedulesScheduleRequestBodyPhases obj) : (Data.Aeson..=) "prorate" (postSubscriptionSchedulesScheduleRequestBodyProrate obj) : (Data.Aeson..=) "proration_behavior" (postSubscriptionSchedulesScheduleRequestBodyProrationBehavior obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "default_settings" (postSubscriptionSchedulesScheduleRequestBodyDefaultSettings obj) GHC.Base.<> ((Data.Aeson..=) "end_behavior" (postSubscriptionSchedulesScheduleRequestBodyEndBehavior obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postSubscriptionSchedulesScheduleRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postSubscriptionSchedulesScheduleRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "phases" (postSubscriptionSchedulesScheduleRequestBodyPhases obj) GHC.Base.<> ((Data.Aeson..=) "prorate" (postSubscriptionSchedulesScheduleRequestBodyProrate obj) GHC.Base.<> (Data.Aeson..=) "proration_behavior" (postSubscriptionSchedulesScheduleRequestBodyProrationBehavior obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesScheduleRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesScheduleRequestBody" (\obj -> ((((((GHC.Base.pure PostSubscriptionSchedulesScheduleRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_settings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "end_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phases")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "prorate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proration_behavior"))

data PostSubscriptionSchedulesScheduleResponse
    = PostSubscriptionSchedulesScheduleResponseError GHC.Base.String
    | PostSubscriptionSchedulesScheduleResponse200 SubscriptionSchedule
    | PostSubscriptionSchedulesScheduleResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
