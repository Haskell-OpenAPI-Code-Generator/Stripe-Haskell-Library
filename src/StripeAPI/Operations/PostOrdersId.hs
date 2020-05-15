{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostOrdersId where

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
-- POST /v1/orders/{id}
postOrdersId :: forall m s . (StripeAPI.Common.MonadHTTP m,
                              StripeAPI.Common.SecurityScheme s) =>
                StripeAPI.Common.Configuration s ->
                GHC.Base.String ->
                PostOrdersIdRequestBody ->
                m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                      (Network.HTTP.Client.Types.Response PostOrdersIdResponse))
postOrdersId config
             id
             body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostOrdersIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostOrdersIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      Order)
                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostOrdersIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/orders/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postOrdersIdRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                 StripeAPI.Common.SecurityScheme s) =>
                   StripeAPI.Common.Configuration s ->
                   GHC.Base.String ->
                   PostOrdersIdRequestBody ->
                   m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postOrdersIdRaw config
                id
                body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/orders/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postOrdersIdM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                               StripeAPI.Common.SecurityScheme s) =>
                 GHC.Base.String ->
                 PostOrdersIdRequestBody ->
                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                    m
                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                        (Network.HTTP.Client.Types.Response PostOrdersIdResponse))
postOrdersIdM id
              body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostOrdersIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostOrdersIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                       Order)
                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostOrdersIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/orders/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postOrdersIdRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                  StripeAPI.Common.SecurityScheme s) =>
                    GHC.Base.String ->
                    PostOrdersIdRequestBody ->
                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                       m
                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postOrdersIdRawM id
                 body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/orders/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostOrdersIdRequestBody
    = PostOrdersIdRequestBody {postOrdersIdRequestBodyCoupon :: (GHC.Maybe.Maybe GHC.Base.String),
                               postOrdersIdRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                               postOrdersIdRequestBodyMetadata :: (GHC.Maybe.Maybe PostOrdersIdRequestBodyMetadata'),
                               postOrdersIdRequestBodySelectedShippingMethod :: (GHC.Maybe.Maybe GHC.Base.String),
                               postOrdersIdRequestBodyShipping :: (GHC.Maybe.Maybe PostOrdersIdRequestBodyShipping'),
                               postOrdersIdRequestBodyStatus :: (GHC.Maybe.Maybe PostOrdersIdRequestBodyStatus')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostOrdersIdRequestBodyMetadata'
    = PostOrdersIdRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostOrdersIdRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostOrdersIdRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostOrdersIdRequestBodyMetadata'" (\obj -> GHC.Base.pure PostOrdersIdRequestBodyMetadata')
data PostOrdersIdRequestBodyShipping'
    = PostOrdersIdRequestBodyShipping' {postOrdersIdRequestBodyShipping'Carrier :: GHC.Base.String,
                                        postOrdersIdRequestBodyShipping'TrackingNumber :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostOrdersIdRequestBodyShipping'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "carrier" (postOrdersIdRequestBodyShipping'Carrier obj) : (Data.Aeson..=) "tracking_number" (postOrdersIdRequestBodyShipping'TrackingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "carrier" (postOrdersIdRequestBodyShipping'Carrier obj) GHC.Base.<> (Data.Aeson..=) "tracking_number" (postOrdersIdRequestBodyShipping'TrackingNumber obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostOrdersIdRequestBodyShipping'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostOrdersIdRequestBodyShipping'" (\obj -> (GHC.Base.pure PostOrdersIdRequestBodyShipping' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "carrier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tracking_number"))
data PostOrdersIdRequestBodyStatus'
    = PostOrdersIdRequestBodyStatus'EnumOther Data.Aeson.Types.Internal.Value
    | PostOrdersIdRequestBodyStatus'EnumTyped GHC.Base.String
    | PostOrdersIdRequestBodyStatus'EnumStringCanceled
    | PostOrdersIdRequestBodyStatus'EnumStringCreated
    | PostOrdersIdRequestBodyStatus'EnumStringFulfilled
    | PostOrdersIdRequestBodyStatus'EnumStringPaid
    | PostOrdersIdRequestBodyStatus'EnumStringReturned
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostOrdersIdRequestBodyStatus'
    where toJSON (PostOrdersIdRequestBodyStatus'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostOrdersIdRequestBodyStatus'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostOrdersIdRequestBodyStatus'EnumStringCanceled) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "canceled"
          toJSON (PostOrdersIdRequestBodyStatus'EnumStringCreated) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "created"
          toJSON (PostOrdersIdRequestBodyStatus'EnumStringFulfilled) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fulfilled"
          toJSON (PostOrdersIdRequestBodyStatus'EnumStringPaid) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "paid"
          toJSON (PostOrdersIdRequestBodyStatus'EnumStringReturned) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "returned"
instance Data.Aeson.FromJSON PostOrdersIdRequestBodyStatus'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "canceled")
                                          then PostOrdersIdRequestBodyStatus'EnumStringCanceled
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "created")
                                                then PostOrdersIdRequestBodyStatus'EnumStringCreated
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fulfilled")
                                                      then PostOrdersIdRequestBodyStatus'EnumStringFulfilled
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "paid")
                                                            then PostOrdersIdRequestBodyStatus'EnumStringPaid
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "returned")
                                                                  then PostOrdersIdRequestBodyStatus'EnumStringReturned
                                                                  else PostOrdersIdRequestBodyStatus'EnumOther val)
instance Data.Aeson.ToJSON PostOrdersIdRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "coupon" (postOrdersIdRequestBodyCoupon obj) : (Data.Aeson..=) "expand" (postOrdersIdRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postOrdersIdRequestBodyMetadata obj) : (Data.Aeson..=) "selected_shipping_method" (postOrdersIdRequestBodySelectedShippingMethod obj) : (Data.Aeson..=) "shipping" (postOrdersIdRequestBodyShipping obj) : (Data.Aeson..=) "status" (postOrdersIdRequestBodyStatus obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "coupon" (postOrdersIdRequestBodyCoupon obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postOrdersIdRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postOrdersIdRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "selected_shipping_method" (postOrdersIdRequestBodySelectedShippingMethod obj) GHC.Base.<> ((Data.Aeson..=) "shipping" (postOrdersIdRequestBodyShipping obj) GHC.Base.<> (Data.Aeson..=) "status" (postOrdersIdRequestBodyStatus obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostOrdersIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostOrdersIdRequestBody" (\obj -> (((((GHC.Base.pure PostOrdersIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "coupon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "selected_shipping_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "status"))

data PostOrdersIdResponse
    = PostOrdersIdResponseError GHC.Base.String
    | PostOrdersIdResponse200 Order
    | PostOrdersIdResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
