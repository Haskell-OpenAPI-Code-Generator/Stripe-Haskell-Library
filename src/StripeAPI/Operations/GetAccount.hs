{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.GetAccount where

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
-- GET /v1/account
getAccount :: forall m s . (StripeAPI.Common.MonadHTTP m,
                            StripeAPI.Common.SecurityScheme s) =>
              StripeAPI.Common.Configuration s ->
              GHC.Maybe.Maybe GHC.Base.String ->
              GetAccountRequestBody ->
              m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                    (Network.HTTP.Client.Types.Response GetAccountResponse))
getAccount config
           expand
           body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetAccountResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetAccountResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                Account)
                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetAccountResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/account") ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
getAccountRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                               StripeAPI.Common.SecurityScheme s) =>
                 StripeAPI.Common.Configuration s ->
                 GHC.Maybe.Maybe GHC.Base.String ->
                 GetAccountRequestBody ->
                 m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getAccountRaw config
              expand
              body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/account") ((Data.Text.pack "expand",
                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
getAccountM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                             StripeAPI.Common.SecurityScheme s) =>
               GHC.Maybe.Maybe GHC.Base.String ->
               GetAccountRequestBody ->
               Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                  m
                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                      (Network.HTTP.Client.Types.Response GetAccountResponse))
getAccountM expand
            body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetAccountResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetAccountResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                 Account)
                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetAccountResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/account") ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
getAccountRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                StripeAPI.Common.SecurityScheme s) =>
                  GHC.Maybe.Maybe GHC.Base.String ->
                  GetAccountRequestBody ->
                  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                     m
                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getAccountRawM expand
               body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/account") ((Data.Text.pack "expand",
                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
data GetAccountRequestBody
    = GetAccountRequestBody {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetAccountRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetAccountRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountRequestBody" (\obj -> GHC.Base.pure GetAccountRequestBody)

data GetAccountResponse
    = GetAccountResponseError GHC.Base.String
    | GetAccountResponse200 Account
    | GetAccountResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)