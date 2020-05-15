{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostPaymentIntentsIntent where

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
-- POST /v1/payment_intents/{intent}
postPaymentIntentsIntent :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                          StripeAPI.Common.SecurityScheme s) =>
                            StripeAPI.Common.Configuration s ->
                            GHC.Base.String ->
                            PostPaymentIntentsIntentRequestBody ->
                            m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                  (Network.HTTP.Client.Types.Response PostPaymentIntentsIntentResponse))
postPaymentIntentsIntent config
                         intent
                         body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostPaymentIntentsIntentResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                          PaymentIntent)
                                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/payment_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postPaymentIntentsIntentRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                             StripeAPI.Common.SecurityScheme s) =>
                               StripeAPI.Common.Configuration s ->
                               GHC.Base.String ->
                               PostPaymentIntentsIntentRequestBody ->
                               m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPaymentIntentsIntentRaw config
                            intent
                            body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/payment_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postPaymentIntentsIntentM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             GHC.Base.String ->
                             PostPaymentIntentsIntentRequestBody ->
                             Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                m
                                                                (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                    (Network.HTTP.Client.Types.Response PostPaymentIntentsIntentResponse))
postPaymentIntentsIntentM intent
                          body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostPaymentIntentsIntentResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                           PaymentIntent)
                                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/payment_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postPaymentIntentsIntentRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                GHC.Base.String ->
                                PostPaymentIntentsIntentRequestBody ->
                                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                   m
                                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPaymentIntentsIntentRawM intent
                             body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/payment_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostPaymentIntentsIntentRequestBody
    = PostPaymentIntentsIntentRequestBody {postPaymentIntentsIntentRequestBodyAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                           postPaymentIntentsIntentRequestBodyApplicationFeeAmount :: (GHC.Maybe.Maybe PostPaymentIntentsIntentRequestBodyApplicationFeeAmount'Variants),
                                           postPaymentIntentsIntentRequestBodyCurrency :: (GHC.Maybe.Maybe GHC.Base.String),
                                           postPaymentIntentsIntentRequestBodyCustomer :: (GHC.Maybe.Maybe GHC.Base.String),
                                           postPaymentIntentsIntentRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String),
                                           postPaymentIntentsIntentRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                           postPaymentIntentsIntentRequestBodyMetadata :: (GHC.Maybe.Maybe PostPaymentIntentsIntentRequestBodyMetadata'),
                                           postPaymentIntentsIntentRequestBodyPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String),
                                           postPaymentIntentsIntentRequestBodyPaymentMethodOptions :: (GHC.Maybe.Maybe PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'),
                                           postPaymentIntentsIntentRequestBodyPaymentMethodTypes :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                           postPaymentIntentsIntentRequestBodyReceiptEmail :: (GHC.Maybe.Maybe PostPaymentIntentsIntentRequestBodyReceiptEmail'Variants),
                                           postPaymentIntentsIntentRequestBodySavePaymentMethod :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                           postPaymentIntentsIntentRequestBodySetupFutureUsage :: (GHC.Maybe.Maybe PostPaymentIntentsIntentRequestBodySetupFutureUsage'),
                                           postPaymentIntentsIntentRequestBodyShipping :: (GHC.Maybe.Maybe PostPaymentIntentsIntentRequestBodyShipping'Variants),
                                           postPaymentIntentsIntentRequestBodyStatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String),
                                           postPaymentIntentsIntentRequestBodyStatementDescriptorSuffix :: (GHC.Maybe.Maybe GHC.Base.String),
                                           postPaymentIntentsIntentRequestBodyTransferData :: (GHC.Maybe.Maybe PostPaymentIntentsIntentRequestBodyTransferData'),
                                           postPaymentIntentsIntentRequestBodyTransferGroup :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostPaymentIntentsIntentRequestBodyApplicationFeeAmount'OneOf1
    = PostPaymentIntentsIntentRequestBodyApplicationFeeAmount'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsIntentRequestBodyApplicationFeeAmount'OneOf1EnumTyped GHC.Base.String
    | PostPaymentIntentsIntentRequestBodyApplicationFeeAmount'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentRequestBodyApplicationFeeAmount'OneOf1
    where toJSON (PostPaymentIntentsIntentRequestBodyApplicationFeeAmount'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentRequestBodyApplicationFeeAmount'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentRequestBodyApplicationFeeAmount'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostPaymentIntentsIntentRequestBodyApplicationFeeAmount'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostPaymentIntentsIntentRequestBodyApplicationFeeAmount'OneOf1EnumString_
                                          else PostPaymentIntentsIntentRequestBodyApplicationFeeAmount'OneOf1EnumOther val)
data PostPaymentIntentsIntentRequestBodyApplicationFeeAmount'Variants
    = PostPaymentIntentsIntentRequestBodyApplicationFeeAmount'Variant1 PostPaymentIntentsIntentRequestBodyApplicationFeeAmount'OneOf1
    | PostPaymentIntentsIntentRequestBodyApplicationFeeAmount'Variant2 GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentRequestBodyApplicationFeeAmount'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostPaymentIntentsIntentRequestBodyApplicationFeeAmount'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostPaymentIntentsIntentRequestBodyMetadata'
    = PostPaymentIntentsIntentRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentRequestBodyMetadata'" (\obj -> GHC.Base.pure PostPaymentIntentsIntentRequestBodyMetadata')
data PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'
    = PostPaymentIntentsIntentRequestBodyPaymentMethodOptions' {postPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card :: (GHC.Maybe.Maybe PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'
    = PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card' {postPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments :: (GHC.Maybe.Maybe PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'),
                                                                     postPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure :: (GHC.Maybe.Maybe PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'
    = PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments' {postPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Enabled :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                                                  postPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan :: (GHC.Maybe.Maybe PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'Variants)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1
    = PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumTyped GHC.Base.String
    | PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1
    where toJSON (PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumString_
                                          else PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumOther val)
data PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2
    = PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2 {postPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Count :: GHC.Integer.Type.Integer,
                                                                                             postPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval :: PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval',
                                                                                             postPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type :: PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'
    = PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumTyped GHC.Base.String
    | PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumStringMonth
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'
    where toJSON (PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumStringMonth) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month"
instance Data.Aeson.FromJSON PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month")
                                          then PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumStringMonth
                                          else PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumOther val)
data PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'
    = PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumTyped GHC.Base.String
    | PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumStringFixedCount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'
    where toJSON (PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumStringFixedCount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fixed_count"
instance Data.Aeson.FromJSON PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fixed_count")
                                          then PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumStringFixedCount
                                          else PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumOther val)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "count" (postPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Count obj) : (Data.Aeson..=) "interval" (postPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval obj) : (Data.Aeson..=) "type" (postPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "count" (postPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Count obj) GHC.Base.<> ((Data.Aeson..=) "interval" (postPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval obj) GHC.Base.<> (Data.Aeson..=) "type" (postPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2" (\obj -> ((GHC.Base.pure PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
data PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'Variants
    = PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'Variant1 PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1
    | PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'Variant2 PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "enabled" (postPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Enabled obj) : (Data.Aeson..=) "plan" (postPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "enabled" (postPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Enabled obj) GHC.Base.<> (Data.Aeson..=) "plan" (postPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'Plan obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments'" (\obj -> (GHC.Base.pure PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "enabled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "plan"))
data PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    = PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumTyped GHC.Base.String
    | PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny
    | PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    where toJSON (PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "any"
          toJSON (PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic"
instance Data.Aeson.FromJSON PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "any")
                                          then PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic")
                                                then PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic
                                                else PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther val)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "installments" (postPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments obj) : (Data.Aeson..=) "request_three_d_secure" (postPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "installments" (postPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'Installments obj) GHC.Base.<> (Data.Aeson..=) "request_three_d_secure" (postPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card'" (\obj -> (GHC.Base.pure PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "installments")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "request_three_d_secure"))
instance Data.Aeson.ToJSON PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "card" (postPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "card" (postPaymentIntentsIntentRequestBodyPaymentMethodOptions'Card obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentRequestBodyPaymentMethodOptions'" (\obj -> GHC.Base.pure PostPaymentIntentsIntentRequestBodyPaymentMethodOptions' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card"))
data PostPaymentIntentsIntentRequestBodyReceiptEmail'OneOf2
    = PostPaymentIntentsIntentRequestBodyReceiptEmail'OneOf2EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsIntentRequestBodyReceiptEmail'OneOf2EnumTyped GHC.Base.String
    | PostPaymentIntentsIntentRequestBodyReceiptEmail'OneOf2EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentRequestBodyReceiptEmail'OneOf2
    where toJSON (PostPaymentIntentsIntentRequestBodyReceiptEmail'OneOf2EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentRequestBodyReceiptEmail'OneOf2EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentRequestBodyReceiptEmail'OneOf2EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostPaymentIntentsIntentRequestBodyReceiptEmail'OneOf2
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostPaymentIntentsIntentRequestBodyReceiptEmail'OneOf2EnumString_
                                          else PostPaymentIntentsIntentRequestBodyReceiptEmail'OneOf2EnumOther val)
data PostPaymentIntentsIntentRequestBodyReceiptEmail'Variants
    = PostPaymentIntentsIntentRequestBodyReceiptEmail'Variant1 GHC.Base.String
    | PostPaymentIntentsIntentRequestBodyReceiptEmail'Variant2 PostPaymentIntentsIntentRequestBodyReceiptEmail'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentRequestBodyReceiptEmail'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostPaymentIntentsIntentRequestBodyReceiptEmail'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostPaymentIntentsIntentRequestBodySetupFutureUsage'
    = PostPaymentIntentsIntentRequestBodySetupFutureUsage'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsIntentRequestBodySetupFutureUsage'EnumTyped GHC.Base.String
    | PostPaymentIntentsIntentRequestBodySetupFutureUsage'EnumString_
    | PostPaymentIntentsIntentRequestBodySetupFutureUsage'EnumStringOffSession
    | PostPaymentIntentsIntentRequestBodySetupFutureUsage'EnumStringOnSession
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentRequestBodySetupFutureUsage'
    where toJSON (PostPaymentIntentsIntentRequestBodySetupFutureUsage'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentRequestBodySetupFutureUsage'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentRequestBodySetupFutureUsage'EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
          toJSON (PostPaymentIntentsIntentRequestBodySetupFutureUsage'EnumStringOffSession) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "off_session"
          toJSON (PostPaymentIntentsIntentRequestBodySetupFutureUsage'EnumStringOnSession) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "on_session"
instance Data.Aeson.FromJSON PostPaymentIntentsIntentRequestBodySetupFutureUsage'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostPaymentIntentsIntentRequestBodySetupFutureUsage'EnumString_
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "off_session")
                                                then PostPaymentIntentsIntentRequestBodySetupFutureUsage'EnumStringOffSession
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "on_session")
                                                      then PostPaymentIntentsIntentRequestBodySetupFutureUsage'EnumStringOnSession
                                                      else PostPaymentIntentsIntentRequestBodySetupFutureUsage'EnumOther val)
data PostPaymentIntentsIntentRequestBodyShipping'OneOf1
    = PostPaymentIntentsIntentRequestBodyShipping'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsIntentRequestBodyShipping'OneOf1EnumTyped GHC.Base.String
    | PostPaymentIntentsIntentRequestBodyShipping'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentRequestBodyShipping'OneOf1
    where toJSON (PostPaymentIntentsIntentRequestBodyShipping'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentRequestBodyShipping'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentRequestBodyShipping'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostPaymentIntentsIntentRequestBodyShipping'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostPaymentIntentsIntentRequestBodyShipping'OneOf1EnumString_
                                          else PostPaymentIntentsIntentRequestBodyShipping'OneOf1EnumOther val)
data PostPaymentIntentsIntentRequestBodyShipping'OneOf2
    = PostPaymentIntentsIntentRequestBodyShipping'OneOf2 {postPaymentIntentsIntentRequestBodyShipping'OneOf2Address :: PostPaymentIntentsIntentRequestBodyShipping'OneOf2Address',
                                                          postPaymentIntentsIntentRequestBodyShipping'OneOf2Carrier :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postPaymentIntentsIntentRequestBodyShipping'OneOf2Name :: GHC.Base.String,
                                                          postPaymentIntentsIntentRequestBodyShipping'OneOf2Phone :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postPaymentIntentsIntentRequestBodyShipping'OneOf2TrackingNumber :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostPaymentIntentsIntentRequestBodyShipping'OneOf2Address'
    = PostPaymentIntentsIntentRequestBodyShipping'OneOf2Address' {postPaymentIntentsIntentRequestBodyShipping'OneOf2Address'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                  postPaymentIntentsIntentRequestBodyShipping'OneOf2Address'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                  postPaymentIntentsIntentRequestBodyShipping'OneOf2Address'Line1 :: GHC.Base.String,
                                                                  postPaymentIntentsIntentRequestBodyShipping'OneOf2Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                  postPaymentIntentsIntentRequestBodyShipping'OneOf2Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                  postPaymentIntentsIntentRequestBodyShipping'OneOf2Address'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentRequestBodyShipping'OneOf2Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postPaymentIntentsIntentRequestBodyShipping'OneOf2Address'City obj) : (Data.Aeson..=) "country" (postPaymentIntentsIntentRequestBodyShipping'OneOf2Address'Country obj) : (Data.Aeson..=) "line1" (postPaymentIntentsIntentRequestBodyShipping'OneOf2Address'Line1 obj) : (Data.Aeson..=) "line2" (postPaymentIntentsIntentRequestBodyShipping'OneOf2Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postPaymentIntentsIntentRequestBodyShipping'OneOf2Address'PostalCode obj) : (Data.Aeson..=) "state" (postPaymentIntentsIntentRequestBodyShipping'OneOf2Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postPaymentIntentsIntentRequestBodyShipping'OneOf2Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postPaymentIntentsIntentRequestBodyShipping'OneOf2Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postPaymentIntentsIntentRequestBodyShipping'OneOf2Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postPaymentIntentsIntentRequestBodyShipping'OneOf2Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postPaymentIntentsIntentRequestBodyShipping'OneOf2Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postPaymentIntentsIntentRequestBodyShipping'OneOf2Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentRequestBodyShipping'OneOf2Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentRequestBodyShipping'OneOf2Address'" (\obj -> (((((GHC.Base.pure PostPaymentIntentsIntentRequestBodyShipping'OneOf2Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
instance Data.Aeson.ToJSON PostPaymentIntentsIntentRequestBodyShipping'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postPaymentIntentsIntentRequestBodyShipping'OneOf2Address obj) : (Data.Aeson..=) "carrier" (postPaymentIntentsIntentRequestBodyShipping'OneOf2Carrier obj) : (Data.Aeson..=) "name" (postPaymentIntentsIntentRequestBodyShipping'OneOf2Name obj) : (Data.Aeson..=) "phone" (postPaymentIntentsIntentRequestBodyShipping'OneOf2Phone obj) : (Data.Aeson..=) "tracking_number" (postPaymentIntentsIntentRequestBodyShipping'OneOf2TrackingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postPaymentIntentsIntentRequestBodyShipping'OneOf2Address obj) GHC.Base.<> ((Data.Aeson..=) "carrier" (postPaymentIntentsIntentRequestBodyShipping'OneOf2Carrier obj) GHC.Base.<> ((Data.Aeson..=) "name" (postPaymentIntentsIntentRequestBodyShipping'OneOf2Name obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postPaymentIntentsIntentRequestBodyShipping'OneOf2Phone obj) GHC.Base.<> (Data.Aeson..=) "tracking_number" (postPaymentIntentsIntentRequestBodyShipping'OneOf2TrackingNumber obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentRequestBodyShipping'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentRequestBodyShipping'OneOf2" (\obj -> ((((GHC.Base.pure PostPaymentIntentsIntentRequestBodyShipping'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "carrier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tracking_number"))
data PostPaymentIntentsIntentRequestBodyShipping'Variants
    = PostPaymentIntentsIntentRequestBodyShipping'Variant1 PostPaymentIntentsIntentRequestBodyShipping'OneOf1
    | PostPaymentIntentsIntentRequestBodyShipping'Variant2 PostPaymentIntentsIntentRequestBodyShipping'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentRequestBodyShipping'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostPaymentIntentsIntentRequestBodyShipping'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostPaymentIntentsIntentRequestBodyTransferData'
    = PostPaymentIntentsIntentRequestBodyTransferData' {postPaymentIntentsIntentRequestBodyTransferData'Amount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentRequestBodyTransferData'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postPaymentIntentsIntentRequestBodyTransferData'Amount obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postPaymentIntentsIntentRequestBodyTransferData'Amount obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentRequestBodyTransferData'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentRequestBodyTransferData'" (\obj -> GHC.Base.pure PostPaymentIntentsIntentRequestBodyTransferData' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount"))
instance Data.Aeson.ToJSON PostPaymentIntentsIntentRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postPaymentIntentsIntentRequestBodyAmount obj) : (Data.Aeson..=) "application_fee_amount" (postPaymentIntentsIntentRequestBodyApplicationFeeAmount obj) : (Data.Aeson..=) "currency" (postPaymentIntentsIntentRequestBodyCurrency obj) : (Data.Aeson..=) "customer" (postPaymentIntentsIntentRequestBodyCustomer obj) : (Data.Aeson..=) "description" (postPaymentIntentsIntentRequestBodyDescription obj) : (Data.Aeson..=) "expand" (postPaymentIntentsIntentRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postPaymentIntentsIntentRequestBodyMetadata obj) : (Data.Aeson..=) "payment_method" (postPaymentIntentsIntentRequestBodyPaymentMethod obj) : (Data.Aeson..=) "payment_method_options" (postPaymentIntentsIntentRequestBodyPaymentMethodOptions obj) : (Data.Aeson..=) "payment_method_types" (postPaymentIntentsIntentRequestBodyPaymentMethodTypes obj) : (Data.Aeson..=) "receipt_email" (postPaymentIntentsIntentRequestBodyReceiptEmail obj) : (Data.Aeson..=) "save_payment_method" (postPaymentIntentsIntentRequestBodySavePaymentMethod obj) : (Data.Aeson..=) "setup_future_usage" (postPaymentIntentsIntentRequestBodySetupFutureUsage obj) : (Data.Aeson..=) "shipping" (postPaymentIntentsIntentRequestBodyShipping obj) : (Data.Aeson..=) "statement_descriptor" (postPaymentIntentsIntentRequestBodyStatementDescriptor obj) : (Data.Aeson..=) "statement_descriptor_suffix" (postPaymentIntentsIntentRequestBodyStatementDescriptorSuffix obj) : (Data.Aeson..=) "transfer_data" (postPaymentIntentsIntentRequestBodyTransferData obj) : (Data.Aeson..=) "transfer_group" (postPaymentIntentsIntentRequestBodyTransferGroup obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postPaymentIntentsIntentRequestBodyAmount obj) GHC.Base.<> ((Data.Aeson..=) "application_fee_amount" (postPaymentIntentsIntentRequestBodyApplicationFeeAmount obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postPaymentIntentsIntentRequestBodyCurrency obj) GHC.Base.<> ((Data.Aeson..=) "customer" (postPaymentIntentsIntentRequestBodyCustomer obj) GHC.Base.<> ((Data.Aeson..=) "description" (postPaymentIntentsIntentRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postPaymentIntentsIntentRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postPaymentIntentsIntentRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "payment_method" (postPaymentIntentsIntentRequestBodyPaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "payment_method_options" (postPaymentIntentsIntentRequestBodyPaymentMethodOptions obj) GHC.Base.<> ((Data.Aeson..=) "payment_method_types" (postPaymentIntentsIntentRequestBodyPaymentMethodTypes obj) GHC.Base.<> ((Data.Aeson..=) "receipt_email" (postPaymentIntentsIntentRequestBodyReceiptEmail obj) GHC.Base.<> ((Data.Aeson..=) "save_payment_method" (postPaymentIntentsIntentRequestBodySavePaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "setup_future_usage" (postPaymentIntentsIntentRequestBodySetupFutureUsage obj) GHC.Base.<> ((Data.Aeson..=) "shipping" (postPaymentIntentsIntentRequestBodyShipping obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor" (postPaymentIntentsIntentRequestBodyStatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor_suffix" (postPaymentIntentsIntentRequestBodyStatementDescriptorSuffix obj) GHC.Base.<> ((Data.Aeson..=) "transfer_data" (postPaymentIntentsIntentRequestBodyTransferData obj) GHC.Base.<> (Data.Aeson..=) "transfer_group" (postPaymentIntentsIntentRequestBodyTransferGroup obj))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentRequestBody" (\obj -> (((((((((((((((((GHC.Base.pure PostPaymentIntentsIntentRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method_options")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method_types")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "receipt_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "save_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "setup_future_usage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_suffix")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transfer_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transfer_group"))

data PostPaymentIntentsIntentResponse
    = PostPaymentIntentsIntentResponseError GHC.Base.String
    | PostPaymentIntentsIntentResponse200 PaymentIntent
    | PostPaymentIntentsIntentResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
