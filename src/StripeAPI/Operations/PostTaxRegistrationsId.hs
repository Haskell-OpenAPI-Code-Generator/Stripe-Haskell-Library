{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postTaxRegistrationsId
module StripeAPI.Operations.PostTaxRegistrationsId where

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

-- | > POST /v1/tax/registrations/{id}
--
-- \<p>Updates an existing Tax \<code>Registration\<\/code> object.\<\/p>
--
-- \<p>A registration cannot be deleted after it has been created. If you wish to end a registration you may do so by setting \<code>expires_at\<\/code>.\<\/p>
postTaxRegistrationsId ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | id | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe PostTaxRegistrationsIdRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostTaxRegistrationsIdResponse)
postTaxRegistrationsId
  id
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostTaxRegistrationsIdResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                       PostTaxRegistrationsIdResponse200
                                         Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                              Data.Either.Either
                                                                GHC.Base.String
                                                                Tax'registration
                                                          )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                       PostTaxRegistrationsIdResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/v1/tax/registrations/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.<> "")) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/tax\/registrations\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostTaxRegistrationsIdRequestBody = PostTaxRegistrationsIdRequestBody
  { -- | active_from: Time at which the registration becomes active. It can be either \`now\` to indicate the current time, or a timestamp measured in seconds since the Unix epoch.
    postTaxRegistrationsIdRequestBodyActiveFrom :: (GHC.Maybe.Maybe PostTaxRegistrationsIdRequestBodyActiveFrom'Variants),
    -- | expand: Specifies which fields in the response should be expanded.
    postTaxRegistrationsIdRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | expires_at: If set, the registration stops being active at this time. If not set, the registration will be active indefinitely. It can be either \`now\` to indicate the current time, or a timestamp measured in seconds since the Unix epoch.
    postTaxRegistrationsIdRequestBodyExpiresAt :: (GHC.Maybe.Maybe PostTaxRegistrationsIdRequestBodyExpiresAt'Variants)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostTaxRegistrationsIdRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("active_from" Data.Aeson.Types.ToJSON..=)) (postTaxRegistrationsIdRequestBodyActiveFrom obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTaxRegistrationsIdRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires_at" Data.Aeson.Types.ToJSON..=)) (postTaxRegistrationsIdRequestBodyExpiresAt obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("active_from" Data.Aeson.Types.ToJSON..=)) (postTaxRegistrationsIdRequestBodyActiveFrom obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTaxRegistrationsIdRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires_at" Data.Aeson.Types.ToJSON..=)) (postTaxRegistrationsIdRequestBodyExpiresAt obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostTaxRegistrationsIdRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTaxRegistrationsIdRequestBody" (\obj -> ((GHC.Base.pure PostTaxRegistrationsIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "active_from")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expires_at"))

-- | Create a new 'PostTaxRegistrationsIdRequestBody' with all required fields.
mkPostTaxRegistrationsIdRequestBody :: PostTaxRegistrationsIdRequestBody
mkPostTaxRegistrationsIdRequestBody =
  PostTaxRegistrationsIdRequestBody
    { postTaxRegistrationsIdRequestBodyActiveFrom = GHC.Maybe.Nothing,
      postTaxRegistrationsIdRequestBodyExpand = GHC.Maybe.Nothing,
      postTaxRegistrationsIdRequestBodyExpiresAt = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @paths.\/v1\/tax\/registrations\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.active_from.anyOf@ in the specification.
--
-- Time at which the registration becomes active. It can be either \`now\` to indicate the current time, or a timestamp measured in seconds since the Unix epoch.
data PostTaxRegistrationsIdRequestBodyActiveFrom'Variants
  = -- | Represents the JSON value @"now"@
    PostTaxRegistrationsIdRequestBodyActiveFrom'Now
  | PostTaxRegistrationsIdRequestBodyActiveFrom'Int GHC.Types.Int
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostTaxRegistrationsIdRequestBodyActiveFrom'Variants where
  toJSON (PostTaxRegistrationsIdRequestBodyActiveFrom'Int a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PostTaxRegistrationsIdRequestBodyActiveFrom'Now) = "now"

instance Data.Aeson.Types.FromJSON.FromJSON PostTaxRegistrationsIdRequestBodyActiveFrom'Variants where
  parseJSON val =
    if
        | val GHC.Classes.== "now" -> GHC.Base.pure PostTaxRegistrationsIdRequestBodyActiveFrom'Now
        | GHC.Base.otherwise -> case (PostTaxRegistrationsIdRequestBodyActiveFrom'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
            Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @paths.\/v1\/tax\/registrations\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.expires_at.anyOf@ in the specification.
--
-- If set, the registration stops being active at this time. If not set, the registration will be active indefinitely. It can be either \`now\` to indicate the current time, or a timestamp measured in seconds since the Unix epoch.
data PostTaxRegistrationsIdRequestBodyExpiresAt'Variants
  = -- | Represents the JSON value @"now"@
    PostTaxRegistrationsIdRequestBodyExpiresAt'Now
  | -- | Represents the JSON value @""@
    PostTaxRegistrationsIdRequestBodyExpiresAt'EmptyString
  | PostTaxRegistrationsIdRequestBodyExpiresAt'Int GHC.Types.Int
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostTaxRegistrationsIdRequestBodyExpiresAt'Variants where
  toJSON (PostTaxRegistrationsIdRequestBodyExpiresAt'Int a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PostTaxRegistrationsIdRequestBodyExpiresAt'Now) = "now"
  toJSON (PostTaxRegistrationsIdRequestBodyExpiresAt'EmptyString) = ""

instance Data.Aeson.Types.FromJSON.FromJSON PostTaxRegistrationsIdRequestBodyExpiresAt'Variants where
  parseJSON val =
    if
        | val GHC.Classes.== "now" -> GHC.Base.pure PostTaxRegistrationsIdRequestBodyExpiresAt'Now
        | val GHC.Classes.== "" -> GHC.Base.pure PostTaxRegistrationsIdRequestBodyExpiresAt'EmptyString
        | GHC.Base.otherwise -> case (PostTaxRegistrationsIdRequestBodyExpiresAt'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
            Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Represents a response of the operation 'postTaxRegistrationsId'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostTaxRegistrationsIdResponseError' is used.
data PostTaxRegistrationsIdResponse
  = -- | Means either no matching case available or a parse error
    PostTaxRegistrationsIdResponseError GHC.Base.String
  | -- | Successful response.
    PostTaxRegistrationsIdResponse200 Tax'registration
  | -- | Error response.
    PostTaxRegistrationsIdResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
