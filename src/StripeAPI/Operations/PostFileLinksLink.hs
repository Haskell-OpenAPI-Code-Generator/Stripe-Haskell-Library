{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostFileLinksLink where

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
-- POST /v1/file_links/{link}
postFileLinksLink :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                   StripeAPI.Common.SecurityScheme s) =>
                     StripeAPI.Common.Configuration s ->
                     GHC.Base.String ->
                     PostFileLinksLinkRequestBody ->
                     m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                           (Network.HTTP.Client.Types.Response PostFileLinksLinkResponse))
postFileLinksLink config
                  link
                  body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostFileLinksLinkResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostFileLinksLinkResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                     FileLink)
                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostFileLinksLinkResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/file_links/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel link)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postFileLinksLinkRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        StripeAPI.Common.Configuration s ->
                        GHC.Base.String ->
                        PostFileLinksLinkRequestBody ->
                        m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postFileLinksLinkRaw config
                     link
                     body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/file_links/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel link)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postFileLinksLinkM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                    StripeAPI.Common.SecurityScheme s) =>
                      GHC.Base.String ->
                      PostFileLinksLinkRequestBody ->
                      Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                         m
                                                         (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                             (Network.HTTP.Client.Types.Response PostFileLinksLinkResponse))
postFileLinksLinkM link
                   body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostFileLinksLinkResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostFileLinksLinkResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                      FileLink)
                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostFileLinksLinkResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/file_links/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel link)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postFileLinksLinkRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                       StripeAPI.Common.SecurityScheme s) =>
                         GHC.Base.String ->
                         PostFileLinksLinkRequestBody ->
                         Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                            m
                                                            (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postFileLinksLinkRawM link
                      body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/file_links/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel link)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostFileLinksLinkRequestBody
    = PostFileLinksLinkRequestBody {postFileLinksLinkRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                    postFileLinksLinkRequestBodyExpiresAt :: (GHC.Maybe.Maybe PostFileLinksLinkRequestBodyExpiresAt'Variants),
                                    postFileLinksLinkRequestBodyMetadata :: (GHC.Maybe.Maybe PostFileLinksLinkRequestBodyMetadata')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostFileLinksLinkRequestBodyExpiresAt'OneOf1
    = PostFileLinksLinkRequestBodyExpiresAt'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostFileLinksLinkRequestBodyExpiresAt'OneOf1EnumTyped GHC.Base.String
    | PostFileLinksLinkRequestBodyExpiresAt'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFileLinksLinkRequestBodyExpiresAt'OneOf1
    where toJSON (PostFileLinksLinkRequestBodyExpiresAt'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostFileLinksLinkRequestBodyExpiresAt'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostFileLinksLinkRequestBodyExpiresAt'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostFileLinksLinkRequestBodyExpiresAt'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostFileLinksLinkRequestBodyExpiresAt'OneOf1EnumString_
                                          else PostFileLinksLinkRequestBodyExpiresAt'OneOf1EnumOther val)
data PostFileLinksLinkRequestBodyExpiresAt'OneOf2
    = PostFileLinksLinkRequestBodyExpiresAt'OneOf2EnumOther Data.Aeson.Types.Internal.Value
    | PostFileLinksLinkRequestBodyExpiresAt'OneOf2EnumTyped GHC.Base.String
    | PostFileLinksLinkRequestBodyExpiresAt'OneOf2EnumStringNow
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFileLinksLinkRequestBodyExpiresAt'OneOf2
    where toJSON (PostFileLinksLinkRequestBodyExpiresAt'OneOf2EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostFileLinksLinkRequestBodyExpiresAt'OneOf2EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostFileLinksLinkRequestBodyExpiresAt'OneOf2EnumStringNow) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now"
instance Data.Aeson.FromJSON PostFileLinksLinkRequestBodyExpiresAt'OneOf2
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now")
                                          then PostFileLinksLinkRequestBodyExpiresAt'OneOf2EnumStringNow
                                          else PostFileLinksLinkRequestBodyExpiresAt'OneOf2EnumOther val)
data PostFileLinksLinkRequestBodyExpiresAt'Variants
    = PostFileLinksLinkRequestBodyExpiresAt'Variant1 PostFileLinksLinkRequestBodyExpiresAt'OneOf1
    | PostFileLinksLinkRequestBodyExpiresAt'Variant2 PostFileLinksLinkRequestBodyExpiresAt'OneOf2
    | PostFileLinksLinkRequestBodyExpiresAt'Variant3 GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostFileLinksLinkRequestBodyExpiresAt'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostFileLinksLinkRequestBodyExpiresAt'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostFileLinksLinkRequestBodyMetadata'
    = PostFileLinksLinkRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFileLinksLinkRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostFileLinksLinkRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFileLinksLinkRequestBodyMetadata'" (\obj -> GHC.Base.pure PostFileLinksLinkRequestBodyMetadata')
instance Data.Aeson.ToJSON PostFileLinksLinkRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "expand" (postFileLinksLinkRequestBodyExpand obj) : (Data.Aeson..=) "expires_at" (postFileLinksLinkRequestBodyExpiresAt obj) : (Data.Aeson..=) "metadata" (postFileLinksLinkRequestBodyMetadata obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "expand" (postFileLinksLinkRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "expires_at" (postFileLinksLinkRequestBodyExpiresAt obj) GHC.Base.<> (Data.Aeson..=) "metadata" (postFileLinksLinkRequestBodyMetadata obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostFileLinksLinkRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFileLinksLinkRequestBody" (\obj -> ((GHC.Base.pure PostFileLinksLinkRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expires_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata"))

data PostFileLinksLinkResponse
    = PostFileLinksLinkResponseError GHC.Base.String
    | PostFileLinksLinkResponse200 FileLink
    | PostFileLinksLinkResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
