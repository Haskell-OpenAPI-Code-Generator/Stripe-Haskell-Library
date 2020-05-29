{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema PersonRequirements
module StripeAPI.Types.PersonRequirements where

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

-- | Defines the data type for the schema person_requirements
-- 
-- 
data PersonRequirements = PersonRequirements {
  -- | currently_due: Fields that need to be collected to keep the person\'s account enabled. If not collected by the account\'s \`current_deadline\`, these fields appear in \`past_due\` as well, and the account is disabled.
  personRequirementsCurrentlyDue :: ([] Data.Text.Internal.Text)
  -- | errors: The fields that need to be collected again because validation or verification failed for some reason.
  , personRequirementsErrors :: (GHC.Maybe.Maybe ([] AccountRequirementsError))
  -- | eventually_due: Fields that need to be collected assuming all volume thresholds are reached. As fields are needed, they are moved to \`currently_due\` and the account\'s \`current_deadline\` is set.
  , personRequirementsEventuallyDue :: ([] Data.Text.Internal.Text)
  -- | past_due: Fields that weren\'t collected by the account\'s \`current_deadline\`. These fields need to be collected to enable payouts for the person\'s account.
  , personRequirementsPastDue :: ([] Data.Text.Internal.Text)
  -- | pending_verification: Fields that may become required depending on the results of verification or review. An empty array unless an asynchronous verification is pending. If verification fails, the fields in this array become required and move to \`currently_due\` or \`past_due\`.
  , personRequirementsPendingVerification :: ([] Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PersonRequirements
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "currently_due" (personRequirementsCurrentlyDue obj) : (Data.Aeson..=) "errors" (personRequirementsErrors obj) : (Data.Aeson..=) "eventually_due" (personRequirementsEventuallyDue obj) : (Data.Aeson..=) "past_due" (personRequirementsPastDue obj) : (Data.Aeson..=) "pending_verification" (personRequirementsPendingVerification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "currently_due" (personRequirementsCurrentlyDue obj) GHC.Base.<> ((Data.Aeson..=) "errors" (personRequirementsErrors obj) GHC.Base.<> ((Data.Aeson..=) "eventually_due" (personRequirementsEventuallyDue obj) GHC.Base.<> ((Data.Aeson..=) "past_due" (personRequirementsPastDue obj) GHC.Base.<> (Data.Aeson..=) "pending_verification" (personRequirementsPendingVerification obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PersonRequirements
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PersonRequirements" (\obj -> ((((GHC.Base.pure PersonRequirements GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currently_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "eventually_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "past_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pending_verification"))