{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getQuotesQuoteComputedUpfrontLineItems
module StripeAPI.Operations.GetQuotesQuoteComputedUpfrontLineItems where

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

-- | > GET /v1/quotes/{quote}/computed_upfront_line_items
--
-- \<p>When retrieving a quote, there is an includable \<a href=\"https:\/\/stripe.com\/docs\/api\/quotes\/object\#quote_object-computed-upfront-line_items\">\<strong>computed.upfront.line_items\<\/strong>\<\/a> property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of upfront line items.\<\/p>
getQuotesQuoteComputedUpfrontLineItems ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetQuotesQuoteComputedUpfrontLineItemsParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetQuotesQuoteComputedUpfrontLineItemsResponse)
getQuotesQuoteComputedUpfrontLineItems parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetQuotesQuoteComputedUpfrontLineItemsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetQuotesQuoteComputedUpfrontLineItemsResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetQuotesQuoteComputedUpfrontLineItemsResponseBody200
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetQuotesQuoteComputedUpfrontLineItemsResponseDefault
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
        (Data.Text.pack ("/v1/quotes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (getQuotesQuoteComputedUpfrontLineItemsParametersPathQuote parameters))) GHC.Base.++ "/computed_upfront_line_items")))
        [ StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getQuotesQuoteComputedUpfrontLineItemsParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getQuotesQuoteComputedUpfrontLineItemsParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getQuotesQuoteComputedUpfrontLineItemsParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getQuotesQuoteComputedUpfrontLineItemsParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/quotes\/{quote}\/computed_upfront_line_items.GET.parameters@ in the specification.
data GetQuotesQuoteComputedUpfrontLineItemsParameters = GetQuotesQuoteComputedUpfrontLineItemsParameters
  { -- | pathQuote: Represents the parameter named \'quote\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getQuotesQuoteComputedUpfrontLineItemsParametersPathQuote :: Data.Text.Internal.Text,
    -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getQuotesQuoteComputedUpfrontLineItemsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getQuotesQuoteComputedUpfrontLineItemsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getQuotesQuoteComputedUpfrontLineItemsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getQuotesQuoteComputedUpfrontLineItemsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetQuotesQuoteComputedUpfrontLineItemsParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathQuote" Data.Aeson.Types.ToJSON..= getQuotesQuoteComputedUpfrontLineItemsParametersPathQuote obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getQuotesQuoteComputedUpfrontLineItemsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getQuotesQuoteComputedUpfrontLineItemsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getQuotesQuoteComputedUpfrontLineItemsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getQuotesQuoteComputedUpfrontLineItemsParametersQueryStartingAfter obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathQuote" Data.Aeson.Types.ToJSON..= getQuotesQuoteComputedUpfrontLineItemsParametersPathQuote obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getQuotesQuoteComputedUpfrontLineItemsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getQuotesQuoteComputedUpfrontLineItemsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getQuotesQuoteComputedUpfrontLineItemsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getQuotesQuoteComputedUpfrontLineItemsParametersQueryStartingAfter obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetQuotesQuoteComputedUpfrontLineItemsParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetQuotesQuoteComputedUpfrontLineItemsParameters" (\obj -> ((((GHC.Base.pure GetQuotesQuoteComputedUpfrontLineItemsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathQuote")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after"))

-- | Create a new 'GetQuotesQuoteComputedUpfrontLineItemsParameters' with all required fields.
mkGetQuotesQuoteComputedUpfrontLineItemsParameters ::
  -- | 'getQuotesQuoteComputedUpfrontLineItemsParametersPathQuote'
  Data.Text.Internal.Text ->
  GetQuotesQuoteComputedUpfrontLineItemsParameters
mkGetQuotesQuoteComputedUpfrontLineItemsParameters getQuotesQuoteComputedUpfrontLineItemsParametersPathQuote =
  GetQuotesQuoteComputedUpfrontLineItemsParameters
    { getQuotesQuoteComputedUpfrontLineItemsParametersPathQuote = getQuotesQuoteComputedUpfrontLineItemsParametersPathQuote,
      getQuotesQuoteComputedUpfrontLineItemsParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getQuotesQuoteComputedUpfrontLineItemsParametersQueryExpand = GHC.Maybe.Nothing,
      getQuotesQuoteComputedUpfrontLineItemsParametersQueryLimit = GHC.Maybe.Nothing,
      getQuotesQuoteComputedUpfrontLineItemsParametersQueryStartingAfter = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getQuotesQuoteComputedUpfrontLineItems'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetQuotesQuoteComputedUpfrontLineItemsResponseError' is used.
data GetQuotesQuoteComputedUpfrontLineItemsResponse
  = -- | Means either no matching case available or a parse error
    GetQuotesQuoteComputedUpfrontLineItemsResponseError GHC.Base.String
  | -- | Successful response.
    GetQuotesQuoteComputedUpfrontLineItemsResponse200 GetQuotesQuoteComputedUpfrontLineItemsResponseBody200
  | -- | Error response.
    GetQuotesQuoteComputedUpfrontLineItemsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/quotes\/{quote}\/computed_upfront_line_items.GET.responses.200.content.application\/json.schema@ in the specification.
data GetQuotesQuoteComputedUpfrontLineItemsResponseBody200 = GetQuotesQuoteComputedUpfrontLineItemsResponseBody200
  { -- | data: Details about each object.
    getQuotesQuoteComputedUpfrontLineItemsResponseBody200Data :: ([Item]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getQuotesQuoteComputedUpfrontLineItemsResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getQuotesQuoteComputedUpfrontLineItemsResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetQuotesQuoteComputedUpfrontLineItemsResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getQuotesQuoteComputedUpfrontLineItemsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getQuotesQuoteComputedUpfrontLineItemsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getQuotesQuoteComputedUpfrontLineItemsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getQuotesQuoteComputedUpfrontLineItemsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getQuotesQuoteComputedUpfrontLineItemsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getQuotesQuoteComputedUpfrontLineItemsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetQuotesQuoteComputedUpfrontLineItemsResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetQuotesQuoteComputedUpfrontLineItemsResponseBody200" (\obj -> ((GHC.Base.pure GetQuotesQuoteComputedUpfrontLineItemsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetQuotesQuoteComputedUpfrontLineItemsResponseBody200' with all required fields.
mkGetQuotesQuoteComputedUpfrontLineItemsResponseBody200 ::
  -- | 'getQuotesQuoteComputedUpfrontLineItemsResponseBody200Data'
  [Item] ->
  -- | 'getQuotesQuoteComputedUpfrontLineItemsResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getQuotesQuoteComputedUpfrontLineItemsResponseBody200Url'
  Data.Text.Internal.Text ->
  GetQuotesQuoteComputedUpfrontLineItemsResponseBody200
mkGetQuotesQuoteComputedUpfrontLineItemsResponseBody200 getQuotesQuoteComputedUpfrontLineItemsResponseBody200Data getQuotesQuoteComputedUpfrontLineItemsResponseBody200HasMore getQuotesQuoteComputedUpfrontLineItemsResponseBody200Url =
  GetQuotesQuoteComputedUpfrontLineItemsResponseBody200
    { getQuotesQuoteComputedUpfrontLineItemsResponseBody200Data = getQuotesQuoteComputedUpfrontLineItemsResponseBody200Data,
      getQuotesQuoteComputedUpfrontLineItemsResponseBody200HasMore = getQuotesQuoteComputedUpfrontLineItemsResponseBody200HasMore,
      getQuotesQuoteComputedUpfrontLineItemsResponseBody200Url = getQuotesQuoteComputedUpfrontLineItemsResponseBody200Url
    }
