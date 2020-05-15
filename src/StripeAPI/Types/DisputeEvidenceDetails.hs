{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.DisputeEvidenceDetails where

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

data DisputeEvidenceDetails
    = DisputeEvidenceDetails {disputeEvidenceDetailsDueBy :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                              disputeEvidenceDetailsHasEvidence :: GHC.Types.Bool,
                              disputeEvidenceDetailsPastDue :: GHC.Types.Bool,
                              disputeEvidenceDetailsSubmissionCount :: GHC.Integer.Type.Integer}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DisputeEvidenceDetails
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "due_by" (disputeEvidenceDetailsDueBy obj) : (Data.Aeson..=) "has_evidence" (disputeEvidenceDetailsHasEvidence obj) : (Data.Aeson..=) "past_due" (disputeEvidenceDetailsPastDue obj) : (Data.Aeson..=) "submission_count" (disputeEvidenceDetailsSubmissionCount obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "due_by" (disputeEvidenceDetailsDueBy obj) GHC.Base.<> ((Data.Aeson..=) "has_evidence" (disputeEvidenceDetailsHasEvidence obj) GHC.Base.<> ((Data.Aeson..=) "past_due" (disputeEvidenceDetailsPastDue obj) GHC.Base.<> (Data.Aeson..=) "submission_count" (disputeEvidenceDetailsSubmissionCount obj))))
instance Data.Aeson.Types.FromJSON.FromJSON DisputeEvidenceDetails
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DisputeEvidenceDetails" (\obj -> (((GHC.Base.pure DisputeEvidenceDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "due_by")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_evidence")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "past_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "submission_count"))