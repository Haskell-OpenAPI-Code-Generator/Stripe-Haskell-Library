{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema CustomerAcceptance
module StripeAPI.Types.CustomerAcceptance where

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
import StripeAPI.Types.OfflineAcceptance
import StripeAPI.Types.OnlineAcceptance

-- | Defines the data type for the schema customer_acceptance
-- 
-- 
data CustomerAcceptance = CustomerAcceptance {
  -- | accepted_at: The time at which the customer accepted the Mandate.
  customerAcceptanceAcceptedAt :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | offline: 
  , customerAcceptanceOffline :: (GHC.Maybe.Maybe OfflineAcceptance)
  -- | online: 
  , customerAcceptanceOnline :: (GHC.Maybe.Maybe OnlineAcceptance)
  -- | type: The type of customer acceptance information included with the Mandate. One of \`online\` or \`offline\`.
  , customerAcceptanceType :: CustomerAcceptanceType'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON CustomerAcceptance
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "accepted_at" (customerAcceptanceAcceptedAt obj) : (Data.Aeson..=) "offline" (customerAcceptanceOffline obj) : (Data.Aeson..=) "online" (customerAcceptanceOnline obj) : (Data.Aeson..=) "type" (customerAcceptanceType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "accepted_at" (customerAcceptanceAcceptedAt obj) GHC.Base.<> ((Data.Aeson..=) "offline" (customerAcceptanceOffline obj) GHC.Base.<> ((Data.Aeson..=) "online" (customerAcceptanceOnline obj) GHC.Base.<> (Data.Aeson..=) "type" (customerAcceptanceType obj))))
instance Data.Aeson.Types.FromJSON.FromJSON CustomerAcceptance
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CustomerAcceptance" (\obj -> (((GHC.Base.pure CustomerAcceptance GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "accepted_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "offline")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "online")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Defines the enum schema customer_acceptanceType\'
-- 
-- The type of customer acceptance information included with the Mandate. One of \`online\` or \`offline\`.
data CustomerAcceptanceType'
    = CustomerAcceptanceType'EnumOther Data.Aeson.Types.Internal.Value
    | CustomerAcceptanceType'EnumTyped Data.Text.Internal.Text
    | CustomerAcceptanceType'EnumStringOffline
    | CustomerAcceptanceType'EnumStringOnline
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON CustomerAcceptanceType'
    where toJSON (CustomerAcceptanceType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (CustomerAcceptanceType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (CustomerAcceptanceType'EnumStringOffline) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "offline"
          toJSON (CustomerAcceptanceType'EnumStringOnline) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "online"
instance Data.Aeson.FromJSON CustomerAcceptanceType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "offline")
                                          then CustomerAcceptanceType'EnumStringOffline
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "online")
                                                then CustomerAcceptanceType'EnumStringOnline
                                                else CustomerAcceptanceType'EnumOther val)