{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostSubscriptionItemsSubscriptionItemUsageRecords where

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
-- POST /v1/subscription_items/{subscription_item}/usage_records
postSubscriptionItemsSubscriptionItemUsageRecords :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                   StripeAPI.Common.SecurityScheme s) =>
                                                     StripeAPI.Common.Configuration s ->
                                                     GHC.Base.String ->
                                                     PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBody ->
                                                     m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                           (Network.HTTP.Client.Types.Response PostSubscriptionItemsSubscriptionItemUsageRecordsResponse))
postSubscriptionItemsSubscriptionItemUsageRecords config
                                                  subscriptionItem
                                                  body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSubscriptionItemsSubscriptionItemUsageRecordsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionItemsSubscriptionItemUsageRecordsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     UsageRecord)
                                                                                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionItemsSubscriptionItemUsageRecordsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/subscription_items/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionItem)) GHC.Base.++ "/usage_records"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSubscriptionItemsSubscriptionItemUsageRecordsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                      StripeAPI.Common.SecurityScheme s) =>
                                                        StripeAPI.Common.Configuration s ->
                                                        GHC.Base.String ->
                                                        PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBody ->
                                                        m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSubscriptionItemsSubscriptionItemUsageRecordsRaw config
                                                     subscriptionItem
                                                     body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/subscription_items/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionItem)) GHC.Base.++ "/usage_records"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSubscriptionItemsSubscriptionItemUsageRecordsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                    StripeAPI.Common.SecurityScheme s) =>
                                                      GHC.Base.String ->
                                                      PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBody ->
                                                      Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                         m
                                                                                         (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                             (Network.HTTP.Client.Types.Response PostSubscriptionItemsSubscriptionItemUsageRecordsResponse))
postSubscriptionItemsSubscriptionItemUsageRecordsM subscriptionItem
                                                   body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSubscriptionItemsSubscriptionItemUsageRecordsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionItemsSubscriptionItemUsageRecordsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      UsageRecord)
                                                                                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionItemsSubscriptionItemUsageRecordsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/subscription_items/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionItem)) GHC.Base.++ "/usage_records"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSubscriptionItemsSubscriptionItemUsageRecordsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                       StripeAPI.Common.SecurityScheme s) =>
                                                         GHC.Base.String ->
                                                         PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBody ->
                                                         Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                            m
                                                                                            (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSubscriptionItemsSubscriptionItemUsageRecordsRawM subscriptionItem
                                                      body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/subscription_items/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionItem)) GHC.Base.++ "/usage_records"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBody
    = PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBody {postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction :: (GHC.Maybe.Maybe PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction'),
                                                                    postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                                                    postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyQuantity :: GHC.Integer.Type.Integer,
                                                                    postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyTimestamp :: GHC.Integer.Type.Integer}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction'
    = PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction'EnumTyped GHC.Base.String
    | PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction'EnumStringIncrement
    | PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction'EnumStringSet
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction'
    where toJSON (PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction'EnumStringIncrement) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "increment"
          toJSON (PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction'EnumStringSet) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "set"
instance Data.Aeson.FromJSON PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "increment")
                                          then PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction'EnumStringIncrement
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "set")
                                                then PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction'EnumStringSet
                                                else PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction'EnumOther val)
instance Data.Aeson.ToJSON PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "action" (postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction obj) : (Data.Aeson..=) "expand" (postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyExpand obj) : (Data.Aeson..=) "quantity" (postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyQuantity obj) : (Data.Aeson..=) "timestamp" (postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyTimestamp obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "action" (postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyQuantity obj) GHC.Base.<> (Data.Aeson..=) "timestamp" (postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyTimestamp obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBody" (\obj -> (((GHC.Base.pure PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "action")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "timestamp"))

data PostSubscriptionItemsSubscriptionItemUsageRecordsResponse
    = PostSubscriptionItemsSubscriptionItemUsageRecordsResponseError GHC.Base.String
    | PostSubscriptionItemsSubscriptionItemUsageRecordsResponse200 UsageRecord
    | PostSubscriptionItemsSubscriptionItemUsageRecordsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
