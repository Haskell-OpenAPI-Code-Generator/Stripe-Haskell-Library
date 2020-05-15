{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.AccountDeclineChargeOn where

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

data AccountDeclineChargeOn
    = AccountDeclineChargeOn {accountDeclineChargeOnAvsFailure :: GHC.Types.Bool,
                              accountDeclineChargeOnCvcFailure :: GHC.Types.Bool}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON AccountDeclineChargeOn
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "avs_failure" (accountDeclineChargeOnAvsFailure obj) : (Data.Aeson..=) "cvc_failure" (accountDeclineChargeOnCvcFailure obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "avs_failure" (accountDeclineChargeOnAvsFailure obj) GHC.Base.<> (Data.Aeson..=) "cvc_failure" (accountDeclineChargeOnCvcFailure obj))
instance Data.Aeson.Types.FromJSON.FromJSON AccountDeclineChargeOn
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountDeclineChargeOn" (\obj -> (GHC.Base.pure AccountDeclineChargeOn GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "avs_failure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "cvc_failure"))