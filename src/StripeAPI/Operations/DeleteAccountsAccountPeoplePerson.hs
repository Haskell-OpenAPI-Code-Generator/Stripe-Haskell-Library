{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation deleteAccountsAccountPeoplePerson
module StripeAPI.Operations.DeleteAccountsAccountPeoplePerson where

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

-- | > DELETE /v1/accounts/{account}/people/{person}
-- 
-- \<p>Deletes an existing person’s relationship to the account’s legal entity. Any person with a relationship for an account can be deleted through the API, except if the person is the \<code>account_opener\<\/code>. If your integration is using the \<code>executive\<\/code> parameter, you cannot delete the only verified \<code>executive\<\/code> on file.\<\/p>
deleteAccountsAccountPeoplePerson :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text                                                                                                                       -- ^ account | Constraints: Maximum length of 5000
  -> Data.Text.Internal.Text                                                                                                                       -- ^ person | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe DeleteAccountsAccountPeoplePersonRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response DeleteAccountsAccountPeoplePersonResponse)) -- ^ Monad containing the result of the operation
deleteAccountsAccountPeoplePerson config
                                  account
                                  person
                                  body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either DeleteAccountsAccountPeoplePersonResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteAccountsAccountPeoplePersonResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     DeletedPerson)
                                                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteAccountsAccountPeoplePersonResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ("/people/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel person)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/accounts/{account}/people/{person}
-- 
-- The same as 'deleteAccountsAccountPeoplePerson' but returns the raw 'Data.ByteString.Char8.ByteString'
deleteAccountsAccountPeoplePersonRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                      StripeAPI.Common.SecurityScheme s) =>
                                        StripeAPI.Common.Configuration s ->
                                        Data.Text.Internal.Text ->
                                        Data.Text.Internal.Text ->
                                        GHC.Maybe.Maybe DeleteAccountsAccountPeoplePersonRequestBody ->
                                        m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
deleteAccountsAccountPeoplePersonRaw config
                                     account
                                     person
                                     body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ("/people/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel person)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/accounts/{account}/people/{person}
-- 
-- Monadic version of 'deleteAccountsAccountPeoplePerson' (use with 'StripeAPI.Common.runWithConfiguration')
deleteAccountsAccountPeoplePersonM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                    StripeAPI.Common.SecurityScheme s) =>
                                      Data.Text.Internal.Text ->
                                      Data.Text.Internal.Text ->
                                      GHC.Maybe.Maybe DeleteAccountsAccountPeoplePersonRequestBody ->
                                      Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                         m
                                                                         (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                             (Network.HTTP.Client.Types.Response DeleteAccountsAccountPeoplePersonResponse))
deleteAccountsAccountPeoplePersonM account
                                   person
                                   body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either DeleteAccountsAccountPeoplePersonResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteAccountsAccountPeoplePersonResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      DeletedPerson)
                                                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteAccountsAccountPeoplePersonResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ("/people/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel person)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/accounts/{account}/people/{person}
-- 
-- Monadic version of 'deleteAccountsAccountPeoplePersonRaw' (use with 'StripeAPI.Common.runWithConfiguration')
deleteAccountsAccountPeoplePersonRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                       StripeAPI.Common.SecurityScheme s) =>
                                         Data.Text.Internal.Text ->
                                         Data.Text.Internal.Text ->
                                         GHC.Maybe.Maybe DeleteAccountsAccountPeoplePersonRequestBody ->
                                         Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                            m
                                                                            (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
deleteAccountsAccountPeoplePersonRawM account
                                      person
                                      body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ("/people/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel person)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema deleteAccountsAccountPeoplePersonRequestBody
-- 
-- 
data DeleteAccountsAccountPeoplePersonRequestBody = DeleteAccountsAccountPeoplePersonRequestBody {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeleteAccountsAccountPeoplePersonRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON DeleteAccountsAccountPeoplePersonRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteAccountsAccountPeoplePersonRequestBody" (\obj -> GHC.Base.pure DeleteAccountsAccountPeoplePersonRequestBody)
-- | Represents a response of the operation 'deleteAccountsAccountPeoplePerson'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteAccountsAccountPeoplePersonResponseError' is used.
data DeleteAccountsAccountPeoplePersonResponse =                   
   DeleteAccountsAccountPeoplePersonResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | DeleteAccountsAccountPeoplePersonResponse200 DeletedPerson     -- ^ Successful response.
  | DeleteAccountsAccountPeoplePersonResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
