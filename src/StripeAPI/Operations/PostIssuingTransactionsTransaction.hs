{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostIssuingTransactionsTransaction where

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
-- POST /v1/issuing/transactions/{transaction}
postIssuingTransactionsTransaction :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                    StripeAPI.Common.SecurityScheme s) =>
                                      StripeAPI.Common.Configuration s ->
                                      GHC.Base.String ->
                                      PostIssuingTransactionsTransactionRequestBody ->
                                      m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                            (Network.HTTP.Client.Types.Response PostIssuingTransactionsTransactionResponse))
postIssuingTransactionsTransaction config
                                   transaction
                                   body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostIssuingTransactionsTransactionResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostIssuingTransactionsTransactionResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        Issuing'transaction)
                                                                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostIssuingTransactionsTransactionResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/issuing/transactions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel transaction)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postIssuingTransactionsTransactionRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                       StripeAPI.Common.SecurityScheme s) =>
                                         StripeAPI.Common.Configuration s ->
                                         GHC.Base.String ->
                                         PostIssuingTransactionsTransactionRequestBody ->
                                         m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postIssuingTransactionsTransactionRaw config
                                      transaction
                                      body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/issuing/transactions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel transaction)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postIssuingTransactionsTransactionM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                     StripeAPI.Common.SecurityScheme s) =>
                                       GHC.Base.String ->
                                       PostIssuingTransactionsTransactionRequestBody ->
                                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                          m
                                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                              (Network.HTTP.Client.Types.Response PostIssuingTransactionsTransactionResponse))
postIssuingTransactionsTransactionM transaction
                                    body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostIssuingTransactionsTransactionResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostIssuingTransactionsTransactionResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         Issuing'transaction)
                                                                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostIssuingTransactionsTransactionResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/issuing/transactions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel transaction)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postIssuingTransactionsTransactionRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                        StripeAPI.Common.SecurityScheme s) =>
                                          GHC.Base.String ->
                                          PostIssuingTransactionsTransactionRequestBody ->
                                          Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                             m
                                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                 (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postIssuingTransactionsTransactionRawM transaction
                                       body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/issuing/transactions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel transaction)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostIssuingTransactionsTransactionRequestBody
    = PostIssuingTransactionsTransactionRequestBody {postIssuingTransactionsTransactionRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                                     postIssuingTransactionsTransactionRequestBodyMetadata :: (GHC.Maybe.Maybe PostIssuingTransactionsTransactionRequestBodyMetadata'Variants)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostIssuingTransactionsTransactionRequestBodyMetadata'OneOf1
    = PostIssuingTransactionsTransactionRequestBodyMetadata'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostIssuingTransactionsTransactionRequestBodyMetadata'OneOf1EnumTyped GHC.Base.String
    | PostIssuingTransactionsTransactionRequestBodyMetadata'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostIssuingTransactionsTransactionRequestBodyMetadata'OneOf1
    where toJSON (PostIssuingTransactionsTransactionRequestBodyMetadata'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostIssuingTransactionsTransactionRequestBodyMetadata'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostIssuingTransactionsTransactionRequestBodyMetadata'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostIssuingTransactionsTransactionRequestBodyMetadata'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostIssuingTransactionsTransactionRequestBodyMetadata'OneOf1EnumString_
                                          else PostIssuingTransactionsTransactionRequestBodyMetadata'OneOf1EnumOther val)
data PostIssuingTransactionsTransactionRequestBodyMetadata'OneOf2
    = PostIssuingTransactionsTransactionRequestBodyMetadata'OneOf2 {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostIssuingTransactionsTransactionRequestBodyMetadata'OneOf2
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostIssuingTransactionsTransactionRequestBodyMetadata'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostIssuingTransactionsTransactionRequestBodyMetadata'OneOf2" (\obj -> GHC.Base.pure PostIssuingTransactionsTransactionRequestBodyMetadata'OneOf2)
data PostIssuingTransactionsTransactionRequestBodyMetadata'Variants
    = PostIssuingTransactionsTransactionRequestBodyMetadata'Variant1 PostIssuingTransactionsTransactionRequestBodyMetadata'OneOf1
    | PostIssuingTransactionsTransactionRequestBodyMetadata'Variant2 PostIssuingTransactionsTransactionRequestBodyMetadata'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostIssuingTransactionsTransactionRequestBodyMetadata'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostIssuingTransactionsTransactionRequestBodyMetadata'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostIssuingTransactionsTransactionRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "expand" (postIssuingTransactionsTransactionRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postIssuingTransactionsTransactionRequestBodyMetadata obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "expand" (postIssuingTransactionsTransactionRequestBodyExpand obj) GHC.Base.<> (Data.Aeson..=) "metadata" (postIssuingTransactionsTransactionRequestBodyMetadata obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostIssuingTransactionsTransactionRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostIssuingTransactionsTransactionRequestBody" (\obj -> (GHC.Base.pure PostIssuingTransactionsTransactionRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata"))

data PostIssuingTransactionsTransactionResponse
    = PostIssuingTransactionsTransactionResponseError GHC.Base.String
    | PostIssuingTransactionsTransactionResponse200 Issuing'transaction
    | PostIssuingTransactionsTransactionResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
