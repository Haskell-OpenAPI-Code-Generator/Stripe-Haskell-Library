{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.AccountTosAcceptance where

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

data AccountTosAcceptance
    = AccountTosAcceptance {accountTosAcceptanceDate :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                            accountTosAcceptanceIp :: (GHC.Maybe.Maybe GHC.Base.String),
                            accountTosAcceptanceUserAgent :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON AccountTosAcceptance
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "date" (accountTosAcceptanceDate obj) : (Data.Aeson..=) "ip" (accountTosAcceptanceIp obj) : (Data.Aeson..=) "user_agent" (accountTosAcceptanceUserAgent obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "date" (accountTosAcceptanceDate obj) GHC.Base.<> ((Data.Aeson..=) "ip" (accountTosAcceptanceIp obj) GHC.Base.<> (Data.Aeson..=) "user_agent" (accountTosAcceptanceUserAgent obj)))
instance Data.Aeson.Types.FromJSON.FromJSON AccountTosAcceptance
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountTosAcceptance" (\obj -> ((GHC.Base.pure AccountTosAcceptance GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "user_agent"))