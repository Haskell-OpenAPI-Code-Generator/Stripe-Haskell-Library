{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.SourceReceiverFlow where

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

data SourceReceiverFlow
    = SourceReceiverFlow {sourceReceiverFlowAddress :: (GHC.Maybe.Maybe GHC.Base.String),
                          sourceReceiverFlowAmountCharged :: GHC.Integer.Type.Integer,
                          sourceReceiverFlowAmountReceived :: GHC.Integer.Type.Integer,
                          sourceReceiverFlowAmountReturned :: GHC.Integer.Type.Integer,
                          sourceReceiverFlowRefundAttributesMethod :: GHC.Base.String,
                          sourceReceiverFlowRefundAttributesStatus :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceReceiverFlow
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (sourceReceiverFlowAddress obj) : (Data.Aeson..=) "amount_charged" (sourceReceiverFlowAmountCharged obj) : (Data.Aeson..=) "amount_received" (sourceReceiverFlowAmountReceived obj) : (Data.Aeson..=) "amount_returned" (sourceReceiverFlowAmountReturned obj) : (Data.Aeson..=) "refund_attributes_method" (sourceReceiverFlowRefundAttributesMethod obj) : (Data.Aeson..=) "refund_attributes_status" (sourceReceiverFlowRefundAttributesStatus obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (sourceReceiverFlowAddress obj) GHC.Base.<> ((Data.Aeson..=) "amount_charged" (sourceReceiverFlowAmountCharged obj) GHC.Base.<> ((Data.Aeson..=) "amount_received" (sourceReceiverFlowAmountReceived obj) GHC.Base.<> ((Data.Aeson..=) "amount_returned" (sourceReceiverFlowAmountReturned obj) GHC.Base.<> ((Data.Aeson..=) "refund_attributes_method" (sourceReceiverFlowRefundAttributesMethod obj) GHC.Base.<> (Data.Aeson..=) "refund_attributes_status" (sourceReceiverFlowRefundAttributesStatus obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON SourceReceiverFlow
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceReceiverFlow" (\obj -> (((((GHC.Base.pure SourceReceiverFlow GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount_charged")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount_received")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount_returned")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "refund_attributes_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "refund_attributes_status"))