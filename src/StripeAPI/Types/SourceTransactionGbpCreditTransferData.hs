{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.SourceTransactionGbpCreditTransferData where

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

data SourceTransactionGbpCreditTransferData
    = SourceTransactionGbpCreditTransferData {sourceTransactionGbpCreditTransferDataFingerprint :: (GHC.Maybe.Maybe GHC.Base.String),
                                              sourceTransactionGbpCreditTransferDataFundingMethod :: (GHC.Maybe.Maybe GHC.Base.String),
                                              sourceTransactionGbpCreditTransferDataLast4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                              sourceTransactionGbpCreditTransferDataReference :: (GHC.Maybe.Maybe GHC.Base.String),
                                              sourceTransactionGbpCreditTransferDataSenderAccountNumber :: (GHC.Maybe.Maybe GHC.Base.String),
                                              sourceTransactionGbpCreditTransferDataSenderName :: (GHC.Maybe.Maybe GHC.Base.String),
                                              sourceTransactionGbpCreditTransferDataSenderSortCode :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceTransactionGbpCreditTransferData
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "fingerprint" (sourceTransactionGbpCreditTransferDataFingerprint obj) : (Data.Aeson..=) "funding_method" (sourceTransactionGbpCreditTransferDataFundingMethod obj) : (Data.Aeson..=) "last4" (sourceTransactionGbpCreditTransferDataLast4 obj) : (Data.Aeson..=) "reference" (sourceTransactionGbpCreditTransferDataReference obj) : (Data.Aeson..=) "sender_account_number" (sourceTransactionGbpCreditTransferDataSenderAccountNumber obj) : (Data.Aeson..=) "sender_name" (sourceTransactionGbpCreditTransferDataSenderName obj) : (Data.Aeson..=) "sender_sort_code" (sourceTransactionGbpCreditTransferDataSenderSortCode obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "fingerprint" (sourceTransactionGbpCreditTransferDataFingerprint obj) GHC.Base.<> ((Data.Aeson..=) "funding_method" (sourceTransactionGbpCreditTransferDataFundingMethod obj) GHC.Base.<> ((Data.Aeson..=) "last4" (sourceTransactionGbpCreditTransferDataLast4 obj) GHC.Base.<> ((Data.Aeson..=) "reference" (sourceTransactionGbpCreditTransferDataReference obj) GHC.Base.<> ((Data.Aeson..=) "sender_account_number" (sourceTransactionGbpCreditTransferDataSenderAccountNumber obj) GHC.Base.<> ((Data.Aeson..=) "sender_name" (sourceTransactionGbpCreditTransferDataSenderName obj) GHC.Base.<> (Data.Aeson..=) "sender_sort_code" (sourceTransactionGbpCreditTransferDataSenderSortCode obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON SourceTransactionGbpCreditTransferData
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTransactionGbpCreditTransferData" (\obj -> ((((((GHC.Base.pure SourceTransactionGbpCreditTransferData GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "funding_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reference")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sender_account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sender_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sender_sort_code"))