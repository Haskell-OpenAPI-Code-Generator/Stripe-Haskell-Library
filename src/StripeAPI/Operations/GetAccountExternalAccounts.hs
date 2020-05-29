{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getAccountExternalAccounts
module StripeAPI.Operations.GetAccountExternalAccounts where

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

-- | > GET /v1/account/external_accounts
-- 
-- \<p>List external accounts for an account.\<\/p>
getAccountExternalAccounts :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Maybe.Maybe Data.Text.Internal.Text                                                                                                -- ^ ending_before: A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
  -> GHC.Maybe.Maybe Data.Text.Internal.Text                                                                                                -- ^ expand: Specifies which fields in the response should be expanded.
  -> GHC.Maybe.Maybe GHC.Integer.Type.Integer                                                                                               -- ^ limit: A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  -> GHC.Maybe.Maybe Data.Text.Internal.Text                                                                                                -- ^ starting_after: A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
  -> GHC.Maybe.Maybe GetAccountExternalAccountsRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetAccountExternalAccountsResponse)) -- ^ Monad containing the result of the operation
getAccountExternalAccounts config
                           endingBefore
                           expand
                           limit
                           startingAfter
                           body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetAccountExternalAccountsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetAccountExternalAccountsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                GetAccountExternalAccountsResponseBody200)
                                                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetAccountExternalAccountsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/v1/account/external_accounts") ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   'n',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   'd',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   'i',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   'n',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   'g',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   '_',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   'b',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   'e',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   'f',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   'o',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   'r',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   'e'],
                                                                                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    'x',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    'p',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    'a',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    'n',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    'd'],
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack ['l',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               'i',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               'm',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               'i',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               't'],
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack ['s',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         't',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         'a',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         'r',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         't',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         'i',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         'n',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         'g',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         '_',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         'a',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         'f',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         't',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         'e',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         'r'],
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : [])))) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/account/external_accounts
-- 
-- The same as 'getAccountExternalAccounts' but returns the raw 'Data.ByteString.Char8.ByteString'
getAccountExternalAccountsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                               StripeAPI.Common.SecurityScheme s) =>
                                 StripeAPI.Common.Configuration s ->
                                 GHC.Maybe.Maybe Data.Text.Internal.Text ->
                                 GHC.Maybe.Maybe Data.Text.Internal.Text ->
                                 GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                                 GHC.Maybe.Maybe Data.Text.Internal.Text ->
                                 GHC.Maybe.Maybe GetAccountExternalAccountsRequestBody ->
                                 m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getAccountExternalAccountsRaw config
                              endingBefore
                              expand
                              limit
                              startingAfter
                              body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/v1/account/external_accounts") ((Data.Text.pack ['e',
                                                                                                                                                                                                                           'n',
                                                                                                                                                                                                                           'd',
                                                                                                                                                                                                                           'i',
                                                                                                                                                                                                                           'n',
                                                                                                                                                                                                                           'g',
                                                                                                                                                                                                                           '_',
                                                                                                                                                                                                                           'b',
                                                                                                                                                                                                                           'e',
                                                                                                                                                                                                                           'f',
                                                                                                                                                                                                                           'o',
                                                                                                                                                                                                                           'r',
                                                                                                                                                                                                                           'e'],
                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                            'x',
                                                                                                                                                                                                                                                                                            'p',
                                                                                                                                                                                                                                                                                            'a',
                                                                                                                                                                                                                                                                                            'n',
                                                                                                                                                                                                                                                                                            'd'],
                                                                                                                                                                                                                                                                            StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack ['l',
                                                                                                                                                                                                                                                                                                                                                       'i',
                                                                                                                                                                                                                                                                                                                                                       'm',
                                                                                                                                                                                                                                                                                                                                                       'i',
                                                                                                                                                                                                                                                                                                                                                       't'],
                                                                                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack ['s',
                                                                                                                                                                                                                                                                                                                                                                                                                 't',
                                                                                                                                                                                                                                                                                                                                                                                                                 'a',
                                                                                                                                                                                                                                                                                                                                                                                                                 'r',
                                                                                                                                                                                                                                                                                                                                                                                                                 't',
                                                                                                                                                                                                                                                                                                                                                                                                                 'i',
                                                                                                                                                                                                                                                                                                                                                                                                                 'n',
                                                                                                                                                                                                                                                                                                                                                                                                                 'g',
                                                                                                                                                                                                                                                                                                                                                                                                                 '_',
                                                                                                                                                                                                                                                                                                                                                                                                                 'a',
                                                                                                                                                                                                                                                                                                                                                                                                                 'f',
                                                                                                                                                                                                                                                                                                                                                                                                                 't',
                                                                                                                                                                                                                                                                                                                                                                                                                 'e',
                                                                                                                                                                                                                                                                                                                                                                                                                 'r'],
                                                                                                                                                                                                                                                                                                                                                                                                 StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : [])))) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/account/external_accounts
