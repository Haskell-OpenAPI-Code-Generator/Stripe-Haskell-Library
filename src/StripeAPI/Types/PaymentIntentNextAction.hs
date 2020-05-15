{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

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

data PaymentIntentNextAction
    = PaymentIntentNextAction {paymentIntentNextActionRedirectToUrl :: (GHC.Maybe.Maybe PaymentIntentNextActionRedirectToUrl),
                               paymentIntentNextActionType :: GHC.Base.String,
                               paymentIntentNextActionUseStripeSdk :: (GHC.Maybe.Maybe PaymentIntentNextActionUseStripeSdk')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PaymentIntentNextActionUseStripeSdk'
    = PaymentIntentNextActionUseStripeSdk' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PaymentIntentNextActionUseStripeSdk'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentNextActionUseStripeSdk'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentIntentNextActionUseStripeSdk'" (\obj -> GHC.Base.pure PaymentIntentNextActionUseStripeSdk')
instance Data.Aeson.ToJSON PaymentIntentNextAction
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "redirect_to_url" (paymentIntentNextActionRedirectToUrl obj) : (Data.Aeson..=) "type" (paymentIntentNextActionType obj) : (Data.Aeson..=) "use_stripe_sdk" (paymentIntentNextActionUseStripeSdk obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "redirect_to_url" (paymentIntentNextActionRedirectToUrl obj) GHC.Base.<> ((Data.Aeson..=) "type" (paymentIntentNextActionType obj) GHC.Base.<> (Data.Aeson..=) "use_stripe_sdk" (paymentIntentNextActionUseStripeSdk obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentNextAction
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentIntentNextAction" (\obj -> ((GHC.Base.pure PaymentIntentNextAction GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "redirect_to_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "use_stripe_sdk"))