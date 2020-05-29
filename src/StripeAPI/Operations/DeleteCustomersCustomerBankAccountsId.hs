{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation deleteCustomersCustomerBankAccountsId
module StripeAPI.Operations.DeleteCustomersCustomerBankAccountsId where

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

-- | > DELETE /v1/customers/{customer}/bank_accounts/{id}
-- 
-- \<p>Delete a specified source for a given customer.\<\/p>
deleteCustomersCustomerBankAccountsId :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text                                                                                                                           -- ^ customer | Constraints: Maximum length of 5000
  -> Data.Text.Internal.Text                                                                                                                           -- ^ id
  -> GHC.Maybe.Maybe DeleteCustomersCustomerBankAccountsIdRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response DeleteCustomersCustomerBankAccountsIdResponse)) -- ^ Monad containing the result of the operation
deleteCustomersCustomerBankAccountsId config
                                      customer
                                      id
                                      body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either DeleteCustomersCustomerBankAccountsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteCustomersCustomerBankAccountsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 DeleteCustomersCustomerBankAccountsIdResponseBody200)
                                                                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteCustomersCustomerBankAccountsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/bank_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/customers/{customer}/bank_accounts/{id}
-- 
-- The same as 'deleteCustomersCustomerBankAccountsId' but returns the raw 'Data.ByteString.Char8.ByteString'
deleteCustomersCustomerBankAccountsIdRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                          StripeAPI.Common.SecurityScheme s) =>
                                            StripeAPI.Common.Configuration s ->
                                            Data.Text.Internal.Text ->
                                            Data.Text.Internal.Text ->
                                            GHC.Maybe.Maybe DeleteCustomersCustomerBankAccountsIdRequestBody ->
                                            m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
deleteCustomersCustomerBankAccountsIdRaw config
                                         customer
                                         id
                                         body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/bank_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/customers/{customer}/bank_accounts/{id}
-- 
-- Monadic version of 'deleteCustomersCustomerBankAccountsId' (use with 'StripeAPI.Common.runWithConfiguration')
deleteCustomersCustomerBankAccountsIdM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                        StripeAPI.Common.SecurityScheme s) =>
                                          Data.Text.Internal.Text ->
                                          Data.Text.Internal.Text ->
                                          GHC.Maybe.Maybe DeleteCustomersCustomerBankAccountsIdRequestBody ->
                                          Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                             m
                                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                 (Network.HTTP.Client.Types.Response DeleteCustomersCustomerBankAccountsIdResponse))
deleteCustomersCustomerBankAccountsIdM customer
                                       id
                                       body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either DeleteCustomersCustomerBankAccountsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteCustomersCustomerBankAccountsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  DeleteCustomersCustomerBankAccountsIdResponseBody200)
                                                                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteCustomersCustomerBankAccountsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/bank_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/customers/{customer}/bank_accounts/{id}
