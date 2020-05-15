{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.AccountCapabilityRequirements where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Generics
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.Types.AccountRequirementsError

data AccountCapabilityRequirements
    = AccountCapabilityRequirements {accountCapabilityRequirementsCurrentDeadline :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                     accountCapabilityRequirementsCurrentlyDue :: ([] GHC.Base.String),
                                     accountCapabilityRequirementsDisabledReason :: (GHC.Maybe.Maybe GHC.Base.String),
                                     accountCapabilityRequirementsErrors :: (GHC.Maybe.Maybe ([] AccountRequirementsError)),
                                     accountCapabilityRequirementsEventuallyDue :: ([] GHC.Base.String),
                                     accountCapabilityRequirementsPastDue :: ([] GHC.Base.String),
                                     accountCapabilityRequirementsPendingVerification :: ([] GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON AccountCapabilityRequirements
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "current_deadline" (accountCapabilityRequirementsCurrentDeadline obj) : (Data.Aeson..=) "currently_due" (accountCapabilityRequirementsCurrentlyDue obj) : (Data.Aeson..=) "disabled_reason" (accountCapabilityRequirementsDisabledReason obj) : (Data.Aeson..=) "errors" (accountCapabilityRequirementsErrors obj) : (Data.Aeson..=) "eventually_due" (accountCapabilityRequirementsEventuallyDue obj) : (Data.Aeson..=) "past_due" (accountCapabilityRequirementsPastDue obj) : (Data.Aeson..=) "pending_verification" (accountCapabilityRequirementsPendingVerification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "current_deadline" (accountCapabilityRequirementsCurrentDeadline obj) GHC.Base.<> ((Data.Aeson..=) "currently_due" (accountCapabilityRequirementsCurrentlyDue obj) GHC.Base.<> ((Data.Aeson..=) "disabled_reason" (accountCapabilityRequirementsDisabledReason obj) GHC.Base.<> ((Data.Aeson..=) "errors" (accountCapabilityRequirementsErrors obj) GHC.Base.<> ((Data.Aeson..=) "eventually_due" (accountCapabilityRequirementsEventuallyDue obj) GHC.Base.<> ((Data.Aeson..=) "past_due" (accountCapabilityRequirementsPastDue obj) GHC.Base.<> (Data.Aeson..=) "pending_verification" (accountCapabilityRequirementsPendingVerification obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON AccountCapabilityRequirements
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountCapabilityRequirements" (\obj -> ((((((GHC.Base.pure AccountCapabilityRequirements GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "current_deadline")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currently_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "disabled_reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "eventually_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "past_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pending_verification"))