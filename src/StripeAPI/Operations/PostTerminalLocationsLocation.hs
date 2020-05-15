{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostTerminalLocationsLocation where

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
-- POST /v1/terminal/locations/{location}
postTerminalLocationsLocation :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                               StripeAPI.Common.SecurityScheme s) =>
                                 StripeAPI.Common.Configuration s ->
                                 GHC.Base.String ->
                                 PostTerminalLocationsLocationRequestBody ->
                                 m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                       (Network.HTTP.Client.Types.Response PostTerminalLocationsLocationResponse))
postTerminalLocationsLocation config
                              location
                              body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostTerminalLocationsLocationResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTerminalLocationsLocationResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                         Terminal'location)
                                                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTerminalLocationsLocationResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/terminal/locations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel location)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postTerminalLocationsLocationRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                  StripeAPI.Common.SecurityScheme s) =>
                                    StripeAPI.Common.Configuration s ->
                                    GHC.Base.String ->
                                    PostTerminalLocationsLocationRequestBody ->
                                    m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postTerminalLocationsLocationRaw config
                                 location
                                 body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/terminal/locations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel location)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postTerminalLocationsLocationM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                StripeAPI.Common.SecurityScheme s) =>
                                  GHC.Base.String ->
                                  PostTerminalLocationsLocationRequestBody ->
                                  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                     m
                                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                         (Network.HTTP.Client.Types.Response PostTerminalLocationsLocationResponse))
postTerminalLocationsLocationM location
                               body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostTerminalLocationsLocationResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTerminalLocationsLocationResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          Terminal'location)
                                                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTerminalLocationsLocationResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/terminal/locations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel location)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postTerminalLocationsLocationRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                   StripeAPI.Common.SecurityScheme s) =>
                                     GHC.Base.String ->
                                     PostTerminalLocationsLocationRequestBody ->
                                     Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                        m
                                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postTerminalLocationsLocationRawM location
                                  body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/terminal/locations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel location)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostTerminalLocationsLocationRequestBody
    = PostTerminalLocationsLocationRequestBody {postTerminalLocationsLocationRequestBodyAddress :: (GHC.Maybe.Maybe PostTerminalLocationsLocationRequestBodyAddress'),
                                                postTerminalLocationsLocationRequestBodyDisplayName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postTerminalLocationsLocationRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                                postTerminalLocationsLocationRequestBodyMetadata :: (GHC.Maybe.Maybe PostTerminalLocationsLocationRequestBodyMetadata')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostTerminalLocationsLocationRequestBodyAddress'
    = PostTerminalLocationsLocationRequestBodyAddress' {postTerminalLocationsLocationRequestBodyAddress'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postTerminalLocationsLocationRequestBodyAddress'Country :: GHC.Base.String,
                                                        postTerminalLocationsLocationRequestBodyAddress'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postTerminalLocationsLocationRequestBodyAddress'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postTerminalLocationsLocationRequestBodyAddress'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postTerminalLocationsLocationRequestBodyAddress'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTerminalLocationsLocationRequestBodyAddress'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postTerminalLocationsLocationRequestBodyAddress'City obj) : (Data.Aeson..=) "country" (postTerminalLocationsLocationRequestBodyAddress'Country obj) : (Data.Aeson..=) "line1" (postTerminalLocationsLocationRequestBodyAddress'Line1 obj) : (Data.Aeson..=) "line2" (postTerminalLocationsLocationRequestBodyAddress'Line2 obj) : (Data.Aeson..=) "postal_code" (postTerminalLocationsLocationRequestBodyAddress'PostalCode obj) : (Data.Aeson..=) "state" (postTerminalLocationsLocationRequestBodyAddress'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postTerminalLocationsLocationRequestBodyAddress'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postTerminalLocationsLocationRequestBodyAddress'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postTerminalLocationsLocationRequestBodyAddress'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postTerminalLocationsLocationRequestBodyAddress'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postTerminalLocationsLocationRequestBodyAddress'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postTerminalLocationsLocationRequestBodyAddress'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostTerminalLocationsLocationRequestBodyAddress'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTerminalLocationsLocationRequestBodyAddress'" (\obj -> (((((GHC.Base.pure PostTerminalLocationsLocationRequestBodyAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
data PostTerminalLocationsLocationRequestBodyMetadata'
    = PostTerminalLocationsLocationRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTerminalLocationsLocationRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostTerminalLocationsLocationRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTerminalLocationsLocationRequestBodyMetadata'" (\obj -> GHC.Base.pure PostTerminalLocationsLocationRequestBodyMetadata')
instance Data.Aeson.ToJSON PostTerminalLocationsLocationRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postTerminalLocationsLocationRequestBodyAddress obj) : (Data.Aeson..=) "display_name" (postTerminalLocationsLocationRequestBodyDisplayName obj) : (Data.Aeson..=) "expand" (postTerminalLocationsLocationRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postTerminalLocationsLocationRequestBodyMetadata obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postTerminalLocationsLocationRequestBodyAddress obj) GHC.Base.<> ((Data.Aeson..=) "display_name" (postTerminalLocationsLocationRequestBodyDisplayName obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postTerminalLocationsLocationRequestBodyExpand obj) GHC.Base.<> (Data.Aeson..=) "metadata" (postTerminalLocationsLocationRequestBodyMetadata obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostTerminalLocationsLocationRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTerminalLocationsLocationRequestBody" (\obj -> (((GHC.Base.pure PostTerminalLocationsLocationRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "display_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata"))

data PostTerminalLocationsLocationResponse
    = PostTerminalLocationsLocationResponseError GHC.Base.String
    | PostTerminalLocationsLocationResponse200 Terminal'location
    | PostTerminalLocationsLocationResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
