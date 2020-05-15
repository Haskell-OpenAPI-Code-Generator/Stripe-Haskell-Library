{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

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

data PersonRequirements
    = PersonRequirements {personRequirementsCurrentlyDue :: ([] GHC.Base.String),
                          personRequirementsErrors :: (GHC.Maybe.Maybe ([] AccountRequirementsError)),
                          personRequirementsEventuallyDue :: ([] GHC.Base.String),
                          personRequirementsPastDue :: ([] GHC.Base.String),
                          personRequirementsPendingVerification :: ([] GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PersonRequirements
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "currently_due" (personRequirementsCurrentlyDue obj) : (Data.Aeson..=) "errors" (personRequirementsErrors obj) : (Data.Aeson..=) "eventually_due" (personRequirementsEventuallyDue obj) : (Data.Aeson..=) "past_due" (personRequirementsPastDue obj) : (Data.Aeson..=) "pending_verification" (personRequirementsPendingVerification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "currently_due" (personRequirementsCurrentlyDue obj) GHC.Base.<> ((Data.Aeson..=) "errors" (personRequirementsErrors obj) GHC.Base.<> ((Data.Aeson..=) "eventually_due" (personRequirementsEventuallyDue obj) GHC.Base.<> ((Data.Aeson..=) "past_due" (personRequirementsPastDue obj) GHC.Base.<> (Data.Aeson..=) "pending_verification" (personRequirementsPendingVerification obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PersonRequirements
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PersonRequirements" (\obj -> ((((GHC.Base.pure PersonRequirements GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currently_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "eventually_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "past_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pending_verification"))