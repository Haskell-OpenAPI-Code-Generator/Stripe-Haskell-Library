{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation deleteSubscriptionsSubscriptionExposedIdDiscount
module StripeAPI.Operations.DeleteSubscriptionsSubscriptionExposedIdDiscount where

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

-- | > DELETE /v1/subscriptions/{subscription_exposed_id}/discount
-- 
-- \<p>Removes the currently applied discount on a subscription.\<\/p>
deleteSubscriptionsSubscriptionExposedIdDiscount :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                                              -- ^ subscription_exposed_id | Constraints: Maximum length of 5000
  -> DeleteSubscriptionsSubscriptionExposedIdDiscountRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response DeleteSubscriptionsSubscriptionExposedIdDiscountResponse)) -- ^ Monad containing the result of the operation
deleteSubscriptionsSubscriptionExposedIdDiscount config
                                                 subscriptionExposedId
                                                 body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either DeleteSubscriptionsSubscriptionExposedIdDiscountResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteSubscriptionsSubscriptionExposedIdDiscountResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  DeletedDiscount)
                                                                                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteSubscriptionsSubscriptionExposedIdDiscountResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "DELETE")) (Data.Text.pack ("/v1/subscriptions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionExposedId)) GHC.Base.++ "/discount"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/subscriptions/{subscription_exposed_id}/discount
-- 
-- The same as 'deleteSubscriptionsSubscriptionExposedIdDiscount' but returns the raw 'Data.ByteString.Char8.ByteString'
deleteSubscriptionsSubscriptionExposedIdDiscountRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                     StripeAPI.Common.SecurityScheme s) =>
                                                       StripeAPI.Common.Configuration s ->
                                                       GHC.Base.String ->
                                                       DeleteSubscriptionsSubscriptionExposedIdDiscountRequestBody ->
                                                       m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                             (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
deleteSubscriptionsSubscriptionExposedIdDiscountRaw config
                                                    subscriptionExposedId
                                                    body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "DELETE")) (Data.Text.pack ("/v1/subscriptions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionExposedId)) GHC.Base.++ "/discount"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/subscriptions/{subscription_exposed_id}/discount
-- 
-- Monadic version of 'deleteSubscriptionsSubscriptionExposedIdDiscount' (use with 'StripeAPI.Common.runWithConfiguration')
deleteSubscriptionsSubscriptionExposedIdDiscountM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                   StripeAPI.Common.SecurityScheme s) =>
                                                     GHC.Base.String ->
                                                     DeleteSubscriptionsSubscriptionExposedIdDiscountRequestBody ->
                                                     Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                        m
                                                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                            (Network.HTTP.Client.Types.Response DeleteSubscriptionsSubscriptionExposedIdDiscountResponse))
deleteSubscriptionsSubscriptionExposedIdDiscountM subscriptionExposedId
                                                  body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either DeleteSubscriptionsSubscriptionExposedIdDiscountResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteSubscriptionsSubscriptionExposedIdDiscountResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   DeletedDiscount)
                                                                                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteSubscriptionsSubscriptionExposedIdDiscountResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "DELETE")) (Data.Text.pack ("/v1/subscriptions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionExposedId)) GHC.Base.++ "/discount"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/subscriptions/{subscription_exposed_id}/discount
-- 
-- Monadic version of 'deleteSubscriptionsSubscriptionExposedIdDiscountRaw' (use with 'StripeAPI.Common.runWithConfiguration')
deleteSubscriptionsSubscriptionExposedIdDiscountRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                      StripeAPI.Common.SecurityScheme s) =>
                                                        GHC.Base.String ->
                                                        DeleteSubscriptionsSubscriptionExposedIdDiscountRequestBody ->
                                                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                           m
                                                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
deleteSubscriptionsSubscriptionExposedIdDiscountRawM subscriptionExposedId
                                                     body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "DELETE")) (Data.Text.pack ("/v1/subscriptions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionExposedId)) GHC.Base.++ "/discount"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema deleteSubscriptionsSubscriptionExposedIdDiscountRequestBody
-- 
-- 
data DeleteSubscriptionsSubscriptionExposedIdDiscountRequestBody = DeleteSubscriptionsSubscriptionExposedIdDiscountRequestBody {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeleteSubscriptionsSubscriptionExposedIdDiscountRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON DeleteSubscriptionsSubscriptionExposedIdDiscountRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteSubscriptionsSubscriptionExposedIdDiscountRequestBody" (\obj -> GHC.Base.pure DeleteSubscriptionsSubscriptionExposedIdDiscountRequestBody)
-- | Represents a response of the operation 'deleteSubscriptionsSubscriptionExposedIdDiscount'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteSubscriptionsSubscriptionExposedIdDiscountResponseError' is used.
data DeleteSubscriptionsSubscriptionExposedIdDiscountResponse =                   
   DeleteSubscriptionsSubscriptionExposedIdDiscountResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | DeleteSubscriptionsSubscriptionExposedIdDiscountResponse200 DeletedDiscount   -- ^ Successful response.
  | DeleteSubscriptionsSubscriptionExposedIdDiscountResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
