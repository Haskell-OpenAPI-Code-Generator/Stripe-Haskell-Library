{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SourceCodeVerificationFlow
module StripeAPI.Types.SourceCodeVerificationFlow where

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
import qualified Data.Text as Data.Text.Internal
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

-- | Defines the object schema located at @components.schemas.source_code_verification_flow@ in the specification.
data SourceCodeVerificationFlow = SourceCodeVerificationFlow
  { -- | attempts_remaining: The number of attempts remaining to authenticate the source object with a verification code.
    sourceCodeVerificationFlowAttemptsRemaining :: GHC.Types.Int,
    -- | status: The status of the code verification, either \`pending\` (awaiting verification, \`attempts_remaining\` should be greater than 0), \`succeeded\` (successful verification) or \`failed\` (failed verification, cannot be verified anymore as \`attempts_remaining\` should be 0).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceCodeVerificationFlowStatus :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SourceCodeVerificationFlow where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["attempts_remaining" Data.Aeson.Types.ToJSON..= sourceCodeVerificationFlowAttemptsRemaining obj] : ["status" Data.Aeson.Types.ToJSON..= sourceCodeVerificationFlowStatus obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["attempts_remaining" Data.Aeson.Types.ToJSON..= sourceCodeVerificationFlowAttemptsRemaining obj] : ["status" Data.Aeson.Types.ToJSON..= sourceCodeVerificationFlowStatus obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SourceCodeVerificationFlow where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceCodeVerificationFlow" (\obj -> (GHC.Base.pure SourceCodeVerificationFlow GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "attempts_remaining")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))

-- | Create a new 'SourceCodeVerificationFlow' with all required fields.
mkSourceCodeVerificationFlow ::
  -- | 'sourceCodeVerificationFlowAttemptsRemaining'
  GHC.Types.Int ->
  -- | 'sourceCodeVerificationFlowStatus'
  Data.Text.Internal.Text ->
  SourceCodeVerificationFlow
mkSourceCodeVerificationFlow sourceCodeVerificationFlowAttemptsRemaining sourceCodeVerificationFlowStatus =
  SourceCodeVerificationFlow
    { sourceCodeVerificationFlowAttemptsRemaining = sourceCodeVerificationFlowAttemptsRemaining,
      sourceCodeVerificationFlowStatus = sourceCodeVerificationFlowStatus
    }
