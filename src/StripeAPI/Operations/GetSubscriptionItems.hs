{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSubscriptionItems
module StripeAPI.Operations.GetSubscriptionItems where

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
import qualified Data.Text as Data.Text.Internal
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

-- | > GET /v1/subscription_items
--
-- \<p>Returns a list of your subscription items for a given subscription.\<\/p>
getSubscriptionItems ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSubscriptionItemsParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetSubscriptionItemsResponse)
getSubscriptionItems parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSubscriptionItemsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSubscriptionItemsResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetSubscriptionItemsResponseBody200
                                                        )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSubscriptionItemsResponseDefault
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
        "/v1/subscription_items"
        [ StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSubscriptionItemsParametersQueryEndingBefore parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSubscriptionItemsParametersQueryExpand parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSubscriptionItemsParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSubscriptionItemsParametersQueryStartingAfter parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "subscription") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSubscriptionItemsParametersQuerySubscription parameters)) (Data.Text.Internal.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/subscription_items.GET.parameters@ in the specification.
data GetSubscriptionItemsParameters = GetSubscriptionItemsParameters
  { -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    getSubscriptionItemsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getSubscriptionItemsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getSubscriptionItemsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    getSubscriptionItemsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | querySubscription: Represents the parameter named \'subscription\'
    --
    -- The ID of the subscription whose items will be retrieved.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getSubscriptionItemsParametersQuerySubscription :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSubscriptionItemsParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getSubscriptionItemsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getSubscriptionItemsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getSubscriptionItemsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getSubscriptionItemsParametersQueryStartingAfter obj) : ["querySubscription" Data.Aeson.Types.ToJSON..= getSubscriptionItemsParametersQuerySubscription obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getSubscriptionItemsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getSubscriptionItemsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getSubscriptionItemsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getSubscriptionItemsParametersQueryStartingAfter obj) : ["querySubscription" Data.Aeson.Types.ToJSON..= getSubscriptionItemsParametersQuerySubscription obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSubscriptionItemsParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSubscriptionItemsParameters" (\obj -> ((((GHC.Base.pure GetSubscriptionItemsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySubscription"))

-- | Create a new 'GetSubscriptionItemsParameters' with all required fields.
mkGetSubscriptionItemsParameters ::
  -- | 'getSubscriptionItemsParametersQuerySubscription'
  Data.Text.Internal.Text ->
  GetSubscriptionItemsParameters
mkGetSubscriptionItemsParameters getSubscriptionItemsParametersQuerySubscription =
  GetSubscriptionItemsParameters
    { getSubscriptionItemsParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getSubscriptionItemsParametersQueryExpand = GHC.Maybe.Nothing,
      getSubscriptionItemsParametersQueryLimit = GHC.Maybe.Nothing,
      getSubscriptionItemsParametersQueryStartingAfter = GHC.Maybe.Nothing,
      getSubscriptionItemsParametersQuerySubscription = getSubscriptionItemsParametersQuerySubscription
    }

-- | Represents a response of the operation 'getSubscriptionItems'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSubscriptionItemsResponseError' is used.
data GetSubscriptionItemsResponse
  = -- | Means either no matching case available or a parse error
    GetSubscriptionItemsResponseError GHC.Base.String
  | -- | Successful response.
    GetSubscriptionItemsResponse200 GetSubscriptionItemsResponseBody200
  | -- | Error response.
    GetSubscriptionItemsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/subscription_items.GET.responses.200.content.application\/json.schema@ in the specification.
data GetSubscriptionItemsResponseBody200 = GetSubscriptionItemsResponseBody200
  { -- | data
    getSubscriptionItemsResponseBody200Data :: ([SubscriptionItem]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getSubscriptionItemsResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    -- * Must match pattern \'^\/v1\/subscription_items\'
    getSubscriptionItemsResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSubscriptionItemsResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getSubscriptionItemsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getSubscriptionItemsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getSubscriptionItemsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getSubscriptionItemsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getSubscriptionItemsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getSubscriptionItemsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSubscriptionItemsResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSubscriptionItemsResponseBody200" (\obj -> ((GHC.Base.pure GetSubscriptionItemsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetSubscriptionItemsResponseBody200' with all required fields.
mkGetSubscriptionItemsResponseBody200 ::
  -- | 'getSubscriptionItemsResponseBody200Data'
  [SubscriptionItem] ->
  -- | 'getSubscriptionItemsResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getSubscriptionItemsResponseBody200Url'
  Data.Text.Internal.Text ->
  GetSubscriptionItemsResponseBody200
mkGetSubscriptionItemsResponseBody200 getSubscriptionItemsResponseBody200Data getSubscriptionItemsResponseBody200HasMore getSubscriptionItemsResponseBody200Url =
  GetSubscriptionItemsResponseBody200
    { getSubscriptionItemsResponseBody200Data = getSubscriptionItemsResponseBody200Data,
      getSubscriptionItemsResponseBody200HasMore = getSubscriptionItemsResponseBody200HasMore,
      getSubscriptionItemsResponseBody200Url = getSubscriptionItemsResponseBody200Url
    }
