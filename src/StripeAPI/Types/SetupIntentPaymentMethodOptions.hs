{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema SetupIntentPaymentMethodOptions
module StripeAPI.Types.SetupIntentPaymentMethodOptions where

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
import StripeAPI.Types.SetupIntentPaymentMethodOptionsCard

-- | Defines the data type for the schema setup_intent_payment_method_options
-- 
-- 
data SetupIntentPaymentMethodOptions = SetupIntentPaymentMethodOptions {
  -- | card: 
  setupIntentPaymentMethodOptionsCard :: (GHC.Maybe.Maybe SetupIntentPaymentMethodOptionsCard)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON SetupIntentPaymentMethodOptions
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "card" (setupIntentPaymentMethodOptionsCard obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "card" (setupIntentPaymentMethodOptionsCard obj))
instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentPaymentMethodOptions
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SetupIntentPaymentMethodOptions" (\obj -> GHC.Base.pure SetupIntentPaymentMethodOptions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card"))