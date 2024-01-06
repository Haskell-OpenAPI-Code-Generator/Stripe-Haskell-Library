{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postClimateOrdersOrder
module StripeAPI.Operations.PostClimateOrdersOrder where

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

-- | > POST /v1/climate/orders/{order}
--
-- \<p>Updates the specified order by setting the values of the parameters passed.\<\/p>
postClimateOrdersOrder ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | order: Unique identifier of the order. | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe PostClimateOrdersOrderRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostClimateOrdersOrderResponse)
postClimateOrdersOrder
  order
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostClimateOrdersOrderResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                       PostClimateOrdersOrderResponse200
                                         Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                              Data.Either.Either
                                                                GHC.Base.String
                                                                Climate'order
                                                          )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                       PostClimateOrdersOrderResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/v1/climate/orders/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel order)) GHC.Base.<> "")) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/climate\/orders\/{order}.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostClimateOrdersOrderRequestBody = PostClimateOrdersOrderRequestBody
  { -- | beneficiary: Publicly sharable reference for the end beneficiary of carbon removal. Assumed to be the Stripe account if not set.
    postClimateOrdersOrderRequestBodyBeneficiary :: (GHC.Maybe.Maybe PostClimateOrdersOrderRequestBodyBeneficiary'Variants),
    -- | expand: Specifies which fields in the response should be expanded.
    postClimateOrdersOrderRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
    postClimateOrdersOrderRequestBodyMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostClimateOrdersOrderRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("beneficiary" Data.Aeson.Types.ToJSON..=)) (postClimateOrdersOrderRequestBodyBeneficiary obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postClimateOrdersOrderRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postClimateOrdersOrderRequestBodyMetadata obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("beneficiary" Data.Aeson.Types.ToJSON..=)) (postClimateOrdersOrderRequestBodyBeneficiary obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postClimateOrdersOrderRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postClimateOrdersOrderRequestBodyMetadata obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostClimateOrdersOrderRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostClimateOrdersOrderRequestBody" (\obj -> ((GHC.Base.pure PostClimateOrdersOrderRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "beneficiary")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata"))

