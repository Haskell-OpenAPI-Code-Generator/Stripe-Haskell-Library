{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postTreasuryDebitReversals
module StripeAPI.Operations.PostTreasuryDebitReversals where

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

-- | > POST /v1/treasury/debit_reversals
--
-- \<p>Reverses a ReceivedDebit and creates a DebitReversal object.\<\/p>
postTreasuryDebitReversals ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | The request body to send
  PostTreasuryDebitReversalsRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostTreasuryDebitReversalsResponse)
postTreasuryDebitReversals body =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostTreasuryDebitReversalsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostTreasuryDebitReversalsResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Treasury'debitReversal
                                                        )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostTreasuryDebitReversalsResponseDefault
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
    (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/v1/treasury/debit_reversals" GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/treasury\/debit_reversals.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostTreasuryDebitReversalsRequestBody = PostTreasuryDebitReversalsRequestBody
  { -- | expand: Specifies which fields in the response should be expanded.
    postTreasuryDebitReversalsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
    postTreasuryDebitReversalsRequestBodyMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | received_debit: The ReceivedDebit to reverse.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postTreasuryDebitReversalsRequestBodyReceivedDebit :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostTreasuryDebitReversalsRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTreasuryDebitReversalsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postTreasuryDebitReversalsRequestBodyMetadata obj) : ["received_debit" Data.Aeson.Types.ToJSON..= postTreasuryDebitReversalsRequestBodyReceivedDebit obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTreasuryDebitReversalsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postTreasuryDebitReversalsRequestBodyMetadata obj) : ["received_debit" Data.Aeson.Types.ToJSON..= postTreasuryDebitReversalsRequestBodyReceivedDebit obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostTreasuryDebitReversalsRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTreasuryDebitReversalsRequestBody" (\obj -> ((GHC.Base.pure PostTreasuryDebitReversalsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "received_debit"))

-- | Create a new 'PostTreasuryDebitReversalsRequestBody' with all required fields.
mkPostTreasuryDebitReversalsRequestBody ::
  -- | 'postTreasuryDebitReversalsRequestBodyReceivedDebit'
  Data.Text.Internal.Text ->
  PostTreasuryDebitReversalsRequestBody
mkPostTreasuryDebitReversalsRequestBody postTreasuryDebitReversalsRequestBodyReceivedDebit =
  PostTreasuryDebitReversalsRequestBody
    { postTreasuryDebitReversalsRequestBodyExpand = GHC.Maybe.Nothing,
      postTreasuryDebitReversalsRequestBodyMetadata = GHC.Maybe.Nothing,
      postTreasuryDebitReversalsRequestBodyReceivedDebit = postTreasuryDebitReversalsRequestBodyReceivedDebit
    }

-- | Represents a response of the operation 'postTreasuryDebitReversals'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostTreasuryDebitReversalsResponseError' is used.
data PostTreasuryDebitReversalsResponse
  = -- | Means either no matching case available or a parse error
    PostTreasuryDebitReversalsResponseError GHC.Base.String
  | -- | Successful response.
    PostTreasuryDebitReversalsResponse200 Treasury'debitReversal
  | -- | Error response.
    PostTreasuryDebitReversalsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
