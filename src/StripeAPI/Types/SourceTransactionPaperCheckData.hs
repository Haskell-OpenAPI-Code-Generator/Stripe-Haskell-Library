{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema SourceTransactionPaperCheckData
module StripeAPI.Types.SourceTransactionPaperCheckData where

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

-- | Defines the data type for the schema source_transaction_paper_check_data
-- 
-- 
data SourceTransactionPaperCheckData = SourceTransactionPaperCheckData {
  -- | available_at: Time at which the deposited funds will be available for use. Measured in seconds since the Unix epoch.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  sourceTransactionPaperCheckDataAvailableAt :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | invoices: Comma-separated list of invoice IDs associated with the paper check.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , sourceTransactionPaperCheckDataInvoices :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceTransactionPaperCheckData
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "available_at" (sourceTransactionPaperCheckDataAvailableAt obj) : (Data.Aeson..=) "invoices" (sourceTransactionPaperCheckDataInvoices obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "available_at" (sourceTransactionPaperCheckDataAvailableAt obj) GHC.Base.<> (Data.Aeson..=) "invoices" (sourceTransactionPaperCheckDataInvoices obj))
instance Data.Aeson.Types.FromJSON.FromJSON SourceTransactionPaperCheckData
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTransactionPaperCheckData" (\obj -> (GHC.Base.pure SourceTransactionPaperCheckData GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "available_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoices"))