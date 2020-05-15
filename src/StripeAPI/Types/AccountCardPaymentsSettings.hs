{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.AccountCardPaymentsSettings where

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
import StripeAPI.Types.AccountDeclineChargeOn

data AccountCardPaymentsSettings
    = AccountCardPaymentsSettings {accountCardPaymentsSettingsDeclineOn :: (GHC.Maybe.Maybe AccountDeclineChargeOn),
                                   accountCardPaymentsSettingsStatementDescriptorPrefix :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON AccountCardPaymentsSettings
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "decline_on" (accountCardPaymentsSettingsDeclineOn obj) : (Data.Aeson..=) "statement_descriptor_prefix" (accountCardPaymentsSettingsStatementDescriptorPrefix obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "decline_on" (accountCardPaymentsSettingsDeclineOn obj) GHC.Base.<> (Data.Aeson..=) "statement_descriptor_prefix" (accountCardPaymentsSettingsStatementDescriptorPrefix obj))
instance Data.Aeson.Types.FromJSON.FromJSON AccountCardPaymentsSettings
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountCardPaymentsSettings" (\obj -> (GHC.Base.pure AccountCardPaymentsSettings GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "decline_on")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_prefix"))