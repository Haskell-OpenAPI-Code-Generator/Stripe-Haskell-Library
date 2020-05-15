{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.Balance where

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
import StripeAPI.Types.BalanceAmount

data Balance
    = Balance {balanceAvailable :: ([] BalanceAmount),
               balanceConnectReserved :: (GHC.Maybe.Maybe ([] BalanceAmount)),
               balanceLivemode :: GHC.Types.Bool,
               balanceObject :: BalanceObject',
               balancePending :: ([] BalanceAmount)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data BalanceObject'
    = BalanceObject'EnumOther Data.Aeson.Types.Internal.Value
    | BalanceObject'EnumTyped GHC.Base.String
    | BalanceObject'EnumStringBalance
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON BalanceObject'
    where toJSON (BalanceObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (BalanceObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (BalanceObject'EnumStringBalance) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "balance"
instance Data.Aeson.FromJSON BalanceObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "balance")
                                          then BalanceObject'EnumStringBalance
                                          else BalanceObject'EnumOther val)
instance Data.Aeson.ToJSON Balance
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "available" (balanceAvailable obj) : (Data.Aeson..=) "connect_reserved" (balanceConnectReserved obj) : (Data.Aeson..=) "livemode" (balanceLivemode obj) : (Data.Aeson..=) "object" (balanceObject obj) : (Data.Aeson..=) "pending" (balancePending obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "available" (balanceAvailable obj) GHC.Base.<> ((Data.Aeson..=) "connect_reserved" (balanceConnectReserved obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (balanceLivemode obj) GHC.Base.<> ((Data.Aeson..=) "object" (balanceObject obj) GHC.Base.<> (Data.Aeson..=) "pending" (balancePending obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON Balance
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Balance" (\obj -> ((((GHC.Base.pure Balance GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "available")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "connect_reserved")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pending"))