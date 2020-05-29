{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation putAccountsAccountLogout
module StripeAPI.Operations.PutAccountsAccountLogout where

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

-- | > PUT /v1/accounts/{account}/logout
-- 
-- \<p>Invalidates all sessions for a light account, for a platform to use during platform logout.\<\/p>
-- 
-- \<p>\<strong>You may only log out \<a href=\"\/docs\/connect\/express-accounts\">Express accounts\<\/a> connected to your platform\<\/strong>.\<\/p>
putAccountsAccountLogout :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                      -- ^ account | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PutAccountsAccountLogoutRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PutAccountsAccountLogoutResponse)) -- ^ Monad containing the result of the operation
putAccountsAccountLogout config
                         account
                         body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PutAccountsAccountLogoutResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PutAccountsAccountLogoutResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                          LightAccountLogout)
                                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PutAccountsAccountLogoutResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/logout"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > PUT /v1/accounts/{account}/logout
-- 
-- The same as 'putAccountsAccountLogout' but returns the raw 'Data.ByteString.Char8.ByteString'
putAccountsAccountLogoutRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                             StripeAPI.Common.SecurityScheme s) =>
                               StripeAPI.Common.Configuration s ->
                               GHC.Base.String ->
                               GHC.Maybe.Maybe PutAccountsAccountLogoutRequestBody ->
                               m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
putAccountsAccountLogoutRaw config
                            account
                            body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/logout"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > PUT /v1/accounts/{account}/logout
-- 
-- Monadic version of 'putAccountsAccountLogout' (use with 'StripeAPI.Common.runWithConfiguration')
putAccountsAccountLogoutM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             GHC.Base.String ->
                             GHC.Maybe.Maybe PutAccountsAccountLogoutRequestBody ->
                             Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                m
                                                                (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                    (Network.HTTP.Client.Types.Response PutAccountsAccountLogoutResponse))
putAccountsAccountLogoutM account
                          body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PutAccountsAccountLogoutResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PutAccountsAccountLogoutResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                           LightAccountLogout)
                                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PutAccountsAccountLogoutResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/logout"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > PUT /v1/accounts/{account}/logout
-- 
-- Monadic version of 'putAccountsAccountLogoutRaw' (use with 'StripeAPI.Common.runWithConfiguration')
putAccountsAccountLogoutRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                GHC.Base.String ->
                                GHC.Maybe.Maybe PutAccountsAccountLogoutRequestBody ->
                                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                   m
                                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
putAccountsAccountLogoutRawM account
                             body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/logout"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema putAccountsAccountLogoutRequestBody
-- 
-- 
data PutAccountsAccountLogoutRequestBody = PutAccountsAccountLogoutRequestBody {
  -- | expand: Specifies which fields in the response should be expanded.
  putAccountsAccountLogoutRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PutAccountsAccountLogoutRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "expand" (putAccountsAccountLogoutRequestBodyExpand obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "expand" (putAccountsAccountLogoutRequestBodyExpand obj))
instance Data.Aeson.Types.FromJSON.FromJSON PutAccountsAccountLogoutRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PutAccountsAccountLogoutRequestBody" (\obj -> GHC.Base.pure PutAccountsAccountLogoutRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand"))
-- | Represents a response of the operation 'putAccountsAccountLogout'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PutAccountsAccountLogoutResponseError' is used.
data PutAccountsAccountLogoutResponse =                     
   PutAccountsAccountLogoutResponseError GHC.Base.String    -- ^ Means either no matching case available or a parse error
  | PutAccountsAccountLogoutResponse200 LightAccountLogout  -- ^ Successful response.
  | PutAccountsAccountLogoutResponseDefault Error           -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
