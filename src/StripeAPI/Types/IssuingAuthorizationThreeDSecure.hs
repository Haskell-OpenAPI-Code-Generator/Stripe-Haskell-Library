{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema IssuingAuthorizationThreeDSecure
module StripeAPI.Types.IssuingAuthorizationThreeDSecure where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.issuing_authorization_three_d_secure@ in the specification.
data IssuingAuthorizationThreeDSecure = IssuingAuthorizationThreeDSecure
  { -- | result: The outcome of the 3D Secure authentication request.
    issuingAuthorizationThreeDSecureResult :: IssuingAuthorizationThreeDSecureResult'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON IssuingAuthorizationThreeDSecure where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["result" Data.Aeson.Types.ToJSON..= issuingAuthorizationThreeDSecureResult obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["result" Data.Aeson.Types.ToJSON..= issuingAuthorizationThreeDSecureResult obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON IssuingAuthorizationThreeDSecure where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingAuthorizationThreeDSecure" (\obj -> GHC.Base.pure IssuingAuthorizationThreeDSecure GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))

-- | Create a new 'IssuingAuthorizationThreeDSecure' with all required fields.
mkIssuingAuthorizationThreeDSecure ::
  -- | 'issuingAuthorizationThreeDSecureResult'
  IssuingAuthorizationThreeDSecureResult' ->
  IssuingAuthorizationThreeDSecure
mkIssuingAuthorizationThreeDSecure issuingAuthorizationThreeDSecureResult = IssuingAuthorizationThreeDSecure {issuingAuthorizationThreeDSecureResult = issuingAuthorizationThreeDSecureResult}

-- | Defines the enum schema located at @components.schemas.issuing_authorization_three_d_secure.properties.result@ in the specification.
--
-- The outcome of the 3D Secure authentication request.
data IssuingAuthorizationThreeDSecureResult'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    IssuingAuthorizationThreeDSecureResult'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    IssuingAuthorizationThreeDSecureResult'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"attempt_acknowledged"@
    IssuingAuthorizationThreeDSecureResult'EnumAttemptAcknowledged
  | -- | Represents the JSON value @"authenticated"@
    IssuingAuthorizationThreeDSecureResult'EnumAuthenticated
  | -- | Represents the JSON value @"failed"@
    IssuingAuthorizationThreeDSecureResult'EnumFailed
  | -- | Represents the JSON value @"required"@
    IssuingAuthorizationThreeDSecureResult'EnumRequired
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON IssuingAuthorizationThreeDSecureResult' where
  toJSON (IssuingAuthorizationThreeDSecureResult'Other val) = val
  toJSON (IssuingAuthorizationThreeDSecureResult'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (IssuingAuthorizationThreeDSecureResult'EnumAttemptAcknowledged) = "attempt_acknowledged"
  toJSON (IssuingAuthorizationThreeDSecureResult'EnumAuthenticated) = "authenticated"
  toJSON (IssuingAuthorizationThreeDSecureResult'EnumFailed) = "failed"
  toJSON (IssuingAuthorizationThreeDSecureResult'EnumRequired) = "required"

instance Data.Aeson.Types.FromJSON.FromJSON IssuingAuthorizationThreeDSecureResult' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "attempt_acknowledged" -> IssuingAuthorizationThreeDSecureResult'EnumAttemptAcknowledged
            | val GHC.Classes.== "authenticated" -> IssuingAuthorizationThreeDSecureResult'EnumAuthenticated
            | val GHC.Classes.== "failed" -> IssuingAuthorizationThreeDSecureResult'EnumFailed
            | val GHC.Classes.== "required" -> IssuingAuthorizationThreeDSecureResult'EnumRequired
            | GHC.Base.otherwise -> IssuingAuthorizationThreeDSecureResult'Other val
      )
