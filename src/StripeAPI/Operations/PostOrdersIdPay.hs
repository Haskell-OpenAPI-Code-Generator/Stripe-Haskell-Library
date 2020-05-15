{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostOrdersIdPay where

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
-- POST /v1/orders/{id}/pay
postOrdersIdPay :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                 StripeAPI.Common.SecurityScheme s) =>
                   StripeAPI.Common.Configuration s ->
                   GHC.Base.String ->
                   PostOrdersIdPayRequestBody ->
                   m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                         (Network.HTTP.Client.Types.Response PostOrdersIdPayResponse))
postOrdersIdPay config
                id
                body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostOrdersIdPayResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostOrdersIdPayResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                               Order)
                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostOrdersIdPayResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                 Error)
                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/orders/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ "/pay"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postOrdersIdPayRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                    StripeAPI.Common.SecurityScheme s) =>
                      StripeAPI.Common.Configuration s ->
                      GHC.Base.String ->
                      PostOrdersIdPayRequestBody ->
                      m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postOrdersIdPayRaw config
                   id
                   body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/orders/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ "/pay"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postOrdersIdPayM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                  StripeAPI.Common.SecurityScheme s) =>
                    GHC.Base.String ->
                    PostOrdersIdPayRequestBody ->
                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                       m
                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                           (Network.HTTP.Client.Types.Response PostOrdersIdPayResponse))
postOrdersIdPayM id
                 body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostOrdersIdPayResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostOrdersIdPayResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                Order)
                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostOrdersIdPayResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/orders/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ "/pay"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postOrdersIdPayRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                     StripeAPI.Common.SecurityScheme s) =>
                       GHC.Base.String ->
                       PostOrdersIdPayRequestBody ->
                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                          m
                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postOrdersIdPayRawM id
                    body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/orders/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ "/pay"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostOrdersIdPayRequestBody
    = PostOrdersIdPayRequestBody {postOrdersIdPayRequestBodyApplicationFee :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                  postOrdersIdPayRequestBodyCustomer :: (GHC.Maybe.Maybe GHC.Base.String),
                                  postOrdersIdPayRequestBodyEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                                  postOrdersIdPayRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                  postOrdersIdPayRequestBodyMetadata :: (GHC.Maybe.Maybe PostOrdersIdPayRequestBodyMetadata'),
                                  postOrdersIdPayRequestBodySource :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostOrdersIdPayRequestBodyMetadata'
    = PostOrdersIdPayRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostOrdersIdPayRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostOrdersIdPayRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostOrdersIdPayRequestBodyMetadata'" (\obj -> GHC.Base.pure PostOrdersIdPayRequestBodyMetadata')
instance Data.Aeson.ToJSON PostOrdersIdPayRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "application_fee" (postOrdersIdPayRequestBodyApplicationFee obj) : (Data.Aeson..=) "customer" (postOrdersIdPayRequestBodyCustomer obj) : (Data.Aeson..=) "email" (postOrdersIdPayRequestBodyEmail obj) : (Data.Aeson..=) "expand" (postOrdersIdPayRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postOrdersIdPayRequestBodyMetadata obj) : (Data.Aeson..=) "source" (postOrdersIdPayRequestBodySource obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "application_fee" (postOrdersIdPayRequestBodyApplicationFee obj) GHC.Base.<> ((Data.Aeson..=) "customer" (postOrdersIdPayRequestBodyCustomer obj) GHC.Base.<> ((Data.Aeson..=) "email" (postOrdersIdPayRequestBodyEmail obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postOrdersIdPayRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postOrdersIdPayRequestBodyMetadata obj) GHC.Base.<> (Data.Aeson..=) "source" (postOrdersIdPayRequestBodySource obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostOrdersIdPayRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostOrdersIdPayRequestBody" (\obj -> (((((GHC.Base.pure PostOrdersIdPayRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source"))

data PostOrdersIdPayResponse
    = PostOrdersIdPayResponseError GHC.Base.String
    | PostOrdersIdPayResponse200 Order
    | PostOrdersIdPayResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
