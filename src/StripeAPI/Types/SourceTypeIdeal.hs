{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema SourceTypeIdeal
module StripeAPI.Types.SourceTypeIdeal where

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

-- | Defines the data type for the schema source_type_ideal
-- 
-- 
data SourceTypeIdeal = SourceTypeIdeal {
  -- | bank
  sourceTypeIdealBank :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | bic
  , sourceTypeIdealBic :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | iban_last4
  , sourceTypeIdealIbanLast4 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | statement_descriptor
  , sourceTypeIdealStatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceTypeIdeal
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "bank" (sourceTypeIdealBank obj) : (Data.Aeson..=) "bic" (sourceTypeIdealBic obj) : (Data.Aeson..=) "iban_last4" (sourceTypeIdealIbanLast4 obj) : (Data.Aeson..=) "statement_descriptor" (sourceTypeIdealStatementDescriptor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "bank" (sourceTypeIdealBank obj) GHC.Base.<> ((Data.Aeson..=) "bic" (sourceTypeIdealBic obj) GHC.Base.<> ((Data.Aeson..=) "iban_last4" (sourceTypeIdealIbanLast4 obj) GHC.Base.<> (Data.Aeson..=) "statement_descriptor" (sourceTypeIdealStatementDescriptor obj))))
instance Data.Aeson.Types.FromJSON.FromJSON SourceTypeIdeal
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTypeIdeal" (\obj -> (((GHC.Base.pure SourceTypeIdeal GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bic")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "iban_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor"))