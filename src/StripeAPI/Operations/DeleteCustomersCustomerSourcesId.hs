{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation deleteCustomersCustomerSourcesId
module StripeAPI.Operations.DeleteCustomersCustomerSourcesId where

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

-- | > DELETE /v1/customers/{customer}/sources/{id}
-- 
-- \<p>Delete a specified source for a given customer.\<\/p>
deleteCustomersCustomerSourcesId :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text                                                                                                                      -- ^ customer | Constraints: Maximum length of 5000
  -> Data.Text.Internal.Text                                                                                                                      -- ^ id
  -> GHC.Maybe.Maybe DeleteCustomersCustomerSourcesIdRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response DeleteCustomersCustomerSourcesIdResponse)) -- ^ Monad containing the result of the operation
deleteCustomersCustomerSourcesId config
                                 customer
                                 id
                                 body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either DeleteCustomersCustomerSourcesIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteCustomersCustomerSourcesIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  DeleteCustomersCustomerSourcesIdResponseBody200)
                                                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteCustomersCustomerSourcesIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/sources/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/customers/{customer}/sources/{id}
-- 
-- The same as 'deleteCustomersCustomerSourcesId' but returns the raw 'Data.ByteString.Char8.ByteString'
deleteCustomersCustomerSourcesIdRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                     StripeAPI.Common.SecurityScheme s) =>
                                       StripeAPI.Common.Configuration s ->
                                       Data.Text.Internal.Text ->
                                       Data.Text.Internal.Text ->
                                       GHC.Maybe.Maybe DeleteCustomersCustomerSourcesIdRequestBody ->
                                       m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                             (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
deleteCustomersCustomerSourcesIdRaw config
                                    customer
                                    id
                                    body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/sources/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/customers/{customer}/sources/{id}
-- 
-- Monadic version of 'deleteCustomersCustomerSourcesId' (use with 'StripeAPI.Common.runWithConfiguration')
deleteCustomersCustomerSourcesIdM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                   StripeAPI.Common.SecurityScheme s) =>
                                     Data.Text.Internal.Text ->
                                     Data.Text.Internal.Text ->
                                     GHC.Maybe.Maybe DeleteCustomersCustomerSourcesIdRequestBody ->
                                     Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                        m
                                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                            (Network.HTTP.Client.Types.Response DeleteCustomersCustomerSourcesIdResponse))
deleteCustomersCustomerSourcesIdM customer
                                  id
                                  body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either DeleteCustomersCustomerSourcesIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteCustomersCustomerSourcesIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   DeleteCustomersCustomerSourcesIdResponseBody200)
                                                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteCustomersCustomerSourcesIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/sources/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/customers/{customer}/sources/{id}
-- 
-- Monadic version of 'deleteCustomersCustomerSourcesIdRaw' (use with 'StripeAPI.Common.runWithConfiguration')
deleteCustomersCustomerSourcesIdRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                      StripeAPI.Common.SecurityScheme s) =>
                                        Data.Text.Internal.Text ->
                                        Data.Text.Internal.Text ->
                                        GHC.Maybe.Maybe DeleteCustomersCustomerSourcesIdRequestBody ->
                                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                           m
                                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
deleteCustomersCustomerSourcesIdRawM customer
                                     id
                                     body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/sources/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema deleteCustomersCustomerSourcesIdRequestBody
