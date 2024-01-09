{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation deleteAccountsAccountExternalAccountsId
module StripeAPI.Operations.DeleteAccountsAccountExternalAccountsId where

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

-- | > DELETE /v1/accounts/{account}/external_accounts/{id}
--
-- \<p>Delete a specified external account for a given account.\<\/p>
deleteAccountsAccountExternalAccountsId ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  DeleteAccountsAccountExternalAccountsIdParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response DeleteAccountsAccountExternalAccountsIdResponse)
deleteAccountsAccountExternalAccountsId parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either DeleteAccountsAccountExternalAccountsIdResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     DeleteAccountsAccountExternalAccountsIdResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              DeletedExternalAccount
                                                        )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     DeleteAccountsAccountExternalAccountsIdResponseDefault
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
    (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "DELETE") ("/v1/accounts/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel (deleteAccountsAccountExternalAccountsIdParametersPathAccount parameters))) GHC.Base.<> ("/external_accounts/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel (deleteAccountsAccountExternalAccountsIdParametersPathId parameters))) GHC.Base.<> "")))) GHC.Base.mempty)

-- | Defines the object schema located at @paths.\/v1\/accounts\/{account}\/external_accounts\/{id}.DELETE.parameters@ in the specification.
data DeleteAccountsAccountExternalAccountsIdParameters = DeleteAccountsAccountExternalAccountsIdParameters
  { -- | pathAccount: Represents the parameter named \'account\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    deleteAccountsAccountExternalAccountsIdParametersPathAccount :: Data.Text.Internal.Text,
    -- | pathId: Represents the parameter named \'id\'
    deleteAccountsAccountExternalAccountsIdParametersPathId :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON DeleteAccountsAccountExternalAccountsIdParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathAccount" Data.Aeson.Types.ToJSON..= deleteAccountsAccountExternalAccountsIdParametersPathAccount obj] : ["pathId" Data.Aeson.Types.ToJSON..= deleteAccountsAccountExternalAccountsIdParametersPathId obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathAccount" Data.Aeson.Types.ToJSON..= deleteAccountsAccountExternalAccountsIdParametersPathAccount obj] : ["pathId" Data.Aeson.Types.ToJSON..= deleteAccountsAccountExternalAccountsIdParametersPathId obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON DeleteAccountsAccountExternalAccountsIdParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteAccountsAccountExternalAccountsIdParameters" (\obj -> (GHC.Base.pure DeleteAccountsAccountExternalAccountsIdParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathAccount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathId"))

-- | Create a new 'DeleteAccountsAccountExternalAccountsIdParameters' with all required fields.
mkDeleteAccountsAccountExternalAccountsIdParameters ::
  -- | 'deleteAccountsAccountExternalAccountsIdParametersPathAccount'
  Data.Text.Internal.Text ->
  -- | 'deleteAccountsAccountExternalAccountsIdParametersPathId'
  Data.Text.Internal.Text ->
  DeleteAccountsAccountExternalAccountsIdParameters
mkDeleteAccountsAccountExternalAccountsIdParameters deleteAccountsAccountExternalAccountsIdParametersPathAccount deleteAccountsAccountExternalAccountsIdParametersPathId =
  DeleteAccountsAccountExternalAccountsIdParameters
    { deleteAccountsAccountExternalAccountsIdParametersPathAccount = deleteAccountsAccountExternalAccountsIdParametersPathAccount,
      deleteAccountsAccountExternalAccountsIdParametersPathId = deleteAccountsAccountExternalAccountsIdParametersPathId
    }

-- | Represents a response of the operation 'deleteAccountsAccountExternalAccountsId'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteAccountsAccountExternalAccountsIdResponseError' is used.
data DeleteAccountsAccountExternalAccountsIdResponse
  = -- | Means either no matching case available or a parse error
    DeleteAccountsAccountExternalAccountsIdResponseError GHC.Base.String
  | -- | Successful response.
    DeleteAccountsAccountExternalAccountsIdResponse200 DeletedExternalAccount
  | -- | Error response.
    DeleteAccountsAccountExternalAccountsIdResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
