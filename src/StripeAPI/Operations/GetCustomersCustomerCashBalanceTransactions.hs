{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getCustomersCustomerCashBalanceTransactions
module StripeAPI.Operations.GetCustomersCustomerCashBalanceTransactions where

import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.ByteString as Data.ByteString.Internal.Type
import qualified Data.Either
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | > GET /v1/customers/{customer}/cash_balance_transactions
--
-- \<p>Returns a list of transactions that modified the customer’s \<a href=\"\/docs\/payments\/customer-balance\">cash balance\<\/a>.\<\/p>
getCustomersCustomerCashBalanceTransactions ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetCustomersCustomerCashBalanceTransactionsParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetCustomersCustomerCashBalanceTransactionsResponse)
getCustomersCustomerCashBalanceTransactions parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetCustomersCustomerCashBalanceTransactionsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetCustomersCustomerCashBalanceTransactionsResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetCustomersCustomerCashBalanceTransactionsResponseBody200
                                                        )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetCustomersCustomerCashBalanceTransactionsResponseDefault
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                         )
                response_0
          )
          response_0
    )
    ( StripeAPI.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET")
        ("/v1/customers/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel (getCustomersCustomerCashBalanceTransactionsParametersPathCustomer parameters))) GHC.Base.<> "/cash_balance_transactions"))
        [ StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCustomersCustomerCashBalanceTransactionsParametersQueryEndingBefore parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCustomersCustomerCashBalanceTransactionsParametersQueryExpand parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCustomersCustomerCashBalanceTransactionsParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCustomersCustomerCashBalanceTransactionsParametersQueryStartingAfter parameters) (Data.Text.Internal.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/customers\/{customer}\/cash_balance_transactions.GET.parameters@ in the specification.
data GetCustomersCustomerCashBalanceTransactionsParameters = GetCustomersCustomerCashBalanceTransactionsParameters
  { -- | pathCustomer: Represents the parameter named \'customer\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getCustomersCustomerCashBalanceTransactionsParametersPathCustomer :: Data.Text.Internal.Text,
    -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getCustomersCustomerCashBalanceTransactionsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getCustomersCustomerCashBalanceTransactionsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getCustomersCustomerCashBalanceTransactionsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getCustomersCustomerCashBalanceTransactionsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetCustomersCustomerCashBalanceTransactionsParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathCustomer" Data.Aeson.Types.ToJSON..= getCustomersCustomerCashBalanceTransactionsParametersPathCustomer obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerCashBalanceTransactionsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerCashBalanceTransactionsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerCashBalanceTransactionsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerCashBalanceTransactionsParametersQueryStartingAfter obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathCustomer" Data.Aeson.Types.ToJSON..= getCustomersCustomerCashBalanceTransactionsParametersPathCustomer obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerCashBalanceTransactionsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerCashBalanceTransactionsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerCashBalanceTransactionsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerCashBalanceTransactionsParametersQueryStartingAfter obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerCashBalanceTransactionsParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerCashBalanceTransactionsParameters" (\obj -> ((((GHC.Base.pure GetCustomersCustomerCashBalanceTransactionsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathCustomer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after"))

-- | Create a new 'GetCustomersCustomerCashBalanceTransactionsParameters' with all required fields.
mkGetCustomersCustomerCashBalanceTransactionsParameters ::
  -- | 'getCustomersCustomerCashBalanceTransactionsParametersPathCustomer'
  Data.Text.Internal.Text ->
  GetCustomersCustomerCashBalanceTransactionsParameters
mkGetCustomersCustomerCashBalanceTransactionsParameters getCustomersCustomerCashBalanceTransactionsParametersPathCustomer =
  GetCustomersCustomerCashBalanceTransactionsParameters
    { getCustomersCustomerCashBalanceTransactionsParametersPathCustomer = getCustomersCustomerCashBalanceTransactionsParametersPathCustomer,
      getCustomersCustomerCashBalanceTransactionsParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getCustomersCustomerCashBalanceTransactionsParametersQueryExpand = GHC.Maybe.Nothing,
      getCustomersCustomerCashBalanceTransactionsParametersQueryLimit = GHC.Maybe.Nothing,
      getCustomersCustomerCashBalanceTransactionsParametersQueryStartingAfter = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getCustomersCustomerCashBalanceTransactions'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetCustomersCustomerCashBalanceTransactionsResponseError' is used.
data GetCustomersCustomerCashBalanceTransactionsResponse
  = -- | Means either no matching case available or a parse error
    GetCustomersCustomerCashBalanceTransactionsResponseError GHC.Base.String
  | -- | Successful response.
    GetCustomersCustomerCashBalanceTransactionsResponse200 GetCustomersCustomerCashBalanceTransactionsResponseBody200
  | -- | Error response.
    GetCustomersCustomerCashBalanceTransactionsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/customers\/{customer}\/cash_balance_transactions.GET.responses.200.content.application\/json.schema@ in the specification.
--
-- Customers with certain payments enabled have a cash balance, representing funds that were paid
-- by the customer to a merchant, but have not yet been allocated to a payment. Cash Balance Transactions
-- represent when funds are moved into or out of this balance. This includes funding by the customer, allocation
-- to payments, and refunds to the customer.
data GetCustomersCustomerCashBalanceTransactionsResponseBody200 = GetCustomersCustomerCashBalanceTransactionsResponseBody200
  { -- | data: Details about each object.
    getCustomersCustomerCashBalanceTransactionsResponseBody200Data :: ([CustomerCashBalanceTransaction]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getCustomersCustomerCashBalanceTransactionsResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getCustomersCustomerCashBalanceTransactionsResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetCustomersCustomerCashBalanceTransactionsResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getCustomersCustomerCashBalanceTransactionsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getCustomersCustomerCashBalanceTransactionsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getCustomersCustomerCashBalanceTransactionsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getCustomersCustomerCashBalanceTransactionsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getCustomersCustomerCashBalanceTransactionsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getCustomersCustomerCashBalanceTransactionsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerCashBalanceTransactionsResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerCashBalanceTransactionsResponseBody200" (\obj -> ((GHC.Base.pure GetCustomersCustomerCashBalanceTransactionsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetCustomersCustomerCashBalanceTransactionsResponseBody200' with all required fields.
mkGetCustomersCustomerCashBalanceTransactionsResponseBody200 ::
  -- | 'getCustomersCustomerCashBalanceTransactionsResponseBody200Data'
  [CustomerCashBalanceTransaction] ->
  -- | 'getCustomersCustomerCashBalanceTransactionsResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getCustomersCustomerCashBalanceTransactionsResponseBody200Url'
  Data.Text.Internal.Text ->
  GetCustomersCustomerCashBalanceTransactionsResponseBody200
mkGetCustomersCustomerCashBalanceTransactionsResponseBody200 getCustomersCustomerCashBalanceTransactionsResponseBody200Data getCustomersCustomerCashBalanceTransactionsResponseBody200HasMore getCustomersCustomerCashBalanceTransactionsResponseBody200Url =
  GetCustomersCustomerCashBalanceTransactionsResponseBody200
    { getCustomersCustomerCashBalanceTransactionsResponseBody200Data = getCustomersCustomerCashBalanceTransactionsResponseBody200Data,
      getCustomersCustomerCashBalanceTransactionsResponseBody200HasMore = getCustomersCustomerCashBalanceTransactionsResponseBody200HasMore,
      getCustomersCustomerCashBalanceTransactionsResponseBody200Url = getCustomersCustomerCashBalanceTransactionsResponseBody200Url
    }
