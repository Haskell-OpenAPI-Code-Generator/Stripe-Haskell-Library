{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostFileLinks where

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
-- POST /v1/file_links
postFileLinks :: forall m s . (StripeAPI.Common.MonadHTTP m,
                               StripeAPI.Common.SecurityScheme s) =>
                 StripeAPI.Common.Configuration s ->
                 PostFileLinksRequestBody ->
                 m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                       (Network.HTTP.Client.Types.Response PostFileLinksResponse))
postFileLinks config
              body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostFileLinksResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostFileLinksResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                         FileLink)
                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostFileLinksResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/file_links") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postFileLinksRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                  StripeAPI.Common.SecurityScheme s) =>
                    StripeAPI.Common.Configuration s ->
                    PostFileLinksRequestBody ->
                    m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postFileLinksRaw config
                 body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/file_links") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postFileLinksM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                StripeAPI.Common.SecurityScheme s) =>
                  PostFileLinksRequestBody ->
                  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                     m
                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                         (Network.HTTP.Client.Types.Response PostFileLinksResponse))
postFileLinksM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostFileLinksResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostFileLinksResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                          FileLink)
                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostFileLinksResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/file_links") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postFileLinksRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                   StripeAPI.Common.SecurityScheme s) =>
                     PostFileLinksRequestBody ->
                     Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                        m
                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postFileLinksRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/file_links") [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostFileLinksRequestBody
    = PostFileLinksRequestBody {postFileLinksRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                postFileLinksRequestBodyExpiresAt :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                postFileLinksRequestBodyFile :: GHC.Base.String,
                                postFileLinksRequestBodyMetadata :: (GHC.Maybe.Maybe PostFileLinksRequestBodyMetadata')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostFileLinksRequestBodyMetadata'
    = PostFileLinksRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFileLinksRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostFileLinksRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFileLinksRequestBodyMetadata'" (\obj -> GHC.Base.pure PostFileLinksRequestBodyMetadata')
instance Data.Aeson.ToJSON PostFileLinksRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "expand" (postFileLinksRequestBodyExpand obj) : (Data.Aeson..=) "expires_at" (postFileLinksRequestBodyExpiresAt obj) : (Data.Aeson..=) "file" (postFileLinksRequestBodyFile obj) : (Data.Aeson..=) "metadata" (postFileLinksRequestBodyMetadata obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "expand" (postFileLinksRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "expires_at" (postFileLinksRequestBodyExpiresAt obj) GHC.Base.<> ((Data.Aeson..=) "file" (postFileLinksRequestBodyFile obj) GHC.Base.<> (Data.Aeson..=) "metadata" (postFileLinksRequestBodyMetadata obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostFileLinksRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFileLinksRequestBody" (\obj -> (((GHC.Base.pure PostFileLinksRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expires_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "file")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata"))

data PostFileLinksResponse
    = PostFileLinksResponseError GHC.Base.String
    | PostFileLinksResponse200 FileLink
    | PostFileLinksResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
