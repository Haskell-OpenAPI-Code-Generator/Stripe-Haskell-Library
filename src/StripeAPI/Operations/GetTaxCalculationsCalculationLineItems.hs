{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getTaxCalculationsCalculationLineItems
module StripeAPI.Operations.GetTaxCalculationsCalculationLineItems where

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

-- | > GET /v1/tax/calculations/{calculation}/line_items
--
-- \<p>Retrieves the line items of a persisted tax calculation as a collection.\<\/p>
getTaxCalculationsCalculationLineItems ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetTaxCalculationsCalculationLineItemsParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetTaxCalculationsCalculationLineItemsResponse)
getTaxCalculationsCalculationLineItems parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetTaxCalculationsCalculationLineItemsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetTaxCalculationsCalculationLineItemsResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetTaxCalculationsCalculationLineItemsResponseBody200
                                                        )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetTaxCalculationsCalculationLineItemsResponseDefault
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
        ("/v1/tax/calculations/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel (getTaxCalculationsCalculationLineItemsParametersPathCalculation parameters))) GHC.Base.<> "/line_items"))
        [ StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTaxCalculationsCalculationLineItemsParametersQueryEndingBefore parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTaxCalculationsCalculationLineItemsParametersQueryExpand parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTaxCalculationsCalculationLineItemsParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTaxCalculationsCalculationLineItemsParametersQueryStartingAfter parameters) (Data.Text.Internal.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/tax\/calculations\/{calculation}\/line_items.GET.parameters@ in the specification.
data GetTaxCalculationsCalculationLineItemsParameters = GetTaxCalculationsCalculationLineItemsParameters
  { -- | pathCalculation: Represents the parameter named \'calculation\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getTaxCalculationsCalculationLineItemsParametersPathCalculation :: Data.Text.Internal.Text,
    -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 500
    getTaxCalculationsCalculationLineItemsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getTaxCalculationsCalculationLineItemsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getTaxCalculationsCalculationLineItemsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 500
    getTaxCalculationsCalculationLineItemsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetTaxCalculationsCalculationLineItemsParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathCalculation" Data.Aeson.Types.ToJSON..= getTaxCalculationsCalculationLineItemsParametersPathCalculation obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getTaxCalculationsCalculationLineItemsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getTaxCalculationsCalculationLineItemsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getTaxCalculationsCalculationLineItemsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getTaxCalculationsCalculationLineItemsParametersQueryStartingAfter obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathCalculation" Data.Aeson.Types.ToJSON..= getTaxCalculationsCalculationLineItemsParametersPathCalculation obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getTaxCalculationsCalculationLineItemsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getTaxCalculationsCalculationLineItemsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getTaxCalculationsCalculationLineItemsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getTaxCalculationsCalculationLineItemsParametersQueryStartingAfter obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetTaxCalculationsCalculationLineItemsParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTaxCalculationsCalculationLineItemsParameters" (\obj -> ((((GHC.Base.pure GetTaxCalculationsCalculationLineItemsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathCalculation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after"))

-- | Create a new 'GetTaxCalculationsCalculationLineItemsParameters' with all required fields.
mkGetTaxCalculationsCalculationLineItemsParameters ::
  -- | 'getTaxCalculationsCalculationLineItemsParametersPathCalculation'
  Data.Text.Internal.Text ->
  GetTaxCalculationsCalculationLineItemsParameters
mkGetTaxCalculationsCalculationLineItemsParameters getTaxCalculationsCalculationLineItemsParametersPathCalculation =
  GetTaxCalculationsCalculationLineItemsParameters
    { getTaxCalculationsCalculationLineItemsParametersPathCalculation = getTaxCalculationsCalculationLineItemsParametersPathCalculation,
      getTaxCalculationsCalculationLineItemsParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getTaxCalculationsCalculationLineItemsParametersQueryExpand = GHC.Maybe.Nothing,
      getTaxCalculationsCalculationLineItemsParametersQueryLimit = GHC.Maybe.Nothing,
      getTaxCalculationsCalculationLineItemsParametersQueryStartingAfter = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getTaxCalculationsCalculationLineItems'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetTaxCalculationsCalculationLineItemsResponseError' is used.
data GetTaxCalculationsCalculationLineItemsResponse
  = -- | Means either no matching case available or a parse error
    GetTaxCalculationsCalculationLineItemsResponseError GHC.Base.String
  | -- | Successful response.
    GetTaxCalculationsCalculationLineItemsResponse200 GetTaxCalculationsCalculationLineItemsResponseBody200
  | -- | Error response.
    GetTaxCalculationsCalculationLineItemsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/tax\/calculations\/{calculation}\/line_items.GET.responses.200.content.application\/json.schema@ in the specification.
data GetTaxCalculationsCalculationLineItemsResponseBody200 = GetTaxCalculationsCalculationLineItemsResponseBody200
  { -- | data: Details about each object.
    getTaxCalculationsCalculationLineItemsResponseBody200Data :: ([Tax'calculationLineItem]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getTaxCalculationsCalculationLineItemsResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    -- * Must match pattern \'^\/v1\/tax\/calculations\/[^\/]+\/line_items\'
    getTaxCalculationsCalculationLineItemsResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetTaxCalculationsCalculationLineItemsResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getTaxCalculationsCalculationLineItemsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getTaxCalculationsCalculationLineItemsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getTaxCalculationsCalculationLineItemsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getTaxCalculationsCalculationLineItemsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getTaxCalculationsCalculationLineItemsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getTaxCalculationsCalculationLineItemsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetTaxCalculationsCalculationLineItemsResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTaxCalculationsCalculationLineItemsResponseBody200" (\obj -> ((GHC.Base.pure GetTaxCalculationsCalculationLineItemsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetTaxCalculationsCalculationLineItemsResponseBody200' with all required fields.
mkGetTaxCalculationsCalculationLineItemsResponseBody200 ::
  -- | 'getTaxCalculationsCalculationLineItemsResponseBody200Data'
  [Tax'calculationLineItem] ->
  -- | 'getTaxCalculationsCalculationLineItemsResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getTaxCalculationsCalculationLineItemsResponseBody200Url'
  Data.Text.Internal.Text ->
  GetTaxCalculationsCalculationLineItemsResponseBody200
mkGetTaxCalculationsCalculationLineItemsResponseBody200 getTaxCalculationsCalculationLineItemsResponseBody200Data getTaxCalculationsCalculationLineItemsResponseBody200HasMore getTaxCalculationsCalculationLineItemsResponseBody200Url =
  GetTaxCalculationsCalculationLineItemsResponseBody200
    { getTaxCalculationsCalculationLineItemsResponseBody200Data = getTaxCalculationsCalculationLineItemsResponseBody200Data,
      getTaxCalculationsCalculationLineItemsResponseBody200HasMore = getTaxCalculationsCalculationLineItemsResponseBody200HasMore,
      getTaxCalculationsCalculationLineItemsResponseBody200Url = getTaxCalculationsCalculationLineItemsResponseBody200Url
    }
