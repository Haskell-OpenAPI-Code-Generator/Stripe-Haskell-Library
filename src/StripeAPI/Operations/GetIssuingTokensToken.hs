{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getIssuingTokensToken
module StripeAPI.Operations.GetIssuingTokensToken where

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

-- | > GET /v1/issuing/tokens/{token}
--
-- \<p>Retrieves an Issuing \<code>Token\<\/code> object.\<\/p>
getIssuingTokensToken ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetIssuingTokensTokenParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetIssuingTokensTokenResponse)
getIssuingTokensToken parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetIssuingTokensTokenResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetIssuingTokensTokenResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Issuing'token
                                                        )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetIssuingTokensTokenResponseDefault
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
    (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") ("/v1/issuing/tokens/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel (getIssuingTokensTokenParametersPathToken parameters))) GHC.Base.<> "")) [StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIssuingTokensTokenParametersQueryExpand parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True])

-- | Defines the object schema located at @paths.\/v1\/issuing\/tokens\/{token}.GET.parameters@ in the specification.
data GetIssuingTokensTokenParameters = GetIssuingTokensTokenParameters
  { -- | pathToken: Represents the parameter named \'token\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getIssuingTokensTokenParametersPathToken :: Data.Text.Internal.Text,
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getIssuingTokensTokenParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetIssuingTokensTokenParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathToken" Data.Aeson.Types.ToJSON..= getIssuingTokensTokenParametersPathToken obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getIssuingTokensTokenParametersQueryExpand obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathToken" Data.Aeson.Types.ToJSON..= getIssuingTokensTokenParametersPathToken obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getIssuingTokensTokenParametersQueryExpand obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetIssuingTokensTokenParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetIssuingTokensTokenParameters" (\obj -> (GHC.Base.pure GetIssuingTokensTokenParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathToken")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand"))

-- | Create a new 'GetIssuingTokensTokenParameters' with all required fields.
mkGetIssuingTokensTokenParameters ::
  -- | 'getIssuingTokensTokenParametersPathToken'
  Data.Text.Internal.Text ->
  GetIssuingTokensTokenParameters
mkGetIssuingTokensTokenParameters getIssuingTokensTokenParametersPathToken =
  GetIssuingTokensTokenParameters
    { getIssuingTokensTokenParametersPathToken = getIssuingTokensTokenParametersPathToken,
      getIssuingTokensTokenParametersQueryExpand = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getIssuingTokensToken'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetIssuingTokensTokenResponseError' is used.
data GetIssuingTokensTokenResponse
  = -- | Means either no matching case available or a parse error
    GetIssuingTokensTokenResponseError GHC.Base.String
  | -- | Successful response.
    GetIssuingTokensTokenResponse200 Issuing'token
  | -- | Error response.
    GetIssuingTokensTokenResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