-- 
-- Monadic version of 'deleteCustomersCustomerBankAccountsIdRaw' (use with 'StripeAPI.Common.runWithConfiguration')
deleteCustomersCustomerBankAccountsIdRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                           StripeAPI.Common.SecurityScheme s) =>
                                             Data.Text.Internal.Text ->
                                             Data.Text.Internal.Text ->
                                             GHC.Maybe.Maybe DeleteCustomersCustomerBankAccountsIdRequestBody ->
                                             Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                m
                                                                                (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                    (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
deleteCustomersCustomerBankAccountsIdRawM customer
                                          id
                                          body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/bank_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema deleteCustomersCustomerBankAccountsIdRequestBody
-- 
-- 
data DeleteCustomersCustomerBankAccountsIdRequestBody = DeleteCustomersCustomerBankAccountsIdRequestBody {
  -- | expand: Specifies which fields in the response should be expanded.
  deleteCustomersCustomerBankAccountsIdRequestBodyExpand :: (GHC.Maybe.Maybe ([] Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeleteCustomersCustomerBankAccountsIdRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "expand" (deleteCustomersCustomerBankAccountsIdRequestBodyExpand obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "expand" (deleteCustomersCustomerBankAccountsIdRequestBodyExpand obj))
instance Data.Aeson.Types.FromJSON.FromJSON DeleteCustomersCustomerBankAccountsIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteCustomersCustomerBankAccountsIdRequestBody" (\obj -> GHC.Base.pure DeleteCustomersCustomerBankAccountsIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand"))
-- | Represents a response of the operation 'deleteCustomersCustomerBankAccountsId'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteCustomersCustomerBankAccountsIdResponseError' is used.
data DeleteCustomersCustomerBankAccountsIdResponse =                                                       
   DeleteCustomersCustomerBankAccountsIdResponseError GHC.Base.String                                      -- ^ Means either no matching case available or a parse error
  | DeleteCustomersCustomerBankAccountsIdResponse200 DeleteCustomersCustomerBankAccountsIdResponseBody200  -- ^ Successful response.
  | DeleteCustomersCustomerBankAccountsIdResponseDefault Error                                             -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema DeleteCustomersCustomerBankAccountsIdResponseBody200
-- 
-- 
data DeleteCustomersCustomerBankAccountsIdResponseBody200 = DeleteCustomersCustomerBankAccountsIdResponseBody200 {
  -- | currency: Three-letter [ISO code for the currency](https:\/\/stripe.com\/docs\/payouts) paid out to the bank account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  deleteCustomersCustomerBankAccountsIdResponseBody200Currency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | deleted: Always true for a deleted object
  , deleteCustomersCustomerBankAccountsIdResponseBody200Deleted :: (GHC.Maybe.Maybe DeleteCustomersCustomerBankAccountsIdResponseBody200Deleted')
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , deleteCustomersCustomerBankAccountsIdResponseBody200Id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , deleteCustomersCustomerBankAccountsIdResponseBody200Object :: (GHC.Maybe.Maybe DeleteCustomersCustomerBankAccountsIdResponseBody200Object')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeleteCustomersCustomerBankAccountsIdResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "currency" (deleteCustomersCustomerBankAccountsIdResponseBody200Currency obj) : (Data.Aeson..=) "deleted" (deleteCustomersCustomerBankAccountsIdResponseBody200Deleted obj) : (Data.Aeson..=) "id" (deleteCustomersCustomerBankAccountsIdResponseBody200Id obj) : (Data.Aeson..=) "object" (deleteCustomersCustomerBankAccountsIdResponseBody200Object obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "currency" (deleteCustomersCustomerBankAccountsIdResponseBody200Currency obj) GHC.Base.<> ((Data.Aeson..=) "deleted" (deleteCustomersCustomerBankAccountsIdResponseBody200Deleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (deleteCustomersCustomerBankAccountsIdResponseBody200Id obj) GHC.Base.<> (Data.Aeson..=) "object" (deleteCustomersCustomerBankAccountsIdResponseBody200Object obj))))
instance Data.Aeson.Types.FromJSON.FromJSON DeleteCustomersCustomerBankAccountsIdResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteCustomersCustomerBankAccountsIdResponseBody200" (\obj -> (((GHC.Base.pure DeleteCustomersCustomerBankAccountsIdResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object"))
-- | Defines the enum schema DeleteCustomersCustomerBankAccountsIdResponseBody200Deleted\'
-- 
-- Always true for a deleted object
data DeleteCustomersCustomerBankAccountsIdResponseBody200Deleted'
    = DeleteCustomersCustomerBankAccountsIdResponseBody200Deleted'EnumOther Data.Aeson.Types.Internal.Value
    | DeleteCustomersCustomerBankAccountsIdResponseBody200Deleted'EnumTyped GHC.Types.Bool
    | DeleteCustomersCustomerBankAccountsIdResponseBody200Deleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeleteCustomersCustomerBankAccountsIdResponseBody200Deleted'
    where toJSON (DeleteCustomersCustomerBankAccountsIdResponseBody200Deleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeleteCustomersCustomerBankAccountsIdResponseBody200Deleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeleteCustomersCustomerBankAccountsIdResponseBody200Deleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON DeleteCustomersCustomerBankAccountsIdResponseBody200Deleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then DeleteCustomersCustomerBankAccountsIdResponseBody200Deleted'EnumBoolTrue
                                          else DeleteCustomersCustomerBankAccountsIdResponseBody200Deleted'EnumOther val)
-- | Defines the enum schema DeleteCustomersCustomerBankAccountsIdResponseBody200Object\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data DeleteCustomersCustomerBankAccountsIdResponseBody200Object'
    = DeleteCustomersCustomerBankAccountsIdResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | DeleteCustomersCustomerBankAccountsIdResponseBody200Object'EnumTyped Data.Text.Internal.Text
    | DeleteCustomersCustomerBankAccountsIdResponseBody200Object'EnumStringAlipayAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeleteCustomersCustomerBankAccountsIdResponseBody200Object'
    where toJSON (DeleteCustomersCustomerBankAccountsIdResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeleteCustomersCustomerBankAccountsIdResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeleteCustomersCustomerBankAccountsIdResponseBody200Object'EnumStringAlipayAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alipay_account"
instance Data.Aeson.FromJSON DeleteCustomersCustomerBankAccountsIdResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alipay_account")
                                          then DeleteCustomersCustomerBankAccountsIdResponseBody200Object'EnumStringAlipayAccount
                                          else DeleteCustomersCustomerBankAccountsIdResponseBody200Object'EnumOther val)
