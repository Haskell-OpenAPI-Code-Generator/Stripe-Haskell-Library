{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.SourceTransactionAchCreditTransferData where

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

data SourceTransactionAchCreditTransferData
    = SourceTransactionAchCreditTransferData {sourceTransactionAchCreditTransferDataCustomerData :: (GHC.Maybe.Maybe GHC.Base.String),
                                              sourceTransactionAchCreditTransferDataFingerprint :: (GHC.Maybe.Maybe GHC.Base.String),
                                              sourceTransactionAchCreditTransferDataLast4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                              sourceTransactionAchCreditTransferDataRoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceTransactionAchCreditTransferData
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "customer_data" (sourceTransactionAchCreditTransferDataCustomerData obj) : (Data.Aeson..=) "fingerprint" (sourceTransactionAchCreditTransferDataFingerprint obj) : (Data.Aeson..=) "last4" (sourceTransactionAchCreditTransferDataLast4 obj) : (Data.Aeson..=) "routing_number" (sourceTransactionAchCreditTransferDataRoutingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "customer_data" (sourceTransactionAchCreditTransferDataCustomerData obj) GHC.Base.<> ((Data.Aeson..=) "fingerprint" (sourceTransactionAchCreditTransferDataFingerprint obj) GHC.Base.<> ((Data.Aeson..=) "last4" (sourceTransactionAchCreditTransferDataLast4 obj) GHC.Base.<> (Data.Aeson..=) "routing_number" (sourceTransactionAchCreditTransferDataRoutingNumber obj))))
instance Data.Aeson.Types.FromJSON.FromJSON SourceTransactionAchCreditTransferData
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTransactionAchCreditTransferData" (\obj -> (((GHC.Base.pure SourceTransactionAchCreditTransferData GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number"))