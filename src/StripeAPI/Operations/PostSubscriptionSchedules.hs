{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postSubscriptionSchedules
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

-- | > POST /v1/subscription_schedules
-- 
-- \<p>Creates a new subscription schedule object. Each customer can have up to 25 active or scheduled subscriptions.\<\/p>
postSubscriptionSchedules :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostSubscriptionSchedulesResponse)) -- ^ Monad containing the result of the operation
postSubscriptionSchedules config
                          body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSubscriptionSchedulesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionSchedulesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                             SubscriptionSchedule)
                                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionSchedulesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/subscription_schedules") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/subscription_schedules
-- 
-- The same as 'postSubscriptionSchedules' but returns the raw 'Data.ByteString.Char8.ByteString'
postSubscriptionSchedulesRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                StripeAPI.Common.Configuration s ->
                                GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBody ->
                                m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSubscriptionSchedulesRaw config
                             body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/subscription_schedules") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/subscription_schedules
-- 
-- Monadic version of 'postSubscriptionSchedules' (use with 'StripeAPI.Common.runWithConfiguration')
postSubscriptionSchedulesM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                            StripeAPI.Common.SecurityScheme s) =>
                              GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBody ->
                              Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                 m
                                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                     (Network.HTTP.Client.Types.Response PostSubscriptionSchedulesResponse))
postSubscriptionSchedulesM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSubscriptionSchedulesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionSchedulesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                              SubscriptionSchedule)
                                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionSchedulesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                Error)
                                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/subscription_schedules") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/subscription_schedules
-- 
-- Monadic version of 'postSubscriptionSchedulesRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postSubscriptionSchedulesRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                               StripeAPI.Common.SecurityScheme s) =>
                                 GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBody ->
                                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                    m
                                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSubscriptionSchedulesRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/subscription_schedules") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postSubscriptionSchedulesRequestBody
