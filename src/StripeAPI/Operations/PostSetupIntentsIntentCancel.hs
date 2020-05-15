{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostSetupIntentsIntentCancel where

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
-- POST /v1/setup_intents/{intent}/cancel
postSetupIntentsIntentCancel :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                StripeAPI.Common.Configuration s ->
                                GHC.Base.String ->
                                PostSetupIntentsIntentCancelRequestBody ->
                                m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                      (Network.HTTP.Client.Types.Response PostSetupIntentsIntentCancelResponse))
postSetupIntentsIntentCancel config
                             intent
                             body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSetupIntentsIntentCancelResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSetupIntentsIntentCancelResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      SetupIntent)
                                                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSetupIntentsIntentCancelResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/setup_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/cancel"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSetupIntentsIntentCancelRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                 StripeAPI.Common.SecurityScheme s) =>
                                   StripeAPI.Common.Configuration s ->
                                   GHC.Base.String ->
                                   PostSetupIntentsIntentCancelRequestBody ->
                                   m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSetupIntentsIntentCancelRaw config
                                intent
                                body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/setup_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/cancel"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSetupIntentsIntentCancelM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                               StripeAPI.Common.SecurityScheme s) =>
                                 GHC.Base.String ->
                                 PostSetupIntentsIntentCancelRequestBody ->
                                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                    m
                                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                        (Network.HTTP.Client.Types.Response PostSetupIntentsIntentCancelResponse))
postSetupIntentsIntentCancelM intent
                              body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSetupIntentsIntentCancelResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSetupIntentsIntentCancelResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                       SetupIntent)
                                                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSetupIntentsIntentCancelResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/setup_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/cancel"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSetupIntentsIntentCancelRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                  StripeAPI.Common.SecurityScheme s) =>
                                    GHC.Base.String ->
                                    PostSetupIntentsIntentCancelRequestBody ->
                                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                       m
                                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSetupIntentsIntentCancelRawM intent
                                 body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/setup_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/cancel"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostSetupIntentsIntentCancelRequestBody
    = PostSetupIntentsIntentCancelRequestBody {postSetupIntentsIntentCancelRequestBodyCancellationReason :: (GHC.Maybe.Maybe PostSetupIntentsIntentCancelRequestBodyCancellationReason'),
                                               postSetupIntentsIntentCancelRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSetupIntentsIntentCancelRequestBodyCancellationReason'
    = PostSetupIntentsIntentCancelRequestBodyCancellationReason'EnumOther Data.Aeson.Types.Internal.Value
    | PostSetupIntentsIntentCancelRequestBodyCancellationReason'EnumTyped GHC.Base.String
    | PostSetupIntentsIntentCancelRequestBodyCancellationReason'EnumStringAbandoned
    | PostSetupIntentsIntentCancelRequestBodyCancellationReason'EnumStringDuplicate
    | PostSetupIntentsIntentCancelRequestBodyCancellationReason'EnumStringRequestedByCustomer
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSetupIntentsIntentCancelRequestBodyCancellationReason'
    where toJSON (PostSetupIntentsIntentCancelRequestBodyCancellationReason'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSetupIntentsIntentCancelRequestBodyCancellationReason'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSetupIntentsIntentCancelRequestBodyCancellationReason'EnumStringAbandoned) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "abandoned"
          toJSON (PostSetupIntentsIntentCancelRequestBodyCancellationReason'EnumStringDuplicate) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "duplicate"
          toJSON (PostSetupIntentsIntentCancelRequestBodyCancellationReason'EnumStringRequestedByCustomer) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "requested_by_customer"
instance Data.Aeson.FromJSON PostSetupIntentsIntentCancelRequestBodyCancellationReason'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "abandoned")
                                          then PostSetupIntentsIntentCancelRequestBodyCancellationReason'EnumStringAbandoned
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "duplicate")
                                                then PostSetupIntentsIntentCancelRequestBodyCancellationReason'EnumStringDuplicate
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "requested_by_customer")
                                                      then PostSetupIntentsIntentCancelRequestBodyCancellationReason'EnumStringRequestedByCustomer
                                                      else PostSetupIntentsIntentCancelRequestBodyCancellationReason'EnumOther val)
instance Data.Aeson.ToJSON PostSetupIntentsIntentCancelRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "cancellation_reason" (postSetupIntentsIntentCancelRequestBodyCancellationReason obj) : (Data.Aeson..=) "expand" (postSetupIntentsIntentCancelRequestBodyExpand obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "cancellation_reason" (postSetupIntentsIntentCancelRequestBodyCancellationReason obj) GHC.Base.<> (Data.Aeson..=) "expand" (postSetupIntentsIntentCancelRequestBodyExpand obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsIntentCancelRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsIntentCancelRequestBody" (\obj -> (GHC.Base.pure PostSetupIntentsIntentCancelRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancellation_reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand"))

data PostSetupIntentsIntentCancelResponse
    = PostSetupIntentsIntentCancelResponseError GHC.Base.String
    | PostSetupIntentsIntentCancelResponse200 SetupIntent
    | PostSetupIntentsIntentCancelResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
