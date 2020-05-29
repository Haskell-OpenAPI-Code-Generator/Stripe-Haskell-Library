{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema PersonRelationship
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

-- | Defines the data type for the schema person_relationship
-- 
-- 
data PersonRelationship = PersonRelationship {
  -- | director: Whether the person is a director of the account\'s legal entity. Currently only required for accounts in the EU. Directors are typically members of the governing board of the company, or responsible for ensuring the company meets its regulatory obligations.
  personRelationshipDirector :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | executive: Whether the person has significant responsibility to control, manage, or direct the organization.
  , personRelationshipExecutive :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | owner: Whether the person is an owner of the account’s legal entity.
  , personRelationshipOwner :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | percent_ownership: The percent owned by the person of the account\'s legal entity.
  , personRelationshipPercentOwnership :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | representative: Whether the person is authorized as the primary representative of the account. This is the person nominated by the business to provide information about themselves, and general information about the account. There can only be one representative at any given time. At the time the account is created, this person should be set to the person responsible for opening the account.
  , personRelationshipRepresentative :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | title: The person\'s title (e.g., CEO, Support Engineer).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , personRelationshipTitle :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PersonRelationship
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "director" (personRelationshipDirector obj) : (Data.Aeson..=) "executive" (personRelationshipExecutive obj) : (Data.Aeson..=) "owner" (personRelationshipOwner obj) : (Data.Aeson..=) "percent_ownership" (personRelationshipPercentOwnership obj) : (Data.Aeson..=) "representative" (personRelationshipRepresentative obj) : (Data.Aeson..=) "title" (personRelationshipTitle obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "director" (personRelationshipDirector obj) GHC.Base.<> ((Data.Aeson..=) "executive" (personRelationshipExecutive obj) GHC.Base.<> ((Data.Aeson..=) "owner" (personRelationshipOwner obj) GHC.Base.<> ((Data.Aeson..=) "percent_ownership" (personRelationshipPercentOwnership obj) GHC.Base.<> ((Data.Aeson..=) "representative" (personRelationshipRepresentative obj) GHC.Base.<> (Data.Aeson..=) "title" (personRelationshipTitle obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PersonRelationship
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PersonRelationship" (\obj -> (((((GHC.Base.pure PersonRelationship GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "director")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "executive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owner")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "percent_ownership")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "representative")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title"))