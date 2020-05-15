{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.GetApplePayDomains where

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
-- GET /v1/apple_pay/domains
getApplePayDomains :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                    StripeAPI.Common.SecurityScheme s) =>
                      StripeAPI.Common.Configuration s ->
                      GHC.Maybe.Maybe GHC.Base.String ->
                      GHC.Maybe.Maybe GHC.Base.String ->
                      GHC.Maybe.Maybe GHC.Base.String ->
                      GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                      GHC.Maybe.Maybe GHC.Base.String ->
                      GetApplePayDomainsRequestBody ->
                      m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                            (Network.HTTP.Client.Types.Response GetApplePayDomainsResponse))
getApplePayDomains config
                   domainName
                   endingBefore
                   expand
                   limit
                   startingAfter
                   body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetApplePayDomainsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetApplePayDomainsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                        GetApplePayDomainsResponseBody200)
                                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetApplePayDomainsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/apple_pay/domains") ((Data.Text.pack "domain_name",
                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> domainName) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : []))))) body StripeAPI.Common.RequestBodyEncodingFormData)
getApplePayDomainsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                       StripeAPI.Common.SecurityScheme s) =>
                         StripeAPI.Common.Configuration s ->
                         GHC.Maybe.Maybe GHC.Base.String ->
                         GHC.Maybe.Maybe GHC.Base.String ->
                         GHC.Maybe.Maybe GHC.Base.String ->
                         GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                         GHC.Maybe.Maybe GHC.Base.String ->
                         GetApplePayDomainsRequestBody ->
                         m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getApplePayDomainsRaw config
                      domainName
                      endingBefore
                      expand
                      limit
                      startingAfter
                      body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/apple_pay/domains") ((Data.Text.pack "domain_name",
                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> domainName) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                 StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : []))))) body StripeAPI.Common.RequestBodyEncodingFormData)
getApplePayDomainsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                     StripeAPI.Common.SecurityScheme s) =>
                       GHC.Maybe.Maybe GHC.Base.String ->
                       GHC.Maybe.Maybe GHC.Base.String ->
                       GHC.Maybe.Maybe GHC.Base.String ->
                       GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                       GHC.Maybe.Maybe GHC.Base.String ->
                       GetApplePayDomainsRequestBody ->
                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                          m
                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                              (Network.HTTP.Client.Types.Response GetApplePayDomainsResponse))
getApplePayDomainsM domainName
                    endingBefore
                    expand
                    limit
                    startingAfter
                    body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetApplePayDomainsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetApplePayDomainsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                         GetApplePayDomainsResponseBody200)
                                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetApplePayDomainsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/apple_pay/domains") ((Data.Text.pack "domain_name",
                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> domainName) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : []))))) body StripeAPI.Common.RequestBodyEncodingFormData)
getApplePayDomainsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          GHC.Maybe.Maybe GHC.Base.String ->
                          GHC.Maybe.Maybe GHC.Base.String ->
                          GHC.Maybe.Maybe GHC.Base.String ->
                          GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                          GHC.Maybe.Maybe GHC.Base.String ->
                          GetApplePayDomainsRequestBody ->
                          Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                             m
                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                 (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getApplePayDomainsRawM domainName
                       endingBefore
                       expand
                       limit
                       startingAfter
                       body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/apple_pay/domains") ((Data.Text.pack "domain_name",
                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> domainName) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                            StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : []))))) body StripeAPI.Common.RequestBodyEncodingFormData)
data GetApplePayDomainsRequestBody
    = GetApplePayDomainsRequestBody {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetApplePayDomainsRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetApplePayDomainsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetApplePayDomainsRequestBody" (\obj -> GHC.Base.pure GetApplePayDomainsRequestBody)

data GetApplePayDomainsResponse
    = GetApplePayDomainsResponseError GHC.Base.String
    | GetApplePayDomainsResponse200 GetApplePayDomainsResponseBody200
    | GetApplePayDomainsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetApplePayDomainsResponseBody200
    = GetApplePayDomainsResponseBody200 {getApplePayDomainsResponseBody200Data :: ([] ApplePayDomain),
                                         getApplePayDomainsResponseBody200HasMore :: GHC.Types.Bool,
                                         getApplePayDomainsResponseBody200Object :: GetApplePayDomainsResponseBody200Object',
                                         getApplePayDomainsResponseBody200Url :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetApplePayDomainsResponseBody200Object'
    = GetApplePayDomainsResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetApplePayDomainsResponseBody200Object'EnumTyped GHC.Base.String
    | GetApplePayDomainsResponseBody200Object'EnumStringList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetApplePayDomainsResponseBody200Object'
    where toJSON (GetApplePayDomainsResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetApplePayDomainsResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetApplePayDomainsResponseBody200Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"
instance Data.Aeson.FromJSON GetApplePayDomainsResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
                                          then GetApplePayDomainsResponseBody200Object'EnumStringList
                                          else GetApplePayDomainsResponseBody200Object'EnumOther val)
instance Data.Aeson.ToJSON GetApplePayDomainsResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getApplePayDomainsResponseBody200Data obj) : (Data.Aeson..=) "has_more" (getApplePayDomainsResponseBody200HasMore obj) : (Data.Aeson..=) "object" (getApplePayDomainsResponseBody200Object obj) : (Data.Aeson..=) "url" (getApplePayDomainsResponseBody200Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getApplePayDomainsResponseBody200Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (getApplePayDomainsResponseBody200HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (getApplePayDomainsResponseBody200Object obj) GHC.Base.<> (Data.Aeson..=) "url" (getApplePayDomainsResponseBody200Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetApplePayDomainsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetApplePayDomainsResponseBody200" (\obj -> (((GHC.Base.pure GetApplePayDomainsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
