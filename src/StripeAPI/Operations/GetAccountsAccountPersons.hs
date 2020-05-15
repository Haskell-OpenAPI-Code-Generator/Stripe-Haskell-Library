{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.GetAccountsAccountPersons where

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
-- GET /v1/accounts/{account}/persons
getAccountsAccountPersons :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             StripeAPI.Common.Configuration s ->
                             GHC.Base.String ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GetAccountsAccountPersonsRequestBody ->
                             m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                   (Network.HTTP.Client.Types.Response GetAccountsAccountPersonsResponse))
getAccountsAccountPersons config
                          account
                          endingBefore
                          expand
                          limit
                          relationship
                          startingAfter
                          body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetAccountsAccountPersonsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetAccountsAccountPersonsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                             GetAccountsAccountPersonsResponseBody200)
                                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetAccountsAccountPersonsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/persons"))) ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "relationship",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> relationship) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : []))))) body StripeAPI.Common.RequestBodyEncodingFormData)
getAccountsAccountPersonsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                StripeAPI.Common.Configuration s ->
                                GHC.Base.String ->
                                GHC.Maybe.Maybe GHC.Base.String ->
                                GHC.Maybe.Maybe GHC.Base.String ->
                                GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                                GHC.Maybe.Maybe GHC.Base.String ->
                                GHC.Maybe.Maybe GHC.Base.String ->
                                GetAccountsAccountPersonsRequestBody ->
                                m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getAccountsAccountPersonsRaw config
                             account
                             endingBefore
                             expand
                             limit
                             relationship
                             startingAfter
                             body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/persons"))) ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "relationship",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> relationship) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : []))))) body StripeAPI.Common.RequestBodyEncodingFormData)
getAccountsAccountPersonsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                            StripeAPI.Common.SecurityScheme s) =>
                              GHC.Base.String ->
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GetAccountsAccountPersonsRequestBody ->
                              Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                 m
                                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                     (Network.HTTP.Client.Types.Response GetAccountsAccountPersonsResponse))
getAccountsAccountPersonsM account
                           endingBefore
                           expand
                           limit
                           relationship
                           startingAfter
                           body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetAccountsAccountPersonsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetAccountsAccountPersonsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                              GetAccountsAccountPersonsResponseBody200)
                                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetAccountsAccountPersonsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                Error)
                                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/persons"))) ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "relationship",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> relationship) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : []))))) body StripeAPI.Common.RequestBodyEncodingFormData)
getAccountsAccountPersonsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                               StripeAPI.Common.SecurityScheme s) =>
                                 GHC.Base.String ->
                                 GHC.Maybe.Maybe GHC.Base.String ->
                                 GHC.Maybe.Maybe GHC.Base.String ->
                                 GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                                 GHC.Maybe.Maybe GHC.Base.String ->
                                 GHC.Maybe.Maybe GHC.Base.String ->
                                 GetAccountsAccountPersonsRequestBody ->
                                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                    m
                                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getAccountsAccountPersonsRawM account
                              endingBefore
                              expand
                              limit
                              relationship
                              startingAfter
                              body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/persons"))) ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                            StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "relationship",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 StripeAPI.Common.stringifyModel Data.Functor.<$> relationship) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : []))))) body StripeAPI.Common.RequestBodyEncodingFormData)
data GetAccountsAccountPersonsRequestBody
    = GetAccountsAccountPersonsRequestBody {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetAccountsAccountPersonsRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetAccountsAccountPersonsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountsAccountPersonsRequestBody" (\obj -> GHC.Base.pure GetAccountsAccountPersonsRequestBody)

data GetAccountsAccountPersonsResponse
    = GetAccountsAccountPersonsResponseError GHC.Base.String
    | GetAccountsAccountPersonsResponse200 GetAccountsAccountPersonsResponseBody200
    | GetAccountsAccountPersonsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetAccountsAccountPersonsResponseBody200
    = GetAccountsAccountPersonsResponseBody200 {getAccountsAccountPersonsResponseBody200Data :: ([] Person),
                                                getAccountsAccountPersonsResponseBody200HasMore :: GHC.Types.Bool,
                                                getAccountsAccountPersonsResponseBody200Object :: GetAccountsAccountPersonsResponseBody200Object',
                                                getAccountsAccountPersonsResponseBody200Url :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetAccountsAccountPersonsResponseBody200Object'
    = GetAccountsAccountPersonsResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetAccountsAccountPersonsResponseBody200Object'EnumTyped GHC.Base.String
    | GetAccountsAccountPersonsResponseBody200Object'EnumStringList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetAccountsAccountPersonsResponseBody200Object'
    where toJSON (GetAccountsAccountPersonsResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetAccountsAccountPersonsResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetAccountsAccountPersonsResponseBody200Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"
instance Data.Aeson.FromJSON GetAccountsAccountPersonsResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
                                          then GetAccountsAccountPersonsResponseBody200Object'EnumStringList
                                          else GetAccountsAccountPersonsResponseBody200Object'EnumOther val)
instance Data.Aeson.ToJSON GetAccountsAccountPersonsResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getAccountsAccountPersonsResponseBody200Data obj) : (Data.Aeson..=) "has_more" (getAccountsAccountPersonsResponseBody200HasMore obj) : (Data.Aeson..=) "object" (getAccountsAccountPersonsResponseBody200Object obj) : (Data.Aeson..=) "url" (getAccountsAccountPersonsResponseBody200Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getAccountsAccountPersonsResponseBody200Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (getAccountsAccountPersonsResponseBody200HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (getAccountsAccountPersonsResponseBody200Object obj) GHC.Base.<> (Data.Aeson..=) "url" (getAccountsAccountPersonsResponseBody200Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetAccountsAccountPersonsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountsAccountPersonsResponseBody200" (\obj -> (((GHC.Base.pure GetAccountsAccountPersonsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
