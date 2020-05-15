{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.ChargeFraudDetails where

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

data ChargeFraudDetails
    = ChargeFraudDetails {chargeFraudDetailsStripeReport :: (GHC.Maybe.Maybe GHC.Base.String),
                          chargeFraudDetailsUserReport :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON ChargeFraudDetails
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "stripe_report" (chargeFraudDetailsStripeReport obj) : (Data.Aeson..=) "user_report" (chargeFraudDetailsUserReport obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "stripe_report" (chargeFraudDetailsStripeReport obj) GHC.Base.<> (Data.Aeson..=) "user_report" (chargeFraudDetailsUserReport obj))
instance Data.Aeson.Types.FromJSON.FromJSON ChargeFraudDetails
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ChargeFraudDetails" (\obj -> (GHC.Base.pure ChargeFraudDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "stripe_report")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "user_report"))