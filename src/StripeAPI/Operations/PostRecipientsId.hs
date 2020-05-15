{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostRecipientsId where

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
-- POST /v1/recipients/{id}
postRecipientsId :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                  StripeAPI.Common.SecurityScheme s) =>
                    StripeAPI.Common.Configuration s ->
                    GHC.Base.String ->
                    PostRecipientsIdRequestBody ->
                    m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                          (Network.HTTP.Client.Types.Response PostRecipientsIdResponse))
postRecipientsId config
                 id
                 body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostRecipientsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostRecipientsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                  Recipient)
                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostRecipientsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/recipients/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postRecipientsIdRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                     StripeAPI.Common.SecurityScheme s) =>
                       StripeAPI.Common.Configuration s ->
                       GHC.Base.String ->
                       PostRecipientsIdRequestBody ->
                       m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                             (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postRecipientsIdRaw config
                    id
                    body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/recipients/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postRecipientsIdM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                   StripeAPI.Common.SecurityScheme s) =>
                     GHC.Base.String ->
                     PostRecipientsIdRequestBody ->
                     Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                        m
                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                            (Network.HTTP.Client.Types.Response PostRecipientsIdResponse))
postRecipientsIdM id
                  body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostRecipientsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostRecipientsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                   Recipient)
                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostRecipientsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/recipients/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postRecipientsIdRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        GHC.Base.String ->
                        PostRecipientsIdRequestBody ->
                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                           m
                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postRecipientsIdRawM id
                     body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/recipients/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostRecipientsIdRequestBody
    = PostRecipientsIdRequestBody {postRecipientsIdRequestBodyBankAccount :: (GHC.Maybe.Maybe GHC.Base.String),
                                   postRecipientsIdRequestBodyCard :: (GHC.Maybe.Maybe GHC.Base.String),
                                   postRecipientsIdRequestBodyDefaultCard :: (GHC.Maybe.Maybe GHC.Base.String),
                                   postRecipientsIdRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String),
                                   postRecipientsIdRequestBodyEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                                   postRecipientsIdRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                   postRecipientsIdRequestBodyMetadata :: (GHC.Maybe.Maybe PostRecipientsIdRequestBodyMetadata'),
                                   postRecipientsIdRequestBodyName :: (GHC.Maybe.Maybe GHC.Base.String),
                                   postRecipientsIdRequestBodyTaxId :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostRecipientsIdRequestBodyMetadata'
    = PostRecipientsIdRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostRecipientsIdRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostRecipientsIdRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostRecipientsIdRequestBodyMetadata'" (\obj -> GHC.Base.pure PostRecipientsIdRequestBodyMetadata')
instance Data.Aeson.ToJSON PostRecipientsIdRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "bank_account" (postRecipientsIdRequestBodyBankAccount obj) : (Data.Aeson..=) "card" (postRecipientsIdRequestBodyCard obj) : (Data.Aeson..=) "default_card" (postRecipientsIdRequestBodyDefaultCard obj) : (Data.Aeson..=) "description" (postRecipientsIdRequestBodyDescription obj) : (Data.Aeson..=) "email" (postRecipientsIdRequestBodyEmail obj) : (Data.Aeson..=) "expand" (postRecipientsIdRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postRecipientsIdRequestBodyMetadata obj) : (Data.Aeson..=) "name" (postRecipientsIdRequestBodyName obj) : (Data.Aeson..=) "tax_id" (postRecipientsIdRequestBodyTaxId obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "bank_account" (postRecipientsIdRequestBodyBankAccount obj) GHC.Base.<> ((Data.Aeson..=) "card" (postRecipientsIdRequestBodyCard obj) GHC.Base.<> ((Data.Aeson..=) "default_card" (postRecipientsIdRequestBodyDefaultCard obj) GHC.Base.<> ((Data.Aeson..=) "description" (postRecipientsIdRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "email" (postRecipientsIdRequestBodyEmail obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postRecipientsIdRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postRecipientsIdRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (postRecipientsIdRequestBodyName obj) GHC.Base.<> (Data.Aeson..=) "tax_id" (postRecipientsIdRequestBodyTaxId obj)))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostRecipientsIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostRecipientsIdRequestBody" (\obj -> ((((((((GHC.Base.pure PostRecipientsIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_id"))

data PostRecipientsIdResponse
    = PostRecipientsIdResponseError GHC.Base.String
    | PostRecipientsIdResponse200 Recipient
    | PostRecipientsIdResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
