{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostPaymentIntentsIntentConfirm where

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
-- POST /v1/payment_intents/{intent}/confirm
postPaymentIntentsIntentConfirm :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                 StripeAPI.Common.SecurityScheme s) =>
                                   StripeAPI.Common.Configuration s ->
                                   GHC.Base.String ->
                                   PostPaymentIntentsIntentConfirmRequestBody ->
                                   m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                         (Network.HTTP.Client.Types.Response PostPaymentIntentsIntentConfirmResponse))
postPaymentIntentsIntentConfirm config
                                intent
                                body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostPaymentIntentsIntentConfirmResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentConfirmResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                               PaymentIntent)
                                                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentConfirmResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                 Error)
                                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/payment_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/confirm"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postPaymentIntentsIntentConfirmRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                    StripeAPI.Common.SecurityScheme s) =>
                                      StripeAPI.Common.Configuration s ->
                                      GHC.Base.String ->
                                      PostPaymentIntentsIntentConfirmRequestBody ->
                                      m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPaymentIntentsIntentConfirmRaw config
                                   intent
                                   body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/payment_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/confirm"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postPaymentIntentsIntentConfirmM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                  StripeAPI.Common.SecurityScheme s) =>
                                    GHC.Base.String ->
                                    PostPaymentIntentsIntentConfirmRequestBody ->
                                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                       m
                                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                           (Network.HTTP.Client.Types.Response PostPaymentIntentsIntentConfirmResponse))
postPaymentIntentsIntentConfirmM intent
                                 body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostPaymentIntentsIntentConfirmResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentConfirmResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                PaymentIntent)
                                                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentConfirmResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/payment_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/confirm"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postPaymentIntentsIntentConfirmRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                     StripeAPI.Common.SecurityScheme s) =>
                                       GHC.Base.String ->
                                       PostPaymentIntentsIntentConfirmRequestBody ->
                                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                          m
                                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPaymentIntentsIntentConfirmRawM intent
                                    body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/payment_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/confirm"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostPaymentIntentsIntentConfirmRequestBody
    = PostPaymentIntentsIntentConfirmRequestBody {postPaymentIntentsIntentConfirmRequestBodyClientSecret :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postPaymentIntentsIntentConfirmRequestBodyErrorOnRequiresAction :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                  postPaymentIntentsIntentConfirmRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                                  postPaymentIntentsIntentConfirmRequestBodyMandate :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postPaymentIntentsIntentConfirmRequestBodyMandateData :: (GHC.Maybe.Maybe PostPaymentIntentsIntentConfirmRequestBodyMandateData'),
                                                  postPaymentIntentsIntentConfirmRequestBodyOffSession :: (GHC.Maybe.Maybe PostPaymentIntentsIntentConfirmRequestBodyOffSession'Variants),
                                                  postPaymentIntentsIntentConfirmRequestBodyPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions :: (GHC.Maybe.Maybe PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'),
                                                  postPaymentIntentsIntentConfirmRequestBodyPaymentMethodTypes :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                                  postPaymentIntentsIntentConfirmRequestBodyReceiptEmail :: (GHC.Maybe.Maybe PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'Variants),
                                                  postPaymentIntentsIntentConfirmRequestBodyReturnUrl :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postPaymentIntentsIntentConfirmRequestBodySavePaymentMethod :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                  postPaymentIntentsIntentConfirmRequestBodySetupFutureUsage :: (GHC.Maybe.Maybe PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'),
                                                  postPaymentIntentsIntentConfirmRequestBodyShipping :: (GHC.Maybe.Maybe PostPaymentIntentsIntentConfirmRequestBodyShipping'Variants),
                                                  postPaymentIntentsIntentConfirmRequestBodyUseStripeSdk :: (GHC.Maybe.Maybe GHC.Types.Bool)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostPaymentIntentsIntentConfirmRequestBodyMandateData'
    = PostPaymentIntentsIntentConfirmRequestBodyMandateData' {postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance :: (GHC.Maybe.Maybe PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'
    = PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance' {postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online :: PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online',
                                                                                 postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type :: PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'
    = PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online' {postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'IpAddress :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                                        postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'UserAgent :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "ip_address" (postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'IpAddress obj) : (Data.Aeson..=) "user_agent" (postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'UserAgent obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "ip_address" (postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'IpAddress obj) GHC.Base.<> (Data.Aeson..=) "user_agent" (postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'UserAgent obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'" (\obj -> (GHC.Base.pure PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ip_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "user_agent"))
data PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'
    = PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumTyped GHC.Base.String
    | PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOnline
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'
    where toJSON (PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOnline) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "online"
instance Data.Aeson.FromJSON PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "online")
                                          then PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOnline
                                          else PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumOther val)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "online" (postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online obj) : (Data.Aeson..=) "type" (postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "online" (postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online obj) GHC.Base.<> (Data.Aeson..=) "type" (postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'" (\obj -> (GHC.Base.pure PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "online")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyMandateData'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "customer_acceptance" (postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "customer_acceptance" (postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentConfirmRequestBodyMandateData'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentConfirmRequestBodyMandateData'" (\obj -> GHC.Base.pure PostPaymentIntentsIntentConfirmRequestBodyMandateData' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer_acceptance"))
data PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1
    = PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1EnumTyped GHC.Base.String
    | PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1EnumStringOneOff
    | PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1EnumStringRecurring
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1
    where toJSON (PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1EnumStringOneOff) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "one_off"
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1EnumStringRecurring) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "recurring"
instance Data.Aeson.FromJSON PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "one_off")
                                          then PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1EnumStringOneOff
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "recurring")
                                                then PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1EnumStringRecurring
                                                else PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1EnumOther val)
data PostPaymentIntentsIntentConfirmRequestBodyOffSession'Variants
    = PostPaymentIntentsIntentConfirmRequestBodyOffSession'Variant1 PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1
    | PostPaymentIntentsIntentConfirmRequestBodyOffSession'Variant2 GHC.Types.Bool
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyOffSession'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostPaymentIntentsIntentConfirmRequestBodyOffSession'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'
    = PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions' {postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card :: (GHC.Maybe.Maybe PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'
    = PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card' {postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments :: (GHC.Maybe.Maybe PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'),
                                                                            postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure :: (GHC.Maybe.Maybe PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'
    = PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments' {postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Enabled :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                                                         postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan :: (GHC.Maybe.Maybe PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'Variants)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1
    = PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumTyped GHC.Base.String
    | PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1
    where toJSON (PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumString_
                                          else PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumOther val)
data PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2
    = PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2 {postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Count :: GHC.Integer.Type.Integer,
                                                                                                    postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval :: PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval',
                                                                                                    postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type :: PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'
    = PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumTyped GHC.Base.String
    | PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumStringMonth
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'
    where toJSON (PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumStringMonth) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month"
instance Data.Aeson.FromJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month")
                                          then PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumStringMonth
                                          else PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumOther val)
data PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'
    = PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumTyped GHC.Base.String
    | PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumStringFixedCount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'
    where toJSON (PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumStringFixedCount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fixed_count"
instance Data.Aeson.FromJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fixed_count")
                                          then PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumStringFixedCount
                                          else PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumOther val)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "count" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Count obj) : (Data.Aeson..=) "interval" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval obj) : (Data.Aeson..=) "type" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "count" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Count obj) GHC.Base.<> ((Data.Aeson..=) "interval" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval obj) GHC.Base.<> (Data.Aeson..=) "type" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2" (\obj -> ((GHC.Base.pure PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
data PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'Variants
    = PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'Variant1 PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1
    | PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'Variant2 PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "enabled" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Enabled obj) : (Data.Aeson..=) "plan" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "enabled" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Enabled obj) GHC.Base.<> (Data.Aeson..=) "plan" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'" (\obj -> (GHC.Base.pure PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "enabled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "plan"))
data PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    = PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumTyped GHC.Base.String
    | PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny
    | PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    where toJSON (PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "any"
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic"
instance Data.Aeson.FromJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "any")
                                          then PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic")
                                                then PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic
                                                else PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther val)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "installments" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments obj) : (Data.Aeson..=) "request_three_d_secure" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "installments" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments obj) GHC.Base.<> (Data.Aeson..=) "request_three_d_secure" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'" (\obj -> (GHC.Base.pure PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "installments")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "request_three_d_secure"))
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "card" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "card" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'" (\obj -> GHC.Base.pure PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card"))
data PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'OneOf2
    = PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'OneOf2EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'OneOf2EnumTyped GHC.Base.String
    | PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'OneOf2EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'OneOf2
    where toJSON (PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'OneOf2EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'OneOf2EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'OneOf2EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'OneOf2
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'OneOf2EnumString_
                                          else PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'OneOf2EnumOther val)
data PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'Variants
    = PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'Variant1 GHC.Base.String
    | PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'Variant2 PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'
    = PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'EnumTyped GHC.Base.String
    | PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'EnumString_
    | PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'EnumStringOffSession
    | PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'EnumStringOnSession
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'
    where toJSON (PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
          toJSON (PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'EnumStringOffSession) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "off_session"
          toJSON (PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'EnumStringOnSession) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "on_session"
instance Data.Aeson.FromJSON PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'EnumString_
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "off_session")
                                                then PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'EnumStringOffSession
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "on_session")
                                                      then PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'EnumStringOnSession
                                                      else PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'EnumOther val)
data PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf1
    = PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf1EnumTyped GHC.Base.String
    | PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf1
    where toJSON (PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf1EnumString_
                                          else PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf1EnumOther val)
data PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2
    = PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2 {postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address :: PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address',
                                                                 postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Carrier :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                 postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Name :: GHC.Base.String,
                                                                 postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Phone :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                 postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2TrackingNumber :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'
    = PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address' {postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                         postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                         postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'Line1 :: GHC.Base.String,
                                                                         postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                         postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                         postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'City obj) : (Data.Aeson..=) "country" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'Country obj) : (Data.Aeson..=) "line1" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'Line1 obj) : (Data.Aeson..=) "line2" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'PostalCode obj) : (Data.Aeson..=) "state" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'" (\obj -> (((((GHC.Base.pure PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address obj) : (Data.Aeson..=) "carrier" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Carrier obj) : (Data.Aeson..=) "name" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Name obj) : (Data.Aeson..=) "phone" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Phone obj) : (Data.Aeson..=) "tracking_number" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2TrackingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address obj) GHC.Base.<> ((Data.Aeson..=) "carrier" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Carrier obj) GHC.Base.<> ((Data.Aeson..=) "name" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Name obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Phone obj) GHC.Base.<> (Data.Aeson..=) "tracking_number" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2TrackingNumber obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2" (\obj -> ((((GHC.Base.pure PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "carrier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tracking_number"))
data PostPaymentIntentsIntentConfirmRequestBodyShipping'Variants
    = PostPaymentIntentsIntentConfirmRequestBodyShipping'Variant1 PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf1
    | PostPaymentIntentsIntentConfirmRequestBodyShipping'Variant2 PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyShipping'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostPaymentIntentsIntentConfirmRequestBodyShipping'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "client_secret" (postPaymentIntentsIntentConfirmRequestBodyClientSecret obj) : (Data.Aeson..=) "error_on_requires_action" (postPaymentIntentsIntentConfirmRequestBodyErrorOnRequiresAction obj) : (Data.Aeson..=) "expand" (postPaymentIntentsIntentConfirmRequestBodyExpand obj) : (Data.Aeson..=) "mandate" (postPaymentIntentsIntentConfirmRequestBodyMandate obj) : (Data.Aeson..=) "mandate_data" (postPaymentIntentsIntentConfirmRequestBodyMandateData obj) : (Data.Aeson..=) "off_session" (postPaymentIntentsIntentConfirmRequestBodyOffSession obj) : (Data.Aeson..=) "payment_method" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethod obj) : (Data.Aeson..=) "payment_method_options" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions obj) : (Data.Aeson..=) "payment_method_types" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodTypes obj) : (Data.Aeson..=) "receipt_email" (postPaymentIntentsIntentConfirmRequestBodyReceiptEmail obj) : (Data.Aeson..=) "return_url" (postPaymentIntentsIntentConfirmRequestBodyReturnUrl obj) : (Data.Aeson..=) "save_payment_method" (postPaymentIntentsIntentConfirmRequestBodySavePaymentMethod obj) : (Data.Aeson..=) "setup_future_usage" (postPaymentIntentsIntentConfirmRequestBodySetupFutureUsage obj) : (Data.Aeson..=) "shipping" (postPaymentIntentsIntentConfirmRequestBodyShipping obj) : (Data.Aeson..=) "use_stripe_sdk" (postPaymentIntentsIntentConfirmRequestBodyUseStripeSdk obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "client_secret" (postPaymentIntentsIntentConfirmRequestBodyClientSecret obj) GHC.Base.<> ((Data.Aeson..=) "error_on_requires_action" (postPaymentIntentsIntentConfirmRequestBodyErrorOnRequiresAction obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postPaymentIntentsIntentConfirmRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "mandate" (postPaymentIntentsIntentConfirmRequestBodyMandate obj) GHC.Base.<> ((Data.Aeson..=) "mandate_data" (postPaymentIntentsIntentConfirmRequestBodyMandateData obj) GHC.Base.<> ((Data.Aeson..=) "off_session" (postPaymentIntentsIntentConfirmRequestBodyOffSession obj) GHC.Base.<> ((Data.Aeson..=) "payment_method" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "payment_method_options" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions obj) GHC.Base.<> ((Data.Aeson..=) "payment_method_types" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodTypes obj) GHC.Base.<> ((Data.Aeson..=) "receipt_email" (postPaymentIntentsIntentConfirmRequestBodyReceiptEmail obj) GHC.Base.<> ((Data.Aeson..=) "return_url" (postPaymentIntentsIntentConfirmRequestBodyReturnUrl obj) GHC.Base.<> ((Data.Aeson..=) "save_payment_method" (postPaymentIntentsIntentConfirmRequestBodySavePaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "setup_future_usage" (postPaymentIntentsIntentConfirmRequestBodySetupFutureUsage obj) GHC.Base.<> ((Data.Aeson..=) "shipping" (postPaymentIntentsIntentConfirmRequestBodyShipping obj) GHC.Base.<> (Data.Aeson..=) "use_stripe_sdk" (postPaymentIntentsIntentConfirmRequestBodyUseStripeSdk obj)))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentConfirmRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentConfirmRequestBody" (\obj -> ((((((((((((((GHC.Base.pure PostPaymentIntentsIntentConfirmRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "client_secret")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "error_on_requires_action")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mandate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mandate_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "off_session")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method_options")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method_types")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "receipt_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "return_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "save_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "setup_future_usage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "use_stripe_sdk"))

data PostPaymentIntentsIntentConfirmResponse
    = PostPaymentIntentsIntentConfirmResponseError GHC.Base.String
    | PostPaymentIntentsIntentConfirmResponse200 PaymentIntent
    | PostPaymentIntentsIntentConfirmResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
