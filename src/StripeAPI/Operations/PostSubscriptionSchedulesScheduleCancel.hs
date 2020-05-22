{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postSubscriptionSchedulesScheduleCancel
module StripeAPI.Operations.PostSubscriptionSchedulesScheduleCancel where

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

-- | > POST /v1/subscription_schedules/{schedule}/cancel
-- 
-- \<p>Cancels a subscription schedule and its associated subscription immediately (if the subscription schedule has an active subscription). A subscription schedule can only be canceled if its status is \<code>not_started\<\/code> or \<code>active\<\/code>.\<\/p>
postSubscriptionSchedulesScheduleCancel :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                                     -- ^ schedule | Constraints: Maximum length of 5000
  -> PostSubscriptionSchedulesScheduleCancelRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostSubscriptionSchedulesScheduleCancelResponse)) -- ^ Monad containing the result of the operation
postSubscriptionSchedulesScheduleCancel config
                                        schedule
                                        body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSubscriptionSchedulesScheduleCancelResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionSchedulesScheduleCancelResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       SubscriptionSchedule)
                                                                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionSchedulesScheduleCancelResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/subscription_schedules/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel schedule)) GHC.Base.++ "/cancel"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/subscription_schedules/{schedule}/cancel
-- 
-- The same as 'postSubscriptionSchedulesScheduleCancel' but returns the raw 'Data.ByteString.Char8.ByteString'
postSubscriptionSchedulesScheduleCancelRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                            StripeAPI.Common.SecurityScheme s) =>
                                              StripeAPI.Common.Configuration s ->
                                              GHC.Base.String ->
                                              PostSubscriptionSchedulesScheduleCancelRequestBody ->
                                              m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                    (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSubscriptionSchedulesScheduleCancelRaw config
                                           schedule
                                           body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/subscription_schedules/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel schedule)) GHC.Base.++ "/cancel"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/subscription_schedules/{schedule}/cancel
-- 
-- Monadic version of 'postSubscriptionSchedulesScheduleCancel' (use with 'StripeAPI.Common.runWithConfiguration')
postSubscriptionSchedulesScheduleCancelM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                          StripeAPI.Common.SecurityScheme s) =>
                                            GHC.Base.String ->
                                            PostSubscriptionSchedulesScheduleCancelRequestBody ->
                                            Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                               m
                                                                               (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                   (Network.HTTP.Client.Types.Response PostSubscriptionSchedulesScheduleCancelResponse))
postSubscriptionSchedulesScheduleCancelM schedule
                                         body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSubscriptionSchedulesScheduleCancelResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionSchedulesScheduleCancelResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        SubscriptionSchedule)
                                                                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionSchedulesScheduleCancelResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/subscription_schedules/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel schedule)) GHC.Base.++ "/cancel"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/subscription_schedules/{schedule}/cancel
-- 
-- Monadic version of 'postSubscriptionSchedulesScheduleCancelRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postSubscriptionSchedulesScheduleCancelRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                             StripeAPI.Common.SecurityScheme s) =>
                                               GHC.Base.String ->
                                               PostSubscriptionSchedulesScheduleCancelRequestBody ->
                                               Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                  m
                                                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSubscriptionSchedulesScheduleCancelRawM schedule
                                            body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/subscription_schedules/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel schedule)) GHC.Base.++ "/cancel"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postSubscriptionSchedulesScheduleCancelRequestBody
-- 
-- 
data PostSubscriptionSchedulesScheduleCancelRequestBody = PostSubscriptionSchedulesScheduleCancelRequestBody {
  -- | expand: Specifies which fields in the response should be expanded.
  postSubscriptionSchedulesScheduleCancelRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | invoice_now: If the subscription schedule is \`active\`, indicates whether or not to generate a final invoice that contains any un-invoiced metered usage and new\/pending proration invoice items. Defaults to \`true\`.
  , postSubscriptionSchedulesScheduleCancelRequestBodyInvoiceNow :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | prorate: If the subscription schedule is \`active\`, indicates if the cancellation should be prorated. Defaults to \`true\`.
  , postSubscriptionSchedulesScheduleCancelRequestBodyProrate :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionSchedulesScheduleCancelRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "expand" (postSubscriptionSchedulesScheduleCancelRequestBodyExpand obj) : (Data.Aeson..=) "invoice_now" (postSubscriptionSchedulesScheduleCancelRequestBodyInvoiceNow obj) : (Data.Aeson..=) "prorate" (postSubscriptionSchedulesScheduleCancelRequestBodyProrate obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "expand" (postSubscriptionSchedulesScheduleCancelRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "invoice_now" (postSubscriptionSchedulesScheduleCancelRequestBodyInvoiceNow obj) GHC.Base.<> (Data.Aeson..=) "prorate" (postSubscriptionSchedulesScheduleCancelRequestBodyProrate obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionSchedulesScheduleCancelRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionSchedulesScheduleCancelRequestBody" (\obj -> ((GHC.Base.pure PostSubscriptionSchedulesScheduleCancelRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoice_now")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "prorate"))
-- | Represents a response of the operation 'postSubscriptionSchedulesScheduleCancel'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSubscriptionSchedulesScheduleCancelResponseError' is used.
data PostSubscriptionSchedulesScheduleCancelResponse =                       
   PostSubscriptionSchedulesScheduleCancelResponseError GHC.Base.String      -- ^ Means either no matching case available or a parse error
  | PostSubscriptionSchedulesScheduleCancelResponse200 SubscriptionSchedule  -- ^ Successful response.
  | PostSubscriptionSchedulesScheduleCancelResponseDefault Error             -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
