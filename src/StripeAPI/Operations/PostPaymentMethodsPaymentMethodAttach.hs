{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostPaymentMethodsPaymentMethodAttach where

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
-- POST /v1/payment_methods/{payment_method}/attach
postPaymentMethodsPaymentMethodAttach :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                       StripeAPI.Common.SecurityScheme s) =>
                                         StripeAPI.Common.Configuration s ->
                                         GHC.Base.String ->
                                         PostPaymentMethodsPaymentMethodAttachRequestBody ->
                                         m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                               (Network.HTTP.Client.Types.Response PostPaymentMethodsPaymentMethodAttachResponse))
postPaymentMethodsPaymentMethodAttach config
                                      paymentMethod
                                      body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostPaymentMethodsPaymentMethodAttachResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentMethodsPaymentMethodAttachResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 PaymentMethod)
                                                                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentMethodsPaymentMethodAttachResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/payment_methods/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel paymentMethod)) GHC.Base.++ "/attach"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postPaymentMethodsPaymentMethodAttachRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                          StripeAPI.Common.SecurityScheme s) =>
                                            StripeAPI.Common.Configuration s ->
                                            GHC.Base.String ->
                                            PostPaymentMethodsPaymentMethodAttachRequestBody ->
                                            m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPaymentMethodsPaymentMethodAttachRaw config
                                         paymentMethod
                                         body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/payment_methods/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel paymentMethod)) GHC.Base.++ "/attach"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postPaymentMethodsPaymentMethodAttachM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                        StripeAPI.Common.SecurityScheme s) =>
                                          GHC.Base.String ->
                                          PostPaymentMethodsPaymentMethodAttachRequestBody ->
                                          Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                             m
                                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                 (Network.HTTP.Client.Types.Response PostPaymentMethodsPaymentMethodAttachResponse))
postPaymentMethodsPaymentMethodAttachM paymentMethod
                                       body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostPaymentMethodsPaymentMethodAttachResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentMethodsPaymentMethodAttachResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  PaymentMethod)
                                                                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentMethodsPaymentMethodAttachResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/payment_methods/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel paymentMethod)) GHC.Base.++ "/attach"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postPaymentMethodsPaymentMethodAttachRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                           StripeAPI.Common.SecurityScheme s) =>
                                             GHC.Base.String ->
                                             PostPaymentMethodsPaymentMethodAttachRequestBody ->
                                             Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                m
                                                                                (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                    (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPaymentMethodsPaymentMethodAttachRawM paymentMethod
                                          body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/payment_methods/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel paymentMethod)) GHC.Base.++ "/attach"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostPaymentMethodsPaymentMethodAttachRequestBody
    = PostPaymentMethodsPaymentMethodAttachRequestBody {postPaymentMethodsPaymentMethodAttachRequestBodyCustomer :: GHC.Base.String,
                                                        postPaymentMethodsPaymentMethodAttachRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentMethodsPaymentMethodAttachRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "customer" (postPaymentMethodsPaymentMethodAttachRequestBodyCustomer obj) : (Data.Aeson..=) "expand" (postPaymentMethodsPaymentMethodAttachRequestBodyExpand obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "customer" (postPaymentMethodsPaymentMethodAttachRequestBodyCustomer obj) GHC.Base.<> (Data.Aeson..=) "expand" (postPaymentMethodsPaymentMethodAttachRequestBodyExpand obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsPaymentMethodAttachRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodsPaymentMethodAttachRequestBody" (\obj -> (GHC.Base.pure PostPaymentMethodsPaymentMethodAttachRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand"))

data PostPaymentMethodsPaymentMethodAttachResponse
    = PostPaymentMethodsPaymentMethodAttachResponseError GHC.Base.String
    | PostPaymentMethodsPaymentMethodAttachResponse200 PaymentMethod
    | PostPaymentMethodsPaymentMethodAttachResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
