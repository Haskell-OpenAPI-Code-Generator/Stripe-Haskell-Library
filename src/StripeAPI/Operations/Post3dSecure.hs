{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.Post3dSecure where

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
-- POST /v1/3d_secure
post3dSecure :: forall m s . (StripeAPI.Common.MonadHTTP m,
                              StripeAPI.Common.SecurityScheme s) =>
                StripeAPI.Common.Configuration s ->
                Post3dSecureRequestBody ->
                m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                      (Network.HTTP.Client.Types.Response Post3dSecureResponse))
post3dSecure config
             body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Post3dSecureResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Post3dSecureResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      ThreeDSecure)
                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> Post3dSecureResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/3d_secure") [] body StripeAPI.Common.RequestBodyEncodingFormData)
post3dSecureRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                 StripeAPI.Common.SecurityScheme s) =>
                   StripeAPI.Common.Configuration s ->
                   Post3dSecureRequestBody ->
                   m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
post3dSecureRaw config
                body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/3d_secure") [] body StripeAPI.Common.RequestBodyEncodingFormData)
post3dSecureM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                               StripeAPI.Common.SecurityScheme s) =>
                 Post3dSecureRequestBody ->
                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                    m
                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                        (Network.HTTP.Client.Types.Response Post3dSecureResponse))
post3dSecureM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Post3dSecureResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Post3dSecureResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                       ThreeDSecure)
                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> Post3dSecureResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/3d_secure") [] body StripeAPI.Common.RequestBodyEncodingFormData)
post3dSecureRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                  StripeAPI.Common.SecurityScheme s) =>
                    Post3dSecureRequestBody ->
                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                       m
                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
post3dSecureRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/3d_secure") [] body StripeAPI.Common.RequestBodyEncodingFormData)
data Post3dSecureRequestBody
    = Post3dSecureRequestBody {post3dSecureRequestBodyAmount :: GHC.Integer.Type.Integer,
                               post3dSecureRequestBodyCard :: (GHC.Maybe.Maybe GHC.Base.String),
                               post3dSecureRequestBodyCurrency :: GHC.Base.String,
                               post3dSecureRequestBodyCustomer :: (GHC.Maybe.Maybe GHC.Base.String),
                               post3dSecureRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                               post3dSecureRequestBodyReturnUrl :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON Post3dSecureRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (post3dSecureRequestBodyAmount obj) : (Data.Aeson..=) "card" (post3dSecureRequestBodyCard obj) : (Data.Aeson..=) "currency" (post3dSecureRequestBodyCurrency obj) : (Data.Aeson..=) "customer" (post3dSecureRequestBodyCustomer obj) : (Data.Aeson..=) "expand" (post3dSecureRequestBodyExpand obj) : (Data.Aeson..=) "return_url" (post3dSecureRequestBodyReturnUrl obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (post3dSecureRequestBodyAmount obj) GHC.Base.<> ((Data.Aeson..=) "card" (post3dSecureRequestBodyCard obj) GHC.Base.<> ((Data.Aeson..=) "currency" (post3dSecureRequestBodyCurrency obj) GHC.Base.<> ((Data.Aeson..=) "customer" (post3dSecureRequestBodyCustomer obj) GHC.Base.<> ((Data.Aeson..=) "expand" (post3dSecureRequestBodyExpand obj) GHC.Base.<> (Data.Aeson..=) "return_url" (post3dSecureRequestBodyReturnUrl obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON Post3dSecureRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Post3dSecureRequestBody" (\obj -> (((((GHC.Base.pure Post3dSecureRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "return_url"))

data Post3dSecureResponse
    = Post3dSecureResponseError GHC.Base.String
    | Post3dSecureResponse200 ThreeDSecure
    | Post3dSecureResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
