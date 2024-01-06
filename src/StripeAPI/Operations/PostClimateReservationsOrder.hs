{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postClimateReservationsOrder
module StripeAPI.Operations.PostClimateReservationsOrder where

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

-- | > POST /v1/climate/reservations/{order}
--
-- \<p>Updates the specified order by setting the values of the parameters passed.\<\/p>
postClimateReservationsOrder ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | order: Unique identifier of the order. | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe PostClimateReservationsOrderRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostClimateReservationsOrderResponse)
postClimateReservationsOrder
  order
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostClimateReservationsOrderResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                       PostClimateReservationsOrderResponse200
                                         Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                              Data.Either.Either
                                                                GHC.Base.String
                                                                Climate'order
                                                          )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                       PostClimateReservationsOrderResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/v1/climate/reservations/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel order)) GHC.Base.<> "")) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/climate\/reservations\/{order}.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostClimateReservationsOrderRequestBody = PostClimateReservationsOrderRequestBody
  { -- | beneficiary: Publicly sharable reference for the end beneficiary of carbon removal. Assumed to be the Stripe account if not set.
    postClimateReservationsOrderRequestBodyBeneficiary :: (GHC.Maybe.Maybe PostClimateReservationsOrderRequestBodyBeneficiary'Variants),
    -- | expand: Specifies which fields in the response should be expanded.
    postClimateReservationsOrderRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
    postClimateReservationsOrderRequestBodyMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostClimateReservationsOrderRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("beneficiary" Data.Aeson.Types.ToJSON..=)) (postClimateReservationsOrderRequestBodyBeneficiary obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postClimateReservationsOrderRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postClimateReservationsOrderRequestBodyMetadata obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("beneficiary" Data.Aeson.Types.ToJSON..=)) (postClimateReservationsOrderRequestBodyBeneficiary obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postClimateReservationsOrderRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postClimateReservationsOrderRequestBodyMetadata obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostClimateReservationsOrderRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostClimateReservationsOrderRequestBody" (\obj -> ((GHC.Base.pure PostClimateReservationsOrderRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "beneficiary")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata"))

