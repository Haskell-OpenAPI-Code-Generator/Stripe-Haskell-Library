{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostRadarValueListsValueList where

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
-- POST /v1/radar/value_lists/{value_list}
postRadarValueListsValueList :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                StripeAPI.Common.Configuration s ->
                                GHC.Base.String ->
                                PostRadarValueListsValueListRequestBody ->
                                m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                      (Network.HTTP.Client.Types.Response PostRadarValueListsValueListResponse))
postRadarValueListsValueList config
                             valueList
                             body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostRadarValueListsValueListResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostRadarValueListsValueListResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      Radar'valueList)
                                                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostRadarValueListsValueListResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/radar/value_lists/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel valueList)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postRadarValueListsValueListRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                 StripeAPI.Common.SecurityScheme s) =>
                                   StripeAPI.Common.Configuration s ->
                                   GHC.Base.String ->
                                   PostRadarValueListsValueListRequestBody ->
                                   m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postRadarValueListsValueListRaw config
                                valueList
                                body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/radar/value_lists/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel valueList)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postRadarValueListsValueListM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                               StripeAPI.Common.SecurityScheme s) =>
                                 GHC.Base.String ->
                                 PostRadarValueListsValueListRequestBody ->
                                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                    m
                                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                        (Network.HTTP.Client.Types.Response PostRadarValueListsValueListResponse))
postRadarValueListsValueListM valueList
                              body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostRadarValueListsValueListResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostRadarValueListsValueListResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                       Radar'valueList)
                                                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostRadarValueListsValueListResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/radar/value_lists/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel valueList)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postRadarValueListsValueListRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                  StripeAPI.Common.SecurityScheme s) =>
                                    GHC.Base.String ->
                                    PostRadarValueListsValueListRequestBody ->
                                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                       m
                                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postRadarValueListsValueListRawM valueList
                                 body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/radar/value_lists/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel valueList)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostRadarValueListsValueListRequestBody
    = PostRadarValueListsValueListRequestBody {postRadarValueListsValueListRequestBodyAlias :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postRadarValueListsValueListRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                               postRadarValueListsValueListRequestBodyMetadata :: (GHC.Maybe.Maybe PostRadarValueListsValueListRequestBodyMetadata'),
                                               postRadarValueListsValueListRequestBodyName :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostRadarValueListsValueListRequestBodyMetadata'
    = PostRadarValueListsValueListRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostRadarValueListsValueListRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostRadarValueListsValueListRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostRadarValueListsValueListRequestBodyMetadata'" (\obj -> GHC.Base.pure PostRadarValueListsValueListRequestBodyMetadata')
instance Data.Aeson.ToJSON PostRadarValueListsValueListRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "alias" (postRadarValueListsValueListRequestBodyAlias obj) : (Data.Aeson..=) "expand" (postRadarValueListsValueListRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postRadarValueListsValueListRequestBodyMetadata obj) : (Data.Aeson..=) "name" (postRadarValueListsValueListRequestBodyName obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "alias" (postRadarValueListsValueListRequestBodyAlias obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postRadarValueListsValueListRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postRadarValueListsValueListRequestBodyMetadata obj) GHC.Base.<> (Data.Aeson..=) "name" (postRadarValueListsValueListRequestBodyName obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostRadarValueListsValueListRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostRadarValueListsValueListRequestBody" (\obj -> (((GHC.Base.pure PostRadarValueListsValueListRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "alias")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name"))

data PostRadarValueListsValueListResponse
    = PostRadarValueListsValueListResponseError GHC.Base.String
    | PostRadarValueListsValueListResponse200 Radar'valueList
    | PostRadarValueListsValueListResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
