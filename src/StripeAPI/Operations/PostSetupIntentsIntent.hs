{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostSetupIntentsIntent where

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
-- POST /v1/setup_intents/{intent}
postSetupIntentsIntent :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          StripeAPI.Common.Configuration s ->
                          GHC.Base.String ->
                          PostSetupIntentsIntentRequestBody ->
                          m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                (Network.HTTP.Client.Types.Response PostSetupIntentsIntentResponse))
postSetupIntentsIntent config
                       intent
                       body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSetupIntentsIntentResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSetupIntentsIntentResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                    SetupIntent)
                                                                                                                                                                                              | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSetupIntentsIntentResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/setup_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSetupIntentsIntentRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             StripeAPI.Common.Configuration s ->
                             GHC.Base.String ->
                             PostSetupIntentsIntentRequestBody ->
                             m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                   (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSetupIntentsIntentRaw config
                          intent
                          body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/setup_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSetupIntentsIntentM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                         StripeAPI.Common.SecurityScheme s) =>
                           GHC.Base.String ->
                           PostSetupIntentsIntentRequestBody ->
                           Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                              m
                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                  (Network.HTTP.Client.Types.Response PostSetupIntentsIntentResponse))
postSetupIntentsIntentM intent
                        body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSetupIntentsIntentResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSetupIntentsIntentResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                     SetupIntent)
                                                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSetupIntentsIntentResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/setup_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSetupIntentsIntentRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                            StripeAPI.Common.SecurityScheme s) =>
                              GHC.Base.String ->
                              PostSetupIntentsIntentRequestBody ->
                              Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                 m
                                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSetupIntentsIntentRawM intent
                           body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/setup_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostSetupIntentsIntentRequestBody
    = PostSetupIntentsIntentRequestBody {postSetupIntentsIntentRequestBodyCustomer :: (GHC.Maybe.Maybe GHC.Base.String),
                                         postSetupIntentsIntentRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String),
                                         postSetupIntentsIntentRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                         postSetupIntentsIntentRequestBodyMetadata :: (GHC.Maybe.Maybe PostSetupIntentsIntentRequestBodyMetadata'),
                                         postSetupIntentsIntentRequestBodyPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String),
                                         postSetupIntentsIntentRequestBodyPaymentMethodOptions :: (GHC.Maybe.Maybe PostSetupIntentsIntentRequestBodyPaymentMethodOptions'),
                                         postSetupIntentsIntentRequestBodyPaymentMethodTypes :: (GHC.Maybe.Maybe ([] GHC.Base.String))}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSetupIntentsIntentRequestBodyMetadata'
    = PostSetupIntentsIntentRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSetupIntentsIntentRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsIntentRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsIntentRequestBodyMetadata'" (\obj -> GHC.Base.pure PostSetupIntentsIntentRequestBodyMetadata')
data PostSetupIntentsIntentRequestBodyPaymentMethodOptions'
    = PostSetupIntentsIntentRequestBodyPaymentMethodOptions' {postSetupIntentsIntentRequestBodyPaymentMethodOptions'Card :: (GHC.Maybe.Maybe PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'
    = PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card' {postSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure :: (GHC.Maybe.Maybe PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    = PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther Data.Aeson.Types.Internal.Value
    | PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumTyped GHC.Base.String
    | PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny
    | PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    where toJSON (PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "any"
          toJSON (PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic"
instance Data.Aeson.FromJSON PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "any")
                                          then PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic")
                                                then PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic
                                                else PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther val)
instance Data.Aeson.ToJSON PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "request_three_d_secure" (postSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "request_three_d_secure" (postSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'" (\obj -> GHC.Base.pure PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "request_three_d_secure"))
instance Data.Aeson.ToJSON PostSetupIntentsIntentRequestBodyPaymentMethodOptions'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "card" (postSetupIntentsIntentRequestBodyPaymentMethodOptions'Card obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "card" (postSetupIntentsIntentRequestBodyPaymentMethodOptions'Card obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsIntentRequestBodyPaymentMethodOptions'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsIntentRequestBodyPaymentMethodOptions'" (\obj -> GHC.Base.pure PostSetupIntentsIntentRequestBodyPaymentMethodOptions' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card"))
instance Data.Aeson.ToJSON PostSetupIntentsIntentRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "customer" (postSetupIntentsIntentRequestBodyCustomer obj) : (Data.Aeson..=) "description" (postSetupIntentsIntentRequestBodyDescription obj) : (Data.Aeson..=) "expand" (postSetupIntentsIntentRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postSetupIntentsIntentRequestBodyMetadata obj) : (Data.Aeson..=) "payment_method" (postSetupIntentsIntentRequestBodyPaymentMethod obj) : (Data.Aeson..=) "payment_method_options" (postSetupIntentsIntentRequestBodyPaymentMethodOptions obj) : (Data.Aeson..=) "payment_method_types" (postSetupIntentsIntentRequestBodyPaymentMethodTypes obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "customer" (postSetupIntentsIntentRequestBodyCustomer obj) GHC.Base.<> ((Data.Aeson..=) "description" (postSetupIntentsIntentRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postSetupIntentsIntentRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postSetupIntentsIntentRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "payment_method" (postSetupIntentsIntentRequestBodyPaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "payment_method_options" (postSetupIntentsIntentRequestBodyPaymentMethodOptions obj) GHC.Base.<> (Data.Aeson..=) "payment_method_types" (postSetupIntentsIntentRequestBodyPaymentMethodTypes obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsIntentRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsIntentRequestBody" (\obj -> ((((((GHC.Base.pure PostSetupIntentsIntentRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method_options")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method_types"))

data PostSetupIntentsIntentResponse
    = PostSetupIntentsIntentResponseError GHC.Base.String
    | PostSetupIntentsIntentResponse200 SetupIntent
    | PostSetupIntentsIntentResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
