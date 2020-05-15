{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.AccountRequirements where

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

data AccountRequirements
    = AccountRequirements {accountRequirementsCurrentDeadline :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                           accountRequirementsCurrentlyDue :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                           accountRequirementsDisabledReason :: (GHC.Maybe.Maybe GHC.Base.String),
                           accountRequirementsErrors :: (GHC.Maybe.Maybe ([] AccountRequirementsError)),
                           accountRequirementsEventuallyDue :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                           accountRequirementsPastDue :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                           accountRequirementsPendingVerification :: (GHC.Maybe.Maybe ([] GHC.Base.String))}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON AccountRequirements
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "current_deadline" (accountRequirementsCurrentDeadline obj) : (Data.Aeson..=) "currently_due" (accountRequirementsCurrentlyDue obj) : (Data.Aeson..=) "disabled_reason" (accountRequirementsDisabledReason obj) : (Data.Aeson..=) "errors" (accountRequirementsErrors obj) : (Data.Aeson..=) "eventually_due" (accountRequirementsEventuallyDue obj) : (Data.Aeson..=) "past_due" (accountRequirementsPastDue obj) : (Data.Aeson..=) "pending_verification" (accountRequirementsPendingVerification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "current_deadline" (accountRequirementsCurrentDeadline obj) GHC.Base.<> ((Data.Aeson..=) "currently_due" (accountRequirementsCurrentlyDue obj) GHC.Base.<> ((Data.Aeson..=) "disabled_reason" (accountRequirementsDisabledReason obj) GHC.Base.<> ((Data.Aeson..=) "errors" (accountRequirementsErrors obj) GHC.Base.<> ((Data.Aeson..=) "eventually_due" (accountRequirementsEventuallyDue obj) GHC.Base.<> ((Data.Aeson..=) "past_due" (accountRequirementsPastDue obj) GHC.Base.<> (Data.Aeson..=) "pending_verification" (accountRequirementsPendingVerification obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON AccountRequirements
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountRequirements" (\obj -> ((((((GHC.Base.pure AccountRequirements GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "current_deadline")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currently_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "disabled_reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "eventually_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "past_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pending_verification"))