-- | Create a new 'PostClimateReservationsOrderRequestBody' with all required fields.
mkPostClimateReservationsOrderRequestBody :: PostClimateReservationsOrderRequestBody
mkPostClimateReservationsOrderRequestBody =
  PostClimateReservationsOrderRequestBody
    { postClimateReservationsOrderRequestBodyBeneficiary = GHC.Maybe.Nothing,
      postClimateReservationsOrderRequestBodyExpand = GHC.Maybe.Nothing,
      postClimateReservationsOrderRequestBodyMetadata = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/climate\/reservations\/{order}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.beneficiary.anyOf@ in the specification.
data PostClimateReservationsOrderRequestBodyBeneficiary'OneOf1 = PostClimateReservationsOrderRequestBodyBeneficiary'OneOf1
  { -- | public_name
    postClimateReservationsOrderRequestBodyBeneficiary'OneOf1PublicName :: PostClimateReservationsOrderRequestBodyBeneficiary'OneOf1PublicName'Variants
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostClimateReservationsOrderRequestBodyBeneficiary'OneOf1 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["public_name" Data.Aeson.Types.ToJSON..= postClimateReservationsOrderRequestBodyBeneficiary'OneOf1PublicName obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["public_name" Data.Aeson.Types.ToJSON..= postClimateReservationsOrderRequestBodyBeneficiary'OneOf1PublicName obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostClimateReservationsOrderRequestBodyBeneficiary'OneOf1 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostClimateReservationsOrderRequestBodyBeneficiary'OneOf1" (\obj -> GHC.Base.pure PostClimateReservationsOrderRequestBodyBeneficiary'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "public_name"))

-- | Create a new 'PostClimateReservationsOrderRequestBodyBeneficiary'OneOf1' with all required fields.
mkPostClimateReservationsOrderRequestBodyBeneficiary'OneOf1 ::
  -- | 'postClimateReservationsOrderRequestBodyBeneficiary'OneOf1PublicName'
  PostClimateReservationsOrderRequestBodyBeneficiary'OneOf1PublicName'Variants ->
  PostClimateReservationsOrderRequestBodyBeneficiary'OneOf1
mkPostClimateReservationsOrderRequestBodyBeneficiary'OneOf1 postClimateReservationsOrderRequestBodyBeneficiary'OneOf1PublicName = PostClimateReservationsOrderRequestBodyBeneficiary'OneOf1 {postClimateReservationsOrderRequestBodyBeneficiary'OneOf1PublicName = postClimateReservationsOrderRequestBodyBeneficiary'OneOf1PublicName}

-- | Defines the oneOf schema located at @paths.\/v1\/climate\/reservations\/{order}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.beneficiary.anyOf.properties.public_name.anyOf@ in the specification.
data PostClimateReservationsOrderRequestBodyBeneficiary'OneOf1PublicName'Variants
  = -- | Represents the JSON value @""@
    PostClimateReservationsOrderRequestBodyBeneficiary'OneOf1PublicName'EmptyString
  | PostClimateReservationsOrderRequestBodyBeneficiary'OneOf1PublicName'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostClimateReservationsOrderRequestBodyBeneficiary'OneOf1PublicName'Variants where
  toJSON (PostClimateReservationsOrderRequestBodyBeneficiary'OneOf1PublicName'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PostClimateReservationsOrderRequestBodyBeneficiary'OneOf1PublicName'EmptyString) = ""

instance Data.Aeson.Types.FromJSON.FromJSON PostClimateReservationsOrderRequestBodyBeneficiary'OneOf1PublicName'Variants where
  parseJSON val =
    if
        | val GHC.Classes.== "" -> GHC.Base.pure PostClimateReservationsOrderRequestBodyBeneficiary'OneOf1PublicName'EmptyString
        | GHC.Base.otherwise -> case (PostClimateReservationsOrderRequestBodyBeneficiary'OneOf1PublicName'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
            Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @paths.\/v1\/climate\/reservations\/{order}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.beneficiary.anyOf@ in the specification.
--
-- Publicly sharable reference for the end beneficiary of carbon removal. Assumed to be the Stripe account if not set.
data PostClimateReservationsOrderRequestBodyBeneficiary'Variants
  = -- | Represents the JSON value @""@
    PostClimateReservationsOrderRequestBodyBeneficiary'EmptyString
  | PostClimateReservationsOrderRequestBodyBeneficiary'PostClimateReservationsOrderRequestBodyBeneficiary'OneOf1 PostClimateReservationsOrderRequestBodyBeneficiary'OneOf1
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostClimateReservationsOrderRequestBodyBeneficiary'Variants where
  toJSON (PostClimateReservationsOrderRequestBodyBeneficiary'PostClimateReservationsOrderRequestBodyBeneficiary'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PostClimateReservationsOrderRequestBodyBeneficiary'EmptyString) = ""

instance Data.Aeson.Types.FromJSON.FromJSON PostClimateReservationsOrderRequestBodyBeneficiary'Variants where
  parseJSON val =
    if
        | val GHC.Classes.== "" -> GHC.Base.pure PostClimateReservationsOrderRequestBodyBeneficiary'EmptyString
        | GHC.Base.otherwise -> case (PostClimateReservationsOrderRequestBodyBeneficiary'PostClimateReservationsOrderRequestBodyBeneficiary'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
            Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Represents a response of the operation 'postClimateReservationsOrder'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostClimateReservationsOrderResponseError' is used.
data PostClimateReservationsOrderResponse
  = -- | Means either no matching case available or a parse error
    PostClimateReservationsOrderResponseError GHC.Base.String
  | -- | Successful response.
    PostClimateReservationsOrderResponse200 Climate'order
  | -- | Error response.
    PostClimateReservationsOrderResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
