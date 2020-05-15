{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostPaymentIntents where

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
-- POST /v1/payment_intents
postPaymentIntents :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                    StripeAPI.Common.SecurityScheme s) =>
                      StripeAPI.Common.Configuration s ->
                      PostPaymentIntentsRequestBody ->
                      m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                            (Network.HTTP.Client.Types.Response PostPaymentIntentsResponse))
postPaymentIntents config
                   body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostPaymentIntentsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                        PaymentIntent)
                                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/payment_intents") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postPaymentIntentsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                       StripeAPI.Common.SecurityScheme s) =>
                         StripeAPI.Common.Configuration s ->
                         PostPaymentIntentsRequestBody ->
                         m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPaymentIntentsRaw config
                      body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/payment_intents") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postPaymentIntentsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                     StripeAPI.Common.SecurityScheme s) =>
                       PostPaymentIntentsRequestBody ->
                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                          m
                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                              (Network.HTTP.Client.Types.Response PostPaymentIntentsResponse))
postPaymentIntentsM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostPaymentIntentsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                         PaymentIntent)
                                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/payment_intents") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postPaymentIntentsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          PostPaymentIntentsRequestBody ->
                          Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                             m
                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                 (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPaymentIntentsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/payment_intents") [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostPaymentIntentsRequestBody
    = PostPaymentIntentsRequestBody {postPaymentIntentsRequestBodyAmount :: GHC.Integer.Type.Integer,
                                     postPaymentIntentsRequestBodyApplicationFeeAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                     postPaymentIntentsRequestBodyCaptureMethod :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodyCaptureMethod'),
                                     postPaymentIntentsRequestBodyConfirm :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                     postPaymentIntentsRequestBodyConfirmationMethod :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodyConfirmationMethod'),
                                     postPaymentIntentsRequestBodyCurrency :: GHC.Base.String,
                                     postPaymentIntentsRequestBodyCustomer :: (GHC.Maybe.Maybe GHC.Base.String),
                                     postPaymentIntentsRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String),
                                     postPaymentIntentsRequestBodyErrorOnRequiresAction :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                     postPaymentIntentsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                     postPaymentIntentsRequestBodyMandate :: (GHC.Maybe.Maybe GHC.Base.String),
                                     postPaymentIntentsRequestBodyMandateData :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodyMandateData'),
                                     postPaymentIntentsRequestBodyMetadata :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodyMetadata'),
                                     postPaymentIntentsRequestBodyOffSession :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodyOffSession'Variants),
                                     postPaymentIntentsRequestBodyOnBehalfOf :: (GHC.Maybe.Maybe GHC.Base.String),
                                     postPaymentIntentsRequestBodyPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String),
                                     postPaymentIntentsRequestBodyPaymentMethodOptions :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodyPaymentMethodOptions'),
                                     postPaymentIntentsRequestBodyPaymentMethodTypes :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                     postPaymentIntentsRequestBodyReceiptEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                                     postPaymentIntentsRequestBodyReturnUrl :: (GHC.Maybe.Maybe GHC.Base.String),
                                     postPaymentIntentsRequestBodySavePaymentMethod :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                     postPaymentIntentsRequestBodySetupFutureUsage :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodySetupFutureUsage'),
                                     postPaymentIntentsRequestBodyShipping :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodyShipping'),
                                     postPaymentIntentsRequestBodyStatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String),
                                     postPaymentIntentsRequestBodyStatementDescriptorSuffix :: (GHC.Maybe.Maybe GHC.Base.String),
                                     postPaymentIntentsRequestBodyTransferData :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodyTransferData'),
                                     postPaymentIntentsRequestBodyTransferGroup :: (GHC.Maybe.Maybe GHC.Base.String),
                                     postPaymentIntentsRequestBodyUseStripeSdk :: (GHC.Maybe.Maybe GHC.Types.Bool)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostPaymentIntentsRequestBodyCaptureMethod'
    = PostPaymentIntentsRequestBodyCaptureMethod'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsRequestBodyCaptureMethod'EnumTyped GHC.Base.String
    | PostPaymentIntentsRequestBodyCaptureMethod'EnumStringAutomatic
    | PostPaymentIntentsRequestBodyCaptureMethod'EnumStringManual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyCaptureMethod'
    where toJSON (PostPaymentIntentsRequestBodyCaptureMethod'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyCaptureMethod'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyCaptureMethod'EnumStringAutomatic) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic"
          toJSON (PostPaymentIntentsRequestBodyCaptureMethod'EnumStringManual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "manual"
instance Data.Aeson.FromJSON PostPaymentIntentsRequestBodyCaptureMethod'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic")
                                          then PostPaymentIntentsRequestBodyCaptureMethod'EnumStringAutomatic
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "manual")
                                                then PostPaymentIntentsRequestBodyCaptureMethod'EnumStringManual
                                                else PostPaymentIntentsRequestBodyCaptureMethod'EnumOther val)
data PostPaymentIntentsRequestBodyConfirmationMethod'
    = PostPaymentIntentsRequestBodyConfirmationMethod'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsRequestBodyConfirmationMethod'EnumTyped GHC.Base.String
    | PostPaymentIntentsRequestBodyConfirmationMethod'EnumStringAutomatic
    | PostPaymentIntentsRequestBodyConfirmationMethod'EnumStringManual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyConfirmationMethod'
    where toJSON (PostPaymentIntentsRequestBodyConfirmationMethod'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyConfirmationMethod'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyConfirmationMethod'EnumStringAutomatic) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic"
          toJSON (PostPaymentIntentsRequestBodyConfirmationMethod'EnumStringManual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "manual"
instance Data.Aeson.FromJSON PostPaymentIntentsRequestBodyConfirmationMethod'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic")
                                          then PostPaymentIntentsRequestBodyConfirmationMethod'EnumStringAutomatic
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "manual")
                                                then PostPaymentIntentsRequestBodyConfirmationMethod'EnumStringManual
                                                else PostPaymentIntentsRequestBodyConfirmationMethod'EnumOther val)
data PostPaymentIntentsRequestBodyMandateData'
    = PostPaymentIntentsRequestBodyMandateData' {postPaymentIntentsRequestBodyMandateData'CustomerAcceptance :: PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'
    = PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance' {postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'AcceptedAt :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                                    postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Offline :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Offline'),
                                                                    postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online'),
                                                                    postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type :: PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Offline'
    = PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Offline' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Offline'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Offline'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Offline'" (\obj -> GHC.Base.pure PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Offline')
data PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online'
    = PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online' {postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online'IpAddress :: GHC.Base.String,
                                                                           postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online'UserAgent :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "ip_address" (postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online'IpAddress obj) : (Data.Aeson..=) "user_agent" (postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online'UserAgent obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "ip_address" (postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online'IpAddress obj) GHC.Base.<> (Data.Aeson..=) "user_agent" (postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online'UserAgent obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online'" (\obj -> (GHC.Base.pure PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ip_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "user_agent"))
data PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'
    = PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumTyped GHC.Base.String
    | PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOffline
    | PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOnline
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'
    where toJSON (PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOffline) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "offline"
          toJSON (PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOnline) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "online"
instance Data.Aeson.FromJSON PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "offline")
                                          then PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOffline
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "online")
                                                then PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOnline
                                                else PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumOther val)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "accepted_at" (postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'AcceptedAt obj) : (Data.Aeson..=) "offline" (postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Offline obj) : (Data.Aeson..=) "online" (postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online obj) : (Data.Aeson..=) "type" (postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "accepted_at" (postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'AcceptedAt obj) GHC.Base.<> ((Data.Aeson..=) "offline" (postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Offline obj) GHC.Base.<> ((Data.Aeson..=) "online" (postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online obj) GHC.Base.<> (Data.Aeson..=) "type" (postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'" (\obj -> (((GHC.Base.pure PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "accepted_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "offline")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "online")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyMandateData'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "customer_acceptance" (postPaymentIntentsRequestBodyMandateData'CustomerAcceptance obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "customer_acceptance" (postPaymentIntentsRequestBodyMandateData'CustomerAcceptance obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsRequestBodyMandateData'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsRequestBodyMandateData'" (\obj -> GHC.Base.pure PostPaymentIntentsRequestBodyMandateData' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "customer_acceptance"))
data PostPaymentIntentsRequestBodyMetadata'
    = PostPaymentIntentsRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostPaymentIntentsRequestBodyMetadata')
data PostPaymentIntentsRequestBodyOffSession'OneOf1
    = PostPaymentIntentsRequestBodyOffSession'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsRequestBodyOffSession'OneOf1EnumTyped GHC.Base.String
    | PostPaymentIntentsRequestBodyOffSession'OneOf1EnumStringOneOff
    | PostPaymentIntentsRequestBodyOffSession'OneOf1EnumStringRecurring
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyOffSession'OneOf1
    where toJSON (PostPaymentIntentsRequestBodyOffSession'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyOffSession'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyOffSession'OneOf1EnumStringOneOff) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "one_off"
          toJSON (PostPaymentIntentsRequestBodyOffSession'OneOf1EnumStringRecurring) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "recurring"
instance Data.Aeson.FromJSON PostPaymentIntentsRequestBodyOffSession'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "one_off")
                                          then PostPaymentIntentsRequestBodyOffSession'OneOf1EnumStringOneOff
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "recurring")
                                                then PostPaymentIntentsRequestBodyOffSession'OneOf1EnumStringRecurring
                                                else PostPaymentIntentsRequestBodyOffSession'OneOf1EnumOther val)
data PostPaymentIntentsRequestBodyOffSession'Variants
    = PostPaymentIntentsRequestBodyOffSession'Variant1 PostPaymentIntentsRequestBodyOffSession'OneOf1
    | PostPaymentIntentsRequestBodyOffSession'Variant2 GHC.Types.Bool
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyOffSession'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostPaymentIntentsRequestBodyOffSession'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostPaymentIntentsRequestBodyPaymentMethodOptions'
    = PostPaymentIntentsRequestBodyPaymentMethodOptions' {postPaymentIntentsRequestBodyPaymentMethodOptions'Card :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodyPaymentMethodOptions'Card')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'
    = PostPaymentIntentsRequestBodyPaymentMethodOptions'Card' {postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'),
                                                               postPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'
    = PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments' {postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Enabled :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                                            postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'Variants)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1
    = PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumTyped GHC.Base.String
    | PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1
    where toJSON (PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumString_
                                          else PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumOther val)
data PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2
    = PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2 {postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Count :: GHC.Integer.Type.Integer,
                                                                                       postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval :: PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval',
                                                                                       postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type :: PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'
    = PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumTyped GHC.Base.String
    | PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumStringMonth
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'
    where toJSON (PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumStringMonth) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month"
instance Data.Aeson.FromJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month")
                                          then PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumStringMonth
                                          else PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumOther val)
data PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'
    = PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumTyped GHC.Base.String
    | PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumStringFixedCount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'
    where toJSON (PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumStringFixedCount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fixed_count"
instance Data.Aeson.FromJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fixed_count")
                                          then PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumStringFixedCount
                                          else PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumOther val)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "count" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Count obj) : (Data.Aeson..=) "interval" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval obj) : (Data.Aeson..=) "type" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "count" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Count obj) GHC.Base.<> ((Data.Aeson..=) "interval" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval obj) GHC.Base.<> (Data.Aeson..=) "type" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2" (\obj -> ((GHC.Base.pure PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
data PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'Variants
    = PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'Variant1 PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1
    | PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'Variant2 PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "enabled" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Enabled obj) : (Data.Aeson..=) "plan" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "enabled" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Enabled obj) GHC.Base.<> (Data.Aeson..=) "plan" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'" (\obj -> (GHC.Base.pure PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "enabled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "plan"))
data PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    = PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumTyped GHC.Base.String
    | PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny
    | PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    where toJSON (PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "any"
          toJSON (PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic"
instance Data.Aeson.FromJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "any")
                                          then PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic")
                                                then PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic
                                                else PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther val)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "installments" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments obj) : (Data.Aeson..=) "request_three_d_secure" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "installments" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments obj) GHC.Base.<> (Data.Aeson..=) "request_three_d_secure" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'" (\obj -> (GHC.Base.pure PostPaymentIntentsRequestBodyPaymentMethodOptions'Card' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "installments")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "request_three_d_secure"))
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "card" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "card" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsRequestBodyPaymentMethodOptions'" (\obj -> GHC.Base.pure PostPaymentIntentsRequestBodyPaymentMethodOptions' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card"))
data PostPaymentIntentsRequestBodySetupFutureUsage'
    = PostPaymentIntentsRequestBodySetupFutureUsage'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsRequestBodySetupFutureUsage'EnumTyped GHC.Base.String
    | PostPaymentIntentsRequestBodySetupFutureUsage'EnumStringOffSession
    | PostPaymentIntentsRequestBodySetupFutureUsage'EnumStringOnSession
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodySetupFutureUsage'
    where toJSON (PostPaymentIntentsRequestBodySetupFutureUsage'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodySetupFutureUsage'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodySetupFutureUsage'EnumStringOffSession) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "off_session"
          toJSON (PostPaymentIntentsRequestBodySetupFutureUsage'EnumStringOnSession) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "on_session"
instance Data.Aeson.FromJSON PostPaymentIntentsRequestBodySetupFutureUsage'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "off_session")
                                          then PostPaymentIntentsRequestBodySetupFutureUsage'EnumStringOffSession
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "on_session")
                                                then PostPaymentIntentsRequestBodySetupFutureUsage'EnumStringOnSession
                                                else PostPaymentIntentsRequestBodySetupFutureUsage'EnumOther val)
data PostPaymentIntentsRequestBodyShipping'
    = PostPaymentIntentsRequestBodyShipping' {postPaymentIntentsRequestBodyShipping'Address :: PostPaymentIntentsRequestBodyShipping'Address',
                                              postPaymentIntentsRequestBodyShipping'Carrier :: (GHC.Maybe.Maybe GHC.Base.String),
                                              postPaymentIntentsRequestBodyShipping'Name :: GHC.Base.String,
                                              postPaymentIntentsRequestBodyShipping'Phone :: (GHC.Maybe.Maybe GHC.Base.String),
                                              postPaymentIntentsRequestBodyShipping'TrackingNumber :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostPaymentIntentsRequestBodyShipping'Address'
    = PostPaymentIntentsRequestBodyShipping'Address' {postPaymentIntentsRequestBodyShipping'Address'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postPaymentIntentsRequestBodyShipping'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postPaymentIntentsRequestBodyShipping'Address'Line1 :: GHC.Base.String,
                                                      postPaymentIntentsRequestBodyShipping'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postPaymentIntentsRequestBodyShipping'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postPaymentIntentsRequestBodyShipping'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyShipping'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postPaymentIntentsRequestBodyShipping'Address'City obj) : (Data.Aeson..=) "country" (postPaymentIntentsRequestBodyShipping'Address'Country obj) : (Data.Aeson..=) "line1" (postPaymentIntentsRequestBodyShipping'Address'Line1 obj) : (Data.Aeson..=) "line2" (postPaymentIntentsRequestBodyShipping'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postPaymentIntentsRequestBodyShipping'Address'PostalCode obj) : (Data.Aeson..=) "state" (postPaymentIntentsRequestBodyShipping'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postPaymentIntentsRequestBodyShipping'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postPaymentIntentsRequestBodyShipping'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postPaymentIntentsRequestBodyShipping'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postPaymentIntentsRequestBodyShipping'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postPaymentIntentsRequestBodyShipping'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postPaymentIntentsRequestBodyShipping'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsRequestBodyShipping'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsRequestBodyShipping'Address'" (\obj -> (((((GHC.Base.pure PostPaymentIntentsRequestBodyShipping'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyShipping'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postPaymentIntentsRequestBodyShipping'Address obj) : (Data.Aeson..=) "carrier" (postPaymentIntentsRequestBodyShipping'Carrier obj) : (Data.Aeson..=) "name" (postPaymentIntentsRequestBodyShipping'Name obj) : (Data.Aeson..=) "phone" (postPaymentIntentsRequestBodyShipping'Phone obj) : (Data.Aeson..=) "tracking_number" (postPaymentIntentsRequestBodyShipping'TrackingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postPaymentIntentsRequestBodyShipping'Address obj) GHC.Base.<> ((Data.Aeson..=) "carrier" (postPaymentIntentsRequestBodyShipping'Carrier obj) GHC.Base.<> ((Data.Aeson..=) "name" (postPaymentIntentsRequestBodyShipping'Name obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postPaymentIntentsRequestBodyShipping'Phone obj) GHC.Base.<> (Data.Aeson..=) "tracking_number" (postPaymentIntentsRequestBodyShipping'TrackingNumber obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsRequestBodyShipping'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsRequestBodyShipping'" (\obj -> ((((GHC.Base.pure PostPaymentIntentsRequestBodyShipping' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "carrier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tracking_number"))
data PostPaymentIntentsRequestBodyTransferData'
    = PostPaymentIntentsRequestBodyTransferData' {postPaymentIntentsRequestBodyTransferData'Amount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                  postPaymentIntentsRequestBodyTransferData'Destination :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyTransferData'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postPaymentIntentsRequestBodyTransferData'Amount obj) : (Data.Aeson..=) "destination" (postPaymentIntentsRequestBodyTransferData'Destination obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postPaymentIntentsRequestBodyTransferData'Amount obj) GHC.Base.<> (Data.Aeson..=) "destination" (postPaymentIntentsRequestBodyTransferData'Destination obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsRequestBodyTransferData'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsRequestBodyTransferData'" (\obj -> (GHC.Base.pure PostPaymentIntentsRequestBodyTransferData' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "destination"))
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postPaymentIntentsRequestBodyAmount obj) : (Data.Aeson..=) "application_fee_amount" (postPaymentIntentsRequestBodyApplicationFeeAmount obj) : (Data.Aeson..=) "capture_method" (postPaymentIntentsRequestBodyCaptureMethod obj) : (Data.Aeson..=) "confirm" (postPaymentIntentsRequestBodyConfirm obj) : (Data.Aeson..=) "confirmation_method" (postPaymentIntentsRequestBodyConfirmationMethod obj) : (Data.Aeson..=) "currency" (postPaymentIntentsRequestBodyCurrency obj) : (Data.Aeson..=) "customer" (postPaymentIntentsRequestBodyCustomer obj) : (Data.Aeson..=) "description" (postPaymentIntentsRequestBodyDescription obj) : (Data.Aeson..=) "error_on_requires_action" (postPaymentIntentsRequestBodyErrorOnRequiresAction obj) : (Data.Aeson..=) "expand" (postPaymentIntentsRequestBodyExpand obj) : (Data.Aeson..=) "mandate" (postPaymentIntentsRequestBodyMandate obj) : (Data.Aeson..=) "mandate_data" (postPaymentIntentsRequestBodyMandateData obj) : (Data.Aeson..=) "metadata" (postPaymentIntentsRequestBodyMetadata obj) : (Data.Aeson..=) "off_session" (postPaymentIntentsRequestBodyOffSession obj) : (Data.Aeson..=) "on_behalf_of" (postPaymentIntentsRequestBodyOnBehalfOf obj) : (Data.Aeson..=) "payment_method" (postPaymentIntentsRequestBodyPaymentMethod obj) : (Data.Aeson..=) "payment_method_options" (postPaymentIntentsRequestBodyPaymentMethodOptions obj) : (Data.Aeson..=) "payment_method_types" (postPaymentIntentsRequestBodyPaymentMethodTypes obj) : (Data.Aeson..=) "receipt_email" (postPaymentIntentsRequestBodyReceiptEmail obj) : (Data.Aeson..=) "return_url" (postPaymentIntentsRequestBodyReturnUrl obj) : (Data.Aeson..=) "save_payment_method" (postPaymentIntentsRequestBodySavePaymentMethod obj) : (Data.Aeson..=) "setup_future_usage" (postPaymentIntentsRequestBodySetupFutureUsage obj) : (Data.Aeson..=) "shipping" (postPaymentIntentsRequestBodyShipping obj) : (Data.Aeson..=) "statement_descriptor" (postPaymentIntentsRequestBodyStatementDescriptor obj) : (Data.Aeson..=) "statement_descriptor_suffix" (postPaymentIntentsRequestBodyStatementDescriptorSuffix obj) : (Data.Aeson..=) "transfer_data" (postPaymentIntentsRequestBodyTransferData obj) : (Data.Aeson..=) "transfer_group" (postPaymentIntentsRequestBodyTransferGroup obj) : (Data.Aeson..=) "use_stripe_sdk" (postPaymentIntentsRequestBodyUseStripeSdk obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postPaymentIntentsRequestBodyAmount obj) GHC.Base.<> ((Data.Aeson..=) "application_fee_amount" (postPaymentIntentsRequestBodyApplicationFeeAmount obj) GHC.Base.<> ((Data.Aeson..=) "capture_method" (postPaymentIntentsRequestBodyCaptureMethod obj) GHC.Base.<> ((Data.Aeson..=) "confirm" (postPaymentIntentsRequestBodyConfirm obj) GHC.Base.<> ((Data.Aeson..=) "confirmation_method" (postPaymentIntentsRequestBodyConfirmationMethod obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postPaymentIntentsRequestBodyCurrency obj) GHC.Base.<> ((Data.Aeson..=) "customer" (postPaymentIntentsRequestBodyCustomer obj) GHC.Base.<> ((Data.Aeson..=) "description" (postPaymentIntentsRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "error_on_requires_action" (postPaymentIntentsRequestBodyErrorOnRequiresAction obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postPaymentIntentsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "mandate" (postPaymentIntentsRequestBodyMandate obj) GHC.Base.<> ((Data.Aeson..=) "mandate_data" (postPaymentIntentsRequestBodyMandateData obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postPaymentIntentsRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "off_session" (postPaymentIntentsRequestBodyOffSession obj) GHC.Base.<> ((Data.Aeson..=) "on_behalf_of" (postPaymentIntentsRequestBodyOnBehalfOf obj) GHC.Base.<> ((Data.Aeson..=) "payment_method" (postPaymentIntentsRequestBodyPaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "payment_method_options" (postPaymentIntentsRequestBodyPaymentMethodOptions obj) GHC.Base.<> ((Data.Aeson..=) "payment_method_types" (postPaymentIntentsRequestBodyPaymentMethodTypes obj) GHC.Base.<> ((Data.Aeson..=) "receipt_email" (postPaymentIntentsRequestBodyReceiptEmail obj) GHC.Base.<> ((Data.Aeson..=) "return_url" (postPaymentIntentsRequestBodyReturnUrl obj) GHC.Base.<> ((Data.Aeson..=) "save_payment_method" (postPaymentIntentsRequestBodySavePaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "setup_future_usage" (postPaymentIntentsRequestBodySetupFutureUsage obj) GHC.Base.<> ((Data.Aeson..=) "shipping" (postPaymentIntentsRequestBodyShipping obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor" (postPaymentIntentsRequestBodyStatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor_suffix" (postPaymentIntentsRequestBodyStatementDescriptorSuffix obj) GHC.Base.<> ((Data.Aeson..=) "transfer_data" (postPaymentIntentsRequestBodyTransferData obj) GHC.Base.<> ((Data.Aeson..=) "transfer_group" (postPaymentIntentsRequestBodyTransferGroup obj) GHC.Base.<> (Data.Aeson..=) "use_stripe_sdk" (postPaymentIntentsRequestBodyUseStripeSdk obj))))))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsRequestBody" (\obj -> (((((((((((((((((((((((((((GHC.Base.pure PostPaymentIntentsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "capture_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "confirm")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "confirmation_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "error_on_requires_action")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mandate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mandate_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "off_session")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "on_behalf_of")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method_options")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method_types")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "receipt_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "return_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "save_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "setup_future_usage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_suffix")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transfer_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transfer_group")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "use_stripe_sdk"))

data PostPaymentIntentsResponse
    = PostPaymentIntentsResponseError GHC.Base.String
    | PostPaymentIntentsResponse200 PaymentIntent
    | PostPaymentIntentsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