-- 
-- Monadic version of 'getAccountExternalAccounts' (use with 'StripeAPI.Common.runWithConfiguration')
getAccountExternalAccountsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                             StripeAPI.Common.SecurityScheme s) =>
                               GHC.Maybe.Maybe Data.Text.Internal.Text ->
                               GHC.Maybe.Maybe Data.Text.Internal.Text ->
                               GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                               GHC.Maybe.Maybe Data.Text.Internal.Text ->
                               GHC.Maybe.Maybe GetAccountExternalAccountsRequestBody ->
                               Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                  m
                                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                      (Network.HTTP.Client.Types.Response GetAccountExternalAccountsResponse))
getAccountExternalAccountsM endingBefore
                            expand
                            limit
                            startingAfter
                            body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetAccountExternalAccountsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetAccountExternalAccountsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 GetAccountExternalAccountsResponseBody200)
                                                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetAccountExternalAccountsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/v1/account/external_accounts") ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              'n',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              'd',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              'i',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              'n',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              'g',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              '_',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              'b',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              'e',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              'f',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              'o',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              'r',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              'e'],
                                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               'x',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               'p',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               'a',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               'n',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               'd'],
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack ['l',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          'i',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          'm',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          'i',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          't'],
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack ['s',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    't',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    'a',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    'r',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    't',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    'i',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    'n',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    'g',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    '_',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    'a',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    'f',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    't',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    'e',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    'r'],
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : [])))) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/account/external_accounts
-- 
-- Monadic version of 'getAccountExternalAccountsRaw' (use with 'StripeAPI.Common.runWithConfiguration')
getAccountExternalAccountsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                StripeAPI.Common.SecurityScheme s) =>
                                  GHC.Maybe.Maybe Data.Text.Internal.Text ->
                                  GHC.Maybe.Maybe Data.Text.Internal.Text ->
                                  GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                                  GHC.Maybe.Maybe Data.Text.Internal.Text ->
                                  GHC.Maybe.Maybe GetAccountExternalAccountsRequestBody ->
                                  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                     m
                                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getAccountExternalAccountsRawM endingBefore
                               expand
                               limit
                               startingAfter
                               body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/v1/account/external_accounts") ((Data.Text.pack ['e',
                                                                                                                                                                                                                      'n',
                                                                                                                                                                                                                      'd',
                                                                                                                                                                                                                      'i',
                                                                                                                                                                                                                      'n',
                                                                                                                                                                                                                      'g',
                                                                                                                                                                                                                      '_',
                                                                                                                                                                                                                      'b',
                                                                                                                                                                                                                      'e',
                                                                                                                                                                                                                      'f',
                                                                                                                                                                                                                      'o',
                                                                                                                                                                                                                      'r',
                                                                                                                                                                                                                      'e'],
                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                       'x',
                                                                                                                                                                                                                                                                                       'p',
                                                                                                                                                                                                                                                                                       'a',
                                                                                                                                                                                                                                                                                       'n',
                                                                                                                                                                                                                                                                                       'd'],
                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack ['l',
                                                                                                                                                                                                                                                                                                                                                  'i',
                                                                                                                                                                                                                                                                                                                                                  'm',
                                                                                                                                                                                                                                                                                                                                                  'i',
                                                                                                                                                                                                                                                                                                                                                  't'],
                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack ['s',
                                                                                                                                                                                                                                                                                                                                                                                                            't',
                                                                                                                                                                                                                                                                                                                                                                                                            'a',
                                                                                                                                                                                                                                                                                                                                                                                                            'r',
                                                                                                                                                                                                                                                                                                                                                                                                            't',
                                                                                                                                                                                                                                                                                                                                                                                                            'i',
                                                                                                                                                                                                                                                                                                                                                                                                            'n',
                                                                                                                                                                                                                                                                                                                                                                                                            'g',
                                                                                                                                                                                                                                                                                                                                                                                                            '_',
                                                                                                                                                                                                                                                                                                                                                                                                            'a',
                                                                                                                                                                                                                                                                                                                                                                                                            'f',
                                                                                                                                                                                                                                                                                                                                                                                                            't',
                                                                                                                                                                                                                                                                                                                                                                                                            'e',
                                                                                                                                                                                                                                                                                                                                                                                                            'r'],
                                                                                                                                                                                                                                                                                                                                                                                            StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : [])))) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema getAccountExternalAccountsRequestBody
