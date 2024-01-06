{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getInvoicesInvoiceLines
module StripeAPI.Operations.GetInvoicesInvoiceLines where

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

-- | > GET /v1/invoices/{invoice}/lines
--
-- \<p>When retrieving an invoice, you’ll get a \<strong>lines\<\/strong> property containing the total count of line items and the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.\<\/p>
getInvoicesInvoiceLines ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetInvoicesInvoiceLinesParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetInvoicesInvoiceLinesResponse)
getInvoicesInvoiceLines parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetInvoicesInvoiceLinesResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetInvoicesInvoiceLinesResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetInvoicesInvoiceLinesResponseBody200
                                                        )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetInvoicesInvoiceLinesResponseDefault
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
        ("/v1/invoices/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel (getInvoicesInvoiceLinesParametersPathInvoice parameters))) GHC.Base.<> "/lines"))
        [ StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getInvoicesInvoiceLinesParametersQueryEndingBefore parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getInvoicesInvoiceLinesParametersQueryExpand parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getInvoicesInvoiceLinesParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getInvoicesInvoiceLinesParametersQueryStartingAfter parameters) (Data.Text.Internal.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/invoices\/{invoice}\/lines.GET.parameters@ in the specification.
data GetInvoicesInvoiceLinesParameters = GetInvoicesInvoiceLinesParameters
  { -- | pathInvoice: Represents the parameter named \'invoice\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getInvoicesInvoiceLinesParametersPathInvoice :: Data.Text.Internal.Text,
    -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getInvoicesInvoiceLinesParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getInvoicesInvoiceLinesParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getInvoicesInvoiceLinesParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getInvoicesInvoiceLinesParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetInvoicesInvoiceLinesParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathInvoice" Data.Aeson.Types.ToJSON..= getInvoicesInvoiceLinesParametersPathInvoice obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getInvoicesInvoiceLinesParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getInvoicesInvoiceLinesParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getInvoicesInvoiceLinesParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getInvoicesInvoiceLinesParametersQueryStartingAfter obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathInvoice" Data.Aeson.Types.ToJSON..= getInvoicesInvoiceLinesParametersPathInvoice obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getInvoicesInvoiceLinesParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getInvoicesInvoiceLinesParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getInvoicesInvoiceLinesParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getInvoicesInvoiceLinesParametersQueryStartingAfter obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetInvoicesInvoiceLinesParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetInvoicesInvoiceLinesParameters" (\obj -> ((((GHC.Base.pure GetInvoicesInvoiceLinesParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathInvoice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after"))

-- | Create a new 'GetInvoicesInvoiceLinesParameters' with all required fields.
mkGetInvoicesInvoiceLinesParameters ::
  -- | 'getInvoicesInvoiceLinesParametersPathInvoice'
  Data.Text.Internal.Text ->
  GetInvoicesInvoiceLinesParameters
mkGetInvoicesInvoiceLinesParameters getInvoicesInvoiceLinesParametersPathInvoice =
  GetInvoicesInvoiceLinesParameters
    { getInvoicesInvoiceLinesParametersPathInvoice = getInvoicesInvoiceLinesParametersPathInvoice,
      getInvoicesInvoiceLinesParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getInvoicesInvoiceLinesParametersQueryExpand = GHC.Maybe.Nothing,
      getInvoicesInvoiceLinesParametersQueryLimit = GHC.Maybe.Nothing,
      getInvoicesInvoiceLinesParametersQueryStartingAfter = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getInvoicesInvoiceLines'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetInvoicesInvoiceLinesResponseError' is used.
data GetInvoicesInvoiceLinesResponse
  = -- | Means either no matching case available or a parse error
    GetInvoicesInvoiceLinesResponseError GHC.Base.String
  | -- | Successful response.
    GetInvoicesInvoiceLinesResponse200 GetInvoicesInvoiceLinesResponseBody200
  | -- | Error response.
    GetInvoicesInvoiceLinesResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/invoices\/{invoice}\/lines.GET.responses.200.content.application\/json.schema@ in the specification.
data GetInvoicesInvoiceLinesResponseBody200 = GetInvoicesInvoiceLinesResponseBody200
  { -- | data: Details about each object.
    getInvoicesInvoiceLinesResponseBody200Data :: ([LineItem]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getInvoicesInvoiceLinesResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getInvoicesInvoiceLinesResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetInvoicesInvoiceLinesResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getInvoicesInvoiceLinesResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getInvoicesInvoiceLinesResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getInvoicesInvoiceLinesResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getInvoicesInvoiceLinesResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getInvoicesInvoiceLinesResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getInvoicesInvoiceLinesResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetInvoicesInvoiceLinesResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetInvoicesInvoiceLinesResponseBody200" (\obj -> ((GHC.Base.pure GetInvoicesInvoiceLinesResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetInvoicesInvoiceLinesResponseBody200' with all required fields.
mkGetInvoicesInvoiceLinesResponseBody200 ::
  -- | 'getInvoicesInvoiceLinesResponseBody200Data'
  [LineItem] ->
  -- | 'getInvoicesInvoiceLinesResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getInvoicesInvoiceLinesResponseBody200Url'
  Data.Text.Internal.Text ->
  GetInvoicesInvoiceLinesResponseBody200
mkGetInvoicesInvoiceLinesResponseBody200 getInvoicesInvoiceLinesResponseBody200Data getInvoicesInvoiceLinesResponseBody200HasMore getInvoicesInvoiceLinesResponseBody200Url =
  GetInvoicesInvoiceLinesResponseBody200
    { getInvoicesInvoiceLinesResponseBody200Data = getInvoicesInvoiceLinesResponseBody200Data,
      getInvoicesInvoiceLinesResponseBody200HasMore = getInvoicesInvoiceLinesResponseBody200HasMore,
      getInvoicesInvoiceLinesResponseBody200Url = getInvoicesInvoiceLinesResponseBody200Url
    }
