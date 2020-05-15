{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostTopups where

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
-- POST /v1/topups
postTopups :: forall m s . (StripeAPI.Common.MonadHTTP m,
                            StripeAPI.Common.SecurityScheme s) =>
              StripeAPI.Common.Configuration s ->
              PostTopupsRequestBody ->
              m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                    (Network.HTTP.Client.Types.Response PostTopupsResponse))
postTopups config
           body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostTopupsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTopupsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                Topup)
                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTopupsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/topups") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postTopupsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                               StripeAPI.Common.SecurityScheme s) =>
                 StripeAPI.Common.Configuration s ->
                 PostTopupsRequestBody ->
                 m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postTopupsRaw config
              body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/topups") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postTopupsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                             StripeAPI.Common.SecurityScheme s) =>
               PostTopupsRequestBody ->
               Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                  m
                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                      (Network.HTTP.Client.Types.Response PostTopupsResponse))
postTopupsM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostTopupsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTopupsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                 Topup)
                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTopupsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/topups") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postTopupsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                StripeAPI.Common.SecurityScheme s) =>
                  PostTopupsRequestBody ->
                  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                     m
                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postTopupsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/topups") [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostTopupsRequestBody
    = PostTopupsRequestBody {postTopupsRequestBodyAmount :: GHC.Integer.Type.Integer,
                             postTopupsRequestBodyCurrency :: GHC.Base.String,
                             postTopupsRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String),
                             postTopupsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                             postTopupsRequestBodyMetadata :: (GHC.Maybe.Maybe PostTopupsRequestBodyMetadata'),
                             postTopupsRequestBodySource :: (GHC.Maybe.Maybe GHC.Base.String),
                             postTopupsRequestBodyStatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String),
                             postTopupsRequestBodyTransferGroup :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostTopupsRequestBodyMetadata'
    = PostTopupsRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTopupsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostTopupsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTopupsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostTopupsRequestBodyMetadata')
instance Data.Aeson.ToJSON PostTopupsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postTopupsRequestBodyAmount obj) : (Data.Aeson..=) "currency" (postTopupsRequestBodyCurrency obj) : (Data.Aeson..=) "description" (postTopupsRequestBodyDescription obj) : (Data.Aeson..=) "expand" (postTopupsRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postTopupsRequestBodyMetadata obj) : (Data.Aeson..=) "source" (postTopupsRequestBodySource obj) : (Data.Aeson..=) "statement_descriptor" (postTopupsRequestBodyStatementDescriptor obj) : (Data.Aeson..=) "transfer_group" (postTopupsRequestBodyTransferGroup obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postTopupsRequestBodyAmount obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postTopupsRequestBodyCurrency obj) GHC.Base.<> ((Data.Aeson..=) "description" (postTopupsRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postTopupsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postTopupsRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "source" (postTopupsRequestBodySource obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor" (postTopupsRequestBodyStatementDescriptor obj) GHC.Base.<> (Data.Aeson..=) "transfer_group" (postTopupsRequestBodyTransferGroup obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostTopupsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTopupsRequestBody" (\obj -> (((((((GHC.Base.pure PostTopupsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transfer_group"))

data PostTopupsResponse
    = PostTopupsResponseError GHC.Base.String
    | PostTopupsResponse200 Topup
    | PostTopupsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
