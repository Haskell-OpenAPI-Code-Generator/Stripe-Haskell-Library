{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema ThreeDSecureDetails
module StripeAPI.Types.ThreeDSecureDetails where

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

-- | Defines the data type for the schema three_d_secure_details
-- 
-- 
data ThreeDSecureDetails = ThreeDSecureDetails {
  -- | authenticated: Whether or not authentication was performed. 3D Secure will succeed without authentication when the card is not enrolled.
  threeDSecureDetailsAuthenticated :: GHC.Types.Bool
  -- | succeeded: Whether or not 3D Secure succeeded.
  , threeDSecureDetailsSucceeded :: GHC.Types.Bool
  -- | version: The version of 3D Secure that was used for this payment.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , threeDSecureDetailsVersion :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON ThreeDSecureDetails
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "authenticated" (threeDSecureDetailsAuthenticated obj) : (Data.Aeson..=) "succeeded" (threeDSecureDetailsSucceeded obj) : (Data.Aeson..=) "version" (threeDSecureDetailsVersion obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "authenticated" (threeDSecureDetailsAuthenticated obj) GHC.Base.<> ((Data.Aeson..=) "succeeded" (threeDSecureDetailsSucceeded obj) GHC.Base.<> (Data.Aeson..=) "version" (threeDSecureDetailsVersion obj)))
instance Data.Aeson.Types.FromJSON.FromJSON ThreeDSecureDetails
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ThreeDSecureDetails" (\obj -> ((GHC.Base.pure ThreeDSecureDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "authenticated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "succeeded")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "version"))