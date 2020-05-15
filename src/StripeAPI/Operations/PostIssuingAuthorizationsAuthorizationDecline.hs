{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostIssuingAuthorizationsAuthorizationDecline where

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
-- POST /v1/issuing/authorizations/{authorization}/decline
postIssuingAuthorizationsAuthorizationDecline :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                               StripeAPI.Common.SecurityScheme s) =>
                                                 StripeAPI.Common.Configuration s ->
                                                 GHC.Base.String ->
                                                 PostIssuingAuthorizationsAuthorizationDeclineRequestBody ->
                                                 m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                       (Network.HTTP.Client.Types.Response PostIssuingAuthorizationsAuthorizationDeclineResponse))
postIssuingAuthorizationsAuthorizationDecline config
                                              authorization
                                              body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostIssuingAuthorizationsAuthorizationDeclineResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostIssuingAuthorizationsAuthorizationDeclineResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         Issuing'authorization)
                                                                                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostIssuingAuthorizationsAuthorizationDeclineResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/issuing/authorizations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel authorization)) GHC.Base.++ "/decline"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postIssuingAuthorizationsAuthorizationDeclineRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                  StripeAPI.Common.SecurityScheme s) =>
                                                    StripeAPI.Common.Configuration s ->
                                                    GHC.Base.String ->
                                                    PostIssuingAuthorizationsAuthorizationDeclineRequestBody ->
                                                    m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postIssuingAuthorizationsAuthorizationDeclineRaw config
                                                 authorization
                                                 body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/issuing/authorizations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel authorization)) GHC.Base.++ "/decline"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postIssuingAuthorizationsAuthorizationDeclineM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                StripeAPI.Common.SecurityScheme s) =>
                                                  GHC.Base.String ->
                                                  PostIssuingAuthorizationsAuthorizationDeclineRequestBody ->
                                                  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                     m
                                                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                         (Network.HTTP.Client.Types.Response PostIssuingAuthorizationsAuthorizationDeclineResponse))
postIssuingAuthorizationsAuthorizationDeclineM authorization
                                               body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostIssuingAuthorizationsAuthorizationDeclineResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostIssuingAuthorizationsAuthorizationDeclineResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          Issuing'authorization)
                                                                                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostIssuingAuthorizationsAuthorizationDeclineResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/issuing/authorizations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel authorization)) GHC.Base.++ "/decline"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postIssuingAuthorizationsAuthorizationDeclineRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                   StripeAPI.Common.SecurityScheme s) =>
                                                     GHC.Base.String ->
                                                     PostIssuingAuthorizationsAuthorizationDeclineRequestBody ->
                                                     Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                        m
                                                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postIssuingAuthorizationsAuthorizationDeclineRawM authorization
                                                  body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/issuing/authorizations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel authorization)) GHC.Base.++ "/decline"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostIssuingAuthorizationsAuthorizationDeclineRequestBody
    = PostIssuingAuthorizationsAuthorizationDeclineRequestBody {postIssuingAuthorizationsAuthorizationDeclineRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                                                postIssuingAuthorizationsAuthorizationDeclineRequestBodyMetadata :: (GHC.Maybe.Maybe PostIssuingAuthorizationsAuthorizationDeclineRequestBodyMetadata'Variants)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostIssuingAuthorizationsAuthorizationDeclineRequestBodyMetadata'OneOf1
    = PostIssuingAuthorizationsAuthorizationDeclineRequestBodyMetadata'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostIssuingAuthorizationsAuthorizationDeclineRequestBodyMetadata'OneOf1EnumTyped GHC.Base.String
    | PostIssuingAuthorizationsAuthorizationDeclineRequestBodyMetadata'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostIssuingAuthorizationsAuthorizationDeclineRequestBodyMetadata'OneOf1
    where toJSON (PostIssuingAuthorizationsAuthorizationDeclineRequestBodyMetadata'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostIssuingAuthorizationsAuthorizationDeclineRequestBodyMetadata'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostIssuingAuthorizationsAuthorizationDeclineRequestBodyMetadata'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostIssuingAuthorizationsAuthorizationDeclineRequestBodyMetadata'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostIssuingAuthorizationsAuthorizationDeclineRequestBodyMetadata'OneOf1EnumString_
                                          else PostIssuingAuthorizationsAuthorizationDeclineRequestBodyMetadata'OneOf1EnumOther val)
data PostIssuingAuthorizationsAuthorizationDeclineRequestBodyMetadata'OneOf2
    = PostIssuingAuthorizationsAuthorizationDeclineRequestBodyMetadata'OneOf2 {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostIssuingAuthorizationsAuthorizationDeclineRequestBodyMetadata'OneOf2
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostIssuingAuthorizationsAuthorizationDeclineRequestBodyMetadata'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostIssuingAuthorizationsAuthorizationDeclineRequestBodyMetadata'OneOf2" (\obj -> GHC.Base.pure PostIssuingAuthorizationsAuthorizationDeclineRequestBodyMetadata'OneOf2)
data PostIssuingAuthorizationsAuthorizationDeclineRequestBodyMetadata'Variants
    = PostIssuingAuthorizationsAuthorizationDeclineRequestBodyMetadata'Variant1 PostIssuingAuthorizationsAuthorizationDeclineRequestBodyMetadata'OneOf1
    | PostIssuingAuthorizationsAuthorizationDeclineRequestBodyMetadata'Variant2 PostIssuingAuthorizationsAuthorizationDeclineRequestBodyMetadata'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostIssuingAuthorizationsAuthorizationDeclineRequestBodyMetadata'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostIssuingAuthorizationsAuthorizationDeclineRequestBodyMetadata'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostIssuingAuthorizationsAuthorizationDeclineRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "expand" (postIssuingAuthorizationsAuthorizationDeclineRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postIssuingAuthorizationsAuthorizationDeclineRequestBodyMetadata obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "expand" (postIssuingAuthorizationsAuthorizationDeclineRequestBodyExpand obj) GHC.Base.<> (Data.Aeson..=) "metadata" (postIssuingAuthorizationsAuthorizationDeclineRequestBodyMetadata obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostIssuingAuthorizationsAuthorizationDeclineRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostIssuingAuthorizationsAuthorizationDeclineRequestBody" (\obj -> (GHC.Base.pure PostIssuingAuthorizationsAuthorizationDeclineRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata"))

data PostIssuingAuthorizationsAuthorizationDeclineResponse
    = PostIssuingAuthorizationsAuthorizationDeclineResponseError GHC.Base.String
    | PostIssuingAuthorizationsAuthorizationDeclineResponse200 Issuing'authorization
    | PostIssuingAuthorizationsAuthorizationDeclineResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
