{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getAccountsAccountCapabilitiesCapability
module StripeAPI.Operations.GetAccountsAccountCapabilitiesCapability where

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

-- | > GET /v1/accounts/{account}/capabilities/{capability}
--
-- \<p>Retrieves information about the specified Account Capability.\<\/p>
getAccountsAccountCapabilitiesCapability ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetAccountsAccountCapabilitiesCapabilityParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetAccountsAccountCapabilitiesCapabilityResponse)
getAccountsAccountCapabilitiesCapability parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetAccountsAccountCapabilitiesCapabilityResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetAccountsAccountCapabilitiesCapabilityResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Capability
                                                        )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetAccountsAccountCapabilitiesCapabilityResponseDefault
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
    (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") ("/v1/accounts/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel (getAccountsAccountCapabilitiesCapabilityParametersPathAccount parameters))) GHC.Base.<> ("/capabilities/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel (getAccountsAccountCapabilitiesCapabilityParametersPathCapability parameters))) GHC.Base.<> "")))) [StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getAccountsAccountCapabilitiesCapabilityParametersQueryExpand parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True])

-- | Defines the object schema located at @paths.\/v1\/accounts\/{account}\/capabilities\/{capability}.GET.parameters@ in the specification.
data GetAccountsAccountCapabilitiesCapabilityParameters = GetAccountsAccountCapabilitiesCapabilityParameters
  { -- | pathAccount: Represents the parameter named \'account\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getAccountsAccountCapabilitiesCapabilityParametersPathAccount :: Data.Text.Internal.Text,
    -- | pathCapability: Represents the parameter named \'capability\'
    getAccountsAccountCapabilitiesCapabilityParametersPathCapability :: Data.Text.Internal.Text,
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getAccountsAccountCapabilitiesCapabilityParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetAccountsAccountCapabilitiesCapabilityParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathAccount" Data.Aeson.Types.ToJSON..= getAccountsAccountCapabilitiesCapabilityParametersPathAccount obj] : ["pathCapability" Data.Aeson.Types.ToJSON..= getAccountsAccountCapabilitiesCapabilityParametersPathCapability obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getAccountsAccountCapabilitiesCapabilityParametersQueryExpand obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathAccount" Data.Aeson.Types.ToJSON..= getAccountsAccountCapabilitiesCapabilityParametersPathAccount obj] : ["pathCapability" Data.Aeson.Types.ToJSON..= getAccountsAccountCapabilitiesCapabilityParametersPathCapability obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getAccountsAccountCapabilitiesCapabilityParametersQueryExpand obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetAccountsAccountCapabilitiesCapabilityParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountsAccountCapabilitiesCapabilityParameters" (\obj -> ((GHC.Base.pure GetAccountsAccountCapabilitiesCapabilityParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathAccount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathCapability")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand"))

-- | Create a new 'GetAccountsAccountCapabilitiesCapabilityParameters' with all required fields.
mkGetAccountsAccountCapabilitiesCapabilityParameters ::
  -- | 'getAccountsAccountCapabilitiesCapabilityParametersPathAccount'
  Data.Text.Internal.Text ->
  -- | 'getAccountsAccountCapabilitiesCapabilityParametersPathCapability'
  Data.Text.Internal.Text ->
  GetAccountsAccountCapabilitiesCapabilityParameters
mkGetAccountsAccountCapabilitiesCapabilityParameters getAccountsAccountCapabilitiesCapabilityParametersPathAccount getAccountsAccountCapabilitiesCapabilityParametersPathCapability =
  GetAccountsAccountCapabilitiesCapabilityParameters
    { getAccountsAccountCapabilitiesCapabilityParametersPathAccount = getAccountsAccountCapabilitiesCapabilityParametersPathAccount,
      getAccountsAccountCapabilitiesCapabilityParametersPathCapability = getAccountsAccountCapabilitiesCapabilityParametersPathCapability,
      getAccountsAccountCapabilitiesCapabilityParametersQueryExpand = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getAccountsAccountCapabilitiesCapability'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetAccountsAccountCapabilitiesCapabilityResponseError' is used.
data GetAccountsAccountCapabilitiesCapabilityResponse
  = -- | Means either no matching case available or a parse error
    GetAccountsAccountCapabilitiesCapabilityResponseError GHC.Base.String
  | -- | Successful response.
    GetAccountsAccountCapabilitiesCapabilityResponse200 Capability
  | -- | Error response.
    GetAccountsAccountCapabilitiesCapabilityResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
