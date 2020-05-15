{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.SetupIntentPaymentMethodOptionsCard where

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

data SetupIntentPaymentMethodOptionsCard
    = SetupIntentPaymentMethodOptionsCard {setupIntentPaymentMethodOptionsCardRequestThreeDSecure :: (GHC.Maybe.Maybe SetupIntentPaymentMethodOptionsCardRequestThreeDSecure')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data SetupIntentPaymentMethodOptionsCardRequestThreeDSecure'
    = SetupIntentPaymentMethodOptionsCardRequestThreeDSecure'EnumOther Data.Aeson.Types.Internal.Value
    | SetupIntentPaymentMethodOptionsCardRequestThreeDSecure'EnumTyped GHC.Base.String
    | SetupIntentPaymentMethodOptionsCardRequestThreeDSecure'EnumStringAny
    | SetupIntentPaymentMethodOptionsCardRequestThreeDSecure'EnumStringAutomatic
    | SetupIntentPaymentMethodOptionsCardRequestThreeDSecure'EnumStringChallengeOnly
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON SetupIntentPaymentMethodOptionsCardRequestThreeDSecure'
    where toJSON (SetupIntentPaymentMethodOptionsCardRequestThreeDSecure'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (SetupIntentPaymentMethodOptionsCardRequestThreeDSecure'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (SetupIntentPaymentMethodOptionsCardRequestThreeDSecure'EnumStringAny) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "any"
          toJSON (SetupIntentPaymentMethodOptionsCardRequestThreeDSecure'EnumStringAutomatic) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic"
          toJSON (SetupIntentPaymentMethodOptionsCardRequestThreeDSecure'EnumStringChallengeOnly) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "challenge_only"
instance Data.Aeson.FromJSON SetupIntentPaymentMethodOptionsCardRequestThreeDSecure'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "any")
                                          then SetupIntentPaymentMethodOptionsCardRequestThreeDSecure'EnumStringAny
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic")
                                                then SetupIntentPaymentMethodOptionsCardRequestThreeDSecure'EnumStringAutomatic
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "challenge_only")
                                                      then SetupIntentPaymentMethodOptionsCardRequestThreeDSecure'EnumStringChallengeOnly
                                                      else SetupIntentPaymentMethodOptionsCardRequestThreeDSecure'EnumOther val)
instance Data.Aeson.ToJSON SetupIntentPaymentMethodOptionsCard
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "request_three_d_secure" (setupIntentPaymentMethodOptionsCardRequestThreeDSecure obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "request_three_d_secure" (setupIntentPaymentMethodOptionsCardRequestThreeDSecure obj))
instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentPaymentMethodOptionsCard
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SetupIntentPaymentMethodOptionsCard" (\obj -> GHC.Base.pure SetupIntentPaymentMethodOptionsCard GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "request_three_d_secure"))