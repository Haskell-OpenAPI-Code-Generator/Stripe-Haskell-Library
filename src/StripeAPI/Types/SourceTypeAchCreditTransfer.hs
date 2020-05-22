{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema SourceTypeAchCreditTransfer
module StripeAPI.Types.SourceTypeAchCreditTransfer where

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

-- | Defines the data type for the schema source_type_ach_credit_transfer
-- 
-- 
data SourceTypeAchCreditTransfer = SourceTypeAchCreditTransfer {
  -- | account_number
  sourceTypeAchCreditTransferAccountNumber :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | bank_name
  , sourceTypeAchCreditTransferBankName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | fingerprint
  , sourceTypeAchCreditTransferFingerprint :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | refund_account_holder_name
  , sourceTypeAchCreditTransferRefundAccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | refund_account_holder_type
  , sourceTypeAchCreditTransferRefundAccountHolderType :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | refund_routing_number
  , sourceTypeAchCreditTransferRefundRoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | routing_number
  , sourceTypeAchCreditTransferRoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | swift_code
  , sourceTypeAchCreditTransferSwiftCode :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceTypeAchCreditTransfer
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_number" (sourceTypeAchCreditTransferAccountNumber obj) : (Data.Aeson..=) "bank_name" (sourceTypeAchCreditTransferBankName obj) : (Data.Aeson..=) "fingerprint" (sourceTypeAchCreditTransferFingerprint obj) : (Data.Aeson..=) "refund_account_holder_name" (sourceTypeAchCreditTransferRefundAccountHolderName obj) : (Data.Aeson..=) "refund_account_holder_type" (sourceTypeAchCreditTransferRefundAccountHolderType obj) : (Data.Aeson..=) "refund_routing_number" (sourceTypeAchCreditTransferRefundRoutingNumber obj) : (Data.Aeson..=) "routing_number" (sourceTypeAchCreditTransferRoutingNumber obj) : (Data.Aeson..=) "swift_code" (sourceTypeAchCreditTransferSwiftCode obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_number" (sourceTypeAchCreditTransferAccountNumber obj) GHC.Base.<> ((Data.Aeson..=) "bank_name" (sourceTypeAchCreditTransferBankName obj) GHC.Base.<> ((Data.Aeson..=) "fingerprint" (sourceTypeAchCreditTransferFingerprint obj) GHC.Base.<> ((Data.Aeson..=) "refund_account_holder_name" (sourceTypeAchCreditTransferRefundAccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "refund_account_holder_type" (sourceTypeAchCreditTransferRefundAccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "refund_routing_number" (sourceTypeAchCreditTransferRefundRoutingNumber obj) GHC.Base.<> ((Data.Aeson..=) "routing_number" (sourceTypeAchCreditTransferRoutingNumber obj) GHC.Base.<> (Data.Aeson..=) "swift_code" (sourceTypeAchCreditTransferSwiftCode obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON SourceTypeAchCreditTransfer
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTypeAchCreditTransfer" (\obj -> (((((((GHC.Base.pure SourceTypeAchCreditTransfer GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_routing_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "swift_code"))