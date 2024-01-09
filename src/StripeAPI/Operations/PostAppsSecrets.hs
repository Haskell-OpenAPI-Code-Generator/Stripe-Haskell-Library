{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postAppsSecrets
module StripeAPI.Operations.PostAppsSecrets where

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

-- | > POST /v1/apps/secrets
--
-- \<p>Create or replace a secret in the secret store.\<\/p>
postAppsSecrets ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | The request body to send
  PostAppsSecretsRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostAppsSecretsResponse)
postAppsSecrets body =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostAppsSecretsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostAppsSecretsResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Apps'secret
                                                        )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostAppsSecretsResponseDefault
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
    (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/v1/apps/secrets" GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/apps\/secrets.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostAppsSecretsRequestBody = PostAppsSecretsRequestBody
  { -- | expand: Specifies which fields in the response should be expanded.
    postAppsSecretsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | expires_at: The Unix timestamp for the expiry time of the secret, after which the secret deletes.
    postAppsSecretsRequestBodyExpiresAt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | name: A name for the secret that\'s unique within the scope.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAppsSecretsRequestBodyName :: Data.Text.Internal.Text,
    -- | payload: The plaintext secret value to be stored.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAppsSecretsRequestBodyPayload :: Data.Text.Internal.Text,
    -- | scope: Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
    postAppsSecretsRequestBodyScope :: PostAppsSecretsRequestBodyScope'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostAppsSecretsRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postAppsSecretsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires_at" Data.Aeson.Types.ToJSON..=)) (postAppsSecretsRequestBodyExpiresAt obj) : ["name" Data.Aeson.Types.ToJSON..= postAppsSecretsRequestBodyName obj] : ["payload" Data.Aeson.Types.ToJSON..= postAppsSecretsRequestBodyPayload obj] : ["scope" Data.Aeson.Types.ToJSON..= postAppsSecretsRequestBodyScope obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postAppsSecretsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires_at" Data.Aeson.Types.ToJSON..=)) (postAppsSecretsRequestBodyExpiresAt obj) : ["name" Data.Aeson.Types.ToJSON..= postAppsSecretsRequestBodyName obj] : ["payload" Data.Aeson.Types.ToJSON..= postAppsSecretsRequestBodyPayload obj] : ["scope" Data.Aeson.Types.ToJSON..= postAppsSecretsRequestBodyScope obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostAppsSecretsRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAppsSecretsRequestBody" (\obj -> ((((GHC.Base.pure PostAppsSecretsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expires_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "payload")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "scope"))

-- | Create a new 'PostAppsSecretsRequestBody' with all required fields.
mkPostAppsSecretsRequestBody ::
  -- | 'postAppsSecretsRequestBodyName'
  Data.Text.Internal.Text ->
  -- | 'postAppsSecretsRequestBodyPayload'
  Data.Text.Internal.Text ->
  -- | 'postAppsSecretsRequestBodyScope'
  PostAppsSecretsRequestBodyScope' ->
  PostAppsSecretsRequestBody
mkPostAppsSecretsRequestBody postAppsSecretsRequestBodyName postAppsSecretsRequestBodyPayload postAppsSecretsRequestBodyScope =
  PostAppsSecretsRequestBody
    { postAppsSecretsRequestBodyExpand = GHC.Maybe.Nothing,
      postAppsSecretsRequestBodyExpiresAt = GHC.Maybe.Nothing,
      postAppsSecretsRequestBodyName = postAppsSecretsRequestBodyName,
      postAppsSecretsRequestBodyPayload = postAppsSecretsRequestBodyPayload,
      postAppsSecretsRequestBodyScope = postAppsSecretsRequestBodyScope
    }

-- | Defines the object schema located at @paths.\/v1\/apps\/secrets.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.scope@ in the specification.
--
-- Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
data PostAppsSecretsRequestBodyScope' = PostAppsSecretsRequestBodyScope'
  { -- | type
    postAppsSecretsRequestBodyScope'Type :: PostAppsSecretsRequestBodyScope'Type',
    -- | user
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAppsSecretsRequestBodyScope'User :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostAppsSecretsRequestBodyScope' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["type" Data.Aeson.Types.ToJSON..= postAppsSecretsRequestBodyScope'Type obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user" Data.Aeson.Types.ToJSON..=)) (postAppsSecretsRequestBodyScope'User obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["type" Data.Aeson.Types.ToJSON..= postAppsSecretsRequestBodyScope'Type obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user" Data.Aeson.Types.ToJSON..=)) (postAppsSecretsRequestBodyScope'User obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostAppsSecretsRequestBodyScope' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAppsSecretsRequestBodyScope'" (\obj -> (GHC.Base.pure PostAppsSecretsRequestBodyScope' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user"))

-- | Create a new 'PostAppsSecretsRequestBodyScope'' with all required fields.
mkPostAppsSecretsRequestBodyScope' ::
  -- | 'postAppsSecretsRequestBodyScope'Type'
  PostAppsSecretsRequestBodyScope'Type' ->
  PostAppsSecretsRequestBodyScope'
mkPostAppsSecretsRequestBodyScope' postAppsSecretsRequestBodyScope'Type =
  PostAppsSecretsRequestBodyScope'
    { postAppsSecretsRequestBodyScope'Type = postAppsSecretsRequestBodyScope'Type,
      postAppsSecretsRequestBodyScope'User = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @paths.\/v1\/apps\/secrets.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.scope.properties.type@ in the specification.
data PostAppsSecretsRequestBodyScope'Type'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostAppsSecretsRequestBodyScope'Type'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostAppsSecretsRequestBodyScope'Type'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"account"@
    PostAppsSecretsRequestBodyScope'Type'EnumAccount
  | -- | Represents the JSON value @"user"@
    PostAppsSecretsRequestBodyScope'Type'EnumUser
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostAppsSecretsRequestBodyScope'Type' where
  toJSON (PostAppsSecretsRequestBodyScope'Type'Other val) = val
  toJSON (PostAppsSecretsRequestBodyScope'Type'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostAppsSecretsRequestBodyScope'Type'EnumAccount) = "account"
  toJSON (PostAppsSecretsRequestBodyScope'Type'EnumUser) = "user"

instance Data.Aeson.Types.FromJSON.FromJSON PostAppsSecretsRequestBodyScope'Type' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "account" -> PostAppsSecretsRequestBodyScope'Type'EnumAccount
            | val GHC.Classes.== "user" -> PostAppsSecretsRequestBodyScope'Type'EnumUser
            | GHC.Base.otherwise -> PostAppsSecretsRequestBodyScope'Type'Other val
      )

-- | Represents a response of the operation 'postAppsSecrets'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostAppsSecretsResponseError' is used.
data PostAppsSecretsResponse
  = -- | Means either no matching case available or a parse error
    PostAppsSecretsResponseError GHC.Base.String
  | -- | Successful response.
    PostAppsSecretsResponse200 Apps'secret
  | -- | Error response.
    PostAppsSecretsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
