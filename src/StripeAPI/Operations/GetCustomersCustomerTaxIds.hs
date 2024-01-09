{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getCustomersCustomerTaxIds
module StripeAPI.Operations.GetCustomersCustomerTaxIds where

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

-- | > GET /v1/customers/{customer}/tax_ids
--
-- \<p>Returns a list of tax IDs for a customer.\<\/p>
getCustomersCustomerTaxIds ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetCustomersCustomerTaxIdsParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetCustomersCustomerTaxIdsResponse)
getCustomersCustomerTaxIds parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetCustomersCustomerTaxIdsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetCustomersCustomerTaxIdsResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetCustomersCustomerTaxIdsResponseBody200
                                                        )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetCustomersCustomerTaxIdsResponseDefault
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
        ("/v1/customers/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel (getCustomersCustomerTaxIdsParametersPathCustomer parameters))) GHC.Base.<> "/tax_ids"))
        [ StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCustomersCustomerTaxIdsParametersQueryEndingBefore parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCustomersCustomerTaxIdsParametersQueryExpand parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCustomersCustomerTaxIdsParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCustomersCustomerTaxIdsParametersQueryStartingAfter parameters) (Data.Text.Internal.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/customers\/{customer}\/tax_ids.GET.parameters@ in the specification.
data GetCustomersCustomerTaxIdsParameters = GetCustomersCustomerTaxIdsParameters
  { -- | pathCustomer: Represents the parameter named \'customer\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getCustomersCustomerTaxIdsParametersPathCustomer :: Data.Text.Internal.Text,
    -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getCustomersCustomerTaxIdsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getCustomersCustomerTaxIdsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getCustomersCustomerTaxIdsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getCustomersCustomerTaxIdsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetCustomersCustomerTaxIdsParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathCustomer" Data.Aeson.Types.ToJSON..= getCustomersCustomerTaxIdsParametersPathCustomer obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerTaxIdsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerTaxIdsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerTaxIdsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerTaxIdsParametersQueryStartingAfter obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathCustomer" Data.Aeson.Types.ToJSON..= getCustomersCustomerTaxIdsParametersPathCustomer obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerTaxIdsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerTaxIdsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerTaxIdsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerTaxIdsParametersQueryStartingAfter obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerTaxIdsParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerTaxIdsParameters" (\obj -> ((((GHC.Base.pure GetCustomersCustomerTaxIdsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathCustomer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after"))

-- | Create a new 'GetCustomersCustomerTaxIdsParameters' with all required fields.
mkGetCustomersCustomerTaxIdsParameters ::
  -- | 'getCustomersCustomerTaxIdsParametersPathCustomer'
  Data.Text.Internal.Text ->
  GetCustomersCustomerTaxIdsParameters
mkGetCustomersCustomerTaxIdsParameters getCustomersCustomerTaxIdsParametersPathCustomer =
  GetCustomersCustomerTaxIdsParameters
    { getCustomersCustomerTaxIdsParametersPathCustomer = getCustomersCustomerTaxIdsParametersPathCustomer,
      getCustomersCustomerTaxIdsParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getCustomersCustomerTaxIdsParametersQueryExpand = GHC.Maybe.Nothing,
      getCustomersCustomerTaxIdsParametersQueryLimit = GHC.Maybe.Nothing,
      getCustomersCustomerTaxIdsParametersQueryStartingAfter = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getCustomersCustomerTaxIds'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetCustomersCustomerTaxIdsResponseError' is used.
data GetCustomersCustomerTaxIdsResponse
  = -- | Means either no matching case available or a parse error
    GetCustomersCustomerTaxIdsResponseError GHC.Base.String
  | -- | Successful response.
    GetCustomersCustomerTaxIdsResponse200 GetCustomersCustomerTaxIdsResponseBody200
  | -- | Error response.
    GetCustomersCustomerTaxIdsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/customers\/{customer}\/tax_ids.GET.responses.200.content.application\/json.schema@ in the specification.
data GetCustomersCustomerTaxIdsResponseBody200 = GetCustomersCustomerTaxIdsResponseBody200
  { -- | data: Details about each object.
    getCustomersCustomerTaxIdsResponseBody200Data :: ([TaxId]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getCustomersCustomerTaxIdsResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getCustomersCustomerTaxIdsResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetCustomersCustomerTaxIdsResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getCustomersCustomerTaxIdsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getCustomersCustomerTaxIdsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getCustomersCustomerTaxIdsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getCustomersCustomerTaxIdsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getCustomersCustomerTaxIdsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getCustomersCustomerTaxIdsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerTaxIdsResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerTaxIdsResponseBody200" (\obj -> ((GHC.Base.pure GetCustomersCustomerTaxIdsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetCustomersCustomerTaxIdsResponseBody200' with all required fields.
mkGetCustomersCustomerTaxIdsResponseBody200 ::
  -- | 'getCustomersCustomerTaxIdsResponseBody200Data'
  [TaxId] ->
  -- | 'getCustomersCustomerTaxIdsResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getCustomersCustomerTaxIdsResponseBody200Url'
  Data.Text.Internal.Text ->
  GetCustomersCustomerTaxIdsResponseBody200
mkGetCustomersCustomerTaxIdsResponseBody200 getCustomersCustomerTaxIdsResponseBody200Data getCustomersCustomerTaxIdsResponseBody200HasMore getCustomersCustomerTaxIdsResponseBody200Url =
  GetCustomersCustomerTaxIdsResponseBody200
    { getCustomersCustomerTaxIdsResponseBody200Data = getCustomersCustomerTaxIdsResponseBody200Data,
      getCustomersCustomerTaxIdsResponseBody200HasMore = getCustomersCustomerTaxIdsResponseBody200HasMore,
      getCustomersCustomerTaxIdsResponseBody200Url = getCustomersCustomerTaxIdsResponseBody200Url
    }
