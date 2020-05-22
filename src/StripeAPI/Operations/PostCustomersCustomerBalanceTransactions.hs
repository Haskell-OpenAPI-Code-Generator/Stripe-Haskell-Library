{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postCustomersCustomerBalanceTransactions
module StripeAPI.Operations.PostCustomersCustomerBalanceTransactions where

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

-- | > POST /v1/customers/{customer}/balance_transactions
-- 
-- \<p>Creates an immutable transaction that updates the customer’s \<a href=\"\/docs\/api\/customers\/object\#customer_object-balance\">\<code>balance\<\/code>\<\/a>.\<\/p>
postCustomersCustomerBalanceTransactions :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                                      -- ^ customer | Constraints: Maximum length of 5000
  -> PostCustomersCustomerBalanceTransactionsRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostCustomersCustomerBalanceTransactionsResponse)) -- ^ Monad containing the result of the operation
postCustomersCustomerBalanceTransactions config
                                         customer
                                         body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerBalanceTransactionsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerBalanceTransactionsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          CustomerBalanceTransaction)
                                                                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerBalanceTransactionsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/balance_transactions"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/customers/{customer}/balance_transactions
-- 
-- The same as 'postCustomersCustomerBalanceTransactions' but returns the raw 'Data.ByteString.Char8.ByteString'
postCustomersCustomerBalanceTransactionsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                             StripeAPI.Common.SecurityScheme s) =>
                                               StripeAPI.Common.Configuration s ->
                                               GHC.Base.String ->
                                               PostCustomersCustomerBalanceTransactionsRequestBody ->
                                               m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerBalanceTransactionsRaw config
                                            customer
                                            body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/balance_transactions"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/customers/{customer}/balance_transactions
-- 
-- Monadic version of 'postCustomersCustomerBalanceTransactions' (use with 'StripeAPI.Common.runWithConfiguration')
postCustomersCustomerBalanceTransactionsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                           StripeAPI.Common.SecurityScheme s) =>
                                             GHC.Base.String ->
                                             PostCustomersCustomerBalanceTransactionsRequestBody ->
                                             Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                m
                                                                                (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                    (Network.HTTP.Client.Types.Response PostCustomersCustomerBalanceTransactionsResponse))
postCustomersCustomerBalanceTransactionsM customer
                                          body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerBalanceTransactionsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerBalanceTransactionsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           CustomerBalanceTransaction)
                                                                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerBalanceTransactionsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/balance_transactions"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/customers/{customer}/balance_transactions
-- 
-- Monadic version of 'postCustomersCustomerBalanceTransactionsRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postCustomersCustomerBalanceTransactionsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                              StripeAPI.Common.SecurityScheme s) =>
                                                GHC.Base.String ->
                                                PostCustomersCustomerBalanceTransactionsRequestBody ->
                                                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                   m
                                                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerBalanceTransactionsRawM customer
                                             body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/balance_transactions"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postCustomersCustomerBalanceTransactionsRequestBody
-- 
-- 
data PostCustomersCustomerBalanceTransactionsRequestBody = PostCustomersCustomerBalanceTransactionsRequestBody {
  -- | amount: The integer amount in **%s** to apply to the customer\'s balance. Pass a negative amount to credit the customer\'s balance, and pass in a positive amount to debit the customer\'s balance.
  postCustomersCustomerBalanceTransactionsRequestBodyAmount :: GHC.Integer.Type.Integer
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies). If the customer\'s [\`currency\`](https:\/\/stripe.com\/docs\/api\/customers\/object\#customer_object-currency) is set, this value must match it. If the customer\'s \`currency\` is not set, it will be updated to this value.
  , postCustomersCustomerBalanceTransactionsRequestBodyCurrency :: GHC.Base.String
  -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 350
  , postCustomersCustomerBalanceTransactionsRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | expand: Specifies which fields in the response should be expanded.
  , postCustomersCustomerBalanceTransactionsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postCustomersCustomerBalanceTransactionsRequestBodyMetadata :: (GHC.Maybe.Maybe PostCustomersCustomerBalanceTransactionsRequestBodyMetadata')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerBalanceTransactionsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postCustomersCustomerBalanceTransactionsRequestBodyAmount obj) : (Data.Aeson..=) "currency" (postCustomersCustomerBalanceTransactionsRequestBodyCurrency obj) : (Data.Aeson..=) "description" (postCustomersCustomerBalanceTransactionsRequestBodyDescription obj) : (Data.Aeson..=) "expand" (postCustomersCustomerBalanceTransactionsRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postCustomersCustomerBalanceTransactionsRequestBodyMetadata obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postCustomersCustomerBalanceTransactionsRequestBodyAmount obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postCustomersCustomerBalanceTransactionsRequestBodyCurrency obj) GHC.Base.<> ((Data.Aeson..=) "description" (postCustomersCustomerBalanceTransactionsRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postCustomersCustomerBalanceTransactionsRequestBodyExpand obj) GHC.Base.<> (Data.Aeson..=) "metadata" (postCustomersCustomerBalanceTransactionsRequestBodyMetadata obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerBalanceTransactionsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerBalanceTransactionsRequestBody" (\obj -> ((((GHC.Base.pure PostCustomersCustomerBalanceTransactionsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata"))
-- | Defines the data type for the schema postCustomersCustomerBalanceTransactionsRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostCustomersCustomerBalanceTransactionsRequestBodyMetadata' = PostCustomersCustomerBalanceTransactionsRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerBalanceTransactionsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerBalanceTransactionsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerBalanceTransactionsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostCustomersCustomerBalanceTransactionsRequestBodyMetadata')
-- | Represents a response of the operation 'postCustomersCustomerBalanceTransactions'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostCustomersCustomerBalanceTransactionsResponseError' is used.
data PostCustomersCustomerBalanceTransactionsResponse =                             
   PostCustomersCustomerBalanceTransactionsResponseError GHC.Base.String            -- ^ Means either no matching case available or a parse error
  | PostCustomersCustomerBalanceTransactionsResponse200 CustomerBalanceTransaction  -- ^ Successful response.
  | PostCustomersCustomerBalanceTransactionsResponseDefault Error                   -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
