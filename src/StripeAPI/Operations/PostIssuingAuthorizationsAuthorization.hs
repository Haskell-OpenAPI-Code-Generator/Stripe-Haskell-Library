{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postIssuingAuthorizationsAuthorization
module StripeAPI.Operations.PostIssuingAuthorizationsAuthorization where

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

-- | > POST /v1/issuing/authorizations/{authorization}
--
-- \<p>Updates the specified Issuing \<code>Authorization\<\/code> object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.\<\/p>
postIssuingAuthorizationsAuthorization ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | authorization | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe PostIssuingAuthorizationsAuthorizationRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostIssuingAuthorizationsAuthorizationResponse)
postIssuingAuthorizationsAuthorization
  authorization
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostIssuingAuthorizationsAuthorizationResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                       PostIssuingAuthorizationsAuthorizationResponse200
                                         Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                              Data.Either.Either
                                                                GHC.Base.String
                                                                Issuing'authorization
                                                          )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                       PostIssuingAuthorizationsAuthorizationResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/v1/issuing/authorizations/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel authorization)) GHC.Base.<> "")) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/issuing\/authorizations\/{authorization}.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostIssuingAuthorizationsAuthorizationRequestBody = PostIssuingAuthorizationsAuthorizationRequestBody
  { -- | expand: Specifies which fields in the response should be expanded.
    postIssuingAuthorizationsAuthorizationRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
    postIssuingAuthorizationsAuthorizationRequestBodyMetadata :: (GHC.Maybe.Maybe PostIssuingAuthorizationsAuthorizationRequestBodyMetadata'Variants)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostIssuingAuthorizationsAuthorizationRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postIssuingAuthorizationsAuthorizationRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postIssuingAuthorizationsAuthorizationRequestBodyMetadata obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postIssuingAuthorizationsAuthorizationRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postIssuingAuthorizationsAuthorizationRequestBodyMetadata obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostIssuingAuthorizationsAuthorizationRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostIssuingAuthorizationsAuthorizationRequestBody" (\obj -> (GHC.Base.pure PostIssuingAuthorizationsAuthorizationRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata"))

-- | Create a new 'PostIssuingAuthorizationsAuthorizationRequestBody' with all required fields.
mkPostIssuingAuthorizationsAuthorizationRequestBody :: PostIssuingAuthorizationsAuthorizationRequestBody
mkPostIssuingAuthorizationsAuthorizationRequestBody =
  PostIssuingAuthorizationsAuthorizationRequestBody
    { postIssuingAuthorizationsAuthorizationRequestBodyExpand = GHC.Maybe.Nothing,
      postIssuingAuthorizationsAuthorizationRequestBodyMetadata = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @paths.\/v1\/issuing\/authorizations\/{authorization}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.metadata.anyOf@ in the specification.
--
-- Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostIssuingAuthorizationsAuthorizationRequestBodyMetadata'Variants
  = -- | Represents the JSON value @""@
    PostIssuingAuthorizationsAuthorizationRequestBodyMetadata'EmptyString
  | PostIssuingAuthorizationsAuthorizationRequestBodyMetadata'Object Data.Aeson.Types.Internal.Object
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostIssuingAuthorizationsAuthorizationRequestBodyMetadata'Variants where
  toJSON (PostIssuingAuthorizationsAuthorizationRequestBodyMetadata'Object a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PostIssuingAuthorizationsAuthorizationRequestBodyMetadata'EmptyString) = ""

instance Data.Aeson.Types.FromJSON.FromJSON PostIssuingAuthorizationsAuthorizationRequestBodyMetadata'Variants where
  parseJSON val =
    if
        | val GHC.Classes.== "" -> GHC.Base.pure PostIssuingAuthorizationsAuthorizationRequestBodyMetadata'EmptyString
        | GHC.Base.otherwise -> case (PostIssuingAuthorizationsAuthorizationRequestBodyMetadata'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
            Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Represents a response of the operation 'postIssuingAuthorizationsAuthorization'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostIssuingAuthorizationsAuthorizationResponseError' is used.
data PostIssuingAuthorizationsAuthorizationResponse
  = -- | Means either no matching case available or a parse error
    PostIssuingAuthorizationsAuthorizationResponseError GHC.Base.String
  | -- | Successful response.
    PostIssuingAuthorizationsAuthorizationResponse200 Issuing'authorization
  | -- | Error response.
    PostIssuingAuthorizationsAuthorizationResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
