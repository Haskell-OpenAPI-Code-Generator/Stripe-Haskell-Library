{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostSetupIntents where

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
-- POST /v1/setup_intents
postSetupIntents :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                  StripeAPI.Common.SecurityScheme s) =>
                    StripeAPI.Common.Configuration s ->
                    PostSetupIntentsRequestBody ->
                    m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                          (Network.HTTP.Client.Types.Response PostSetupIntentsResponse))
postSetupIntents config
                 body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSetupIntentsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSetupIntentsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                  SetupIntent)
                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSetupIntentsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/setup_intents") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSetupIntentsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                     StripeAPI.Common.SecurityScheme s) =>
                       StripeAPI.Common.Configuration s ->
                       PostSetupIntentsRequestBody ->
                       m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                             (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSetupIntentsRaw config
                    body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/setup_intents") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSetupIntentsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                   StripeAPI.Common.SecurityScheme s) =>
                     PostSetupIntentsRequestBody ->
                     Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                        m
                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                            (Network.HTTP.Client.Types.Response PostSetupIntentsResponse))
postSetupIntentsM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSetupIntentsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSetupIntentsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                   SetupIntent)
                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSetupIntentsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/setup_intents") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSetupIntentsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        PostSetupIntentsRequestBody ->
                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                           m
                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSetupIntentsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/setup_intents") [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostSetupIntentsRequestBody
    = PostSetupIntentsRequestBody {postSetupIntentsRequestBodyConfirm :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                   postSetupIntentsRequestBodyCustomer :: (GHC.Maybe.Maybe GHC.Base.String),
                                   postSetupIntentsRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String),
                                   postSetupIntentsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                   postSetupIntentsRequestBodyMandateData :: (GHC.Maybe.Maybe PostSetupIntentsRequestBodyMandateData'),
                                   postSetupIntentsRequestBodyMetadata :: (GHC.Maybe.Maybe PostSetupIntentsRequestBodyMetadata'),
                                   postSetupIntentsRequestBodyOnBehalfOf :: (GHC.Maybe.Maybe GHC.Base.String),
                                   postSetupIntentsRequestBodyPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String),
                                   postSetupIntentsRequestBodyPaymentMethodOptions :: (GHC.Maybe.Maybe PostSetupIntentsRequestBodyPaymentMethodOptions'),
                                   postSetupIntentsRequestBodyPaymentMethodTypes :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                   postSetupIntentsRequestBodyReturnUrl :: (GHC.Maybe.Maybe GHC.Base.String),
                                   postSetupIntentsRequestBodySingleUse :: (GHC.Maybe.Maybe PostSetupIntentsRequestBodySingleUse'),
                                   postSetupIntentsRequestBodyUsage :: (GHC.Maybe.Maybe PostSetupIntentsRequestBodyUsage')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSetupIntentsRequestBodyMandateData'
    = PostSetupIntentsRequestBodyMandateData' {postSetupIntentsRequestBodyMandateData'CustomerAcceptance :: PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'
    = PostSetupIntentsRequestBodyMandateData'CustomerAcceptance' {postSetupIntentsRequestBodyMandateData'CustomerAcceptance'AcceptedAt :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                                  postSetupIntentsRequestBodyMandateData'CustomerAcceptance'Offline :: (GHC.Maybe.Maybe PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Offline'),
                                                                  postSetupIntentsRequestBodyMandateData'CustomerAcceptance'Online :: (GHC.Maybe.Maybe PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Online'),
                                                                  postSetupIntentsRequestBodyMandateData'CustomerAcceptance'Type :: PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Type'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Offline'
    = PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Offline' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Offline'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Offline'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Offline'" (\obj -> GHC.Base.pure PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Offline')
data PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Online'
    = PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Online' {postSetupIntentsRequestBodyMandateData'CustomerAcceptance'Online'IpAddress :: GHC.Base.String,
                                                                         postSetupIntentsRequestBodyMandateData'CustomerAcceptance'Online'UserAgent :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Online'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "ip_address" (postSetupIntentsRequestBodyMandateData'CustomerAcceptance'Online'IpAddress obj) : (Data.Aeson..=) "user_agent" (postSetupIntentsRequestBodyMandateData'CustomerAcceptance'Online'UserAgent obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "ip_address" (postSetupIntentsRequestBodyMandateData'CustomerAcceptance'Online'IpAddress obj) GHC.Base.<> (Data.Aeson..=) "user_agent" (postSetupIntentsRequestBodyMandateData'CustomerAcceptance'Online'UserAgent obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Online'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Online'" (\obj -> (GHC.Base.pure PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Online' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ip_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "user_agent"))
data PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Type'
    = PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumOther Data.Aeson.Types.Internal.Value
    | PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumTyped GHC.Base.String
    | PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOffline
    | PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOnline
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Type'
    where toJSON (PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOffline) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "offline"
          toJSON (PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOnline) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "online"
instance Data.Aeson.FromJSON PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Type'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "offline")
                                          then PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOffline
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "online")
                                                then PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOnline
                                                else PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumOther val)
instance Data.Aeson.ToJSON PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "accepted_at" (postSetupIntentsRequestBodyMandateData'CustomerAcceptance'AcceptedAt obj) : (Data.Aeson..=) "offline" (postSetupIntentsRequestBodyMandateData'CustomerAcceptance'Offline obj) : (Data.Aeson..=) "online" (postSetupIntentsRequestBodyMandateData'CustomerAcceptance'Online obj) : (Data.Aeson..=) "type" (postSetupIntentsRequestBodyMandateData'CustomerAcceptance'Type obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "accepted_at" (postSetupIntentsRequestBodyMandateData'CustomerAcceptance'AcceptedAt obj) GHC.Base.<> ((Data.Aeson..=) "offline" (postSetupIntentsRequestBodyMandateData'CustomerAcceptance'Offline obj) GHC.Base.<> ((Data.Aeson..=) "online" (postSetupIntentsRequestBodyMandateData'CustomerAcceptance'Online obj) GHC.Base.<> (Data.Aeson..=) "type" (postSetupIntentsRequestBodyMandateData'CustomerAcceptance'Type obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsRequestBodyMandateData'CustomerAcceptance'" (\obj -> (((GHC.Base.pure PostSetupIntentsRequestBodyMandateData'CustomerAcceptance' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "accepted_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "offline")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "online")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
instance Data.Aeson.ToJSON PostSetupIntentsRequestBodyMandateData'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "customer_acceptance" (postSetupIntentsRequestBodyMandateData'CustomerAcceptance obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "customer_acceptance" (postSetupIntentsRequestBodyMandateData'CustomerAcceptance obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsRequestBodyMandateData'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsRequestBodyMandateData'" (\obj -> GHC.Base.pure PostSetupIntentsRequestBodyMandateData' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "customer_acceptance"))
data PostSetupIntentsRequestBodyMetadata'
    = PostSetupIntentsRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSetupIntentsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostSetupIntentsRequestBodyMetadata')
data PostSetupIntentsRequestBodyPaymentMethodOptions'
    = PostSetupIntentsRequestBodyPaymentMethodOptions' {postSetupIntentsRequestBodyPaymentMethodOptions'Card :: (GHC.Maybe.Maybe PostSetupIntentsRequestBodyPaymentMethodOptions'Card')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSetupIntentsRequestBodyPaymentMethodOptions'Card'
    = PostSetupIntentsRequestBodyPaymentMethodOptions'Card' {postSetupIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure :: (GHC.Maybe.Maybe PostSetupIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSetupIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    = PostSetupIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther Data.Aeson.Types.Internal.Value
    | PostSetupIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumTyped GHC.Base.String
    | PostSetupIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny
    | PostSetupIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSetupIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    where toJSON (PostSetupIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSetupIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSetupIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "any"
          toJSON (PostSetupIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic"
instance Data.Aeson.FromJSON PostSetupIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "any")
                                          then PostSetupIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic")
                                                then PostSetupIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic
                                                else PostSetupIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther val)
instance Data.Aeson.ToJSON PostSetupIntentsRequestBodyPaymentMethodOptions'Card'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "request_three_d_secure" (postSetupIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "request_three_d_secure" (postSetupIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsRequestBodyPaymentMethodOptions'Card'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsRequestBodyPaymentMethodOptions'Card'" (\obj -> GHC.Base.pure PostSetupIntentsRequestBodyPaymentMethodOptions'Card' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "request_three_d_secure"))
instance Data.Aeson.ToJSON PostSetupIntentsRequestBodyPaymentMethodOptions'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "card" (postSetupIntentsRequestBodyPaymentMethodOptions'Card obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "card" (postSetupIntentsRequestBodyPaymentMethodOptions'Card obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsRequestBodyPaymentMethodOptions'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsRequestBodyPaymentMethodOptions'" (\obj -> GHC.Base.pure PostSetupIntentsRequestBodyPaymentMethodOptions' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card"))
data PostSetupIntentsRequestBodySingleUse'
    = PostSetupIntentsRequestBodySingleUse' {postSetupIntentsRequestBodySingleUse'Amount :: GHC.Integer.Type.Integer,
                                             postSetupIntentsRequestBodySingleUse'Currency :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSetupIntentsRequestBodySingleUse'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postSetupIntentsRequestBodySingleUse'Amount obj) : (Data.Aeson..=) "currency" (postSetupIntentsRequestBodySingleUse'Currency obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postSetupIntentsRequestBodySingleUse'Amount obj) GHC.Base.<> (Data.Aeson..=) "currency" (postSetupIntentsRequestBodySingleUse'Currency obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsRequestBodySingleUse'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsRequestBodySingleUse'" (\obj -> (GHC.Base.pure PostSetupIntentsRequestBodySingleUse' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency"))
data PostSetupIntentsRequestBodyUsage'
    = PostSetupIntentsRequestBodyUsage'EnumOther Data.Aeson.Types.Internal.Value
    | PostSetupIntentsRequestBodyUsage'EnumTyped GHC.Base.String
    | PostSetupIntentsRequestBodyUsage'EnumStringOffSession
    | PostSetupIntentsRequestBodyUsage'EnumStringOnSession
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSetupIntentsRequestBodyUsage'
    where toJSON (PostSetupIntentsRequestBodyUsage'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSetupIntentsRequestBodyUsage'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSetupIntentsRequestBodyUsage'EnumStringOffSession) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "off_session"
          toJSON (PostSetupIntentsRequestBodyUsage'EnumStringOnSession) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "on_session"
instance Data.Aeson.FromJSON PostSetupIntentsRequestBodyUsage'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "off_session")
                                          then PostSetupIntentsRequestBodyUsage'EnumStringOffSession
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "on_session")
                                                then PostSetupIntentsRequestBodyUsage'EnumStringOnSession
                                                else PostSetupIntentsRequestBodyUsage'EnumOther val)
instance Data.Aeson.ToJSON PostSetupIntentsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "confirm" (postSetupIntentsRequestBodyConfirm obj) : (Data.Aeson..=) "customer" (postSetupIntentsRequestBodyCustomer obj) : (Data.Aeson..=) "description" (postSetupIntentsRequestBodyDescription obj) : (Data.Aeson..=) "expand" (postSetupIntentsRequestBodyExpand obj) : (Data.Aeson..=) "mandate_data" (postSetupIntentsRequestBodyMandateData obj) : (Data.Aeson..=) "metadata" (postSetupIntentsRequestBodyMetadata obj) : (Data.Aeson..=) "on_behalf_of" (postSetupIntentsRequestBodyOnBehalfOf obj) : (Data.Aeson..=) "payment_method" (postSetupIntentsRequestBodyPaymentMethod obj) : (Data.Aeson..=) "payment_method_options" (postSetupIntentsRequestBodyPaymentMethodOptions obj) : (Data.Aeson..=) "payment_method_types" (postSetupIntentsRequestBodyPaymentMethodTypes obj) : (Data.Aeson..=) "return_url" (postSetupIntentsRequestBodyReturnUrl obj) : (Data.Aeson..=) "single_use" (postSetupIntentsRequestBodySingleUse obj) : (Data.Aeson..=) "usage" (postSetupIntentsRequestBodyUsage obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "confirm" (postSetupIntentsRequestBodyConfirm obj) GHC.Base.<> ((Data.Aeson..=) "customer" (postSetupIntentsRequestBodyCustomer obj) GHC.Base.<> ((Data.Aeson..=) "description" (postSetupIntentsRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postSetupIntentsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "mandate_data" (postSetupIntentsRequestBodyMandateData obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postSetupIntentsRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "on_behalf_of" (postSetupIntentsRequestBodyOnBehalfOf obj) GHC.Base.<> ((Data.Aeson..=) "payment_method" (postSetupIntentsRequestBodyPaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "payment_method_options" (postSetupIntentsRequestBodyPaymentMethodOptions obj) GHC.Base.<> ((Data.Aeson..=) "payment_method_types" (postSetupIntentsRequestBodyPaymentMethodTypes obj) GHC.Base.<> ((Data.Aeson..=) "return_url" (postSetupIntentsRequestBodyReturnUrl obj) GHC.Base.<> ((Data.Aeson..=) "single_use" (postSetupIntentsRequestBodySingleUse obj) GHC.Base.<> (Data.Aeson..=) "usage" (postSetupIntentsRequestBodyUsage obj)))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsRequestBody" (\obj -> ((((((((((((GHC.Base.pure PostSetupIntentsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "confirm")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mandate_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "on_behalf_of")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method_options")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method_types")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "return_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "single_use")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "usage"))

data PostSetupIntentsResponse
    = PostSetupIntentsResponseError GHC.Base.String
    | PostSetupIntentsResponse200 SetupIntent
    | PostSetupIntentsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