-- | Create a new 'PostClimateOrdersOrderRequestBody' with all required fields.
mkPostClimateOrdersOrderRequestBody :: PostClimateOrdersOrderRequestBody
mkPostClimateOrdersOrderRequestBody =
  PostClimateOrdersOrderRequestBody
    { postClimateOrdersOrderRequestBodyBeneficiary = GHC.Maybe.Nothing,
      postClimateOrdersOrderRequestBodyExpand = GHC.Maybe.Nothing,
      postClimateOrdersOrderRequestBodyMetadata = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/climate\/orders\/{order}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.beneficiary.anyOf@ in the specification.
data PostClimateOrdersOrderRequestBodyBeneficiary'OneOf1 = PostClimateOrdersOrderRequestBodyBeneficiary'OneOf1
  { -- | public_name
    postClimateOrdersOrderRequestBodyBeneficiary'OneOf1PublicName :: PostClimateOrdersOrderRequestBodyBeneficiary'OneOf1PublicName'Variants
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostClimateOrdersOrderRequestBodyBeneficiary'OneOf1 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["public_name" Data.Aeson.Types.ToJSON..= postClimateOrdersOrderRequestBodyBeneficiary'OneOf1PublicName obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["public_name" Data.Aeson.Types.ToJSON..= postClimateOrdersOrderRequestBodyBeneficiary'OneOf1PublicName obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostClimateOrdersOrderRequestBodyBeneficiary'OneOf1 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostClimateOrdersOrderRequestBodyBeneficiary'OneOf1" (\obj -> GHC.Base.pure PostClimateOrdersOrderRequestBodyBeneficiary'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "public_name"))

-- | Create a new 'PostClimateOrdersOrderRequestBodyBeneficiary'OneOf1' with all required fields.
mkPostClimateOrdersOrderRequestBodyBeneficiary'OneOf1 ::
  -- | 'postClimateOrdersOrderRequestBodyBeneficiary'OneOf1PublicName'
  PostClimateOrdersOrderRequestBodyBeneficiary'OneOf1PublicName'Variants ->
  PostClimateOrdersOrderRequestBodyBeneficiary'OneOf1
mkPostClimateOrdersOrderRequestBodyBeneficiary'OneOf1 postClimateOrdersOrderRequestBodyBeneficiary'OneOf1PublicName = PostClimateOrdersOrderRequestBodyBeneficiary'OneOf1 {postClimateOrdersOrderRequestBodyBeneficiary'OneOf1PublicName = postClimateOrdersOrderRequestBodyBeneficiary'OneOf1PublicName}

-- | Defines the oneOf schema located at @paths.\/v1\/climate\/orders\/{order}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.beneficiary.anyOf.properties.public_name.anyOf@ in the specification.
data PostClimateOrdersOrderRequestBodyBeneficiary'OneOf1PublicName'Variants
  = -- | Represents the JSON value @""@
    PostClimateOrdersOrderRequestBodyBeneficiary'OneOf1PublicName'EmptyString
  | PostClimateOrdersOrderRequestBodyBeneficiary'OneOf1PublicName'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostClimateOrdersOrderRequestBodyBeneficiary'OneOf1PublicName'Variants where
  toJSON (PostClimateOrdersOrderRequestBodyBeneficiary'OneOf1PublicName'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PostClimateOrdersOrderRequestBodyBeneficiary'OneOf1PublicName'EmptyString) = ""

instance Data.Aeson.Types.FromJSON.FromJSON PostClimateOrdersOrderRequestBodyBeneficiary'OneOf1PublicName'Variants where
  parseJSON val =
    if
        | val GHC.Classes.== "" -> GHC.Base.pure PostClimateOrdersOrderRequestBodyBeneficiary'OneOf1PublicName'EmptyString
        | GHC.Base.otherwise -> case (PostClimateOrdersOrderRequestBodyBeneficiary'OneOf1PublicName'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
            Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @paths.\/v1\/climate\/orders\/{order}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.beneficiary.anyOf@ in the specification.
--
-- Publicly sharable reference for the end beneficiary of carbon removal. Assumed to be the Stripe account if not set.
data PostClimateOrdersOrderRequestBodyBeneficiary'Variants
  = -- | Represents the JSON value @""@
    PostClimateOrdersOrderRequestBodyBeneficiary'EmptyString
  | PostClimateOrdersOrderRequestBodyBeneficiary'PostClimateOrdersOrderRequestBodyBeneficiary'OneOf1 PostClimateOrdersOrderRequestBodyBeneficiary'OneOf1
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostClimateOrdersOrderRequestBodyBeneficiary'Variants where
  toJSON (PostClimateOrdersOrderRequestBodyBeneficiary'PostClimateOrdersOrderRequestBodyBeneficiary'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PostClimateOrdersOrderRequestBodyBeneficiary'EmptyString) = ""

instance Data.Aeson.Types.FromJSON.FromJSON PostClimateOrdersOrderRequestBodyBeneficiary'Variants where
  parseJSON val =
    if
        | val GHC.Classes.== "" -> GHC.Base.pure PostClimateOrdersOrderRequestBodyBeneficiary'EmptyString
        | GHC.Base.otherwise -> case (PostClimateOrdersOrderRequestBodyBeneficiary'PostClimateOrdersOrderRequestBodyBeneficiary'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
            Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Represents a response of the operation 'postClimateOrdersOrder'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostClimateOrdersOrderResponseError' is used.
data PostClimateOrdersOrderResponse
  = -- | Means either no matching case available or a parse error
    PostClimateOrdersOrderResponseError GHC.Base.String
  | -- | Successful response.
    PostClimateOrdersOrderResponse200 Climate'order
  | -- | Error response.
    PostClimateOrdersOrderResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