-- 
-- 
data GetAccountExternalAccountsRequestBody = GetAccountExternalAccountsRequestBody {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetAccountExternalAccountsRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetAccountExternalAccountsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountExternalAccountsRequestBody" (\obj -> GHC.Base.pure GetAccountExternalAccountsRequestBody)
-- | Represents a response of the operation 'getAccountExternalAccounts'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetAccountExternalAccountsResponseError' is used.
data GetAccountExternalAccountsResponse =                                            
   GetAccountExternalAccountsResponseError GHC.Base.String                           -- ^ Means either no matching case available or a parse error
  | GetAccountExternalAccountsResponse200 GetAccountExternalAccountsResponseBody200  -- ^ Successful response.
  | GetAccountExternalAccountsResponseDefault Error                                  -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema GetAccountExternalAccountsResponseBody200
-- 
-- 
data GetAccountExternalAccountsResponseBody200 = GetAccountExternalAccountsResponseBody200 {
  -- | data: The list contains all external accounts that have been attached to the Stripe account. These may be bank accounts or cards.
  getAccountExternalAccountsResponseBody200Data :: ([] GetAccountExternalAccountsResponseBody200Data')
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , getAccountExternalAccountsResponseBody200HasMore :: GHC.Types.Bool
  -- | object: String representing the object\'s type. Objects of the same type share the same value. Always has the value \`list\`.
  , getAccountExternalAccountsResponseBody200Object :: GetAccountExternalAccountsResponseBody200Object'
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAccountExternalAccountsResponseBody200Url :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetAccountExternalAccountsResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getAccountExternalAccountsResponseBody200Data obj) : (Data.Aeson..=) "has_more" (getAccountExternalAccountsResponseBody200HasMore obj) : (Data.Aeson..=) "object" (getAccountExternalAccountsResponseBody200Object obj) : (Data.Aeson..=) "url" (getAccountExternalAccountsResponseBody200Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getAccountExternalAccountsResponseBody200Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (getAccountExternalAccountsResponseBody200HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (getAccountExternalAccountsResponseBody200Object obj) GHC.Base.<> (Data.Aeson..=) "url" (getAccountExternalAccountsResponseBody200Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetAccountExternalAccountsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountExternalAccountsResponseBody200" (\obj -> (((GHC.Base.pure GetAccountExternalAccountsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Defines the data type for the schema GetAccountExternalAccountsResponseBody200Data\'
-- 
-- 
data GetAccountExternalAccountsResponseBody200Data' = GetAccountExternalAccountsResponseBody200Data' {
  -- | account: The ID of the account that the bank account is associated with.
  getAccountExternalAccountsResponseBody200Data'Account :: (GHC.Maybe.Maybe GetAccountExternalAccountsResponseBody200Data'Account'Variants)
  -- | account_holder_name: The name of the person or business that owns the bank account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAccountExternalAccountsResponseBody200Data'AccountHolderName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | account_holder_type: The type of entity that holds the account. This can be either \`individual\` or \`company\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAccountExternalAccountsResponseBody200Data'AccountHolderType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | address_city: City\/District\/Suburb\/Town\/Village.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAccountExternalAccountsResponseBody200Data'AddressCity :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | address_country: Billing address country, if provided when creating card.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAccountExternalAccountsResponseBody200Data'AddressCountry :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | address_line1: Address line 1 (Street address\/PO Box\/Company name).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAccountExternalAccountsResponseBody200Data'AddressLine1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | address_line1_check: If \`address_line1\` was provided, results of the check: \`pass\`, \`fail\`, \`unavailable\`, or \`unchecked\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAccountExternalAccountsResponseBody200Data'AddressLine1Check :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | address_line2: Address line 2 (Apartment\/Suite\/Unit\/Building).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAccountExternalAccountsResponseBody200Data'AddressLine2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | address_state: State\/County\/Province\/Region.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAccountExternalAccountsResponseBody200Data'AddressState :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | address_zip: ZIP or postal code.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAccountExternalAccountsResponseBody200Data'AddressZip :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | address_zip_check: If \`address_zip\` was provided, results of the check: \`pass\`, \`fail\`, \`unavailable\`, or \`unchecked\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAccountExternalAccountsResponseBody200Data'AddressZipCheck :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | available_payout_methods: A set of available payout methods for this card. Will be either \`[\"standard\"]\` or \`[\"standard\", \"instant\"]\`. Only values from this set should be passed as the \`method\` when creating a transfer.
  , getAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods :: (GHC.Maybe.Maybe ([] GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'))
  -- | bank_name: Name of the bank associated with the routing number (e.g., \`WELLS FARGO\`).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAccountExternalAccountsResponseBody200Data'BankName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | brand: Card brand. Can be \`American Express\`, \`Diners Club\`, \`Discover\`, \`JCB\`, \`MasterCard\`, \`UnionPay\`, \`Visa\`, or \`Unknown\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAccountExternalAccountsResponseBody200Data'Brand :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | country: Two-letter ISO code representing the country the bank account is located in.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAccountExternalAccountsResponseBody200Data'Country :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | currency: Three-letter [ISO code for the currency](https:\/\/stripe.com\/docs\/payouts) paid out to the bank account.
  , getAccountExternalAccountsResponseBody200Data'Currency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | customer: The ID of the customer that the bank account is associated with.
  , getAccountExternalAccountsResponseBody200Data'Customer :: (GHC.Maybe.Maybe GetAccountExternalAccountsResponseBody200Data'Customer'Variants)
  -- | cvc_check: If a CVC was provided, results of the check: \`pass\`, \`fail\`, \`unavailable\`, or \`unchecked\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAccountExternalAccountsResponseBody200Data'CvcCheck :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | default_for_currency: Whether this bank account is the default external account for its currency.
  , getAccountExternalAccountsResponseBody200Data'DefaultForCurrency :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | dynamic_last4: (For tokenized numbers only.) The last four digits of the device account number.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAccountExternalAccountsResponseBody200Data'DynamicLast4 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | exp_month: Two-digit number representing the card\'s expiration month.
  , getAccountExternalAccountsResponseBody200Data'ExpMonth :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | exp_year: Four-digit number representing the card\'s expiration year.
  , getAccountExternalAccountsResponseBody200Data'ExpYear :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | fingerprint: Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAccountExternalAccountsResponseBody200Data'Fingerprint :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | funding: Card funding type. Can be \`credit\`, \`debit\`, \`prepaid\`, or \`unknown\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAccountExternalAccountsResponseBody200Data'Funding :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAccountExternalAccountsResponseBody200Data'Id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | last4: The last four digits of the bank account number.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAccountExternalAccountsResponseBody200Data'Last4 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  , getAccountExternalAccountsResponseBody200Data'Metadata :: (GHC.Maybe.Maybe GetAccountExternalAccountsResponseBody200Data'Metadata')
  -- | name: Cardholder name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAccountExternalAccountsResponseBody200Data'Name :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , getAccountExternalAccountsResponseBody200Data'Object :: (GHC.Maybe.Maybe GetAccountExternalAccountsResponseBody200Data'Object')
  -- | recipient: The recipient that this card belongs to. This attribute will not be in the card object if the card belongs to a customer or account instead.
  , getAccountExternalAccountsResponseBody200Data'Recipient :: (GHC.Maybe.Maybe GetAccountExternalAccountsResponseBody200Data'Recipient'Variants)
  -- | routing_number: The routing transit number for the bank account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAccountExternalAccountsResponseBody200Data'RoutingNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | status: For bank accounts, possible values are \`new\`, \`validated\`, \`verified\`, \`verification_failed\`, or \`errored\`. A bank account that hasn\'t had any activity or validation performed is \`new\`. If Stripe can determine that the bank account exists, its status will be \`validated\`. Note that there often isn’t enough information to know (e.g., for smaller credit unions), and the validation is not always run. If customer bank account verification has succeeded, the bank account status will be \`verified\`. If the verification failed for any reason, such as microdeposit failure, the status will be \`verification_failed\`. If a transfer sent to this bank account fails, we\'ll set the status to \`errored\` and will not continue to send transfers until the bank details are updated.
  -- 
  -- For external accounts, possible values are \`new\` and \`errored\`. Validations aren\'t run against external accounts because they\'re only used for payouts. This means the other statuses don\'t apply. If a transfer fails, the status is set to \`errored\` and transfers are stopped until account details are updated.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAccountExternalAccountsResponseBody200Data'Status :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | tokenization_method: If the card number is tokenized, this is the method that was used. Can be \`amex_express_checkout\`, \`android_pay\` (includes Google Pay), \`apple_pay\`, \`masterpass\`, \`visa_checkout\`, or null.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAccountExternalAccountsResponseBody200Data'TokenizationMethod :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetAccountExternalAccountsResponseBody200Data'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account" (getAccountExternalAccountsResponseBody200Data'Account obj) : (Data.Aeson..=) "account_holder_name" (getAccountExternalAccountsResponseBody200Data'AccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (getAccountExternalAccountsResponseBody200Data'AccountHolderType obj) : (Data.Aeson..=) "address_city" (getAccountExternalAccountsResponseBody200Data'AddressCity obj) : (Data.Aeson..=) "address_country" (getAccountExternalAccountsResponseBody200Data'AddressCountry obj) : (Data.Aeson..=) "address_line1" (getAccountExternalAccountsResponseBody200Data'AddressLine1 obj) : (Data.Aeson..=) "address_line1_check" (getAccountExternalAccountsResponseBody200Data'AddressLine1Check obj) : (Data.Aeson..=) "address_line2" (getAccountExternalAccountsResponseBody200Data'AddressLine2 obj) : (Data.Aeson..=) "address_state" (getAccountExternalAccountsResponseBody200Data'AddressState obj) : (Data.Aeson..=) "address_zip" (getAccountExternalAccountsResponseBody200Data'AddressZip obj) : (Data.Aeson..=) "address_zip_check" (getAccountExternalAccountsResponseBody200Data'AddressZipCheck obj) : (Data.Aeson..=) "available_payout_methods" (getAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods obj) : (Data.Aeson..=) "bank_name" (getAccountExternalAccountsResponseBody200Data'BankName obj) : (Data.Aeson..=) "brand" (getAccountExternalAccountsResponseBody200Data'Brand obj) : (Data.Aeson..=) "country" (getAccountExternalAccountsResponseBody200Data'Country obj) : (Data.Aeson..=) "currency" (getAccountExternalAccountsResponseBody200Data'Currency obj) : (Data.Aeson..=) "customer" (getAccountExternalAccountsResponseBody200Data'Customer obj) : (Data.Aeson..=) "cvc_check" (getAccountExternalAccountsResponseBody200Data'CvcCheck obj) : (Data.Aeson..=) "default_for_currency" (getAccountExternalAccountsResponseBody200Data'DefaultForCurrency obj) : (Data.Aeson..=) "dynamic_last4" (getAccountExternalAccountsResponseBody200Data'DynamicLast4 obj) : (Data.Aeson..=) "exp_month" (getAccountExternalAccountsResponseBody200Data'ExpMonth obj) : (Data.Aeson..=) "exp_year" (getAccountExternalAccountsResponseBody200Data'ExpYear obj) : (Data.Aeson..=) "fingerprint" (getAccountExternalAccountsResponseBody200Data'Fingerprint obj) : (Data.Aeson..=) "funding" (getAccountExternalAccountsResponseBody200Data'Funding obj) : (Data.Aeson..=) "id" (getAccountExternalAccountsResponseBody200Data'Id obj) : (Data.Aeson..=) "last4" (getAccountExternalAccountsResponseBody200Data'Last4 obj) : (Data.Aeson..=) "metadata" (getAccountExternalAccountsResponseBody200Data'Metadata obj) : (Data.Aeson..=) "name" (getAccountExternalAccountsResponseBody200Data'Name obj) : (Data.Aeson..=) "object" (getAccountExternalAccountsResponseBody200Data'Object obj) : (Data.Aeson..=) "recipient" (getAccountExternalAccountsResponseBody200Data'Recipient obj) : (Data.Aeson..=) "routing_number" (getAccountExternalAccountsResponseBody200Data'RoutingNumber obj) : (Data.Aeson..=) "status" (getAccountExternalAccountsResponseBody200Data'Status obj) : (Data.Aeson..=) "tokenization_method" (getAccountExternalAccountsResponseBody200Data'TokenizationMethod obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account" (getAccountExternalAccountsResponseBody200Data'Account obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_name" (getAccountExternalAccountsResponseBody200Data'AccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (getAccountExternalAccountsResponseBody200Data'AccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "address_city" (getAccountExternalAccountsResponseBody200Data'AddressCity obj) GHC.Base.<> ((Data.Aeson..=) "address_country" (getAccountExternalAccountsResponseBody200Data'AddressCountry obj) GHC.Base.<> ((Data.Aeson..=) "address_line1" (getAccountExternalAccountsResponseBody200Data'AddressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "address_line1_check" (getAccountExternalAccountsResponseBody200Data'AddressLine1Check obj) GHC.Base.<> ((Data.Aeson..=) "address_line2" (getAccountExternalAccountsResponseBody200Data'AddressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "address_state" (getAccountExternalAccountsResponseBody200Data'AddressState obj) GHC.Base.<> ((Data.Aeson..=) "address_zip" (getAccountExternalAccountsResponseBody200Data'AddressZip obj) GHC.Base.<> ((Data.Aeson..=) "address_zip_check" (getAccountExternalAccountsResponseBody200Data'AddressZipCheck obj) GHC.Base.<> ((Data.Aeson..=) "available_payout_methods" (getAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods obj) GHC.Base.<> ((Data.Aeson..=) "bank_name" (getAccountExternalAccountsResponseBody200Data'BankName obj) GHC.Base.<> ((Data.Aeson..=) "brand" (getAccountExternalAccountsResponseBody200Data'Brand obj) GHC.Base.<> ((Data.Aeson..=) "country" (getAccountExternalAccountsResponseBody200Data'Country obj) GHC.Base.<> ((Data.Aeson..=) "currency" (getAccountExternalAccountsResponseBody200Data'Currency obj) GHC.Base.<> ((Data.Aeson..=) "customer" (getAccountExternalAccountsResponseBody200Data'Customer obj) GHC.Base.<> ((Data.Aeson..=) "cvc_check" (getAccountExternalAccountsResponseBody200Data'CvcCheck obj) GHC.Base.<> ((Data.Aeson..=) "default_for_currency" (getAccountExternalAccountsResponseBody200Data'DefaultForCurrency obj) GHC.Base.<> ((Data.Aeson..=) "dynamic_last4" (getAccountExternalAccountsResponseBody200Data'DynamicLast4 obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (getAccountExternalAccountsResponseBody200Data'ExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (getAccountExternalAccountsResponseBody200Data'ExpYear obj) GHC.Base.<> ((Data.Aeson..=) "fingerprint" (getAccountExternalAccountsResponseBody200Data'Fingerprint obj) GHC.Base.<> ((Data.Aeson..=) "funding" (getAccountExternalAccountsResponseBody200Data'Funding obj) GHC.Base.<> ((Data.Aeson..=) "id" (getAccountExternalAccountsResponseBody200Data'Id obj) GHC.Base.<> ((Data.Aeson..=) "last4" (getAccountExternalAccountsResponseBody200Data'Last4 obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (getAccountExternalAccountsResponseBody200Data'Metadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (getAccountExternalAccountsResponseBody200Data'Name obj) GHC.Base.<> ((Data.Aeson..=) "object" (getAccountExternalAccountsResponseBody200Data'Object obj) GHC.Base.<> ((Data.Aeson..=) "recipient" (getAccountExternalAccountsResponseBody200Data'Recipient obj) GHC.Base.<> ((Data.Aeson..=) "routing_number" (getAccountExternalAccountsResponseBody200Data'RoutingNumber obj) GHC.Base.<> ((Data.Aeson..=) "status" (getAccountExternalAccountsResponseBody200Data'Status obj) GHC.Base.<> (Data.Aeson..=) "tokenization_method" (getAccountExternalAccountsResponseBody200Data'TokenizationMethod obj)))))))))))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetAccountExternalAccountsResponseBody200Data'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountExternalAccountsResponseBody200Data'" (\obj -> ((((((((((((((((((((((((((((((((GHC.Base.pure GetAccountExternalAccountsResponseBody200Data' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "available_payout_methods")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "brand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_for_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dynamic_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "funding")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recipient")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tokenization_method"))
-- | Define the one-of schema GetAccountExternalAccountsResponseBody200Data\'Account\'
-- 
-- The ID of the account that the bank account is associated with.
data GetAccountExternalAccountsResponseBody200Data'Account'Variants
    = GetAccountExternalAccountsResponseBody200Data'Account'Account Account
    | GetAccountExternalAccountsResponseBody200Data'Account'Text Data.Text.Internal.Text
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON GetAccountExternalAccountsResponseBody200Data'Account'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON GetAccountExternalAccountsResponseBody200Data'Account'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema GetAccountExternalAccountsResponseBody200Data\'Available_payout_methods\'
-- 
-- 
data GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'
    = GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumOther Data.Aeson.Types.Internal.Value
    | GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumTyped Data.Text.Internal.Text
    | GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumStringInstant
    | GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumStringStandard
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'
    where toJSON (GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumStringInstant) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "instant"
          toJSON (GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumStringStandard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard"
instance Data.Aeson.FromJSON GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "instant")
                                          then GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumStringInstant
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard")
                                                then GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumStringStandard
                                                else GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumOther val)
-- | Define the one-of schema GetAccountExternalAccountsResponseBody200Data\'Customer\'
-- 
-- The ID of the customer that the bank account is associated with.
data GetAccountExternalAccountsResponseBody200Data'Customer'Variants
    = GetAccountExternalAccountsResponseBody200Data'Customer'Customer Customer
    | GetAccountExternalAccountsResponseBody200Data'Customer'DeletedCustomer DeletedCustomer
    | GetAccountExternalAccountsResponseBody200Data'Customer'Text Data.Text.Internal.Text
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON GetAccountExternalAccountsResponseBody200Data'Customer'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON GetAccountExternalAccountsResponseBody200Data'Customer'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema GetAccountExternalAccountsResponseBody200Data\'Metadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
data GetAccountExternalAccountsResponseBody200Data'Metadata' = GetAccountExternalAccountsResponseBody200Data'Metadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetAccountExternalAccountsResponseBody200Data'Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetAccountExternalAccountsResponseBody200Data'Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountExternalAccountsResponseBody200Data'Metadata'" (\obj -> GHC.Base.pure GetAccountExternalAccountsResponseBody200Data'Metadata')
-- | Defines the enum schema GetAccountExternalAccountsResponseBody200Data\'Object\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data GetAccountExternalAccountsResponseBody200Data'Object'
    = GetAccountExternalAccountsResponseBody200Data'Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetAccountExternalAccountsResponseBody200Data'Object'EnumTyped Data.Text.Internal.Text
    | GetAccountExternalAccountsResponseBody200Data'Object'EnumStringBankAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetAccountExternalAccountsResponseBody200Data'Object'
    where toJSON (GetAccountExternalAccountsResponseBody200Data'Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetAccountExternalAccountsResponseBody200Data'Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetAccountExternalAccountsResponseBody200Data'Object'EnumStringBankAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account"
instance Data.Aeson.FromJSON GetAccountExternalAccountsResponseBody200Data'Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account")
                                          then GetAccountExternalAccountsResponseBody200Data'Object'EnumStringBankAccount
                                          else GetAccountExternalAccountsResponseBody200Data'Object'EnumOther val)
-- | Define the one-of schema GetAccountExternalAccountsResponseBody200Data\'Recipient\'
-- 
-- The recipient that this card belongs to. This attribute will not be in the card object if the card belongs to a customer or account instead.
data GetAccountExternalAccountsResponseBody200Data'Recipient'Variants
    = GetAccountExternalAccountsResponseBody200Data'Recipient'Recipient Recipient
    | GetAccountExternalAccountsResponseBody200Data'Recipient'Text Data.Text.Internal.Text
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON GetAccountExternalAccountsResponseBody200Data'Recipient'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON GetAccountExternalAccountsResponseBody200Data'Recipient'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema GetAccountExternalAccountsResponseBody200Object\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value. Always has the value \`list\`.
data GetAccountExternalAccountsResponseBody200Object'
    = GetAccountExternalAccountsResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetAccountExternalAccountsResponseBody200Object'EnumTyped Data.Text.Internal.Text
    | GetAccountExternalAccountsResponseBody200Object'EnumStringList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetAccountExternalAccountsResponseBody200Object'
    where toJSON (GetAccountExternalAccountsResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetAccountExternalAccountsResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetAccountExternalAccountsResponseBody200Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"
instance Data.Aeson.FromJSON GetAccountExternalAccountsResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
                                          then GetAccountExternalAccountsResponseBody200Object'EnumStringList
                                          else GetAccountExternalAccountsResponseBody200Object'EnumOther val)
