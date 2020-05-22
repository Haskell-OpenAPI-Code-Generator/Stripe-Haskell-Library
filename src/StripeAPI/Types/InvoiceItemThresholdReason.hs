{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema InvoiceItemThresholdReason
module StripeAPI.Types.InvoiceItemThresholdReason where

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

-- | Defines the data type for the schema invoice_item_threshold_reason
-- 
-- 
data InvoiceItemThresholdReason = InvoiceItemThresholdReason {
  -- | line_item_ids: The IDs of the line items that triggered the threshold invoice.
  invoiceItemThresholdReasonLineItemIds :: ([] GHC.Base.String)
  -- | usage_gte: The quantity threshold boundary that applied to the given line item.
  , invoiceItemThresholdReasonUsageGte :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON InvoiceItemThresholdReason
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "line_item_ids" (invoiceItemThresholdReasonLineItemIds obj) : (Data.Aeson..=) "usage_gte" (invoiceItemThresholdReasonUsageGte obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "line_item_ids" (invoiceItemThresholdReasonLineItemIds obj) GHC.Base.<> (Data.Aeson..=) "usage_gte" (invoiceItemThresholdReasonUsageGte obj))
instance Data.Aeson.Types.FromJSON.FromJSON InvoiceItemThresholdReason
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoiceItemThresholdReason" (\obj -> (GHC.Base.pure InvoiceItemThresholdReason GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "line_item_ids")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "usage_gte"))