{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostSubscriptionSchedules where

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
-- POST /v1/subscription_schedules
postSubscriptionSchedules :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             StripeAPI.Common.Configuration s ->
                             PostSubscriptionSchedulesRequestBody ->
                             m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                   (Network.HTTP.Client.Types.Response PostSubscriptionSchedulesResponse))
postSubscriptionSchedules config
                          body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSubscriptionSchedulesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionSchedulesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                             SubscriptionSchedule)
                                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionSchedulesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/subscription_schedules") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSubscriptionSchedulesRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                StripeAPI.Common.Configuration s ->
                                PostSubscriptionSchedulesRequestBody ->
                                m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSubscriptionSchedulesRaw config
                             body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/subscription_schedules") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSubscriptionSchedulesM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                            StripeAPI.Common.SecurityScheme s) =>
                              PostSubscriptionSchedulesRequestBody ->
                              Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                 m
                                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                     (Network.HTTP.Client.Types.Response PostSubscriptionSchedulesResponse))
postSubscriptionSchedulesM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSubscriptionSchedulesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionSchedulesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                              SubscriptionSchedule)
                                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionSchedulesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                Error)
                                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/subscription_schedules") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSubscriptionSchedulesRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                               StripeAPI.Common.SecurityScheme s) =>
                                 PostSubscriptionSchedulesRequestBody ->
                                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                    m
                                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSubscriptionSchedulesRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/subscription_schedules") [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostSubscriptionSchedulesRequestBody
    = PostSubscriptionSchedulesRequestBody {postSubscriptionSchedulesRequestBodyCustomer :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postSubscriptionSchedulesRequestBodyDefaultSettings :: (GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBodyDefaultSettings'),
                                            postSubscriptionSchedulesRequestBodyEndBehavior :: (GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBodyEndBehavior'),
                                            postSubscriptionSchedulesRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                            postSubscriptionSchedulesRequestBodyFromSubscription :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postSubscriptionSchedulesRequestBodyMetadata :: (GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBodyMetadata'),
                                            postSubscriptionSchedulesRequestBodyPhases :: (GHC.Maybe.Maybe ([] PostSubscriptionSchedulesRequestBodyPhases')),
                                            postSubscriptionSchedulesRequestBodyStartDate :: (GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBodyStartDate'Variants)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSubscriptionSchedulesRequestBodyDefaultSettings'
    = PostSubscriptionSchedulesRequestBodyDefaultSettings' {postSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds :: (GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'Variants),
                                                            postSubscriptionSchedulesRequestBodyDefaultSettings'CollectionMethod :: (GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBodyDefaultSettings'CollectionMethod'),
                                                            postSubscriptionSchedulesRequestBodyDefaultSettings'DefaultPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String),
                                                            postSubscriptionSchedulesRequestBodyDefaultSettings'InvoiceSettings :: (GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBodyDefaultSettings'InvoiceSettings')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf1
    = PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf1
    where toJSON (PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf1EnumString_
                                          else PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf1EnumOther val)
data PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf2
    = PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf2 {postSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf2AmountGte :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                                                    postSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf2ResetBillingCycleAnchor :: (GHC.Maybe.Maybe GHC.Types.Bool)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount_gte" (postSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf2AmountGte obj) : (Data.Aeson..=) "reset_billing_cycle_anchor" (postSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf2ResetBillingCycleAnchor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount_gte" (postSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf2AmountGte obj) GHC.Base.<> (Data.Aeson..=) "reset_billing_cycle_anchor" (postSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf2ResetBillingCycleAnchor obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf2" (\obj -> (GHC.Base.pure PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reset_billing_cycle_anchor"))
data PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'Variants
    = PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'Variant1 PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf1
    | PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'Variant2 PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostSubscriptionSchedulesRequestBodyDefaultSettings'CollectionMethod'
    = PostSubscriptionSchedulesRequestBodyDefaultSettings'CollectionMethod'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionSchedulesRequestBodyDefaultSettings'CollectionMethod'EnumTyped GHC.Base.String
    | PostSubscriptionSchedulesRequestBodyDefaultSettings'CollectionMethod'EnumStringChargeAutomatically
    | PostSubscriptionSchedulesRequestBodyDefaultSettings'CollectionMethod'EnumStringSendInvoice
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyDefaultSettings'CollectionMethod'
    where toJSON (PostSubscriptionSchedulesRequestBodyDefaultSettings'CollectionMethod'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesRequestBodyDefaultSettings'CollectionMethod'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesRequestBodyDefaultSettings'CollectionMethod'EnumStringChargeAutomatically) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically"
          toJSON (PostSubscriptionSchedulesRequestBodyDefaultSettings'CollectionMethod'EnumStringSendInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice"
instance Data.Aeson.FromJSON PostSubscriptionSchedulesRequestBodyDefaultSettings'CollectionMethod'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically")
                                          then PostSubscriptionSchedulesRequestBodyDefaultSettings'CollectionMethod'EnumStringChargeAutomatically
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice")
                                                then PostSubscriptionSchedulesRequestBodyDefaultSettings'CollectionMethod'EnumStringSendInvoice
                                                else PostSubscriptionSchedulesRequestBodyDefaultSettings'CollectionMethod'EnumOther val)
data PostSubscriptionSchedulesRequestBodyDefaultSettings'InvoiceSettings'
    = PostSubscriptionSchedulesRequestBodyDefaultSettings'InvoiceSettings' {postSubscriptionSchedulesRequestBodyDefaultSettings'InvoiceSettings'DaysUntilDue :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyDefaultSettings'InvoiceSettings'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "days_until_due" (postSubscriptionSchedulesRequestBodyDefaultSettings'InvoiceSettings'DaysUntilDue obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "days_until_due" (postSubscriptionSchedulesRequestBodyDefaultSettings'InvoiceSettings'DaysUntilDue obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesRequestBodyDefaultSettings'InvoiceSettings'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesRequestBodyDefaultSettings'InvoiceSettings'" (\obj -> GHC.Base.pure PostSubscriptionSchedulesRequestBodyDefaultSettings'InvoiceSettings' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "days_until_due"))
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyDefaultSettings'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "billing_thresholds" (postSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds obj) : (Data.Aeson..=) "collection_method" (postSubscriptionSchedulesRequestBodyDefaultSettings'CollectionMethod obj) : (Data.Aeson..=) "default_payment_method" (postSubscriptionSchedulesRequestBodyDefaultSettings'DefaultPaymentMethod obj) : (Data.Aeson..=) "invoice_settings" (postSubscriptionSchedulesRequestBodyDefaultSettings'InvoiceSettings obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "billing_thresholds" (postSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds obj) GHC.Base.<> ((Data.Aeson..=) "collection_method" (postSubscriptionSchedulesRequestBodyDefaultSettings'CollectionMethod obj) GHC.Base.<> ((Data.Aeson..=) "default_payment_method" (postSubscriptionSchedulesRequestBodyDefaultSettings'DefaultPaymentMethod obj) GHC.Base.<> (Data.Aeson..=) "invoice_settings" (postSubscriptionSchedulesRequestBodyDefaultSettings'InvoiceSettings obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesRequestBodyDefaultSettings'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesRequestBodyDefaultSettings'" (\obj -> (((GHC.Base.pure PostSubscriptionSchedulesRequestBodyDefaultSettings' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "collection_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoice_settings"))
data PostSubscriptionSchedulesRequestBodyEndBehavior'
    = PostSubscriptionSchedulesRequestBodyEndBehavior'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionSchedulesRequestBodyEndBehavior'EnumTyped GHC.Base.String
    | PostSubscriptionSchedulesRequestBodyEndBehavior'EnumStringCancel
    | PostSubscriptionSchedulesRequestBodyEndBehavior'EnumStringNone
    | PostSubscriptionSchedulesRequestBodyEndBehavior'EnumStringRelease
    | PostSubscriptionSchedulesRequestBodyEndBehavior'EnumStringRenew
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyEndBehavior'
    where toJSON (PostSubscriptionSchedulesRequestBodyEndBehavior'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesRequestBodyEndBehavior'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesRequestBodyEndBehavior'EnumStringCancel) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "cancel"
          toJSON (PostSubscriptionSchedulesRequestBodyEndBehavior'EnumStringNone) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none"
          toJSON (PostSubscriptionSchedulesRequestBodyEndBehavior'EnumStringRelease) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "release"
          toJSON (PostSubscriptionSchedulesRequestBodyEndBehavior'EnumStringRenew) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "renew"
instance Data.Aeson.FromJSON PostSubscriptionSchedulesRequestBodyEndBehavior'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "cancel")
                                          then PostSubscriptionSchedulesRequestBodyEndBehavior'EnumStringCancel
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none")
                                                then PostSubscriptionSchedulesRequestBodyEndBehavior'EnumStringNone
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "release")
                                                      then PostSubscriptionSchedulesRequestBodyEndBehavior'EnumStringRelease
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "renew")
                                                            then PostSubscriptionSchedulesRequestBodyEndBehavior'EnumStringRenew
                                                            else PostSubscriptionSchedulesRequestBodyEndBehavior'EnumOther val)
data PostSubscriptionSchedulesRequestBodyMetadata'
    = PostSubscriptionSchedulesRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesRequestBodyMetadata'" (\obj -> GHC.Base.pure PostSubscriptionSchedulesRequestBodyMetadata')
data PostSubscriptionSchedulesRequestBodyPhases'
    = PostSubscriptionSchedulesRequestBodyPhases' {postSubscriptionSchedulesRequestBodyPhases'ApplicationFeePercent :: (GHC.Maybe.Maybe GHC.Types.Double),
                                                   postSubscriptionSchedulesRequestBodyPhases'BillingThresholds :: (GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'Variants),
                                                   postSubscriptionSchedulesRequestBodyPhases'CollectionMethod :: (GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBodyPhases'CollectionMethod'),
                                                   postSubscriptionSchedulesRequestBodyPhases'Coupon :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postSubscriptionSchedulesRequestBodyPhases'DefaultPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates :: (GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates'Variants),
                                                   postSubscriptionSchedulesRequestBodyPhases'EndDate :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                   postSubscriptionSchedulesRequestBodyPhases'InvoiceSettings :: (GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBodyPhases'InvoiceSettings'),
                                                   postSubscriptionSchedulesRequestBodyPhases'Iterations :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                   postSubscriptionSchedulesRequestBodyPhases'Plans :: ([] PostSubscriptionSchedulesRequestBodyPhases'Plans'),
                                                   postSubscriptionSchedulesRequestBodyPhases'ProrationBehavior :: (GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBodyPhases'ProrationBehavior'),
                                                   postSubscriptionSchedulesRequestBodyPhases'TaxPercent :: (GHC.Maybe.Maybe GHC.Types.Double),
                                                   postSubscriptionSchedulesRequestBodyPhases'Trial :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                   postSubscriptionSchedulesRequestBodyPhases'TrialEnd :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf1
    = PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf1
    where toJSON (PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf1EnumString_
                                          else PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf1EnumOther val)
data PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf2
    = PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf2 {postSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf2AmountGte :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                                           postSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf2ResetBillingCycleAnchor :: (GHC.Maybe.Maybe GHC.Types.Bool)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount_gte" (postSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf2AmountGte obj) : (Data.Aeson..=) "reset_billing_cycle_anchor" (postSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf2ResetBillingCycleAnchor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount_gte" (postSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf2AmountGte obj) GHC.Base.<> (Data.Aeson..=) "reset_billing_cycle_anchor" (postSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf2ResetBillingCycleAnchor obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf2" (\obj -> (GHC.Base.pure PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reset_billing_cycle_anchor"))
data PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'Variants
    = PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'Variant1 PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf1
    | PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'Variant2 PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostSubscriptionSchedulesRequestBodyPhases'CollectionMethod'
    = PostSubscriptionSchedulesRequestBodyPhases'CollectionMethod'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionSchedulesRequestBodyPhases'CollectionMethod'EnumTyped GHC.Base.String
    | PostSubscriptionSchedulesRequestBodyPhases'CollectionMethod'EnumStringChargeAutomatically
    | PostSubscriptionSchedulesRequestBodyPhases'CollectionMethod'EnumStringSendInvoice
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyPhases'CollectionMethod'
    where toJSON (PostSubscriptionSchedulesRequestBodyPhases'CollectionMethod'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesRequestBodyPhases'CollectionMethod'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesRequestBodyPhases'CollectionMethod'EnumStringChargeAutomatically) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically"
          toJSON (PostSubscriptionSchedulesRequestBodyPhases'CollectionMethod'EnumStringSendInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice"
instance Data.Aeson.FromJSON PostSubscriptionSchedulesRequestBodyPhases'CollectionMethod'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically")
                                          then PostSubscriptionSchedulesRequestBodyPhases'CollectionMethod'EnumStringChargeAutomatically
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice")
                                                then PostSubscriptionSchedulesRequestBodyPhases'CollectionMethod'EnumStringSendInvoice
                                                else PostSubscriptionSchedulesRequestBodyPhases'CollectionMethod'EnumOther val)
data PostSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates'OneOf1
    = PostSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates'OneOf1
    where toJSON (PostSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates'OneOf1EnumString_
                                          else PostSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates'OneOf1EnumOther val)
data PostSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates'Variants
    = PostSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates'Variant1 PostSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates'OneOf1
    | PostSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates'Variant2 ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostSubscriptionSchedulesRequestBodyPhases'InvoiceSettings'
    = PostSubscriptionSchedulesRequestBodyPhases'InvoiceSettings' {postSubscriptionSchedulesRequestBodyPhases'InvoiceSettings'DaysUntilDue :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyPhases'InvoiceSettings'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "days_until_due" (postSubscriptionSchedulesRequestBodyPhases'InvoiceSettings'DaysUntilDue obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "days_until_due" (postSubscriptionSchedulesRequestBodyPhases'InvoiceSettings'DaysUntilDue obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesRequestBodyPhases'InvoiceSettings'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesRequestBodyPhases'InvoiceSettings'" (\obj -> GHC.Base.pure PostSubscriptionSchedulesRequestBodyPhases'InvoiceSettings' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "days_until_due"))
data PostSubscriptionSchedulesRequestBodyPhases'Plans'
    = PostSubscriptionSchedulesRequestBodyPhases'Plans' {postSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds :: (GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'Variants),
                                                         postSubscriptionSchedulesRequestBodyPhases'Plans'Plan :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postSubscriptionSchedulesRequestBodyPhases'Plans'Quantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                         postSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates :: (GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates'Variants)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf1
    = PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf1
    where toJSON (PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf1EnumString_
                                          else PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf1EnumOther val)
data PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf2
    = PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf2 {postSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf2UsageGte :: GHC.Integer.Type.Integer}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "usage_gte" (postSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf2UsageGte obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "usage_gte" (postSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf2UsageGte obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf2" (\obj -> GHC.Base.pure PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "usage_gte"))
data PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'Variants
    = PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'Variant1 PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf1
    | PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'Variant2 PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates'OneOf1
    = PostSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates'OneOf1
    where toJSON (PostSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates'OneOf1EnumString_
                                          else PostSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates'OneOf1EnumOther val)
data PostSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates'Variants
    = PostSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates'Variant1 PostSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates'OneOf1
    | PostSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates'Variant2 ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyPhases'Plans'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "billing_thresholds" (postSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds obj) : (Data.Aeson..=) "plan" (postSubscriptionSchedulesRequestBodyPhases'Plans'Plan obj) : (Data.Aeson..=) "quantity" (postSubscriptionSchedulesRequestBodyPhases'Plans'Quantity obj) : (Data.Aeson..=) "tax_rates" (postSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "billing_thresholds" (postSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds obj) GHC.Base.<> ((Data.Aeson..=) "plan" (postSubscriptionSchedulesRequestBodyPhases'Plans'Plan obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (postSubscriptionSchedulesRequestBodyPhases'Plans'Quantity obj) GHC.Base.<> (Data.Aeson..=) "tax_rates" (postSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesRequestBodyPhases'Plans'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesRequestBodyPhases'Plans'" (\obj -> (((GHC.Base.pure PostSubscriptionSchedulesRequestBodyPhases'Plans' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "plan")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_rates"))
data PostSubscriptionSchedulesRequestBodyPhases'ProrationBehavior'
    = PostSubscriptionSchedulesRequestBodyPhases'ProrationBehavior'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionSchedulesRequestBodyPhases'ProrationBehavior'EnumTyped GHC.Base.String
    | PostSubscriptionSchedulesRequestBodyPhases'ProrationBehavior'EnumStringAlwaysInvoice
    | PostSubscriptionSchedulesRequestBodyPhases'ProrationBehavior'EnumStringCreateProrations
    | PostSubscriptionSchedulesRequestBodyPhases'ProrationBehavior'EnumStringNone
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyPhases'ProrationBehavior'
    where toJSON (PostSubscriptionSchedulesRequestBodyPhases'ProrationBehavior'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesRequestBodyPhases'ProrationBehavior'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesRequestBodyPhases'ProrationBehavior'EnumStringAlwaysInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "always_invoice"
          toJSON (PostSubscriptionSchedulesRequestBodyPhases'ProrationBehavior'EnumStringCreateProrations) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "create_prorations"
          toJSON (PostSubscriptionSchedulesRequestBodyPhases'ProrationBehavior'EnumStringNone) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none"
instance Data.Aeson.FromJSON PostSubscriptionSchedulesRequestBodyPhases'ProrationBehavior'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "always_invoice")
                                          then PostSubscriptionSchedulesRequestBodyPhases'ProrationBehavior'EnumStringAlwaysInvoice
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "create_prorations")
                                                then PostSubscriptionSchedulesRequestBodyPhases'ProrationBehavior'EnumStringCreateProrations
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none")
                                                      then PostSubscriptionSchedulesRequestBodyPhases'ProrationBehavior'EnumStringNone
                                                      else PostSubscriptionSchedulesRequestBodyPhases'ProrationBehavior'EnumOther val)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyPhases'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "application_fee_percent" (postSubscriptionSchedulesRequestBodyPhases'ApplicationFeePercent obj) : (Data.Aeson..=) "billing_thresholds" (postSubscriptionSchedulesRequestBodyPhases'BillingThresholds obj) : (Data.Aeson..=) "collection_method" (postSubscriptionSchedulesRequestBodyPhases'CollectionMethod obj) : (Data.Aeson..=) "coupon" (postSubscriptionSchedulesRequestBodyPhases'Coupon obj) : (Data.Aeson..=) "default_payment_method" (postSubscriptionSchedulesRequestBodyPhases'DefaultPaymentMethod obj) : (Data.Aeson..=) "default_tax_rates" (postSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates obj) : (Data.Aeson..=) "end_date" (postSubscriptionSchedulesRequestBodyPhases'EndDate obj) : (Data.Aeson..=) "invoice_settings" (postSubscriptionSchedulesRequestBodyPhases'InvoiceSettings obj) : (Data.Aeson..=) "iterations" (postSubscriptionSchedulesRequestBodyPhases'Iterations obj) : (Data.Aeson..=) "plans" (postSubscriptionSchedulesRequestBodyPhases'Plans obj) : (Data.Aeson..=) "proration_behavior" (postSubscriptionSchedulesRequestBodyPhases'ProrationBehavior obj) : (Data.Aeson..=) "tax_percent" (postSubscriptionSchedulesRequestBodyPhases'TaxPercent obj) : (Data.Aeson..=) "trial" (postSubscriptionSchedulesRequestBodyPhases'Trial obj) : (Data.Aeson..=) "trial_end" (postSubscriptionSchedulesRequestBodyPhases'TrialEnd obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "application_fee_percent" (postSubscriptionSchedulesRequestBodyPhases'ApplicationFeePercent obj) GHC.Base.<> ((Data.Aeson..=) "billing_thresholds" (postSubscriptionSchedulesRequestBodyPhases'BillingThresholds obj) GHC.Base.<> ((Data.Aeson..=) "collection_method" (postSubscriptionSchedulesRequestBodyPhases'CollectionMethod obj) GHC.Base.<> ((Data.Aeson..=) "coupon" (postSubscriptionSchedulesRequestBodyPhases'Coupon obj) GHC.Base.<> ((Data.Aeson..=) "default_payment_method" (postSubscriptionSchedulesRequestBodyPhases'DefaultPaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "default_tax_rates" (postSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates obj) GHC.Base.<> ((Data.Aeson..=) "end_date" (postSubscriptionSchedulesRequestBodyPhases'EndDate obj) GHC.Base.<> ((Data.Aeson..=) "invoice_settings" (postSubscriptionSchedulesRequestBodyPhases'InvoiceSettings obj) GHC.Base.<> ((Data.Aeson..=) "iterations" (postSubscriptionSchedulesRequestBodyPhases'Iterations obj) GHC.Base.<> ((Data.Aeson..=) "plans" (postSubscriptionSchedulesRequestBodyPhases'Plans obj) GHC.Base.<> ((Data.Aeson..=) "proration_behavior" (postSubscriptionSchedulesRequestBodyPhases'ProrationBehavior obj) GHC.Base.<> ((Data.Aeson..=) "tax_percent" (postSubscriptionSchedulesRequestBodyPhases'TaxPercent obj) GHC.Base.<> ((Data.Aeson..=) "trial" (postSubscriptionSchedulesRequestBodyPhases'Trial obj) GHC.Base.<> (Data.Aeson..=) "trial_end" (postSubscriptionSchedulesRequestBodyPhases'TrialEnd obj))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesRequestBodyPhases'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesRequestBodyPhases'" (\obj -> (((((((((((((GHC.Base.pure PostSubscriptionSchedulesRequestBodyPhases' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "collection_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "coupon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_tax_rates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "end_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoice_settings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "iterations")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "plans")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proration_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_end"))
data PostSubscriptionSchedulesRequestBodyStartDate'OneOf1
    = PostSubscriptionSchedulesRequestBodyStartDate'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionSchedulesRequestBodyStartDate'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionSchedulesRequestBodyStartDate'OneOf1EnumStringNow
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyStartDate'OneOf1
    where toJSON (PostSubscriptionSchedulesRequestBodyStartDate'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesRequestBodyStartDate'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionSchedulesRequestBodyStartDate'OneOf1EnumStringNow) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now"
instance Data.Aeson.FromJSON PostSubscriptionSchedulesRequestBodyStartDate'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now")
                                          then PostSubscriptionSchedulesRequestBodyStartDate'OneOf1EnumStringNow
                                          else PostSubscriptionSchedulesRequestBodyStartDate'OneOf1EnumOther val)
data PostSubscriptionSchedulesRequestBodyStartDate'Variants
    = PostSubscriptionSchedulesRequestBodyStartDate'Variant1 PostSubscriptionSchedulesRequestBodyStartDate'OneOf1
    | PostSubscriptionSchedulesRequestBodyStartDate'Variant2 GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyStartDate'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionSchedulesRequestBodyStartDate'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "customer" (postSubscriptionSchedulesRequestBodyCustomer obj) : (Data.Aeson..=) "default_settings" (postSubscriptionSchedulesRequestBodyDefaultSettings obj) : (Data.Aeson..=) "end_behavior" (postSubscriptionSchedulesRequestBodyEndBehavior obj) : (Data.Aeson..=) "expand" (postSubscriptionSchedulesRequestBodyExpand obj) : (Data.Aeson..=) "from_subscription" (postSubscriptionSchedulesRequestBodyFromSubscription obj) : (Data.Aeson..=) "metadata" (postSubscriptionSchedulesRequestBodyMetadata obj) : (Data.Aeson..=) "phases" (postSubscriptionSchedulesRequestBodyPhases obj) : (Data.Aeson..=) "start_date" (postSubscriptionSchedulesRequestBodyStartDate obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "customer" (postSubscriptionSchedulesRequestBodyCustomer obj) GHC.Base.<> ((Data.Aeson..=) "default_settings" (postSubscriptionSchedulesRequestBodyDefaultSettings obj) GHC.Base.<> ((Data.Aeson..=) "end_behavior" (postSubscriptionSchedulesRequestBodyEndBehavior obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postSubscriptionSchedulesRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "from_subscription" (postSubscriptionSchedulesRequestBodyFromSubscription obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postSubscriptionSchedulesRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "phases" (postSubscriptionSchedulesRequestBodyPhases obj) GHC.Base.<> (Data.Aeson..=) "start_date" (postSubscriptionSchedulesRequestBodyStartDate obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesRequestBody" (\obj -> (((((((GHC.Base.pure PostSubscriptionSchedulesRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_settings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "end_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "from_subscription")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phases")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "start_date"))

data PostSubscriptionSchedulesResponse
    = PostSubscriptionSchedulesResponseError GHC.Base.String
    | PostSubscriptionSchedulesResponse200 SubscriptionSchedule
    | PostSubscriptionSchedulesResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
