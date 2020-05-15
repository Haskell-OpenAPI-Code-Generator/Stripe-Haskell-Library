{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.SetupIntentNextAction where

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
import StripeAPI.Types.SetupIntentNextActionRedirectToUrl

data SetupIntentNextAction
    = SetupIntentNextAction {setupIntentNextActionRedirectToUrl :: (GHC.Maybe.Maybe SetupIntentNextActionRedirectToUrl),
                             setupIntentNextActionType :: GHC.Base.String,
                             setupIntentNextActionUseStripeSdk :: (GHC.Maybe.Maybe SetupIntentNextActionUseStripeSdk')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data SetupIntentNextActionUseStripeSdk'
    = SetupIntentNextActionUseStripeSdk' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON SetupIntentNextActionUseStripeSdk'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentNextActionUseStripeSdk'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SetupIntentNextActionUseStripeSdk'" (\obj -> GHC.Base.pure SetupIntentNextActionUseStripeSdk')
instance Data.Aeson.ToJSON SetupIntentNextAction
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "redirect_to_url" (setupIntentNextActionRedirectToUrl obj) : (Data.Aeson..=) "type" (setupIntentNextActionType obj) : (Data.Aeson..=) "use_stripe_sdk" (setupIntentNextActionUseStripeSdk obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "redirect_to_url" (setupIntentNextActionRedirectToUrl obj) GHC.Base.<> ((Data.Aeson..=) "type" (setupIntentNextActionType obj) GHC.Base.<> (Data.Aeson..=) "use_stripe_sdk" (setupIntentNextActionUseStripeSdk obj)))
instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentNextAction
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SetupIntentNextAction" (\obj -> ((GHC.Base.pure SetupIntentNextAction GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "redirect_to_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "use_stripe_sdk"))