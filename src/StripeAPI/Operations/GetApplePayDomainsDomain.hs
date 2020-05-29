{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getApplePayDomainsDomain
module StripeAPI.Operations.GetApplePayDomainsDomain where

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
import qualified Data.Vector
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

-- | > GET /v1/apple_pay/domains/{domain}
-- 
-- \<p>Retrieve an apple pay domain.\<\/p>
getApplePayDomainsDomain :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text                                                                                                              -- ^ domain | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe Data.Text.Internal.Text                                                                                              -- ^ expand: Specifies which fields in the response should be expanded.
  -> GHC.Maybe.Maybe GetApplePayDomainsDomainRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetApplePayDomainsDomainResponse)) -- ^ Monad containing the result of the operation
getApplePayDomainsDomain config
                         domain
                         expand
                         body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetApplePayDomainsDomainResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetApplePayDomainsDomainResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                          ApplePayDomain)
                                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetApplePayDomainsDomainResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/apple_pay/domains/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel domain)) GHC.Base.++ ""))) ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              'x',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              'p',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              'a',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              'n',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              'd'],
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/apple_pay/domains/{domain}
-- 
-- The same as 'getApplePayDomainsDomain' but returns the raw 'Data.ByteString.Char8.ByteString'
getApplePayDomainsDomainRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                             StripeAPI.Common.SecurityScheme s) =>
                               StripeAPI.Common.Configuration s ->
                               Data.Text.Internal.Text ->
                               GHC.Maybe.Maybe Data.Text.Internal.Text ->
                               GHC.Maybe.Maybe GetApplePayDomainsDomainRequestBody ->
                               m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getApplePayDomainsDomainRaw config
                            domain
                            expand
                            body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/apple_pay/domains/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel domain)) GHC.Base.++ ""))) ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                                                        'x',
                                                                                                                                                                                                                                                                                                                                                                                                                        'p',
                                                                                                                                                                                                                                                                                                                                                                                                                        'a',
                                                                                                                                                                                                                                                                                                                                                                                                                        'n',
                                                                                                                                                                                                                                                                                                                                                                                                                        'd'],
                                                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/apple_pay/domains/{domain}
-- 
-- Monadic version of 'getApplePayDomainsDomain' (use with 'StripeAPI.Common.runWithConfiguration')
getApplePayDomainsDomainM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             Data.Text.Internal.Text ->
                             GHC.Maybe.Maybe Data.Text.Internal.Text ->
                             GHC.Maybe.Maybe GetApplePayDomainsDomainRequestBody ->
                             Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                m
                                                                (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                    (Network.HTTP.Client.Types.Response GetApplePayDomainsDomainResponse))
getApplePayDomainsDomainM domain
                          expand
                          body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetApplePayDomainsDomainResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetApplePayDomainsDomainResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                           ApplePayDomain)
                                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetApplePayDomainsDomainResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/apple_pay/domains/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel domain)) GHC.Base.++ ""))) ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         'x',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         'p',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         'a',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         'n',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         'd'],
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/apple_pay/domains/{domain}
-- 
-- Monadic version of 'getApplePayDomainsDomainRaw' (use with 'StripeAPI.Common.runWithConfiguration')
getApplePayDomainsDomainRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                Data.Text.Internal.Text ->
                                GHC.Maybe.Maybe Data.Text.Internal.Text ->
                                GHC.Maybe.Maybe GetApplePayDomainsDomainRequestBody ->
                                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                   m
                                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getApplePayDomainsDomainRawM domain
                             expand
                             body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/apple_pay/domains/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel domain)) GHC.Base.++ ""))) ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                                                   'x',
                                                                                                                                                                                                                                                                                                                                                                                                                   'p',
                                                                                                                                                                                                                                                                                                                                                                                                                   'a',
                                                                                                                                                                                                                                                                                                                                                                                                                   'n',
                                                                                                                                                                                                                                                                                                                                                                                                                   'd'],
                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema getApplePayDomainsDomainRequestBody
-- 
-- 
data GetApplePayDomainsDomainRequestBody = GetApplePayDomainsDomainRequestBody {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetApplePayDomainsDomainRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetApplePayDomainsDomainRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetApplePayDomainsDomainRequestBody" (\obj -> GHC.Base.pure GetApplePayDomainsDomainRequestBody)
-- | Represents a response of the operation 'getApplePayDomainsDomain'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetApplePayDomainsDomainResponseError' is used.
data GetApplePayDomainsDomainResponse =                   
   GetApplePayDomainsDomainResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | GetApplePayDomainsDomainResponse200 ApplePayDomain    -- ^ Successful response.
  | GetApplePayDomainsDomainResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
