{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.ExchangeRate where

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

data ExchangeRate
    = ExchangeRate {exchangeRateId :: GHC.Base.String,
                    exchangeRateObject :: ExchangeRateObject',
                    exchangeRateRates :: ExchangeRateRates'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data ExchangeRateObject'
    = ExchangeRateObject'EnumOther Data.Aeson.Types.Internal.Value
    | ExchangeRateObject'EnumTyped GHC.Base.String
    | ExchangeRateObject'EnumStringExchangeRate
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON ExchangeRateObject'
    where toJSON (ExchangeRateObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (ExchangeRateObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (ExchangeRateObject'EnumStringExchangeRate) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "exchange_rate"
instance Data.Aeson.FromJSON ExchangeRateObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "exchange_rate")
                                          then ExchangeRateObject'EnumStringExchangeRate
                                          else ExchangeRateObject'EnumOther val)
data ExchangeRateRates'
    = ExchangeRateRates' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON ExchangeRateRates'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON ExchangeRateRates'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ExchangeRateRates'" (\obj -> GHC.Base.pure ExchangeRateRates')
instance Data.Aeson.ToJSON ExchangeRate
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "id" (exchangeRateId obj) : (Data.Aeson..=) "object" (exchangeRateObject obj) : (Data.Aeson..=) "rates" (exchangeRateRates obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "id" (exchangeRateId obj) GHC.Base.<> ((Data.Aeson..=) "object" (exchangeRateObject obj) GHC.Base.<> (Data.Aeson..=) "rates" (exchangeRateRates obj)))
instance Data.Aeson.Types.FromJSON.FromJSON ExchangeRate
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ExchangeRate" (\obj -> ((GHC.Base.pure ExchangeRate GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "rates"))