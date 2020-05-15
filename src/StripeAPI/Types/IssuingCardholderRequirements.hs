{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.IssuingCardholderRequirements where

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

data IssuingCardholderRequirements
    = IssuingCardholderRequirements {issuingCardholderRequirementsDisabledReason :: (GHC.Maybe.Maybe IssuingCardholderRequirementsDisabledReason'),
                                     issuingCardholderRequirementsPastDue :: (GHC.Maybe.Maybe ([] IssuingCardholderRequirementsPastDue'))}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data IssuingCardholderRequirementsDisabledReason'
    = IssuingCardholderRequirementsDisabledReason'EnumOther Data.Aeson.Types.Internal.Value
    | IssuingCardholderRequirementsDisabledReason'EnumTyped GHC.Base.String
    | IssuingCardholderRequirementsDisabledReason'EnumStringListed
    | IssuingCardholderRequirementsDisabledReason'EnumStringRejected'listed
    | IssuingCardholderRequirementsDisabledReason'EnumStringUnderReview
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON IssuingCardholderRequirementsDisabledReason'
    where toJSON (IssuingCardholderRequirementsDisabledReason'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IssuingCardholderRequirementsDisabledReason'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IssuingCardholderRequirementsDisabledReason'EnumStringListed) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "listed"
          toJSON (IssuingCardholderRequirementsDisabledReason'EnumStringRejected'listed) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "rejected.listed"
          toJSON (IssuingCardholderRequirementsDisabledReason'EnumStringUnderReview) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "under_review"
instance Data.Aeson.FromJSON IssuingCardholderRequirementsDisabledReason'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "listed")
                                          then IssuingCardholderRequirementsDisabledReason'EnumStringListed
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "rejected.listed")
                                                then IssuingCardholderRequirementsDisabledReason'EnumStringRejected'listed
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "under_review")
                                                      then IssuingCardholderRequirementsDisabledReason'EnumStringUnderReview
                                                      else IssuingCardholderRequirementsDisabledReason'EnumOther val)
data IssuingCardholderRequirementsPastDue'
    = IssuingCardholderRequirementsPastDue'EnumOther Data.Aeson.Types.Internal.Value
    | IssuingCardholderRequirementsPastDue'EnumTyped GHC.Base.String
    | IssuingCardholderRequirementsPastDue'EnumStringIndividual'dob'day
    | IssuingCardholderRequirementsPastDue'EnumStringIndividual'dob'month
    | IssuingCardholderRequirementsPastDue'EnumStringIndividual'dob'year
    | IssuingCardholderRequirementsPastDue'EnumStringIndividual'firstName
    | IssuingCardholderRequirementsPastDue'EnumStringIndividual'lastName
    | IssuingCardholderRequirementsPastDue'EnumStringIndividual'verification'document
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON IssuingCardholderRequirementsPastDue'
    where toJSON (IssuingCardholderRequirementsPastDue'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IssuingCardholderRequirementsPastDue'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IssuingCardholderRequirementsPastDue'EnumStringIndividual'dob'day) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual.dob.day"
          toJSON (IssuingCardholderRequirementsPastDue'EnumStringIndividual'dob'month) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual.dob.month"
          toJSON (IssuingCardholderRequirementsPastDue'EnumStringIndividual'dob'year) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual.dob.year"
          toJSON (IssuingCardholderRequirementsPastDue'EnumStringIndividual'firstName) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual.first_name"
          toJSON (IssuingCardholderRequirementsPastDue'EnumStringIndividual'lastName) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual.last_name"
          toJSON (IssuingCardholderRequirementsPastDue'EnumStringIndividual'verification'document) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual.verification.document"
instance Data.Aeson.FromJSON IssuingCardholderRequirementsPastDue'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual.dob.day")
                                          then IssuingCardholderRequirementsPastDue'EnumStringIndividual'dob'day
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual.dob.month")
                                                then IssuingCardholderRequirementsPastDue'EnumStringIndividual'dob'month
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual.dob.year")
                                                      then IssuingCardholderRequirementsPastDue'EnumStringIndividual'dob'year
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual.first_name")
                                                            then IssuingCardholderRequirementsPastDue'EnumStringIndividual'firstName
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual.last_name")
                                                                  then IssuingCardholderRequirementsPastDue'EnumStringIndividual'lastName
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual.verification.document")
                                                                        then IssuingCardholderRequirementsPastDue'EnumStringIndividual'verification'document
                                                                        else IssuingCardholderRequirementsPastDue'EnumOther val)
instance Data.Aeson.ToJSON IssuingCardholderRequirements
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "disabled_reason" (issuingCardholderRequirementsDisabledReason obj) : (Data.Aeson..=) "past_due" (issuingCardholderRequirementsPastDue obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "disabled_reason" (issuingCardholderRequirementsDisabledReason obj) GHC.Base.<> (Data.Aeson..=) "past_due" (issuingCardholderRequirementsPastDue obj))
instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardholderRequirements
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingCardholderRequirements" (\obj -> (GHC.Base.pure IssuingCardholderRequirements GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "disabled_reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "past_due"))