{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.BitcoinReceiver where

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
import StripeAPI.Types.BitcoinTransaction

data BitcoinReceiver
    = BitcoinReceiver {bitcoinReceiverActive :: GHC.Types.Bool,
                       bitcoinReceiverAmount :: GHC.Integer.Type.Integer,
                       bitcoinReceiverAmountReceived :: GHC.Integer.Type.Integer,
                       bitcoinReceiverBitcoinAmount :: GHC.Integer.Type.Integer,
                       bitcoinReceiverBitcoinAmountReceived :: GHC.Integer.Type.Integer,
                       bitcoinReceiverBitcoinUri :: GHC.Base.String,
                       bitcoinReceiverCreated :: GHC.Integer.Type.Integer,
                       bitcoinReceiverCurrency :: GHC.Base.String,
                       bitcoinReceiverCustomer :: (GHC.Maybe.Maybe GHC.Base.String),
                       bitcoinReceiverDescription :: (GHC.Maybe.Maybe GHC.Base.String),
                       bitcoinReceiverEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                       bitcoinReceiverFilled :: GHC.Types.Bool,
                       bitcoinReceiverId :: GHC.Base.String,
                       bitcoinReceiverInboundAddress :: GHC.Base.String,
                       bitcoinReceiverLivemode :: GHC.Types.Bool,
                       bitcoinReceiverMetadata :: BitcoinReceiverMetadata',
                       bitcoinReceiverObject :: BitcoinReceiverObject',
                       bitcoinReceiverPayment :: (GHC.Maybe.Maybe GHC.Base.String),
                       bitcoinReceiverRefundAddress :: (GHC.Maybe.Maybe GHC.Base.String),
                       bitcoinReceiverTransactions :: (GHC.Maybe.Maybe BitcoinReceiverTransactions'),
                       bitcoinReceiverUncapturedFunds :: GHC.Types.Bool,
                       bitcoinReceiverUsedForPayment :: (GHC.Maybe.Maybe GHC.Types.Bool)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data BitcoinReceiverMetadata'
    = BitcoinReceiverMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON BitcoinReceiverMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON BitcoinReceiverMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "BitcoinReceiverMetadata'" (\obj -> GHC.Base.pure BitcoinReceiverMetadata')
data BitcoinReceiverObject'
    = BitcoinReceiverObject'EnumOther Data.Aeson.Types.Internal.Value
    | BitcoinReceiverObject'EnumTyped GHC.Base.String
    | BitcoinReceiverObject'EnumStringBitcoinReceiver
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON BitcoinReceiverObject'
    where toJSON (BitcoinReceiverObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (BitcoinReceiverObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (BitcoinReceiverObject'EnumStringBitcoinReceiver) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bitcoin_receiver"
instance Data.Aeson.FromJSON BitcoinReceiverObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bitcoin_receiver")
                                          then BitcoinReceiverObject'EnumStringBitcoinReceiver
                                          else BitcoinReceiverObject'EnumOther val)
data BitcoinReceiverTransactions'
    = BitcoinReceiverTransactions' {bitcoinReceiverTransactions'Data :: ([] BitcoinTransaction),
                                    bitcoinReceiverTransactions'HasMore :: GHC.Types.Bool,
                                    bitcoinReceiverTransactions'Object :: BitcoinReceiverTransactions'Object',
                                    bitcoinReceiverTransactions'Url :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data BitcoinReceiverTransactions'Object'
    = BitcoinReceiverTransactions'Object'EnumOther Data.Aeson.Types.Internal.Value
    | BitcoinReceiverTransactions'Object'EnumTyped GHC.Base.String
    | BitcoinReceiverTransactions'Object'EnumStringList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON BitcoinReceiverTransactions'Object'
    where toJSON (BitcoinReceiverTransactions'Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (BitcoinReceiverTransactions'Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (BitcoinReceiverTransactions'Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"
instance Data.Aeson.FromJSON BitcoinReceiverTransactions'Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
                                          then BitcoinReceiverTransactions'Object'EnumStringList
                                          else BitcoinReceiverTransactions'Object'EnumOther val)
instance Data.Aeson.ToJSON BitcoinReceiverTransactions'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (bitcoinReceiverTransactions'Data obj) : (Data.Aeson..=) "has_more" (bitcoinReceiverTransactions'HasMore obj) : (Data.Aeson..=) "object" (bitcoinReceiverTransactions'Object obj) : (Data.Aeson..=) "url" (bitcoinReceiverTransactions'Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (bitcoinReceiverTransactions'Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (bitcoinReceiverTransactions'HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (bitcoinReceiverTransactions'Object obj) GHC.Base.<> (Data.Aeson..=) "url" (bitcoinReceiverTransactions'Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON BitcoinReceiverTransactions'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "BitcoinReceiverTransactions'" (\obj -> (((GHC.Base.pure BitcoinReceiverTransactions' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
instance Data.Aeson.ToJSON BitcoinReceiver
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "active" (bitcoinReceiverActive obj) : (Data.Aeson..=) "amount" (bitcoinReceiverAmount obj) : (Data.Aeson..=) "amount_received" (bitcoinReceiverAmountReceived obj) : (Data.Aeson..=) "bitcoin_amount" (bitcoinReceiverBitcoinAmount obj) : (Data.Aeson..=) "bitcoin_amount_received" (bitcoinReceiverBitcoinAmountReceived obj) : (Data.Aeson..=) "bitcoin_uri" (bitcoinReceiverBitcoinUri obj) : (Data.Aeson..=) "created" (bitcoinReceiverCreated obj) : (Data.Aeson..=) "currency" (bitcoinReceiverCurrency obj) : (Data.Aeson..=) "customer" (bitcoinReceiverCustomer obj) : (Data.Aeson..=) "description" (bitcoinReceiverDescription obj) : (Data.Aeson..=) "email" (bitcoinReceiverEmail obj) : (Data.Aeson..=) "filled" (bitcoinReceiverFilled obj) : (Data.Aeson..=) "id" (bitcoinReceiverId obj) : (Data.Aeson..=) "inbound_address" (bitcoinReceiverInboundAddress obj) : (Data.Aeson..=) "livemode" (bitcoinReceiverLivemode obj) : (Data.Aeson..=) "metadata" (bitcoinReceiverMetadata obj) : (Data.Aeson..=) "object" (bitcoinReceiverObject obj) : (Data.Aeson..=) "payment" (bitcoinReceiverPayment obj) : (Data.Aeson..=) "refund_address" (bitcoinReceiverRefundAddress obj) : (Data.Aeson..=) "transactions" (bitcoinReceiverTransactions obj) : (Data.Aeson..=) "uncaptured_funds" (bitcoinReceiverUncapturedFunds obj) : (Data.Aeson..=) "used_for_payment" (bitcoinReceiverUsedForPayment obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "active" (bitcoinReceiverActive obj) GHC.Base.<> ((Data.Aeson..=) "amount" (bitcoinReceiverAmount obj) GHC.Base.<> ((Data.Aeson..=) "amount_received" (bitcoinReceiverAmountReceived obj) GHC.Base.<> ((Data.Aeson..=) "bitcoin_amount" (bitcoinReceiverBitcoinAmount obj) GHC.Base.<> ((Data.Aeson..=) "bitcoin_amount_received" (bitcoinReceiverBitcoinAmountReceived obj) GHC.Base.<> ((Data.Aeson..=) "bitcoin_uri" (bitcoinReceiverBitcoinUri obj) GHC.Base.<> ((Data.Aeson..=) "created" (bitcoinReceiverCreated obj) GHC.Base.<> ((Data.Aeson..=) "currency" (bitcoinReceiverCurrency obj) GHC.Base.<> ((Data.Aeson..=) "customer" (bitcoinReceiverCustomer obj) GHC.Base.<> ((Data.Aeson..=) "description" (bitcoinReceiverDescription obj) GHC.Base.<> ((Data.Aeson..=) "email" (bitcoinReceiverEmail obj) GHC.Base.<> ((Data.Aeson..=) "filled" (bitcoinReceiverFilled obj) GHC.Base.<> ((Data.Aeson..=) "id" (bitcoinReceiverId obj) GHC.Base.<> ((Data.Aeson..=) "inbound_address" (bitcoinReceiverInboundAddress obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (bitcoinReceiverLivemode obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (bitcoinReceiverMetadata obj) GHC.Base.<> ((Data.Aeson..=) "object" (bitcoinReceiverObject obj) GHC.Base.<> ((Data.Aeson..=) "payment" (bitcoinReceiverPayment obj) GHC.Base.<> ((Data.Aeson..=) "refund_address" (bitcoinReceiverRefundAddress obj) GHC.Base.<> ((Data.Aeson..=) "transactions" (bitcoinReceiverTransactions obj) GHC.Base.<> ((Data.Aeson..=) "uncaptured_funds" (bitcoinReceiverUncapturedFunds obj) GHC.Base.<> (Data.Aeson..=) "used_for_payment" (bitcoinReceiverUsedForPayment obj))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON BitcoinReceiver
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "BitcoinReceiver" (\obj -> (((((((((((((((((((((GHC.Base.pure BitcoinReceiver GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount_received")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "bitcoin_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "bitcoin_amount_received")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "bitcoin_uri")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "filled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "inbound_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transactions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "uncaptured_funds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "used_for_payment"))