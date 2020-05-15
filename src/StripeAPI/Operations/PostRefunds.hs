{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostRefunds where

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
-- POST /v1/refunds
postRefunds :: forall m s . (StripeAPI.Common.MonadHTTP m,
                             StripeAPI.Common.SecurityScheme s) =>
               StripeAPI.Common.Configuration s ->
               PostRefundsRequestBody ->
               m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                     (Network.HTTP.Client.Types.Response PostRefundsResponse))
postRefunds config
            body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostRefundsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostRefundsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                   Refund)
                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostRefundsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/refunds") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postRefundsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                StripeAPI.Common.SecurityScheme s) =>
                  StripeAPI.Common.Configuration s ->
                  PostRefundsRequestBody ->
                  m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postRefundsRaw config
               body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/refunds") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postRefundsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                              StripeAPI.Common.SecurityScheme s) =>
                PostRefundsRequestBody ->
                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                   m
                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                       (Network.HTTP.Client.Types.Response PostRefundsResponse))
postRefundsM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostRefundsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostRefundsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                    Refund)
                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostRefundsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/refunds") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postRefundsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                 StripeAPI.Common.SecurityScheme s) =>
                   PostRefundsRequestBody ->
                   Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                      m
                                                      (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postRefundsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/refunds") [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostRefundsRequestBody
    = PostRefundsRequestBody {postRefundsRequestBodyAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                              postRefundsRequestBodyCharge :: (GHC.Maybe.Maybe GHC.Base.String),
                              postRefundsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                              postRefundsRequestBodyMetadata :: (GHC.Maybe.Maybe PostRefundsRequestBodyMetadata'),
                              postRefundsRequestBodyPaymentIntent :: (GHC.Maybe.Maybe GHC.Base.String),
                              postRefundsRequestBodyReason :: (GHC.Maybe.Maybe PostRefundsRequestBodyReason'),
                              postRefundsRequestBodyRefundApplicationFee :: (GHC.Maybe.Maybe GHC.Types.Bool),
                              postRefundsRequestBodyReverseTransfer :: (GHC.Maybe.Maybe GHC.Types.Bool)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostRefundsRequestBodyMetadata'
    = PostRefundsRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostRefundsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostRefundsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostRefundsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostRefundsRequestBodyMetadata')
data PostRefundsRequestBodyReason'
    = PostRefundsRequestBodyReason'EnumOther Data.Aeson.Types.Internal.Value
    | PostRefundsRequestBodyReason'EnumTyped GHC.Base.String
    | PostRefundsRequestBodyReason'EnumStringDuplicate
    | PostRefundsRequestBodyReason'EnumStringFraudulent
    | PostRefundsRequestBodyReason'EnumStringRequestedByCustomer
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostRefundsRequestBodyReason'
    where toJSON (PostRefundsRequestBodyReason'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostRefundsRequestBodyReason'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostRefundsRequestBodyReason'EnumStringDuplicate) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "duplicate"
          toJSON (PostRefundsRequestBodyReason'EnumStringFraudulent) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fraudulent"
          toJSON (PostRefundsRequestBodyReason'EnumStringRequestedByCustomer) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "requested_by_customer"
instance Data.Aeson.FromJSON PostRefundsRequestBodyReason'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "duplicate")
                                          then PostRefundsRequestBodyReason'EnumStringDuplicate
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fraudulent")
                                                then PostRefundsRequestBodyReason'EnumStringFraudulent
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "requested_by_customer")
                                                      then PostRefundsRequestBodyReason'EnumStringRequestedByCustomer
                                                      else PostRefundsRequestBodyReason'EnumOther val)
instance Data.Aeson.ToJSON PostRefundsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postRefundsRequestBodyAmount obj) : (Data.Aeson..=) "charge" (postRefundsRequestBodyCharge obj) : (Data.Aeson..=) "expand" (postRefundsRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postRefundsRequestBodyMetadata obj) : (Data.Aeson..=) "payment_intent" (postRefundsRequestBodyPaymentIntent obj) : (Data.Aeson..=) "reason" (postRefundsRequestBodyReason obj) : (Data.Aeson..=) "refund_application_fee" (postRefundsRequestBodyRefundApplicationFee obj) : (Data.Aeson..=) "reverse_transfer" (postRefundsRequestBodyReverseTransfer obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postRefundsRequestBodyAmount obj) GHC.Base.<> ((Data.Aeson..=) "charge" (postRefundsRequestBodyCharge obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postRefundsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postRefundsRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "payment_intent" (postRefundsRequestBodyPaymentIntent obj) GHC.Base.<> ((Data.Aeson..=) "reason" (postRefundsRequestBodyReason obj) GHC.Base.<> ((Data.Aeson..=) "refund_application_fee" (postRefundsRequestBodyRefundApplicationFee obj) GHC.Base.<> (Data.Aeson..=) "reverse_transfer" (postRefundsRequestBodyReverseTransfer obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostRefundsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostRefundsRequestBody" (\obj -> (((((((GHC.Base.pure PostRefundsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "charge")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_intent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_application_fee")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reverse_transfer"))

data PostRefundsResponse
    = PostRefundsResponseError GHC.Base.String
    | PostRefundsResponse200 Refund
    | PostRefundsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
