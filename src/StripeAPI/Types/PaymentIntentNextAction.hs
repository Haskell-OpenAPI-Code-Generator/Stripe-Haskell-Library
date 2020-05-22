{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema PaymentIntentNextAction
module StripeAPI.Types.PaymentIntentNextAction where

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
import StripeAPI.Types.PaymentIntentNextActionRedirectToUrl

-- | Defines the data type for the schema payment_intent_next_action
-- 
-- 
data PaymentIntentNextAction = PaymentIntentNextAction {
  -- | redirect_to_url: 
  paymentIntentNextActionRedirectToUrl :: (GHC.Maybe.Maybe PaymentIntentNextActionRedirectToUrl)
  -- | type: Type of the next action to perform, one of \`redirect_to_url\` or \`use_stripe_sdk\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentIntentNextActionType :: GHC.Base.String
  -- | use_stripe_sdk: When confirming a PaymentIntent with Stripe.js, Stripe.js depends on the contents of this dictionary to invoke authentication flows. The shape of the contents is subject to change and is only intended to be used by Stripe.js.
  , paymentIntentNextActionUseStripeSdk :: (GHC.Maybe.Maybe PaymentIntentNextActionUseStripeSdk')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PaymentIntentNextAction
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "redirect_to_url" (paymentIntentNextActionRedirectToUrl obj) : (Data.Aeson..=) "type" (paymentIntentNextActionType obj) : (Data.Aeson..=) "use_stripe_sdk" (paymentIntentNextActionUseStripeSdk obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "redirect_to_url" (paymentIntentNextActionRedirectToUrl obj) GHC.Base.<> ((Data.Aeson..=) "type" (paymentIntentNextActionType obj) GHC.Base.<> (Data.Aeson..=) "use_stripe_sdk" (paymentIntentNextActionUseStripeSdk obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentNextAction
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentIntentNextAction" (\obj -> ((GHC.Base.pure PaymentIntentNextAction GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "redirect_to_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "use_stripe_sdk"))
-- | Defines the data type for the schema payment_intent_next_actionUse_stripe_sdk\'
-- 
-- When confirming a PaymentIntent with Stripe.js, Stripe.js depends on the contents of this dictionary to invoke authentication flows. The shape of the contents is subject to change and is only intended to be used by Stripe.js.
data PaymentIntentNextActionUseStripeSdk' = PaymentIntentNextActionUseStripeSdk' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PaymentIntentNextActionUseStripeSdk'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentNextActionUseStripeSdk'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentIntentNextActionUseStripeSdk'" (\obj -> GHC.Base.pure PaymentIntentNextActionUseStripeSdk')