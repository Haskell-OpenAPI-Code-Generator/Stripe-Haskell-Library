{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostRecipients where

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
-- POST /v1/recipients
postRecipients :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                StripeAPI.Common.SecurityScheme s) =>
                  StripeAPI.Common.Configuration s ->
                  PostRecipientsRequestBody ->
                  m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                        (Network.HTTP.Client.Types.Response PostRecipientsResponse))
postRecipients config
               body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostRecipientsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostRecipientsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                            Recipient)
                                                                                                                                                                              | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostRecipientsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/recipients") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postRecipientsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                   StripeAPI.Common.SecurityScheme s) =>
                     StripeAPI.Common.Configuration s ->
                     PostRecipientsRequestBody ->
                     m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postRecipientsRaw config
                  body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/recipients") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postRecipientsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                 StripeAPI.Common.SecurityScheme s) =>
                   PostRecipientsRequestBody ->
                   Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                      m
                                                      (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                          (Network.HTTP.Client.Types.Response PostRecipientsResponse))
postRecipientsM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostRecipientsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostRecipientsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                             Recipient)
                                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostRecipientsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/recipients") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postRecipientsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                    StripeAPI.Common.SecurityScheme s) =>
                      PostRecipientsRequestBody ->
                      Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                         m
                                                         (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                             (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postRecipientsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/recipients") [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostRecipientsRequestBody
    = PostRecipientsRequestBody {postRecipientsRequestBodyBankAccount :: (GHC.Maybe.Maybe GHC.Base.String),
                                 postRecipientsRequestBodyCard :: (GHC.Maybe.Maybe GHC.Base.String),
                                 postRecipientsRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String),
                                 postRecipientsRequestBodyEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                                 postRecipientsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                 postRecipientsRequestBodyMetadata :: (GHC.Maybe.Maybe PostRecipientsRequestBodyMetadata'),
                                 postRecipientsRequestBodyName :: GHC.Base.String,
                                 postRecipientsRequestBodyTaxId :: (GHC.Maybe.Maybe GHC.Base.String),
                                 postRecipientsRequestBodyType :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostRecipientsRequestBodyMetadata'
    = PostRecipientsRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostRecipientsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostRecipientsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostRecipientsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostRecipientsRequestBodyMetadata')
instance Data.Aeson.ToJSON PostRecipientsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "bank_account" (postRecipientsRequestBodyBankAccount obj) : (Data.Aeson..=) "card" (postRecipientsRequestBodyCard obj) : (Data.Aeson..=) "description" (postRecipientsRequestBodyDescription obj) : (Data.Aeson..=) "email" (postRecipientsRequestBodyEmail obj) : (Data.Aeson..=) "expand" (postRecipientsRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postRecipientsRequestBodyMetadata obj) : (Data.Aeson..=) "name" (postRecipientsRequestBodyName obj) : (Data.Aeson..=) "tax_id" (postRecipientsRequestBodyTaxId obj) : (Data.Aeson..=) "type" (postRecipientsRequestBodyType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "bank_account" (postRecipientsRequestBodyBankAccount obj) GHC.Base.<> ((Data.Aeson..=) "card" (postRecipientsRequestBodyCard obj) GHC.Base.<> ((Data.Aeson..=) "description" (postRecipientsRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "email" (postRecipientsRequestBodyEmail obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postRecipientsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postRecipientsRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (postRecipientsRequestBodyName obj) GHC.Base.<> ((Data.Aeson..=) "tax_id" (postRecipientsRequestBodyTaxId obj) GHC.Base.<> (Data.Aeson..=) "type" (postRecipientsRequestBodyType obj)))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostRecipientsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostRecipientsRequestBody" (\obj -> ((((((((GHC.Base.pure PostRecipientsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))

data PostRecipientsResponse
    = PostRecipientsResponseError GHC.Base.String
    | PostRecipientsResponse200 Recipient
    | PostRecipientsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
