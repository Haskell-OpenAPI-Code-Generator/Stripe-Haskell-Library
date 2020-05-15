{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostApplePayDomains where

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
-- POST /v1/apple_pay/domains
postApplePayDomains :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                     StripeAPI.Common.SecurityScheme s) =>
                       StripeAPI.Common.Configuration s ->
                       PostApplePayDomainsRequestBody ->
                       m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                             (Network.HTTP.Client.Types.Response PostApplePayDomainsResponse))
postApplePayDomains config
                    body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostApplePayDomainsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostApplePayDomainsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                           ApplePayDomain)
                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostApplePayDomainsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/apple_pay/domains") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postApplePayDomainsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          StripeAPI.Common.Configuration s ->
                          PostApplePayDomainsRequestBody ->
                          m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postApplePayDomainsRaw config
                       body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/apple_pay/domains") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postApplePayDomainsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        PostApplePayDomainsRequestBody ->
                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                           m
                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response PostApplePayDomainsResponse))
postApplePayDomainsM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostApplePayDomainsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostApplePayDomainsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                            ApplePayDomain)
                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostApplePayDomainsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/apple_pay/domains") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postApplePayDomainsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                         StripeAPI.Common.SecurityScheme s) =>
                           PostApplePayDomainsRequestBody ->
                           Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                              m
                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postApplePayDomainsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/apple_pay/domains") [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostApplePayDomainsRequestBody
    = PostApplePayDomainsRequestBody {postApplePayDomainsRequestBodyDomainName :: GHC.Base.String,
                                      postApplePayDomainsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostApplePayDomainsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "domain_name" (postApplePayDomainsRequestBodyDomainName obj) : (Data.Aeson..=) "expand" (postApplePayDomainsRequestBodyExpand obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "domain_name" (postApplePayDomainsRequestBodyDomainName obj) GHC.Base.<> (Data.Aeson..=) "expand" (postApplePayDomainsRequestBodyExpand obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostApplePayDomainsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostApplePayDomainsRequestBody" (\obj -> (GHC.Base.pure PostApplePayDomainsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "domain_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand"))

data PostApplePayDomainsResponse
    = PostApplePayDomainsResponseError GHC.Base.String
    | PostApplePayDomainsResponse200 ApplePayDomain
    | PostApplePayDomainsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
