{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema ChargeOutcome
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

-- | Defines the data type for the schema charge_outcome
-- 
-- 
data ChargeOutcome = ChargeOutcome {
  -- | network_status: Possible values are \`approved_by_network\`, \`declined_by_network\`, \`not_sent_to_network\`, and \`reversed_after_approval\`. The value \`reversed_after_approval\` indicates the payment was [blocked by Stripe](https:\/\/stripe.com\/docs\/declines\#blocked-payments) after bank authorization, and may temporarily appear as \"pending\" on a cardholder\'s statement.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  chargeOutcomeNetworkStatus :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | reason: An enumerated value providing a more detailed explanation of the outcome\'s \`type\`. Charges blocked by Radar\'s default block rule have the value \`highest_risk_level\`. Charges placed in review by Radar\'s default review rule have the value \`elevated_risk_level\`. Charges authorized, blocked, or placed in review by custom rules have the value \`rule\`. See [understanding declines](https:\/\/stripe.com\/docs\/declines) for more details.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , chargeOutcomeReason :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | risk_level: Stripe\'s evaluation of the riskiness of the payment. Possible values for evaluated payments are \`normal\`, \`elevated\`, \`highest\`. For non-card payments, and card-based payments predating the public assignment of risk levels, this field will have the value \`not_assessed\`. In the event of an error in the evaluation, this field will have the value \`unknown\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , chargeOutcomeRiskLevel :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | risk_score: Stripe\'s evaluation of the riskiness of the payment. Possible values for evaluated payments are between 0 and 100. For non-card payments, card-based payments predating the public assignment of risk scores, or in the event of an error during evaluation, this field will not be present. This field is only available with Radar for Fraud Teams.
  , chargeOutcomeRiskScore :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | rule: The ID of the Radar rule that matched the payment, if applicable.
  , chargeOutcomeRule :: (GHC.Maybe.Maybe ChargeOutcomeRule'Variants)
  -- | seller_message: A human-readable description of the outcome type and reason, designed for you (the recipient of the payment), not your customer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , chargeOutcomeSellerMessage :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | type: Possible values are \`authorized\`, \`manual_review\`, \`issuer_declined\`, \`blocked\`, and \`invalid\`. See [understanding declines](https:\/\/stripe.com\/docs\/declines) and [Radar reviews](https:\/\/stripe.com\/docs\/radar\/reviews) for details.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , chargeOutcomeType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON ChargeOutcome
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "network_status" (chargeOutcomeNetworkStatus obj) : (Data.Aeson..=) "reason" (chargeOutcomeReason obj) : (Data.Aeson..=) "risk_level" (chargeOutcomeRiskLevel obj) : (Data.Aeson..=) "risk_score" (chargeOutcomeRiskScore obj) : (Data.Aeson..=) "rule" (chargeOutcomeRule obj) : (Data.Aeson..=) "seller_message" (chargeOutcomeSellerMessage obj) : (Data.Aeson..=) "type" (chargeOutcomeType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "network_status" (chargeOutcomeNetworkStatus obj) GHC.Base.<> ((Data.Aeson..=) "reason" (chargeOutcomeReason obj) GHC.Base.<> ((Data.Aeson..=) "risk_level" (chargeOutcomeRiskLevel obj) GHC.Base.<> ((Data.Aeson..=) "risk_score" (chargeOutcomeRiskScore obj) GHC.Base.<> ((Data.Aeson..=) "rule" (chargeOutcomeRule obj) GHC.Base.<> ((Data.Aeson..=) "seller_message" (chargeOutcomeSellerMessage obj) GHC.Base.<> (Data.Aeson..=) "type" (chargeOutcomeType obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON ChargeOutcome
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ChargeOutcome" (\obj -> ((((((GHC.Base.pure ChargeOutcome GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "network_status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "risk_level")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "risk_score")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "rule")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "seller_message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Define the one-of schema charge_outcomeRule\'
-- 
-- The ID of the Radar rule that matched the payment, if applicable.
data ChargeOutcomeRule'Variants
    = ChargeOutcomeRule'Rule Rule
    | ChargeOutcomeRule'Text Data.Text.Internal.Text
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON ChargeOutcomeRule'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON ChargeOutcomeRule'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}