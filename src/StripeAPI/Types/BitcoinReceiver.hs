{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema BitcoinReceiver
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

-- | Defines the data type for the schema bitcoin_receiver
-- 
-- 
data BitcoinReceiver = BitcoinReceiver {
  -- | active: True when this bitcoin receiver has received a non-zero amount of bitcoin.
  bitcoinReceiverActive :: GHC.Types.Bool
  -- | amount: The amount of \`currency\` that you are collecting as payment.
  , bitcoinReceiverAmount :: GHC.Integer.Type.Integer
  -- | amount_received: The amount of \`currency\` to which \`bitcoin_amount_received\` has been converted.
  , bitcoinReceiverAmountReceived :: GHC.Integer.Type.Integer
  -- | bitcoin_amount: The amount of bitcoin that the customer should send to fill the receiver. The \`bitcoin_amount\` is denominated in Satoshi: there are 10^8 Satoshi in one bitcoin.
  , bitcoinReceiverBitcoinAmount :: GHC.Integer.Type.Integer
  -- | bitcoin_amount_received: The amount of bitcoin that has been sent by the customer to this receiver.
  , bitcoinReceiverBitcoinAmountReceived :: GHC.Integer.Type.Integer
  -- | bitcoin_uri: This URI can be displayed to the customer as a clickable link (to activate their bitcoin client) or as a QR code (for mobile wallets).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , bitcoinReceiverBitcoinUri :: Data.Text.Internal.Text
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  , bitcoinReceiverCreated :: GHC.Integer.Type.Integer
  -- | currency: Three-letter [ISO code for the currency](https:\/\/stripe.com\/docs\/currencies) to which the bitcoin will be converted.
  , bitcoinReceiverCurrency :: Data.Text.Internal.Text
  -- | customer: The customer ID of the bitcoin receiver.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , bitcoinReceiverCustomer :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , bitcoinReceiverDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | email: The customer\'s email address, set by the API call that creates the receiver.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , bitcoinReceiverEmail :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | filled: This flag is initially false and updates to true when the customer sends the \`bitcoin_amount\` to this receiver.
  , bitcoinReceiverFilled :: GHC.Types.Bool
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , bitcoinReceiverId :: Data.Text.Internal.Text
  -- | inbound_address: A bitcoin address that is specific to this receiver. The customer can send bitcoin to this address to fill the receiver.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , bitcoinReceiverInboundAddress :: Data.Text.Internal.Text
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , bitcoinReceiverLivemode :: GHC.Types.Bool
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  , bitcoinReceiverMetadata :: BitcoinReceiverMetadata'
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , bitcoinReceiverObject :: BitcoinReceiverObject'
  -- | payment: The ID of the payment created from the receiver, if any. Hidden when viewing the receiver with a publishable key.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , bitcoinReceiverPayment :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | refund_address: The refund address of this bitcoin receiver.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , bitcoinReceiverRefundAddress :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | transactions: A list with one entry for each time that the customer sent bitcoin to the receiver. Hidden when viewing the receiver with a publishable key.
  , bitcoinReceiverTransactions :: (GHC.Maybe.Maybe BitcoinReceiverTransactions')
  -- | uncaptured_funds: This receiver contains uncaptured funds that can be used for a payment or refunded.
  , bitcoinReceiverUncapturedFunds :: GHC.Types.Bool
  -- | used_for_payment: Indicate if this source is used for payment.
  , bitcoinReceiverUsedForPayment :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON BitcoinReceiver
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "active" (bitcoinReceiverActive obj) : (Data.Aeson..=) "amount" (bitcoinReceiverAmount obj) : (Data.Aeson..=) "amount_received" (bitcoinReceiverAmountReceived obj) : (Data.Aeson..=) "bitcoin_amount" (bitcoinReceiverBitcoinAmount obj) : (Data.Aeson..=) "bitcoin_amount_received" (bitcoinReceiverBitcoinAmountReceived obj) : (Data.Aeson..=) "bitcoin_uri" (bitcoinReceiverBitcoinUri obj) : (Data.Aeson..=) "created" (bitcoinReceiverCreated obj) : (Data.Aeson..=) "currency" (bitcoinReceiverCurrency obj) : (Data.Aeson..=) "customer" (bitcoinReceiverCustomer obj) : (Data.Aeson..=) "description" (bitcoinReceiverDescription obj) : (Data.Aeson..=) "email" (bitcoinReceiverEmail obj) : (Data.Aeson..=) "filled" (bitcoinReceiverFilled obj) : (Data.Aeson..=) "id" (bitcoinReceiverId obj) : (Data.Aeson..=) "inbound_address" (bitcoinReceiverInboundAddress obj) : (Data.Aeson..=) "livemode" (bitcoinReceiverLivemode obj) : (Data.Aeson..=) "metadata" (bitcoinReceiverMetadata obj) : (Data.Aeson..=) "object" (bitcoinReceiverObject obj) : (Data.Aeson..=) "payment" (bitcoinReceiverPayment obj) : (Data.Aeson..=) "refund_address" (bitcoinReceiverRefundAddress obj) : (Data.Aeson..=) "transactions" (bitcoinReceiverTransactions obj) : (Data.Aeson..=) "uncaptured_funds" (bitcoinReceiverUncapturedFunds obj) : (Data.Aeson..=) "used_for_payment" (bitcoinReceiverUsedForPayment obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "active" (bitcoinReceiverActive obj) GHC.Base.<> ((Data.Aeson..=) "amount" (bitcoinReceiverAmount obj) GHC.Base.<> ((Data.Aeson..=) "amount_received" (bitcoinReceiverAmountReceived obj) GHC.Base.<> ((Data.Aeson..=) "bitcoin_amount" (bitcoinReceiverBitcoinAmount obj) GHC.Base.<> ((Data.Aeson..=) "bitcoin_amount_received" (bitcoinReceiverBitcoinAmountReceived obj) GHC.Base.<> ((Data.Aeson..=) "bitcoin_uri" (bitcoinReceiverBitcoinUri obj) GHC.Base.<> ((Data.Aeson..=) "created" (bitcoinReceiverCreated obj) GHC.Base.<> ((Data.Aeson..=) "currency" (bitcoinReceiverCurrency obj) GHC.Base.<> ((Data.Aeson..=) "customer" (bitcoinReceiverCustomer obj) GHC.Base.<> ((Data.Aeson..=) "description" (bitcoinReceiverDescription obj) GHC.Base.<> ((Data.Aeson..=) "email" (bitcoinReceiverEmail obj) GHC.Base.<> ((Data.Aeson..=) "filled" (bitcoinReceiverFilled obj) GHC.Base.<> ((Data.Aeson..=) "id" (bitcoinReceiverId obj) GHC.Base.<> ((Data.Aeson..=) "inbound_address" (bitcoinReceiverInboundAddress obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (bitcoinReceiverLivemode obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (bitcoinReceiverMetadata obj) GHC.Base.<> ((Data.Aeson..=) "object" (bitcoinReceiverObject obj) GHC.Base.<> ((Data.Aeson..=) "payment" (bitcoinReceiverPayment obj) GHC.Base.<> ((Data.Aeson..=) "refund_address" (bitcoinReceiverRefundAddress obj) GHC.Base.<> ((Data.Aeson..=) "transactions" (bitcoinReceiverTransactions obj) GHC.Base.<> ((Data.Aeson..=) "uncaptured_funds" (bitcoinReceiverUncapturedFunds obj) GHC.Base.<> (Data.Aeson..=) "used_for_payment" (bitcoinReceiverUsedForPayment obj))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON BitcoinReceiver
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "BitcoinReceiver" (\obj -> (((((((((((((((((((((GHC.Base.pure BitcoinReceiver GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount_received")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "bitcoin_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "bitcoin_amount_received")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "bitcoin_uri")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "filled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "inbound_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transactions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "uncaptured_funds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "used_for_payment"))
-- | Defines the data type for the schema bitcoin_receiverMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
data BitcoinReceiverMetadata' = BitcoinReceiverMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON BitcoinReceiverMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON BitcoinReceiverMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "BitcoinReceiverMetadata'" (\obj -> GHC.Base.pure BitcoinReceiverMetadata')
-- | Defines the enum schema bitcoin_receiverObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data BitcoinReceiverObject'
    = BitcoinReceiverObject'EnumOther Data.Aeson.Types.Internal.Value
    | BitcoinReceiverObject'EnumTyped Data.Text.Internal.Text
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
-- | Defines the data type for the schema bitcoin_receiverTransactions\'
-- 
-- A list with one entry for each time that the customer sent bitcoin to the receiver. Hidden when viewing the receiver with a publishable key.
data BitcoinReceiverTransactions' = BitcoinReceiverTransactions' {
  -- | data: Details about each object.
  bitcoinReceiverTransactions'Data :: ([] BitcoinTransaction)
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , bitcoinReceiverTransactions'HasMore :: GHC.Types.Bool
  -- | object: String representing the object\'s type. Objects of the same type share the same value. Always has the value \`list\`.
  , bitcoinReceiverTransactions'Object :: BitcoinReceiverTransactions'Object'
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , bitcoinReceiverTransactions'Url :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON BitcoinReceiverTransactions'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (bitcoinReceiverTransactions'Data obj) : (Data.Aeson..=) "has_more" (bitcoinReceiverTransactions'HasMore obj) : (Data.Aeson..=) "object" (bitcoinReceiverTransactions'Object obj) : (Data.Aeson..=) "url" (bitcoinReceiverTransactions'Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (bitcoinReceiverTransactions'Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (bitcoinReceiverTransactions'HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (bitcoinReceiverTransactions'Object obj) GHC.Base.<> (Data.Aeson..=) "url" (bitcoinReceiverTransactions'Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON BitcoinReceiverTransactions'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "BitcoinReceiverTransactions'" (\obj -> (((GHC.Base.pure BitcoinReceiverTransactions' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Defines the enum schema bitcoin_receiverTransactions\'Object\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value. Always has the value \`list\`.
data BitcoinReceiverTransactions'Object'
    = BitcoinReceiverTransactions'Object'EnumOther Data.Aeson.Types.Internal.Value
    | BitcoinReceiverTransactions'Object'EnumTyped Data.Text.Internal.Text
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