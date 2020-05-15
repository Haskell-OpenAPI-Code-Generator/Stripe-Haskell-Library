{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.PersonRelationship where

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

data PersonRelationship
    = PersonRelationship {personRelationshipDirector :: (GHC.Maybe.Maybe GHC.Types.Bool),
                          personRelationshipExecutive :: (GHC.Maybe.Maybe GHC.Types.Bool),
                          personRelationshipOwner :: (GHC.Maybe.Maybe GHC.Types.Bool),
                          personRelationshipPercentOwnership :: (GHC.Maybe.Maybe GHC.Types.Double),
                          personRelationshipRepresentative :: (GHC.Maybe.Maybe GHC.Types.Bool),
                          personRelationshipTitle :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PersonRelationship
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "director" (personRelationshipDirector obj) : (Data.Aeson..=) "executive" (personRelationshipExecutive obj) : (Data.Aeson..=) "owner" (personRelationshipOwner obj) : (Data.Aeson..=) "percent_ownership" (personRelationshipPercentOwnership obj) : (Data.Aeson..=) "representative" (personRelationshipRepresentative obj) : (Data.Aeson..=) "title" (personRelationshipTitle obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "director" (personRelationshipDirector obj) GHC.Base.<> ((Data.Aeson..=) "executive" (personRelationshipExecutive obj) GHC.Base.<> ((Data.Aeson..=) "owner" (personRelationshipOwner obj) GHC.Base.<> ((Data.Aeson..=) "percent_ownership" (personRelationshipPercentOwnership obj) GHC.Base.<> ((Data.Aeson..=) "representative" (personRelationshipRepresentative obj) GHC.Base.<> (Data.Aeson..=) "title" (personRelationshipTitle obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PersonRelationship
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PersonRelationship" (\obj -> (((((GHC.Base.pure PersonRelationship GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "director")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "executive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owner")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "percent_ownership")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "representative")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title"))