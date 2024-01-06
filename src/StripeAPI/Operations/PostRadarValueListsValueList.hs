{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postRadarValueListsValueList
module StripeAPI.Operations.PostRadarValueListsValueList where

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

-- | > POST /v1/radar/value_lists/{value_list}
--
-- \<p>Updates a \<code>ValueList\<\/code> object by setting the values of the parameters passed. Any parameters not provided will be left unchanged. Note that \<code>item_type\<\/code> is immutable.\<\/p>
postRadarValueListsValueList ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | value_list | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe PostRadarValueListsValueListRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostRadarValueListsValueListResponse)
postRadarValueListsValueList
  valueList
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostRadarValueListsValueListResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                       PostRadarValueListsValueListResponse200
                                         Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                              Data.Either.Either
                                                                GHC.Base.String
                                                                Radar'valueList
                                                          )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                       PostRadarValueListsValueListResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/v1/radar/value_lists/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel valueList)) GHC.Base.<> "")) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/radar\/value_lists\/{value_list}.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostRadarValueListsValueListRequestBody = PostRadarValueListsValueListRequestBody
  { -- | alias: The name of the value list for use in rules.
    --
    -- Constraints:
    --
    -- * Maximum length of 100
    postRadarValueListsValueListRequestBodyAlias :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | expand: Specifies which fields in the response should be expanded.
    postRadarValueListsValueListRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
    postRadarValueListsValueListRequestBodyMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | name: The human-readable name of the value list.
    --
    -- Constraints:
    --
    -- * Maximum length of 100
    postRadarValueListsValueListRequestBodyName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostRadarValueListsValueListRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("alias" Data.Aeson.Types.ToJSON..=)) (postRadarValueListsValueListRequestBodyAlias obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postRadarValueListsValueListRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postRadarValueListsValueListRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (postRadarValueListsValueListRequestBodyName obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("alias" Data.Aeson.Types.ToJSON..=)) (postRadarValueListsValueListRequestBodyAlias obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postRadarValueListsValueListRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postRadarValueListsValueListRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (postRadarValueListsValueListRequestBodyName obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostRadarValueListsValueListRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostRadarValueListsValueListRequestBody" (\obj -> (((GHC.Base.pure PostRadarValueListsValueListRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "alias")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "name"))

-- | Create a new 'PostRadarValueListsValueListRequestBody' with all required fields.
mkPostRadarValueListsValueListRequestBody :: PostRadarValueListsValueListRequestBody
mkPostRadarValueListsValueListRequestBody =
  PostRadarValueListsValueListRequestBody
    { postRadarValueListsValueListRequestBodyAlias = GHC.Maybe.Nothing,
      postRadarValueListsValueListRequestBodyExpand = GHC.Maybe.Nothing,
      postRadarValueListsValueListRequestBodyMetadata = GHC.Maybe.Nothing,
      postRadarValueListsValueListRequestBodyName = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'postRadarValueListsValueList'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostRadarValueListsValueListResponseError' is used.
data PostRadarValueListsValueListResponse
  = -- | Means either no matching case available or a parse error
    PostRadarValueListsValueListResponseError GHC.Base.String
  | -- | Successful response.
    PostRadarValueListsValueListResponse200 Radar'valueList
  | -- | Error response.
    PostRadarValueListsValueListResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
