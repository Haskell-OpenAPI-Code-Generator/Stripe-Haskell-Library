{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema SourceTransaction
module StripeAPI.Types.SourceTransaction where

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
import StripeAPI.Types.SourceTransactionAchCreditTransferData
import StripeAPI.Types.SourceTransactionChfCreditTransferData
import StripeAPI.Types.SourceTransactionGbpCreditTransferData
import StripeAPI.Types.SourceTransactionPaperCheckData
import StripeAPI.Types.SourceTransactionSepaCreditTransferData

-- | Defines the data type for the schema source_transaction
-- 
-- Some payment methods have no required amount that a customer must send.
-- Customers can be instructed to send any amount, and it can be made up of
-- multiple transactions. As such, sources can have multiple associated
-- transactions.
data SourceTransaction = SourceTransaction {
  -- | ach_credit_transfer: 
  sourceTransactionAchCreditTransfer :: (GHC.Maybe.Maybe SourceTransactionAchCreditTransferData)
  -- | amount: A positive integer in the smallest currency unit (that is, 100 cents for \$1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the amount your customer has pushed to the receiver.
  , sourceTransactionAmount :: GHC.Integer.Type.Integer
  -- | chf_credit_transfer: 
  , sourceTransactionChfCreditTransfer :: (GHC.Maybe.Maybe SourceTransactionChfCreditTransferData)
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  , sourceTransactionCreated :: GHC.Integer.Type.Integer
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  , sourceTransactionCurrency :: Data.Text.Internal.Text
  -- | gbp_credit_transfer: 
  , sourceTransactionGbpCreditTransfer :: (GHC.Maybe.Maybe SourceTransactionGbpCreditTransferData)
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , sourceTransactionId :: Data.Text.Internal.Text
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , sourceTransactionLivemode :: GHC.Types.Bool
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , sourceTransactionObject :: SourceTransactionObject'
  -- | paper_check: 
  , sourceTransactionPaperCheck :: (GHC.Maybe.Maybe SourceTransactionPaperCheckData)
  -- | sepa_credit_transfer: 
  , sourceTransactionSepaCreditTransfer :: (GHC.Maybe.Maybe SourceTransactionSepaCreditTransferData)
  -- | source: The ID of the source this transaction is attached to.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , sourceTransactionSource :: Data.Text.Internal.Text
  -- | status: The status of the transaction, one of \`succeeded\`, \`pending\`, or \`failed\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , sourceTransactionStatus :: Data.Text.Internal.Text
  -- | type: The type of source this transaction is attached to.
  , sourceTransactionType :: SourceTransactionType'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceTransaction
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "ach_credit_transfer" (sourceTransactionAchCreditTransfer obj) : (Data.Aeson..=) "amount" (sourceTransactionAmount obj) : (Data.Aeson..=) "chf_credit_transfer" (sourceTransactionChfCreditTransfer obj) : (Data.Aeson..=) "created" (sourceTransactionCreated obj) : (Data.Aeson..=) "currency" (sourceTransactionCurrency obj) : (Data.Aeson..=) "gbp_credit_transfer" (sourceTransactionGbpCreditTransfer obj) : (Data.Aeson..=) "id" (sourceTransactionId obj) : (Data.Aeson..=) "livemode" (sourceTransactionLivemode obj) : (Data.Aeson..=) "object" (sourceTransactionObject obj) : (Data.Aeson..=) "paper_check" (sourceTransactionPaperCheck obj) : (Data.Aeson..=) "sepa_credit_transfer" (sourceTransactionSepaCreditTransfer obj) : (Data.Aeson..=) "source" (sourceTransactionSource obj) : (Data.Aeson..=) "status" (sourceTransactionStatus obj) : (Data.Aeson..=) "type" (sourceTransactionType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "ach_credit_transfer" (sourceTransactionAchCreditTransfer obj) GHC.Base.<> ((Data.Aeson..=) "amount" (sourceTransactionAmount obj) GHC.Base.<> ((Data.Aeson..=) "chf_credit_transfer" (sourceTransactionChfCreditTransfer obj) GHC.Base.<> ((Data.Aeson..=) "created" (sourceTransactionCreated obj) GHC.Base.<> ((Data.Aeson..=) "currency" (sourceTransactionCurrency obj) GHC.Base.<> ((Data.Aeson..=) "gbp_credit_transfer" (sourceTransactionGbpCreditTransfer obj) GHC.Base.<> ((Data.Aeson..=) "id" (sourceTransactionId obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (sourceTransactionLivemode obj) GHC.Base.<> ((Data.Aeson..=) "object" (sourceTransactionObject obj) GHC.Base.<> ((Data.Aeson..=) "paper_check" (sourceTransactionPaperCheck obj) GHC.Base.<> ((Data.Aeson..=) "sepa_credit_transfer" (sourceTransactionSepaCreditTransfer obj) GHC.Base.<> ((Data.Aeson..=) "source" (sourceTransactionSource obj) GHC.Base.<> ((Data.Aeson..=) "status" (sourceTransactionStatus obj) GHC.Base.<> (Data.Aeson..=) "type" (sourceTransactionType obj))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON SourceTransaction
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTransaction" (\obj -> (((((((((((((GHC.Base.pure SourceTransaction GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ach_credit_transfer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "chf_credit_transfer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gbp_credit_transfer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "paper_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sepa_credit_transfer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Defines the enum schema source_transactionObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data SourceTransactionObject'
    = SourceTransactionObject'EnumOther Data.Aeson.Types.Internal.Value
    | SourceTransactionObject'EnumTyped Data.Text.Internal.Text
    | SourceTransactionObject'EnumStringSourceTransaction
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceTransactionObject'
    where toJSON (SourceTransactionObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (SourceTransactionObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (SourceTransactionObject'EnumStringSourceTransaction) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "source_transaction"
instance Data.Aeson.FromJSON SourceTransactionObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "source_transaction")
                                          then SourceTransactionObject'EnumStringSourceTransaction
                                          else SourceTransactionObject'EnumOther val)
-- | Defines the enum schema source_transactionType\'
-- 
-- The type of source this transaction is attached to.
data SourceTransactionType'
    = SourceTransactionType'EnumOther Data.Aeson.Types.Internal.Value
    | SourceTransactionType'EnumTyped Data.Text.Internal.Text
    | SourceTransactionType'EnumStringAchCreditTransfer
    | SourceTransactionType'EnumStringAchDebit
    | SourceTransactionType'EnumStringAlipay
    | SourceTransactionType'EnumStringBancontact
    | SourceTransactionType'EnumStringCard
    | SourceTransactionType'EnumStringCardPresent
    | SourceTransactionType'EnumStringEps
    | SourceTransactionType'EnumStringGiropay
    | SourceTransactionType'EnumStringIdeal
    | SourceTransactionType'EnumStringKlarna
    | SourceTransactionType'EnumStringMultibanco
    | SourceTransactionType'EnumStringP24
    | SourceTransactionType'EnumStringSepaDebit
    | SourceTransactionType'EnumStringSofort
    | SourceTransactionType'EnumStringThreeDSecure
    | SourceTransactionType'EnumStringWechat
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceTransactionType'
    where toJSON (SourceTransactionType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (SourceTransactionType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (SourceTransactionType'EnumStringAchCreditTransfer) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ach_credit_transfer"
          toJSON (SourceTransactionType'EnumStringAchDebit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ach_debit"
          toJSON (SourceTransactionType'EnumStringAlipay) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alipay"
          toJSON (SourceTransactionType'EnumStringBancontact) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bancontact"
          toJSON (SourceTransactionType'EnumStringCard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card"
          toJSON (SourceTransactionType'EnumStringCardPresent) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_present"
          toJSON (SourceTransactionType'EnumStringEps) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "eps"
          toJSON (SourceTransactionType'EnumStringGiropay) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "giropay"
          toJSON (SourceTransactionType'EnumStringIdeal) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ideal"
          toJSON (SourceTransactionType'EnumStringKlarna) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "klarna"
          toJSON (SourceTransactionType'EnumStringMultibanco) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "multibanco"
          toJSON (SourceTransactionType'EnumStringP24) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "p24"
          toJSON (SourceTransactionType'EnumStringSepaDebit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sepa_debit"
          toJSON (SourceTransactionType'EnumStringSofort) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sofort"
          toJSON (SourceTransactionType'EnumStringThreeDSecure) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "three_d_secure"
          toJSON (SourceTransactionType'EnumStringWechat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "wechat"
instance Data.Aeson.FromJSON SourceTransactionType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ach_credit_transfer")
                                          then SourceTransactionType'EnumStringAchCreditTransfer
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ach_debit")
                                                then SourceTransactionType'EnumStringAchDebit
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alipay")
                                                      then SourceTransactionType'EnumStringAlipay
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bancontact")
                                                            then SourceTransactionType'EnumStringBancontact
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card")
                                                                  then SourceTransactionType'EnumStringCard
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_present")
                                                                        then SourceTransactionType'EnumStringCardPresent
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "eps")
                                                                              then SourceTransactionType'EnumStringEps
                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "giropay")
                                                                                    then SourceTransactionType'EnumStringGiropay
                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ideal")
                                                                                          then SourceTransactionType'EnumStringIdeal
                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "klarna")
                                                                                                then SourceTransactionType'EnumStringKlarna
                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "multibanco")
                                                                                                      then SourceTransactionType'EnumStringMultibanco
                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "p24")
                                                                                                            then SourceTransactionType'EnumStringP24
                                                                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sepa_debit")
                                                                                                                  then SourceTransactionType'EnumStringSepaDebit
                                                                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sofort")
                                                                                                                        then SourceTransactionType'EnumStringSofort
                                                                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "three_d_secure")
                                                                                                                              then SourceTransactionType'EnumStringThreeDSecure
                                                                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "wechat")
                                                                                                                                    then SourceTransactionType'EnumStringWechat
                                                                                                                                    else SourceTransactionType'EnumOther val)