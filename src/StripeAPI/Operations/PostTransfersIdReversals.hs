{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostTransfersIdReversals where

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
-- POST /v1/transfers/{id}/reversals
postTransfersIdReversals :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                          StripeAPI.Common.SecurityScheme s) =>
                            StripeAPI.Common.Configuration s ->
                            GHC.Base.String ->
                            PostTransfersIdReversalsRequestBody ->
                            m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                  (Network.HTTP.Client.Types.Response PostTransfersIdReversalsResponse))
postTransfersIdReversals config
                         id
                         body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostTransfersIdReversalsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTransfersIdReversalsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                          TransferReversal)
                                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTransfersIdReversalsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/transfers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ "/reversals"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postTransfersIdReversalsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                             StripeAPI.Common.SecurityScheme s) =>
                               StripeAPI.Common.Configuration s ->
                               GHC.Base.String ->
                               PostTransfersIdReversalsRequestBody ->
                               m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postTransfersIdReversalsRaw config
                            id
                            body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/transfers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ "/reversals"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postTransfersIdReversalsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             GHC.Base.String ->
                             PostTransfersIdReversalsRequestBody ->
                             Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                m
                                                                (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                    (Network.HTTP.Client.Types.Response PostTransfersIdReversalsResponse))
postTransfersIdReversalsM id
                          body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostTransfersIdReversalsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTransfersIdReversalsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                           TransferReversal)
                                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTransfersIdReversalsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/transfers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ "/reversals"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postTransfersIdReversalsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                GHC.Base.String ->
                                PostTransfersIdReversalsRequestBody ->
                                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                   m
                                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postTransfersIdReversalsRawM id
                             body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/transfers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ "/reversals"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostTransfersIdReversalsRequestBody
    = PostTransfersIdReversalsRequestBody {postTransfersIdReversalsRequestBodyAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                           postTransfersIdReversalsRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String),
                                           postTransfersIdReversalsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                           postTransfersIdReversalsRequestBodyMetadata :: (GHC.Maybe.Maybe PostTransfersIdReversalsRequestBodyMetadata'),
                                           postTransfersIdReversalsRequestBodyRefundApplicationFee :: (GHC.Maybe.Maybe GHC.Types.Bool)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostTransfersIdReversalsRequestBodyMetadata'
    = PostTransfersIdReversalsRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTransfersIdReversalsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostTransfersIdReversalsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTransfersIdReversalsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostTransfersIdReversalsRequestBodyMetadata')
instance Data.Aeson.ToJSON PostTransfersIdReversalsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postTransfersIdReversalsRequestBodyAmount obj) : (Data.Aeson..=) "description" (postTransfersIdReversalsRequestBodyDescription obj) : (Data.Aeson..=) "expand" (postTransfersIdReversalsRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postTransfersIdReversalsRequestBodyMetadata obj) : (Data.Aeson..=) "refund_application_fee" (postTransfersIdReversalsRequestBodyRefundApplicationFee obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postTransfersIdReversalsRequestBodyAmount obj) GHC.Base.<> ((Data.Aeson..=) "description" (postTransfersIdReversalsRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postTransfersIdReversalsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postTransfersIdReversalsRequestBodyMetadata obj) GHC.Base.<> (Data.Aeson..=) "refund_application_fee" (postTransfersIdReversalsRequestBodyRefundApplicationFee obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostTransfersIdReversalsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTransfersIdReversalsRequestBody" (\obj -> ((((GHC.Base.pure PostTransfersIdReversalsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_application_fee"))

data PostTransfersIdReversalsResponse
    = PostTransfersIdReversalsResponseError GHC.Base.String
    | PostTransfersIdReversalsResponse200 TransferReversal
    | PostTransfersIdReversalsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
