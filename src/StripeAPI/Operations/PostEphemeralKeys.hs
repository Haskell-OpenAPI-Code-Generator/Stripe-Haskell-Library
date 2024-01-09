{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postEphemeralKeys
module StripeAPI.Operations.PostEphemeralKeys where

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

-- | > POST /v1/ephemeral_keys
--
-- \<p>Creates a short-lived API key for a given resource.\<\/p>
postEphemeralKeys ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | The request body to send
  GHC.Maybe.Maybe PostEphemeralKeysRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostEphemeralKeysResponse)
postEphemeralKeys body =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostEphemeralKeysResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostEphemeralKeysResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              EphemeralKey
                                                        )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostEphemeralKeysResponseDefault
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
    (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/v1/ephemeral_keys" GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/ephemeral_keys.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostEphemeralKeysRequestBody = PostEphemeralKeysRequestBody
  { -- | customer: The ID of the Customer you\'d like to modify using the resulting ephemeral key.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postEphemeralKeysRequestBodyCustomer :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | expand: Specifies which fields in the response should be expanded.
    postEphemeralKeysRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | issuing_card: The ID of the Issuing Card you\'d like to access using the resulting ephemeral key.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postEphemeralKeysRequestBodyIssuingCard :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | nonce: A single-use token, created by Stripe.js, used for creating ephemeral keys for Issuing Cards without exchanging sensitive information.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postEphemeralKeysRequestBodyNonce :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | verification_session: The ID of the Identity VerificationSession you\'d like to access using the resulting ephemeral key
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postEphemeralKeysRequestBodyVerificationSession :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostEphemeralKeysRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer" Data.Aeson.Types.ToJSON..=)) (postEphemeralKeysRequestBodyCustomer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postEphemeralKeysRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("issuing_card" Data.Aeson.Types.ToJSON..=)) (postEphemeralKeysRequestBodyIssuingCard obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("nonce" Data.Aeson.Types.ToJSON..=)) (postEphemeralKeysRequestBodyNonce obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification_session" Data.Aeson.Types.ToJSON..=)) (postEphemeralKeysRequestBodyVerificationSession obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer" Data.Aeson.Types.ToJSON..=)) (postEphemeralKeysRequestBodyCustomer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postEphemeralKeysRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("issuing_card" Data.Aeson.Types.ToJSON..=)) (postEphemeralKeysRequestBodyIssuingCard obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("nonce" Data.Aeson.Types.ToJSON..=)) (postEphemeralKeysRequestBodyNonce obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification_session" Data.Aeson.Types.ToJSON..=)) (postEphemeralKeysRequestBodyVerificationSession obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostEphemeralKeysRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostEphemeralKeysRequestBody" (\obj -> ((((GHC.Base.pure PostEphemeralKeysRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "issuing_card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "nonce")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "verification_session"))

-- | Create a new 'PostEphemeralKeysRequestBody' with all required fields.
mkPostEphemeralKeysRequestBody :: PostEphemeralKeysRequestBody
mkPostEphemeralKeysRequestBody =
  PostEphemeralKeysRequestBody
    { postEphemeralKeysRequestBodyCustomer = GHC.Maybe.Nothing,
      postEphemeralKeysRequestBodyExpand = GHC.Maybe.Nothing,
      postEphemeralKeysRequestBodyIssuingCard = GHC.Maybe.Nothing,
      postEphemeralKeysRequestBodyNonce = GHC.Maybe.Nothing,
      postEphemeralKeysRequestBodyVerificationSession = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'postEphemeralKeys'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostEphemeralKeysResponseError' is used.
data PostEphemeralKeysResponse
  = -- | Means either no matching case available or a parse error
    PostEphemeralKeysResponseError GHC.Base.String
  | -- | Successful response.
    PostEphemeralKeysResponse200 EphemeralKey
  | -- | Error response.
    PostEphemeralKeysResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
