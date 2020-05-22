{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postCustomersCustomerBalanceTransactionsTransaction
module StripeAPI.Operations.PostCustomersCustomerBalanceTransactionsTransaction where

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

-- | > POST /v1/customers/{customer}/balance_transactions/{transaction}
-- 
-- \<p>Most customer balance transaction fields are immutable, but you may update its \<code>description\<\/code> and \<code>metadata\<\/code>.\<\/p>
postCustomersCustomerBalanceTransactionsTransaction :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                                                 -- ^ customer | Constraints: Maximum length of 5000
  -> GHC.Base.String                                                                                                                                                 -- ^ transaction | Constraints: Maximum length of 5000
  -> PostCustomersCustomerBalanceTransactionsTransactionRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostCustomersCustomerBalanceTransactionsTransactionResponse)) -- ^ Monad containing the result of the operation
postCustomersCustomerBalanceTransactionsTransaction config
                                                    customer
                                                    transaction
                                                    body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerBalanceTransactionsTransactionResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerBalanceTransactionsTransactionResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           CustomerBalanceTransaction)
                                                                                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerBalanceTransactionsTransactionResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/balance_transactions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel transaction)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/customers/{customer}/balance_transactions/{transaction}
-- 
-- The same as 'postCustomersCustomerBalanceTransactionsTransaction' but returns the raw 'Data.ByteString.Char8.ByteString'
postCustomersCustomerBalanceTransactionsTransactionRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                        StripeAPI.Common.SecurityScheme s) =>
                                                          StripeAPI.Common.Configuration s ->
                                                          GHC.Base.String ->
                                                          GHC.Base.String ->
                                                          PostCustomersCustomerBalanceTransactionsTransactionRequestBody ->
                                                          m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerBalanceTransactionsTransactionRaw config
                                                       customer
                                                       transaction
                                                       body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/balance_transactions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel transaction)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/customers/{customer}/balance_transactions/{transaction}
-- 
-- Monadic version of 'postCustomersCustomerBalanceTransactionsTransaction' (use with 'StripeAPI.Common.runWithConfiguration')
postCustomersCustomerBalanceTransactionsTransactionM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                      StripeAPI.Common.SecurityScheme s) =>
                                                        GHC.Base.String ->
                                                        GHC.Base.String ->
                                                        PostCustomersCustomerBalanceTransactionsTransactionRequestBody ->
                                                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                           m
                                                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                               (Network.HTTP.Client.Types.Response PostCustomersCustomerBalanceTransactionsTransactionResponse))
postCustomersCustomerBalanceTransactionsTransactionM customer
                                                     transaction
                                                     body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerBalanceTransactionsTransactionResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerBalanceTransactionsTransactionResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            CustomerBalanceTransaction)
                                                                                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerBalanceTransactionsTransactionResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/balance_transactions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel transaction)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/customers/{customer}/balance_transactions/{transaction}
-- 
-- Monadic version of 'postCustomersCustomerBalanceTransactionsTransactionRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postCustomersCustomerBalanceTransactionsTransactionRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                         StripeAPI.Common.SecurityScheme s) =>
                                                           GHC.Base.String ->
                                                           GHC.Base.String ->
                                                           PostCustomersCustomerBalanceTransactionsTransactionRequestBody ->
                                                           Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                              m
                                                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerBalanceTransactionsTransactionRawM customer
                                                        transaction
                                                        body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/balance_transactions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel transaction)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postCustomersCustomerBalanceTransactionsTransactionRequestBody
-- 
-- 
data PostCustomersCustomerBalanceTransactionsTransactionRequestBody = PostCustomersCustomerBalanceTransactionsTransactionRequestBody {
  -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 350
  postCustomersCustomerBalanceTransactionsTransactionRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | expand: Specifies which fields in the response should be expanded.
  , postCustomersCustomerBalanceTransactionsTransactionRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postCustomersCustomerBalanceTransactionsTransactionRequestBodyMetadata :: (GHC.Maybe.Maybe PostCustomersCustomerBalanceTransactionsTransactionRequestBodyMetadata')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerBalanceTransactionsTransactionRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "description" (postCustomersCustomerBalanceTransactionsTransactionRequestBodyDescription obj) : (Data.Aeson..=) "expand" (postCustomersCustomerBalanceTransactionsTransactionRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postCustomersCustomerBalanceTransactionsTransactionRequestBodyMetadata obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "description" (postCustomersCustomerBalanceTransactionsTransactionRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postCustomersCustomerBalanceTransactionsTransactionRequestBodyExpand obj) GHC.Base.<> (Data.Aeson..=) "metadata" (postCustomersCustomerBalanceTransactionsTransactionRequestBodyMetadata obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerBalanceTransactionsTransactionRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerBalanceTransactionsTransactionRequestBody" (\obj -> ((GHC.Base.pure PostCustomersCustomerBalanceTransactionsTransactionRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata"))
-- | Defines the data type for the schema postCustomersCustomerBalanceTransactionsTransactionRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostCustomersCustomerBalanceTransactionsTransactionRequestBodyMetadata' = PostCustomersCustomerBalanceTransactionsTransactionRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerBalanceTransactionsTransactionRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerBalanceTransactionsTransactionRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerBalanceTransactionsTransactionRequestBodyMetadata'" (\obj -> GHC.Base.pure PostCustomersCustomerBalanceTransactionsTransactionRequestBodyMetadata')
-- | Represents a response of the operation 'postCustomersCustomerBalanceTransactionsTransaction'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostCustomersCustomerBalanceTransactionsTransactionResponseError' is used.
data PostCustomersCustomerBalanceTransactionsTransactionResponse =                             
   PostCustomersCustomerBalanceTransactionsTransactionResponseError GHC.Base.String            -- ^ Means either no matching case available or a parse error
  | PostCustomersCustomerBalanceTransactionsTransactionResponse200 CustomerBalanceTransaction  -- ^ Successful response.
  | PostCustomersCustomerBalanceTransactionsTransactionResponseDefault Error                   -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
