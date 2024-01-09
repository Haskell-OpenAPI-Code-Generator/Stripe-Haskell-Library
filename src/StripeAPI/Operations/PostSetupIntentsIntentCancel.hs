{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postSetupIntentsIntentCancel
module StripeAPI.Operations.PostSetupIntentsIntentCancel where

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

-- | > POST /v1/setup_intents/{intent}/cancel
--
-- \<p>You can cancel a SetupIntent object when it’s in one of these statuses: \<code>requires_payment_method\<\/code>, \<code>requires_confirmation\<\/code>, or \<code>requires_action\<\/code>. \<\/p>
--
-- \<p>After you cancel it, setup is abandoned and any operations on the SetupIntent fail with an error.\<\/p>
postSetupIntentsIntentCancel ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | intent | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe PostSetupIntentsIntentCancelRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostSetupIntentsIntentCancelResponse)
postSetupIntentsIntentCancel
  intent
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostSetupIntentsIntentCancelResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                       PostSetupIntentsIntentCancelResponse200
                                         Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                              Data.Either.Either
                                                                GHC.Base.String
                                                                SetupIntent
                                                          )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                       PostSetupIntentsIntentCancelResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/v1/setup_intents/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.<> "/cancel")) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/setup_intents\/{intent}\/cancel.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostSetupIntentsIntentCancelRequestBody = PostSetupIntentsIntentCancelRequestBody
  { -- | cancellation_reason: Reason for canceling this SetupIntent. Possible values are: \`abandoned\`, \`requested_by_customer\`, or \`duplicate\`
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postSetupIntentsIntentCancelRequestBodyCancellationReason :: (GHC.Maybe.Maybe PostSetupIntentsIntentCancelRequestBodyCancellationReason'),
    -- | expand: Specifies which fields in the response should be expanded.
    postSetupIntentsIntentCancelRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSetupIntentsIntentCancelRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cancellation_reason" Data.Aeson.Types.ToJSON..=)) (postSetupIntentsIntentCancelRequestBodyCancellationReason obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postSetupIntentsIntentCancelRequestBodyExpand obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cancellation_reason" Data.Aeson.Types.ToJSON..=)) (postSetupIntentsIntentCancelRequestBodyCancellationReason obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postSetupIntentsIntentCancelRequestBodyExpand obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsIntentCancelRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsIntentCancelRequestBody" (\obj -> (GHC.Base.pure PostSetupIntentsIntentCancelRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cancellation_reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand"))

-- | Create a new 'PostSetupIntentsIntentCancelRequestBody' with all required fields.
mkPostSetupIntentsIntentCancelRequestBody :: PostSetupIntentsIntentCancelRequestBody
mkPostSetupIntentsIntentCancelRequestBody =
  PostSetupIntentsIntentCancelRequestBody
    { postSetupIntentsIntentCancelRequestBodyCancellationReason = GHC.Maybe.Nothing,
      postSetupIntentsIntentCancelRequestBodyExpand = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @paths.\/v1\/setup_intents\/{intent}\/cancel.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.cancellation_reason@ in the specification.
--
-- Reason for canceling this SetupIntent. Possible values are: \`abandoned\`, \`requested_by_customer\`, or \`duplicate\`
data PostSetupIntentsIntentCancelRequestBodyCancellationReason'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostSetupIntentsIntentCancelRequestBodyCancellationReason'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostSetupIntentsIntentCancelRequestBodyCancellationReason'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"abandoned"@
    PostSetupIntentsIntentCancelRequestBodyCancellationReason'EnumAbandoned
  | -- | Represents the JSON value @"duplicate"@
    PostSetupIntentsIntentCancelRequestBodyCancellationReason'EnumDuplicate
  | -- | Represents the JSON value @"requested_by_customer"@
    PostSetupIntentsIntentCancelRequestBodyCancellationReason'EnumRequestedByCustomer
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostSetupIntentsIntentCancelRequestBodyCancellationReason' where
  toJSON (PostSetupIntentsIntentCancelRequestBodyCancellationReason'Other val) = val
  toJSON (PostSetupIntentsIntentCancelRequestBodyCancellationReason'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostSetupIntentsIntentCancelRequestBodyCancellationReason'EnumAbandoned) = "abandoned"
  toJSON (PostSetupIntentsIntentCancelRequestBodyCancellationReason'EnumDuplicate) = "duplicate"
  toJSON (PostSetupIntentsIntentCancelRequestBodyCancellationReason'EnumRequestedByCustomer) = "requested_by_customer"

instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsIntentCancelRequestBodyCancellationReason' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "abandoned" -> PostSetupIntentsIntentCancelRequestBodyCancellationReason'EnumAbandoned
            | val GHC.Classes.== "duplicate" -> PostSetupIntentsIntentCancelRequestBodyCancellationReason'EnumDuplicate
            | val GHC.Classes.== "requested_by_customer" -> PostSetupIntentsIntentCancelRequestBodyCancellationReason'EnumRequestedByCustomer
            | GHC.Base.otherwise -> PostSetupIntentsIntentCancelRequestBodyCancellationReason'Other val
      )

-- | Represents a response of the operation 'postSetupIntentsIntentCancel'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSetupIntentsIntentCancelResponseError' is used.
data PostSetupIntentsIntentCancelResponse
  = -- | Means either no matching case available or a parse error
    PostSetupIntentsIntentCancelResponseError GHC.Base.String
  | -- | Successful response.
    PostSetupIntentsIntentCancelResponse200 SetupIntent
  | -- | Error response.
    PostSetupIntentsIntentCancelResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
