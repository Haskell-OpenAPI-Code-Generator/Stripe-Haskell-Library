{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostSetupIntentsIntentConfirm where

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
-- POST /v1/setup_intents/{intent}/confirm
postSetupIntentsIntentConfirm :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                               StripeAPI.Common.SecurityScheme s) =>
                                 StripeAPI.Common.Configuration s ->
                                 GHC.Base.String ->
                                 PostSetupIntentsIntentConfirmRequestBody ->
                                 m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                       (Network.HTTP.Client.Types.Response PostSetupIntentsIntentConfirmResponse))
postSetupIntentsIntentConfirm config
                              intent
                              body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSetupIntentsIntentConfirmResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSetupIntentsIntentConfirmResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                         SetupIntent)
                                                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSetupIntentsIntentConfirmResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/setup_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/confirm"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSetupIntentsIntentConfirmRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                  StripeAPI.Common.SecurityScheme s) =>
                                    StripeAPI.Common.Configuration s ->
                                    GHC.Base.String ->
                                    PostSetupIntentsIntentConfirmRequestBody ->
                                    m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSetupIntentsIntentConfirmRaw config
                                 intent
                                 body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/setup_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/confirm"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSetupIntentsIntentConfirmM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                StripeAPI.Common.SecurityScheme s) =>
                                  GHC.Base.String ->
                                  PostSetupIntentsIntentConfirmRequestBody ->
                                  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                     m
                                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                         (Network.HTTP.Client.Types.Response PostSetupIntentsIntentConfirmResponse))
postSetupIntentsIntentConfirmM intent
                               body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSetupIntentsIntentConfirmResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSetupIntentsIntentConfirmResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          SetupIntent)
                                                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSetupIntentsIntentConfirmResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/setup_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/confirm"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSetupIntentsIntentConfirmRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                   StripeAPI.Common.SecurityScheme s) =>
                                     GHC.Base.String ->
                                     PostSetupIntentsIntentConfirmRequestBody ->
                                     Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                        m
                                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSetupIntentsIntentConfirmRawM intent
                                  body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/setup_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/confirm"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostSetupIntentsIntentConfirmRequestBody
    = PostSetupIntentsIntentConfirmRequestBody {postSetupIntentsIntentConfirmRequestBodyClientSecret :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postSetupIntentsIntentConfirmRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                                postSetupIntentsIntentConfirmRequestBodyMandateData :: (GHC.Maybe.Maybe PostSetupIntentsIntentConfirmRequestBodyMandateData'),
                                                postSetupIntentsIntentConfirmRequestBodyPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions :: (GHC.Maybe.Maybe PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'),
                                                postSetupIntentsIntentConfirmRequestBodyReturnUrl :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSetupIntentsIntentConfirmRequestBodyMandateData'
    = PostSetupIntentsIntentConfirmRequestBodyMandateData' {postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance :: (GHC.Maybe.Maybe PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'
    = PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance' {postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online :: PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online',
                                                                               postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type :: PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'
    = PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online' {postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'IpAddress :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                                      postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'UserAgent :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "ip_address" (postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'IpAddress obj) : (Data.Aeson..=) "user_agent" (postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'UserAgent obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "ip_address" (postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'IpAddress obj) GHC.Base.<> (Data.Aeson..=) "user_agent" (postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'UserAgent obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'" (\obj -> (GHC.Base.pure PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ip_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "user_agent"))
data PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'
    = PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumOther Data.Aeson.Types.Internal.Value
    | PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumTyped GHC.Base.String
    | PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOnline
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'
    where toJSON (PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOnline) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "online"
instance Data.Aeson.FromJSON PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "online")
                                          then PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOnline
                                          else PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumOther val)
instance Data.Aeson.ToJSON PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "online" (postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online obj) : (Data.Aeson..=) "type" (postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "online" (postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online obj) GHC.Base.<> (Data.Aeson..=) "type" (postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'" (\obj -> (GHC.Base.pure PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "online")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
instance Data.Aeson.ToJSON PostSetupIntentsIntentConfirmRequestBodyMandateData'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "customer_acceptance" (postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "customer_acceptance" (postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsIntentConfirmRequestBodyMandateData'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsIntentConfirmRequestBodyMandateData'" (\obj -> GHC.Base.pure PostSetupIntentsIntentConfirmRequestBodyMandateData' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer_acceptance"))
data PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'
    = PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions' {postSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card :: (GHC.Maybe.Maybe PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'
    = PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card' {postSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure :: (GHC.Maybe.Maybe PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    = PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther Data.Aeson.Types.Internal.Value
    | PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumTyped GHC.Base.String
    | PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny
    | PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    where toJSON (PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "any"
          toJSON (PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic"
instance Data.Aeson.FromJSON PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "any")
                                          then PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic")
                                                then PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic
                                                else PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther val)
instance Data.Aeson.ToJSON PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "request_three_d_secure" (postSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "request_three_d_secure" (postSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'" (\obj -> GHC.Base.pure PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "request_three_d_secure"))
instance Data.Aeson.ToJSON PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "card" (postSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "card" (postSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'" (\obj -> GHC.Base.pure PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card"))
instance Data.Aeson.ToJSON PostSetupIntentsIntentConfirmRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "client_secret" (postSetupIntentsIntentConfirmRequestBodyClientSecret obj) : (Data.Aeson..=) "expand" (postSetupIntentsIntentConfirmRequestBodyExpand obj) : (Data.Aeson..=) "mandate_data" (postSetupIntentsIntentConfirmRequestBodyMandateData obj) : (Data.Aeson..=) "payment_method" (postSetupIntentsIntentConfirmRequestBodyPaymentMethod obj) : (Data.Aeson..=) "payment_method_options" (postSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions obj) : (Data.Aeson..=) "return_url" (postSetupIntentsIntentConfirmRequestBodyReturnUrl obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "client_secret" (postSetupIntentsIntentConfirmRequestBodyClientSecret obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postSetupIntentsIntentConfirmRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "mandate_data" (postSetupIntentsIntentConfirmRequestBodyMandateData obj) GHC.Base.<> ((Data.Aeson..=) "payment_method" (postSetupIntentsIntentConfirmRequestBodyPaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "payment_method_options" (postSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions obj) GHC.Base.<> (Data.Aeson..=) "return_url" (postSetupIntentsIntentConfirmRequestBodyReturnUrl obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsIntentConfirmRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsIntentConfirmRequestBody" (\obj -> (((((GHC.Base.pure PostSetupIntentsIntentConfirmRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "client_secret")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mandate_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method_options")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "return_url"))

data PostSetupIntentsIntentConfirmResponse
    = PostSetupIntentsIntentConfirmResponseError GHC.Base.String
    | PostSetupIntentsIntentConfirmResponse200 SetupIntent
    | PostSetupIntentsIntentConfirmResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
