{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema OnlineAcceptance
module StripeAPI.Types.OnlineAcceptance where

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

-- | Defines the data type for the schema online_acceptance
-- 
-- 
data OnlineAcceptance = OnlineAcceptance {
  -- | ip_address: The IP address from which the Mandate was accepted by the customer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  onlineAcceptanceIpAddress :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | user_agent: The user agent of the browser from which the Mandate was accepted by the customer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , onlineAcceptanceUserAgent :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON OnlineAcceptance
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "ip_address" (onlineAcceptanceIpAddress obj) : (Data.Aeson..=) "user_agent" (onlineAcceptanceUserAgent obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "ip_address" (onlineAcceptanceIpAddress obj) GHC.Base.<> (Data.Aeson..=) "user_agent" (onlineAcceptanceUserAgent obj))
instance Data.Aeson.Types.FromJSON.FromJSON OnlineAcceptance
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "OnlineAcceptance" (\obj -> (GHC.Base.pure OnlineAcceptance GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ip_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "user_agent"))