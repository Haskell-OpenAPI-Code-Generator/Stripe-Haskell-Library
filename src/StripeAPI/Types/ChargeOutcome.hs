{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.ChargeOutcome where

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
import StripeAPI.Types.Rule

data ChargeOutcome
    = ChargeOutcome {chargeOutcomeNetworkStatus :: (GHC.Maybe.Maybe GHC.Base.String),
                     chargeOutcomeReason :: (GHC.Maybe.Maybe GHC.Base.String),
                     chargeOutcomeRiskLevel :: (GHC.Maybe.Maybe GHC.Base.String),
                     chargeOutcomeRiskScore :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                     chargeOutcomeRule :: (GHC.Maybe.Maybe ChargeOutcomeRule'Variants),
                     chargeOutcomeSellerMessage :: (GHC.Maybe.Maybe GHC.Base.String),
                     chargeOutcomeType :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data ChargeOutcomeRule'Variants
    = ChargeOutcomeRule'Variant1 Rule
    | ChargeOutcomeRule'Variant2 GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON ChargeOutcomeRule'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON ChargeOutcomeRule'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON ChargeOutcome
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "network_status" (chargeOutcomeNetworkStatus obj) : (Data.Aeson..=) "reason" (chargeOutcomeReason obj) : (Data.Aeson..=) "risk_level" (chargeOutcomeRiskLevel obj) : (Data.Aeson..=) "risk_score" (chargeOutcomeRiskScore obj) : (Data.Aeson..=) "rule" (chargeOutcomeRule obj) : (Data.Aeson..=) "seller_message" (chargeOutcomeSellerMessage obj) : (Data.Aeson..=) "type" (chargeOutcomeType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "network_status" (chargeOutcomeNetworkStatus obj) GHC.Base.<> ((Data.Aeson..=) "reason" (chargeOutcomeReason obj) GHC.Base.<> ((Data.Aeson..=) "risk_level" (chargeOutcomeRiskLevel obj) GHC.Base.<> ((Data.Aeson..=) "risk_score" (chargeOutcomeRiskScore obj) GHC.Base.<> ((Data.Aeson..=) "rule" (chargeOutcomeRule obj) GHC.Base.<> ((Data.Aeson..=) "seller_message" (chargeOutcomeSellerMessage obj) GHC.Base.<> (Data.Aeson..=) "type" (chargeOutcomeType obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON ChargeOutcome
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ChargeOutcome" (\obj -> ((((((GHC.Base.pure ChargeOutcome GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "network_status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "risk_level")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "risk_score")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "rule")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "seller_message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))