-- 
-- 
data DeleteCustomersCustomerSourcesIdRequestBody = DeleteCustomersCustomerSourcesIdRequestBody {
  -- | expand: Specifies which fields in the response should be expanded.
  deleteCustomersCustomerSourcesIdRequestBodyExpand :: (GHC.Maybe.Maybe ([] Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeleteCustomersCustomerSourcesIdRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "expand" (deleteCustomersCustomerSourcesIdRequestBodyExpand obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "expand" (deleteCustomersCustomerSourcesIdRequestBodyExpand obj))
instance Data.Aeson.Types.FromJSON.FromJSON DeleteCustomersCustomerSourcesIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteCustomersCustomerSourcesIdRequestBody" (\obj -> GHC.Base.pure DeleteCustomersCustomerSourcesIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand"))
-- | Represents a response of the operation 'deleteCustomersCustomerSourcesId'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteCustomersCustomerSourcesIdResponseError' is used.
data DeleteCustomersCustomerSourcesIdResponse =                                                  
   DeleteCustomersCustomerSourcesIdResponseError GHC.Base.String                                 -- ^ Means either no matching case available or a parse error
  | DeleteCustomersCustomerSourcesIdResponse200 DeleteCustomersCustomerSourcesIdResponseBody200  -- ^ Successful response.
  | DeleteCustomersCustomerSourcesIdResponseDefault Error                                        -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema DeleteCustomersCustomerSourcesIdResponseBody200
-- 
-- 
data DeleteCustomersCustomerSourcesIdResponseBody200 = DeleteCustomersCustomerSourcesIdResponseBody200 {
  -- | currency: Three-letter [ISO code for the currency](https:\/\/stripe.com\/docs\/payouts) paid out to the bank account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  deleteCustomersCustomerSourcesIdResponseBody200Currency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | deleted: Always true for a deleted object
  , deleteCustomersCustomerSourcesIdResponseBody200Deleted :: (GHC.Maybe.Maybe DeleteCustomersCustomerSourcesIdResponseBody200Deleted')
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , deleteCustomersCustomerSourcesIdResponseBody200Id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , deleteCustomersCustomerSourcesIdResponseBody200Object :: (GHC.Maybe.Maybe DeleteCustomersCustomerSourcesIdResponseBody200Object')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeleteCustomersCustomerSourcesIdResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "currency" (deleteCustomersCustomerSourcesIdResponseBody200Currency obj) : (Data.Aeson..=) "deleted" (deleteCustomersCustomerSourcesIdResponseBody200Deleted obj) : (Data.Aeson..=) "id" (deleteCustomersCustomerSourcesIdResponseBody200Id obj) : (Data.Aeson..=) "object" (deleteCustomersCustomerSourcesIdResponseBody200Object obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "currency" (deleteCustomersCustomerSourcesIdResponseBody200Currency obj) GHC.Base.<> ((Data.Aeson..=) "deleted" (deleteCustomersCustomerSourcesIdResponseBody200Deleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (deleteCustomersCustomerSourcesIdResponseBody200Id obj) GHC.Base.<> (Data.Aeson..=) "object" (deleteCustomersCustomerSourcesIdResponseBody200Object obj))))
instance Data.Aeson.Types.FromJSON.FromJSON DeleteCustomersCustomerSourcesIdResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteCustomersCustomerSourcesIdResponseBody200" (\obj -> (((GHC.Base.pure DeleteCustomersCustomerSourcesIdResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object"))
-- | Defines the enum schema DeleteCustomersCustomerSourcesIdResponseBody200Deleted\'
-- 
-- Always true for a deleted object
data DeleteCustomersCustomerSourcesIdResponseBody200Deleted'
    = DeleteCustomersCustomerSourcesIdResponseBody200Deleted'EnumOther Data.Aeson.Types.Internal.Value
    | DeleteCustomersCustomerSourcesIdResponseBody200Deleted'EnumTyped GHC.Types.Bool
    | DeleteCustomersCustomerSourcesIdResponseBody200Deleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeleteCustomersCustomerSourcesIdResponseBody200Deleted'
    where toJSON (DeleteCustomersCustomerSourcesIdResponseBody200Deleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeleteCustomersCustomerSourcesIdResponseBody200Deleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeleteCustomersCustomerSourcesIdResponseBody200Deleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON DeleteCustomersCustomerSourcesIdResponseBody200Deleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then DeleteCustomersCustomerSourcesIdResponseBody200Deleted'EnumBoolTrue
                                          else DeleteCustomersCustomerSourcesIdResponseBody200Deleted'EnumOther val)
-- | Defines the enum schema DeleteCustomersCustomerSourcesIdResponseBody200Object\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data DeleteCustomersCustomerSourcesIdResponseBody200Object'
    = DeleteCustomersCustomerSourcesIdResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | DeleteCustomersCustomerSourcesIdResponseBody200Object'EnumTyped Data.Text.Internal.Text
    | DeleteCustomersCustomerSourcesIdResponseBody200Object'EnumStringAlipayAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeleteCustomersCustomerSourcesIdResponseBody200Object'
    where toJSON (DeleteCustomersCustomerSourcesIdResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeleteCustomersCustomerSourcesIdResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeleteCustomersCustomerSourcesIdResponseBody200Object'EnumStringAlipayAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alipay_account"
instance Data.Aeson.FromJSON DeleteCustomersCustomerSourcesIdResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alipay_account")
                                          then DeleteCustomersCustomerSourcesIdResponseBody200Object'EnumStringAlipayAccount
                                          else DeleteCustomersCustomerSourcesIdResponseBody200Object'EnumOther val)
