{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostTransfersTransferReversalsId where

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
-- POST /v1/transfers/{transfer}/reversals/{id}
postTransfersTransferReversalsId :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                  StripeAPI.Common.SecurityScheme s) =>
                                    StripeAPI.Common.Configuration s ->
                                    GHC.Base.String ->
                                    GHC.Base.String ->
                                    PostTransfersTransferReversalsIdRequestBody ->
                                    m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                          (Network.HTTP.Client.Types.Response PostTransfersTransferReversalsIdResponse))
postTransfersTransferReversalsId config
                                 id
                                 transfer
                                 body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostTransfersTransferReversalsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTransfersTransferReversalsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  TransferReversal)
                                                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTransfersTransferReversalsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack (("/v1/transfers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel transfer)) GHC.Base.++ "/reversals/")) GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postTransfersTransferReversalsIdRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                     StripeAPI.Common.SecurityScheme s) =>
                                       StripeAPI.Common.Configuration s ->
                                       GHC.Base.String ->
                                       GHC.Base.String ->
                                       PostTransfersTransferReversalsIdRequestBody ->
                                       m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                             (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postTransfersTransferReversalsIdRaw config
                                    id
                                    transfer
                                    body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack (("/v1/transfers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel transfer)) GHC.Base.++ "/reversals/")) GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postTransfersTransferReversalsIdM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                   StripeAPI.Common.SecurityScheme s) =>
                                     GHC.Base.String ->
                                     GHC.Base.String ->
                                     PostTransfersTransferReversalsIdRequestBody ->
                                     Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                        m
                                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                            (Network.HTTP.Client.Types.Response PostTransfersTransferReversalsIdResponse))
postTransfersTransferReversalsIdM id
                                  transfer
                                  body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostTransfersTransferReversalsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTransfersTransferReversalsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   TransferReversal)
                                                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTransfersTransferReversalsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack (("/v1/transfers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel transfer)) GHC.Base.++ "/reversals/")) GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postTransfersTransferReversalsIdRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                      StripeAPI.Common.SecurityScheme s) =>
                                        GHC.Base.String ->
                                        GHC.Base.String ->
                                        PostTransfersTransferReversalsIdRequestBody ->
                                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                           m
                                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postTransfersTransferReversalsIdRawM id
                                     transfer
                                     body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack (("/v1/transfers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel transfer)) GHC.Base.++ "/reversals/")) GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostTransfersTransferReversalsIdRequestBody
    = PostTransfersTransferReversalsIdRequestBody {postTransfersTransferReversalsIdRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                                   postTransfersTransferReversalsIdRequestBodyMetadata :: (GHC.Maybe.Maybe PostTransfersTransferReversalsIdRequestBodyMetadata')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostTransfersTransferReversalsIdRequestBodyMetadata'
    = PostTransfersTransferReversalsIdRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTransfersTransferReversalsIdRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostTransfersTransferReversalsIdRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTransfersTransferReversalsIdRequestBodyMetadata'" (\obj -> GHC.Base.pure PostTransfersTransferReversalsIdRequestBodyMetadata')
instance Data.Aeson.ToJSON PostTransfersTransferReversalsIdRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "expand" (postTransfersTransferReversalsIdRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postTransfersTransferReversalsIdRequestBodyMetadata obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "expand" (postTransfersTransferReversalsIdRequestBodyExpand obj) GHC.Base.<> (Data.Aeson..=) "metadata" (postTransfersTransferReversalsIdRequestBodyMetadata obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostTransfersTransferReversalsIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTransfersTransferReversalsIdRequestBody" (\obj -> (GHC.Base.pure PostTransfersTransferReversalsIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata"))

data PostTransfersTransferReversalsIdResponse
    = PostTransfersTransferReversalsIdResponseError GHC.Base.String
    | PostTransfersTransferReversalsIdResponse200 TransferReversal
    | PostTransfersTransferReversalsIdResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
