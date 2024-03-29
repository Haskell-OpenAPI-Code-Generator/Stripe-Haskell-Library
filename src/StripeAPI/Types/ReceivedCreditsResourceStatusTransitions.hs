{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema ReceivedCreditsResourceStatusTransitions
module StripeAPI.Types.ReceivedCreditsResourceStatusTransitions where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
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

-- | Defines the object schema located at @components.schemas.received_credits_resource_status_transitions@ in the specification.
data ReceivedCreditsResourceStatusTransitions = ReceivedCreditsResourceStatusTransitions
  { -- | posted_at: Timestamp describing when the CreditReversal changed status to \`posted\`
    receivedCreditsResourceStatusTransitionsPostedAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON ReceivedCreditsResourceStatusTransitions where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("posted_at" Data.Aeson.Types.ToJSON..=)) (receivedCreditsResourceStatusTransitionsPostedAt obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("posted_at" Data.Aeson.Types.ToJSON..=)) (receivedCreditsResourceStatusTransitionsPostedAt obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON ReceivedCreditsResourceStatusTransitions where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "ReceivedCreditsResourceStatusTransitions" (\obj -> GHC.Base.pure ReceivedCreditsResourceStatusTransitions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "posted_at"))

-- | Create a new 'ReceivedCreditsResourceStatusTransitions' with all required fields.
mkReceivedCreditsResourceStatusTransitions :: ReceivedCreditsResourceStatusTransitions
mkReceivedCreditsResourceStatusTransitions = ReceivedCreditsResourceStatusTransitions {receivedCreditsResourceStatusTransitionsPostedAt = GHC.Maybe.Nothing}
