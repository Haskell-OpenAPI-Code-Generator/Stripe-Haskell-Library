{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getAccountsAccount
module StripeAPI.Operations.GetAccountsAccount where

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

-- | > GET /v1/accounts/{account}
-- 
-- \<p>Retrieves the details of an account.\<\/p>
getAccountsAccount :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text                                                                                                        -- ^ account | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe Data.Text.Internal.Text                                                                                        -- ^ expand: Specifies which fields in the response should be expanded.
  -> GHC.Maybe.Maybe GetAccountsAccountRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetAccountsAccountResponse)) -- ^ Monad containing the result of the operation
getAccountsAccount config
                   account
                   expand
                   body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetAccountsAccountResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetAccountsAccountResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                        Account)
                                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetAccountsAccountResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ""))) ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          'x',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          'p',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          'a',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          'n',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          'd'],
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/accounts/{account}
-- 
-- The same as 'getAccountsAccount' but returns the raw 'Data.ByteString.Char8.ByteString'
getAccountsAccountRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                       StripeAPI.Common.SecurityScheme s) =>
                         StripeAPI.Common.Configuration s ->
                         Data.Text.Internal.Text ->
                         GHC.Maybe.Maybe Data.Text.Internal.Text ->
                         GHC.Maybe.Maybe GetAccountsAccountRequestBody ->
                         m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getAccountsAccountRaw config
                      account
                      expand
                      body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ""))) ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                                          'x',
                                                                                                                                                                                                                                                                                                                                                                                                          'p',
                                                                                                                                                                                                                                                                                                                                                                                                          'a',
                                                                                                                                                                                                                                                                                                                                                                                                          'n',
                                                                                                                                                                                                                                                                                                                                                                                                          'd'],
                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/accounts/{account}
-- 
-- Monadic version of 'getAccountsAccount' (use with 'StripeAPI.Common.runWithConfiguration')
getAccountsAccountM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                     StripeAPI.Common.SecurityScheme s) =>
                       Data.Text.Internal.Text ->
                       GHC.Maybe.Maybe Data.Text.Internal.Text ->
                       GHC.Maybe.Maybe GetAccountsAccountRequestBody ->
                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                          m
                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                              (Network.HTTP.Client.Types.Response GetAccountsAccountResponse))
getAccountsAccountM account
                    expand
                    body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetAccountsAccountResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetAccountsAccountResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                         Account)
                                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetAccountsAccountResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ""))) ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     'x',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     'p',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     'a',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     'n',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     'd'],
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/accounts/{account}
-- 
-- Monadic version of 'getAccountsAccountRaw' (use with 'StripeAPI.Common.runWithConfiguration')
getAccountsAccountRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          Data.Text.Internal.Text ->
                          GHC.Maybe.Maybe Data.Text.Internal.Text ->
                          GHC.Maybe.Maybe GetAccountsAccountRequestBody ->
                          Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                             m
                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                 (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getAccountsAccountRawM account
                       expand
                       body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ""))) ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                                     'x',
                                                                                                                                                                                                                                                                                                                                                                                                     'p',
                                                                                                                                                                                                                                                                                                                                                                                                     'a',
                                                                                                                                                                                                                                                                                                                                                                                                     'n',
                                                                                                                                                                                                                                                                                                                                                                                                     'd'],
                                                                                                                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema getAccountsAccountRequestBody
-- 
-- 
data GetAccountsAccountRequestBody = GetAccountsAccountRequestBody {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetAccountsAccountRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetAccountsAccountRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountsAccountRequestBody" (\obj -> GHC.Base.pure GetAccountsAccountRequestBody)
-- | Represents a response of the operation 'getAccountsAccount'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetAccountsAccountResponseError' is used.
data GetAccountsAccountResponse =                   
   GetAccountsAccountResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | GetAccountsAccountResponse200 Account           -- ^ Successful response.
  | GetAccountsAccountResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
