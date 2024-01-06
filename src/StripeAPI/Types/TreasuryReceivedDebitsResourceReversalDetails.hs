{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema TreasuryReceivedDebitsResourceReversalDetails
module StripeAPI.Types.TreasuryReceivedDebitsResourceReversalDetails where

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

-- | Defines the object schema located at @components.schemas.treasury_received_debits_resource_reversal_details@ in the specification.
data TreasuryReceivedDebitsResourceReversalDetails = TreasuryReceivedDebitsResourceReversalDetails
  { -- | deadline: Time before which a ReceivedDebit can be reversed.
    treasuryReceivedDebitsResourceReversalDetailsDeadline :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | restricted_reason: Set if a ReceivedDebit can\'t be reversed.
    treasuryReceivedDebitsResourceReversalDetailsRestrictedReason :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason'NonNullable))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON TreasuryReceivedDebitsResourceReversalDetails where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("deadline" Data.Aeson.Types.ToJSON..=)) (treasuryReceivedDebitsResourceReversalDetailsDeadline obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("restricted_reason" Data.Aeson.Types.ToJSON..=)) (treasuryReceivedDebitsResourceReversalDetailsRestrictedReason obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("deadline" Data.Aeson.Types.ToJSON..=)) (treasuryReceivedDebitsResourceReversalDetailsDeadline obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("restricted_reason" Data.Aeson.Types.ToJSON..=)) (treasuryReceivedDebitsResourceReversalDetailsRestrictedReason obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON TreasuryReceivedDebitsResourceReversalDetails where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "TreasuryReceivedDebitsResourceReversalDetails" (\obj -> (GHC.Base.pure TreasuryReceivedDebitsResourceReversalDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "deadline")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "restricted_reason"))

-- | Create a new 'TreasuryReceivedDebitsResourceReversalDetails' with all required fields.
mkTreasuryReceivedDebitsResourceReversalDetails :: TreasuryReceivedDebitsResourceReversalDetails
mkTreasuryReceivedDebitsResourceReversalDetails =
  TreasuryReceivedDebitsResourceReversalDetails
    { treasuryReceivedDebitsResourceReversalDetailsDeadline = GHC.Maybe.Nothing,
      treasuryReceivedDebitsResourceReversalDetailsRestrictedReason = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.treasury_received_debits_resource_reversal_details.properties.restricted_reason@ in the specification.
--
-- Set if a ReceivedDebit can\'t be reversed.
data TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"already_reversed"@
    TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason'NonNullableEnumAlreadyReversed
  | -- | Represents the JSON value @"deadline_passed"@
    TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason'NonNullableEnumDeadlinePassed
  | -- | Represents the JSON value @"network_restricted"@
    TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason'NonNullableEnumNetworkRestricted
  | -- | Represents the JSON value @"other"@
    TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason'NonNullableEnumOther
  | -- | Represents the JSON value @"source_flow_restricted"@
    TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason'NonNullableEnumSourceFlowRestricted
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason'NonNullable where
  toJSON (TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason'NonNullableOther val) = val
  toJSON (TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason'NonNullableEnumAlreadyReversed) = "already_reversed"
  toJSON (TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason'NonNullableEnumDeadlinePassed) = "deadline_passed"
  toJSON (TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason'NonNullableEnumNetworkRestricted) = "network_restricted"
  toJSON (TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason'NonNullableEnumOther) = "other"
  toJSON (TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason'NonNullableEnumSourceFlowRestricted) = "source_flow_restricted"

instance Data.Aeson.Types.FromJSON.FromJSON TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "already_reversed" -> TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason'NonNullableEnumAlreadyReversed
            | val GHC.Classes.== "deadline_passed" -> TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason'NonNullableEnumDeadlinePassed
            | val GHC.Classes.== "network_restricted" -> TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason'NonNullableEnumNetworkRestricted
            | val GHC.Classes.== "other" -> TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason'NonNullableEnumOther
            | val GHC.Classes.== "source_flow_restricted" -> TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason'NonNullableEnumSourceFlowRestricted
            | GHC.Base.otherwise -> TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason'NonNullableOther val
      )