-- 
-- 
data PostSubscriptionSchedulesRequestBody = PostSubscriptionSchedulesRequestBody {
  -- | customer: The identifier of the customer to create the subscription schedule for.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postSubscriptionSchedulesRequestBodyCustomer :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | default_settings: Object representing the subscription schedule\'s default settings.
  , postSubscriptionSchedulesRequestBodyDefaultSettings :: (GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBodyDefaultSettings')
  -- | end_behavior: Configures how the subscription schedule behaves when it ends. Possible values are \`release\` or \`cancel\` with the default being \`release\`. \`release\` will end the subscription schedule and keep the underlying subscription running.\`cancel\` will end the subscription schedule and cancel the underlying subscription.
  , postSubscriptionSchedulesRequestBodyEndBehavior :: (GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBodyEndBehavior')
  -- | expand: Specifies which fields in the response should be expanded.
  , postSubscriptionSchedulesRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | from_subscription: Migrate an existing subscription to be managed by a subscription schedule. If this parameter is set, a subscription schedule will be created using the subscription\'s plan(s), set to auto-renew using the subscription\'s interval. When using this parameter, other parameters (such as phase values) cannot be set. To create a subscription schedule with other modifications, we recommend making two separate API calls.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSubscriptionSchedulesRequestBodyFromSubscription :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postSubscriptionSchedulesRequestBodyMetadata :: (GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBodyMetadata')
  -- | phases: List representing phases of the subscription schedule. Each phase can be customized to have different durations, plans, and coupons. If there are multiple phases, the \`end_date\` of one phase will always equal the \`start_date\` of the next phase.
  , postSubscriptionSchedulesRequestBodyPhases :: (GHC.Maybe.Maybe ([] PostSubscriptionSchedulesRequestBodyPhases'))
  -- | start_date: When the subscription schedule starts. We recommend using \`now\` so that it starts the subscription immediately. You can also use a Unix timestamp to backdate the subscription so that it starts on a past date, or set a future date for the subscription to start on. When you backdate, the \`billing_cycle_anchor\` of the subscription is equivalent to the \`start_date\`.
  , postSubscriptionSchedulesRequestBodyStartDate :: (GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBodyStartDate'Variants)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "customer" (postSubscriptionSchedulesRequestBodyCustomer obj) : (Data.Aeson..=) "default_settings" (postSubscriptionSchedulesRequestBodyDefaultSettings obj) : (Data.Aeson..=) "end_behavior" (postSubscriptionSchedulesRequestBodyEndBehavior obj) : (Data.Aeson..=) "expand" (postSubscriptionSchedulesRequestBodyExpand obj) : (Data.Aeson..=) "from_subscription" (postSubscriptionSchedulesRequestBodyFromSubscription obj) : (Data.Aeson..=) "metadata" (postSubscriptionSchedulesRequestBodyMetadata obj) : (Data.Aeson..=) "phases" (postSubscriptionSchedulesRequestBodyPhases obj) : (Data.Aeson..=) "start_date" (postSubscriptionSchedulesRequestBodyStartDate obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "customer" (postSubscriptionSchedulesRequestBodyCustomer obj) GHC.Base.<> ((Data.Aeson..=) "default_settings" (postSubscriptionSchedulesRequestBodyDefaultSettings obj) GHC.Base.<> ((Data.Aeson..=) "end_behavior" (postSubscriptionSchedulesRequestBodyEndBehavior obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postSubscriptionSchedulesRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "from_subscription" (postSubscriptionSchedulesRequestBodyFromSubscription obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postSubscriptionSchedulesRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "phases" (postSubscriptionSchedulesRequestBodyPhases obj) GHC.Base.<> (Data.Aeson..=) "start_date" (postSubscriptionSchedulesRequestBodyStartDate obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesRequestBody" (\obj -> (((((((GHC.Base.pure PostSubscriptionSchedulesRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_settings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "end_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "from_subscription")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phases")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "start_date"))
-- | Defines the data type for the schema postSubscriptionSchedulesRequestBodyDefault_settings\'
-- 
-- Object representing the subscription schedule\'s default settings.
data PostSubscriptionSchedulesRequestBodyDefaultSettings' = PostSubscriptionSchedulesRequestBodyDefaultSettings' {
  -- | billing_thresholds
  postSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds :: (GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'Variants)
  -- | collection_method
  , postSubscriptionSchedulesRequestBodyDefaultSettings'CollectionMethod :: (GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBodyDefaultSettings'CollectionMethod')
  -- | default_payment_method
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSubscriptionSchedulesRequestBodyDefaultSettings'DefaultPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | invoice_settings
  , postSubscriptionSchedulesRequestBodyDefaultSettings'InvoiceSettings :: (GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBodyDefaultSettings'InvoiceSettings')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyDefaultSettings'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "billing_thresholds" (postSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds obj) : (Data.Aeson..=) "collection_method" (postSubscriptionSchedulesRequestBodyDefaultSettings'CollectionMethod obj) : (Data.Aeson..=) "default_payment_method" (postSubscriptionSchedulesRequestBodyDefaultSettings'DefaultPaymentMethod obj) : (Data.Aeson..=) "invoice_settings" (postSubscriptionSchedulesRequestBodyDefaultSettings'InvoiceSettings obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "billing_thresholds" (postSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds obj) GHC.Base.<> ((Data.Aeson..=) "collection_method" (postSubscriptionSchedulesRequestBodyDefaultSettings'CollectionMethod obj) GHC.Base.<> ((Data.Aeson..=) "default_payment_method" (postSubscriptionSchedulesRequestBodyDefaultSettings'DefaultPaymentMethod obj) GHC.Base.<> (Data.Aeson..=) "invoice_settings" (postSubscriptionSchedulesRequestBodyDefaultSettings'InvoiceSettings obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesRequestBodyDefaultSettings'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesRequestBodyDefaultSettings'" (\obj -> (((GHC.Base.pure PostSubscriptionSchedulesRequestBodyDefaultSettings' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "collection_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoice_settings"))
-- | Defines the enum schema postSubscriptionSchedulesRequestBodyDefault_settings\'Billing_thresholds\'OneOf1
-- 
-- 
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
-- | Defines the data type for the schema postSubscriptionSchedulesRequestBodyDefault_settings\'Billing_thresholds\'OneOf2
-- 
-- 
data PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf2 = PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf2 {
  -- | amount_gte
  postSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf2AmountGte :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | reset_billing_cycle_anchor
  , postSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf2ResetBillingCycleAnchor :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount_gte" (postSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf2AmountGte obj) : (Data.Aeson..=) "reset_billing_cycle_anchor" (postSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf2ResetBillingCycleAnchor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount_gte" (postSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf2AmountGte obj) GHC.Base.<> (Data.Aeson..=) "reset_billing_cycle_anchor" (postSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf2ResetBillingCycleAnchor obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf2" (\obj -> (GHC.Base.pure PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reset_billing_cycle_anchor"))
-- | Define the one-of schema postSubscriptionSchedulesRequestBodyDefault_settings\'Billing_thresholds\'
-- 
-- 
data PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'Variants
    = PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf1 PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf1
    | PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf2 PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionSchedulesRequestBodyDefaultSettings'BillingThresholds'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postSubscriptionSchedulesRequestBodyDefault_settings\'Collection_method\'
-- 
-- 
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
-- | Defines the data type for the schema postSubscriptionSchedulesRequestBodyDefault_settings\'Invoice_settings\'
-- 
-- 
data PostSubscriptionSchedulesRequestBodyDefaultSettings'InvoiceSettings' = PostSubscriptionSchedulesRequestBodyDefaultSettings'InvoiceSettings' {
  -- | days_until_due
  postSubscriptionSchedulesRequestBodyDefaultSettings'InvoiceSettings'DaysUntilDue :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyDefaultSettings'InvoiceSettings'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "days_until_due" (postSubscriptionSchedulesRequestBodyDefaultSettings'InvoiceSettings'DaysUntilDue obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "days_until_due" (postSubscriptionSchedulesRequestBodyDefaultSettings'InvoiceSettings'DaysUntilDue obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesRequestBodyDefaultSettings'InvoiceSettings'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesRequestBodyDefaultSettings'InvoiceSettings'" (\obj -> GHC.Base.pure PostSubscriptionSchedulesRequestBodyDefaultSettings'InvoiceSettings' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "days_until_due"))
-- | Defines the enum schema postSubscriptionSchedulesRequestBodyEnd_behavior\'
-- 
-- Configures how the subscription schedule behaves when it ends. Possible values are \`release\` or \`cancel\` with the default being \`release\`. \`release\` will end the subscription schedule and keep the underlying subscription running.\`cancel\` will end the subscription schedule and cancel the underlying subscription.
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
-- | Defines the data type for the schema postSubscriptionSchedulesRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostSubscriptionSchedulesRequestBodyMetadata' = PostSubscriptionSchedulesRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesRequestBodyMetadata'" (\obj -> GHC.Base.pure PostSubscriptionSchedulesRequestBodyMetadata')
-- | Defines the data type for the schema postSubscriptionSchedulesRequestBodyPhases\'
-- 
-- 
data PostSubscriptionSchedulesRequestBodyPhases' = PostSubscriptionSchedulesRequestBodyPhases' {
  -- | application_fee_percent
  postSubscriptionSchedulesRequestBodyPhases'ApplicationFeePercent :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | billing_thresholds
  , postSubscriptionSchedulesRequestBodyPhases'BillingThresholds :: (GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'Variants)
  -- | collection_method
  , postSubscriptionSchedulesRequestBodyPhases'CollectionMethod :: (GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBodyPhases'CollectionMethod')
  -- | coupon
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSubscriptionSchedulesRequestBodyPhases'Coupon :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | default_payment_method
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSubscriptionSchedulesRequestBodyPhases'DefaultPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | default_tax_rates
  , postSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates :: (GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates'Variants)
  -- | end_date
  , postSubscriptionSchedulesRequestBodyPhases'EndDate :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | invoice_settings
  , postSubscriptionSchedulesRequestBodyPhases'InvoiceSettings :: (GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBodyPhases'InvoiceSettings')
  -- | iterations
  , postSubscriptionSchedulesRequestBodyPhases'Iterations :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | plans
  , postSubscriptionSchedulesRequestBodyPhases'Plans :: ([] PostSubscriptionSchedulesRequestBodyPhases'Plans')
  -- | proration_behavior
  , postSubscriptionSchedulesRequestBodyPhases'ProrationBehavior :: (GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBodyPhases'ProrationBehavior')
  -- | tax_percent
  , postSubscriptionSchedulesRequestBodyPhases'TaxPercent :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | trial
  , postSubscriptionSchedulesRequestBodyPhases'Trial :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | trial_end
  , postSubscriptionSchedulesRequestBodyPhases'TrialEnd :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyPhases'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "application_fee_percent" (postSubscriptionSchedulesRequestBodyPhases'ApplicationFeePercent obj) : (Data.Aeson..=) "billing_thresholds" (postSubscriptionSchedulesRequestBodyPhases'BillingThresholds obj) : (Data.Aeson..=) "collection_method" (postSubscriptionSchedulesRequestBodyPhases'CollectionMethod obj) : (Data.Aeson..=) "coupon" (postSubscriptionSchedulesRequestBodyPhases'Coupon obj) : (Data.Aeson..=) "default_payment_method" (postSubscriptionSchedulesRequestBodyPhases'DefaultPaymentMethod obj) : (Data.Aeson..=) "default_tax_rates" (postSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates obj) : (Data.Aeson..=) "end_date" (postSubscriptionSchedulesRequestBodyPhases'EndDate obj) : (Data.Aeson..=) "invoice_settings" (postSubscriptionSchedulesRequestBodyPhases'InvoiceSettings obj) : (Data.Aeson..=) "iterations" (postSubscriptionSchedulesRequestBodyPhases'Iterations obj) : (Data.Aeson..=) "plans" (postSubscriptionSchedulesRequestBodyPhases'Plans obj) : (Data.Aeson..=) "proration_behavior" (postSubscriptionSchedulesRequestBodyPhases'ProrationBehavior obj) : (Data.Aeson..=) "tax_percent" (postSubscriptionSchedulesRequestBodyPhases'TaxPercent obj) : (Data.Aeson..=) "trial" (postSubscriptionSchedulesRequestBodyPhases'Trial obj) : (Data.Aeson..=) "trial_end" (postSubscriptionSchedulesRequestBodyPhases'TrialEnd obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "application_fee_percent" (postSubscriptionSchedulesRequestBodyPhases'ApplicationFeePercent obj) GHC.Base.<> ((Data.Aeson..=) "billing_thresholds" (postSubscriptionSchedulesRequestBodyPhases'BillingThresholds obj) GHC.Base.<> ((Data.Aeson..=) "collection_method" (postSubscriptionSchedulesRequestBodyPhases'CollectionMethod obj) GHC.Base.<> ((Data.Aeson..=) "coupon" (postSubscriptionSchedulesRequestBodyPhases'Coupon obj) GHC.Base.<> ((Data.Aeson..=) "default_payment_method" (postSubscriptionSchedulesRequestBodyPhases'DefaultPaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "default_tax_rates" (postSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates obj) GHC.Base.<> ((Data.Aeson..=) "end_date" (postSubscriptionSchedulesRequestBodyPhases'EndDate obj) GHC.Base.<> ((Data.Aeson..=) "invoice_settings" (postSubscriptionSchedulesRequestBodyPhases'InvoiceSettings obj) GHC.Base.<> ((Data.Aeson..=) "iterations" (postSubscriptionSchedulesRequestBodyPhases'Iterations obj) GHC.Base.<> ((Data.Aeson..=) "plans" (postSubscriptionSchedulesRequestBodyPhases'Plans obj) GHC.Base.<> ((Data.Aeson..=) "proration_behavior" (postSubscriptionSchedulesRequestBodyPhases'ProrationBehavior obj) GHC.Base.<> ((Data.Aeson..=) "tax_percent" (postSubscriptionSchedulesRequestBodyPhases'TaxPercent obj) GHC.Base.<> ((Data.Aeson..=) "trial" (postSubscriptionSchedulesRequestBodyPhases'Trial obj) GHC.Base.<> (Data.Aeson..=) "trial_end" (postSubscriptionSchedulesRequestBodyPhases'TrialEnd obj))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesRequestBodyPhases'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesRequestBodyPhases'" (\obj -> (((((((((((((GHC.Base.pure PostSubscriptionSchedulesRequestBodyPhases' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "collection_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "coupon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_tax_rates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "end_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoice_settings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "iterations")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "plans")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proration_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_end"))
-- | Defines the enum schema postSubscriptionSchedulesRequestBodyPhases\'Billing_thresholds\'OneOf1
-- 
-- 
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
-- | Defines the data type for the schema postSubscriptionSchedulesRequestBodyPhases\'Billing_thresholds\'OneOf2
-- 
-- 
data PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf2 = PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf2 {
  -- | amount_gte
  postSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf2AmountGte :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | reset_billing_cycle_anchor
  , postSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf2ResetBillingCycleAnchor :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount_gte" (postSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf2AmountGte obj) : (Data.Aeson..=) "reset_billing_cycle_anchor" (postSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf2ResetBillingCycleAnchor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount_gte" (postSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf2AmountGte obj) GHC.Base.<> (Data.Aeson..=) "reset_billing_cycle_anchor" (postSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf2ResetBillingCycleAnchor obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf2" (\obj -> (GHC.Base.pure PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reset_billing_cycle_anchor"))
-- | Define the one-of schema postSubscriptionSchedulesRequestBodyPhases\'Billing_thresholds\'
-- 
-- 
data PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'Variants
    = PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf1 PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf1
    | PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf2 PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionSchedulesRequestBodyPhases'BillingThresholds'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postSubscriptionSchedulesRequestBodyPhases\'Collection_method\'
-- 
-- 
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
-- | Defines the enum schema postSubscriptionSchedulesRequestBodyPhases\'Default_tax_rates\'OneOf1
-- 
-- 
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
-- | Define the one-of schema postSubscriptionSchedulesRequestBodyPhases\'Default_tax_rates\'
-- 
-- 
data PostSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates'Variants
    = PostSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates'PostSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates'OneOf1 PostSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates'OneOf1
    | PostSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates'ListString ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionSchedulesRequestBodyPhases'DefaultTaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postSubscriptionSchedulesRequestBodyPhases\'Invoice_settings\'
-- 
-- 
data PostSubscriptionSchedulesRequestBodyPhases'InvoiceSettings' = PostSubscriptionSchedulesRequestBodyPhases'InvoiceSettings' {
  -- | days_until_due
  postSubscriptionSchedulesRequestBodyPhases'InvoiceSettings'DaysUntilDue :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyPhases'InvoiceSettings'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "days_until_due" (postSubscriptionSchedulesRequestBodyPhases'InvoiceSettings'DaysUntilDue obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "days_until_due" (postSubscriptionSchedulesRequestBodyPhases'InvoiceSettings'DaysUntilDue obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesRequestBodyPhases'InvoiceSettings'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesRequestBodyPhases'InvoiceSettings'" (\obj -> GHC.Base.pure PostSubscriptionSchedulesRequestBodyPhases'InvoiceSettings' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "days_until_due"))
-- | Defines the data type for the schema postSubscriptionSchedulesRequestBodyPhases\'Plans\'
-- 
-- 
data PostSubscriptionSchedulesRequestBodyPhases'Plans' = PostSubscriptionSchedulesRequestBodyPhases'Plans' {
  -- | billing_thresholds
  postSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds :: (GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'Variants)
  -- | plan
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSubscriptionSchedulesRequestBodyPhases'Plans'Plan :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | quantity
  , postSubscriptionSchedulesRequestBodyPhases'Plans'Quantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | tax_rates
  , postSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates :: (GHC.Maybe.Maybe PostSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates'Variants)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyPhases'Plans'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "billing_thresholds" (postSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds obj) : (Data.Aeson..=) "plan" (postSubscriptionSchedulesRequestBodyPhases'Plans'Plan obj) : (Data.Aeson..=) "quantity" (postSubscriptionSchedulesRequestBodyPhases'Plans'Quantity obj) : (Data.Aeson..=) "tax_rates" (postSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "billing_thresholds" (postSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds obj) GHC.Base.<> ((Data.Aeson..=) "plan" (postSubscriptionSchedulesRequestBodyPhases'Plans'Plan obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (postSubscriptionSchedulesRequestBodyPhases'Plans'Quantity obj) GHC.Base.<> (Data.Aeson..=) "tax_rates" (postSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesRequestBodyPhases'Plans'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesRequestBodyPhases'Plans'" (\obj -> (((GHC.Base.pure PostSubscriptionSchedulesRequestBodyPhases'Plans' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "plan")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_rates"))
-- | Defines the enum schema postSubscriptionSchedulesRequestBodyPhases\'Plans\'Billing_thresholds\'OneOf1
-- 
-- 
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
-- | Defines the data type for the schema postSubscriptionSchedulesRequestBodyPhases\'Plans\'Billing_thresholds\'OneOf2
-- 
-- 
data PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf2 = PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf2 {
  -- | usage_gte
  postSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf2UsageGte :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "usage_gte" (postSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf2UsageGte obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "usage_gte" (postSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf2UsageGte obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf2" (\obj -> GHC.Base.pure PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "usage_gte"))
-- | Define the one-of schema postSubscriptionSchedulesRequestBodyPhases\'Plans\'Billing_thresholds\'
-- 
-- 
data PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'Variants
    = PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf1 PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf1
    | PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf2 PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionSchedulesRequestBodyPhases'Plans'BillingThresholds'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postSubscriptionSchedulesRequestBodyPhases\'Plans\'Tax_rates\'OneOf1
-- 
-- 
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
-- | Define the one-of schema postSubscriptionSchedulesRequestBodyPhases\'Plans\'Tax_rates\'
-- 
-- 
data PostSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates'Variants
    = PostSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates'PostSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates'OneOf1 PostSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates'OneOf1
    | PostSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates'ListString ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionSchedulesRequestBodyPhases'Plans'TaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postSubscriptionSchedulesRequestBodyPhases\'Proration_behavior\'
-- 
-- 
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
-- | Defines the enum schema postSubscriptionSchedulesRequestBodyStart_date\'OneOf1
-- 
-- 
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
-- | Define the one-of schema postSubscriptionSchedulesRequestBodyStart_date\'
-- 
-- When the subscription schedule starts. We recommend using \`now\` so that it starts the subscription immediately. You can also use a Unix timestamp to backdate the subscription so that it starts on a past date, or set a future date for the subscription to start on. When you backdate, the \`billing_cycle_anchor\` of the subscription is equivalent to the \`start_date\`.
data PostSubscriptionSchedulesRequestBodyStartDate'Variants
    = PostSubscriptionSchedulesRequestBodyStartDate'PostSubscriptionSchedulesRequestBodyStartDate'OneOf1 PostSubscriptionSchedulesRequestBodyStartDate'OneOf1
    | PostSubscriptionSchedulesRequestBodyStartDate'Integer GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesRequestBodyStartDate'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionSchedulesRequestBodyStartDate'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Represents a response of the operation 'postSubscriptionSchedules'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSubscriptionSchedulesResponseError' is used.
data PostSubscriptionSchedulesResponse =                       
   PostSubscriptionSchedulesResponseError GHC.Base.String      -- ^ Means either no matching case available or a parse error
  | PostSubscriptionSchedulesResponse200 SubscriptionSchedule  -- ^ Successful response.
  | PostSubscriptionSchedulesResponseDefault Error             -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
