{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getOrders
module StripeAPI.Operations.GetOrders where

import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
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

-- | > GET /v1/orders
--
-- \<p>Returns a list of your orders. The orders are returned sorted by creation date, with the most recently created orders appearing first.\<\/p>
getOrders ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetOrdersParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetOrdersResponse)
getOrders parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetOrdersResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetOrdersResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetOrdersResponseBody200
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetOrdersResponseDefault
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
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/v1/orders")
        [ StripeAPI.Common.QueryParameter (Data.Text.pack "customer") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getOrdersParametersQueryCustomer parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getOrdersParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getOrdersParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getOrdersParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getOrdersParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/orders.GET.parameters@ in the specification.
data GetOrdersParameters = GetOrdersParameters
  { -- | queryCustomer: Represents the parameter named \'customer\'
    --
    -- Only return orders for the given customer.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getOrdersParametersQueryCustomer :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    getOrdersParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getOrdersParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getOrdersParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    getOrdersParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetOrdersParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCustomer" Data.Aeson.Types.ToJSON..=)) (getOrdersParametersQueryCustomer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getOrdersParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getOrdersParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getOrdersParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getOrdersParametersQueryStartingAfter obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCustomer" Data.Aeson.Types.ToJSON..=)) (getOrdersParametersQueryCustomer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getOrdersParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getOrdersParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getOrdersParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getOrdersParametersQueryStartingAfter obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetOrdersParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetOrdersParameters" (\obj -> ((((GHC.Base.pure GetOrdersParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCustomer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after"))

-- | Create a new 'GetOrdersParameters' with all required fields.
mkGetOrdersParameters :: GetOrdersParameters
mkGetOrdersParameters =
  GetOrdersParameters
    { getOrdersParametersQueryCustomer = GHC.Maybe.Nothing,
      getOrdersParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getOrdersParametersQueryExpand = GHC.Maybe.Nothing,
      getOrdersParametersQueryLimit = GHC.Maybe.Nothing,
      getOrdersParametersQueryStartingAfter = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getOrders'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetOrdersResponseError' is used.
data GetOrdersResponse
  = -- | Means either no matching case available or a parse error
    GetOrdersResponseError GHC.Base.String
  | -- | Successful response.
    GetOrdersResponse200 GetOrdersResponseBody200
  | -- | Error response.
    GetOrdersResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/orders.GET.responses.200.content.application\/json.schema@ in the specification.
data GetOrdersResponseBody200 = GetOrdersResponseBody200
  { -- | data
    getOrdersResponseBody200Data :: ([Order]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getOrdersResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    -- * Must match pattern \'^\/v1\/orders\'
    getOrdersResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetOrdersResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getOrdersResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getOrdersResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getOrdersResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getOrdersResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getOrdersResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getOrdersResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetOrdersResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetOrdersResponseBody200" (\obj -> ((GHC.Base.pure GetOrdersResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetOrdersResponseBody200' with all required fields.
mkGetOrdersResponseBody200 ::
  -- | 'getOrdersResponseBody200Data'
  [Order] ->
  -- | 'getOrdersResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getOrdersResponseBody200Url'
  Data.Text.Internal.Text ->
  GetOrdersResponseBody200
mkGetOrdersResponseBody200 getOrdersResponseBody200Data getOrdersResponseBody200HasMore getOrdersResponseBody200Url =
  GetOrdersResponseBody200
    { getOrdersResponseBody200Data = getOrdersResponseBody200Data,
      getOrdersResponseBody200HasMore = getOrdersResponseBody200HasMore,
      getOrdersResponseBody200Url = getOrdersResponseBody200Url
    }
