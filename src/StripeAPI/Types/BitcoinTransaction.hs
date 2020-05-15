{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.BitcoinTransaction where

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

data BitcoinTransaction
    = BitcoinTransaction {bitcoinTransactionAmount :: GHC.Integer.Type.Integer,
                          bitcoinTransactionBitcoinAmount :: GHC.Integer.Type.Integer,
                          bitcoinTransactionCreated :: GHC.Integer.Type.Integer,
                          bitcoinTransactionCurrency :: GHC.Base.String,
                          bitcoinTransactionId :: GHC.Base.String,
                          bitcoinTransactionObject :: BitcoinTransactionObject',
                          bitcoinTransactionReceiver :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data BitcoinTransactionObject'
    = BitcoinTransactionObject'EnumOther Data.Aeson.Types.Internal.Value
    | BitcoinTransactionObject'EnumTyped GHC.Base.String
    | BitcoinTransactionObject'EnumStringBitcoinTransaction
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON BitcoinTransactionObject'
    where toJSON (BitcoinTransactionObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (BitcoinTransactionObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (BitcoinTransactionObject'EnumStringBitcoinTransaction) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bitcoin_transaction"
instance Data.Aeson.FromJSON BitcoinTransactionObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bitcoin_transaction")
                                          then BitcoinTransactionObject'EnumStringBitcoinTransaction
                                          else BitcoinTransactionObject'EnumOther val)
instance Data.Aeson.ToJSON BitcoinTransaction
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (bitcoinTransactionAmount obj) : (Data.Aeson..=) "bitcoin_amount" (bitcoinTransactionBitcoinAmount obj) : (Data.Aeson..=) "created" (bitcoinTransactionCreated obj) : (Data.Aeson..=) "currency" (bitcoinTransactionCurrency obj) : (Data.Aeson..=) "id" (bitcoinTransactionId obj) : (Data.Aeson..=) "object" (bitcoinTransactionObject obj) : (Data.Aeson..=) "receiver" (bitcoinTransactionReceiver obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (bitcoinTransactionAmount obj) GHC.Base.<> ((Data.Aeson..=) "bitcoin_amount" (bitcoinTransactionBitcoinAmount obj) GHC.Base.<> ((Data.Aeson..=) "created" (bitcoinTransactionCreated obj) GHC.Base.<> ((Data.Aeson..=) "currency" (bitcoinTransactionCurrency obj) GHC.Base.<> ((Data.Aeson..=) "id" (bitcoinTransactionId obj) GHC.Base.<> ((Data.Aeson..=) "object" (bitcoinTransactionObject obj) GHC.Base.<> (Data.Aeson..=) "receiver" (bitcoinTransactionReceiver obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON BitcoinTransaction
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "BitcoinTransaction" (\obj -> ((((((GHC.Base.pure BitcoinTransaction GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "bitcoin_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "receiver"))