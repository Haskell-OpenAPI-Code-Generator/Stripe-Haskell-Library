{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getPaymentIntentsIntent
module StripeAPI.Operations.GetPaymentIntentsIntent where

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

-- | > GET /v1/payment_intents/{intent}
--
-- \<p>Retrieves the details of a PaymentIntent that has previously been created. \<\/p>
--
-- \<p>You can retrieve a PaymentIntent client-side using a publishable key when the \<code>client_secret\<\/code> is in the query string. \<\/p>
--
-- \<p>If you retrieve a PaymentIntent with a publishable key, it only returns a subset of properties. Refer to the \<a href=\"\#payment_intent_object\">payment intent\<\/a> object reference for more details.\<\/p>
getPaymentIntentsIntent ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetPaymentIntentsIntentParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetPaymentIntentsIntentResponse)
getPaymentIntentsIntent parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetPaymentIntentsIntentResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetPaymentIntentsIntentResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              PaymentIntent
                                                        )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetPaymentIntentsIntentResponseDefault
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
    ( StripeAPI.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET")
        ("/v1/payment_intents/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel (getPaymentIntentsIntentParametersPathIntent parameters))) GHC.Base.<> ""))
        [ StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "client_secret") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPaymentIntentsIntentParametersQueryClientSecret parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPaymentIntentsIntentParametersQueryExpand parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/payment_intents\/{intent}.GET.parameters@ in the specification.
data GetPaymentIntentsIntentParameters = GetPaymentIntentsIntentParameters
  { -- | pathIntent: Represents the parameter named \'intent\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getPaymentIntentsIntentParametersPathIntent :: Data.Text.Internal.Text,
    -- | queryClient_secret: Represents the parameter named \'client_secret\'
    --
    -- The client secret of the PaymentIntent. We require it if you use a publishable key to retrieve the source.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getPaymentIntentsIntentParametersQueryClientSecret :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getPaymentIntentsIntentParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetPaymentIntentsIntentParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathIntent" Data.Aeson.Types.ToJSON..= getPaymentIntentsIntentParametersPathIntent obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryClient_secret" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsIntentParametersQueryClientSecret obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsIntentParametersQueryExpand obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathIntent" Data.Aeson.Types.ToJSON..= getPaymentIntentsIntentParametersPathIntent obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryClient_secret" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsIntentParametersQueryClientSecret obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsIntentParametersQueryExpand obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetPaymentIntentsIntentParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetPaymentIntentsIntentParameters" (\obj -> ((GHC.Base.pure GetPaymentIntentsIntentParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathIntent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryClient_secret")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand"))

-- | Create a new 'GetPaymentIntentsIntentParameters' with all required fields.
mkGetPaymentIntentsIntentParameters ::
  -- | 'getPaymentIntentsIntentParametersPathIntent'
  Data.Text.Internal.Text ->
  GetPaymentIntentsIntentParameters
mkGetPaymentIntentsIntentParameters getPaymentIntentsIntentParametersPathIntent =
  GetPaymentIntentsIntentParameters
    { getPaymentIntentsIntentParametersPathIntent = getPaymentIntentsIntentParametersPathIntent,
      getPaymentIntentsIntentParametersQueryClientSecret = GHC.Maybe.Nothing,
      getPaymentIntentsIntentParametersQueryExpand = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getPaymentIntentsIntent'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetPaymentIntentsIntentResponseError' is used.
data GetPaymentIntentsIntentResponse
  = -- | Means either no matching case available or a parse error
    GetPaymentIntentsIntentResponseError GHC.Base.String
  | -- | Successful response.
    GetPaymentIntentsIntentResponse200 PaymentIntent
  | -- | Error response.
    GetPaymentIntentsIntentResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
