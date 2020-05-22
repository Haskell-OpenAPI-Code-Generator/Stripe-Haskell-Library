{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema InvoiceThresholdReason
module StripeAPI.Types.InvoiceThresholdReason where

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
import StripeAPI.Types.InvoiceItemThresholdReason

-- | Defines the data type for the schema invoice_threshold_reason
-- 
-- 
data InvoiceThresholdReason = InvoiceThresholdReason {
  -- | amount_gte: The total invoice amount threshold boundary if it triggered the threshold invoice.
  invoiceThresholdReasonAmountGte :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | item_reasons: Indicates which line items triggered a threshold invoice.
  , invoiceThresholdReasonItemReasons :: ([] InvoiceItemThresholdReason)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON InvoiceThresholdReason
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount_gte" (invoiceThresholdReasonAmountGte obj) : (Data.Aeson..=) "item_reasons" (invoiceThresholdReasonItemReasons obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount_gte" (invoiceThresholdReasonAmountGte obj) GHC.Base.<> (Data.Aeson..=) "item_reasons" (invoiceThresholdReasonItemReasons obj))
instance Data.Aeson.Types.FromJSON.FromJSON InvoiceThresholdReason
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoiceThresholdReason" (\obj -> (GHC.Base.pure InvoiceThresholdReason GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "item_reasons"))