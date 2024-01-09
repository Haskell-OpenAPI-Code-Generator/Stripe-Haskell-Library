{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postSourcesSourceVerify
module StripeAPI.Operations.PostSourcesSourceVerify where

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

-- | > POST /v1/sources/{source}/verify
--
-- \<p>Verify a given source.\<\/p>
postSourcesSourceVerify ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | source | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  PostSourcesSourceVerifyRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostSourcesSourceVerifyResponse)
postSourcesSourceVerify
  source
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostSourcesSourceVerifyResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                       PostSourcesSourceVerifyResponse200
                                         Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                              Data.Either.Either
                                                                GHC.Base.String
                                                                Source
                                                          )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                       PostSourcesSourceVerifyResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/v1/sources/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel source)) GHC.Base.<> "/verify")) GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/sources\/{source}\/verify.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostSourcesSourceVerifyRequestBody = PostSourcesSourceVerifyRequestBody
  { -- | expand: Specifies which fields in the response should be expanded.
    postSourcesSourceVerifyRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | values: The values needed to verify the source.
    postSourcesSourceVerifyRequestBodyValues :: ([Data.Text.Internal.Text])
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSourcesSourceVerifyRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postSourcesSourceVerifyRequestBodyExpand obj) : ["values" Data.Aeson.Types.ToJSON..= postSourcesSourceVerifyRequestBodyValues obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postSourcesSourceVerifyRequestBodyExpand obj) : ["values" Data.Aeson.Types.ToJSON..= postSourcesSourceVerifyRequestBodyValues obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSourcesSourceVerifyRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSourcesSourceVerifyRequestBody" (\obj -> (GHC.Base.pure PostSourcesSourceVerifyRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "values"))

-- | Create a new 'PostSourcesSourceVerifyRequestBody' with all required fields.
mkPostSourcesSourceVerifyRequestBody ::
  -- | 'postSourcesSourceVerifyRequestBodyValues'
  [Data.Text.Internal.Text] ->
  PostSourcesSourceVerifyRequestBody
mkPostSourcesSourceVerifyRequestBody postSourcesSourceVerifyRequestBodyValues =
  PostSourcesSourceVerifyRequestBody
    { postSourcesSourceVerifyRequestBodyExpand = GHC.Maybe.Nothing,
      postSourcesSourceVerifyRequestBodyValues = postSourcesSourceVerifyRequestBodyValues
    }

-- | Represents a response of the operation 'postSourcesSourceVerify'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSourcesSourceVerifyResponseError' is used.
data PostSourcesSourceVerifyResponse
  = -- | Means either no matching case available or a parse error
    PostSourcesSourceVerifyResponseError GHC.Base.String
  | -- | Successful response.
    PostSourcesSourceVerifyResponse200 Source
  | -- | Error response.
    PostSourcesSourceVerifyResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
