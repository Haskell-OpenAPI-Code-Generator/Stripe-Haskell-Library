{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema SourceTypeGiropay
module StripeAPI.Types.SourceTypeGiropay where

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

-- | Defines the data type for the schema source_type_giropay
-- 
-- 
data SourceTypeGiropay = SourceTypeGiropay {
  -- | bank_code
  sourceTypeGiropayBankCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | bank_name
  , sourceTypeGiropayBankName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | bic
  , sourceTypeGiropayBic :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | statement_descriptor
  , sourceTypeGiropayStatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceTypeGiropay
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "bank_code" (sourceTypeGiropayBankCode obj) : (Data.Aeson..=) "bank_name" (sourceTypeGiropayBankName obj) : (Data.Aeson..=) "bic" (sourceTypeGiropayBic obj) : (Data.Aeson..=) "statement_descriptor" (sourceTypeGiropayStatementDescriptor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "bank_code" (sourceTypeGiropayBankCode obj) GHC.Base.<> ((Data.Aeson..=) "bank_name" (sourceTypeGiropayBankName obj) GHC.Base.<> ((Data.Aeson..=) "bic" (sourceTypeGiropayBic obj) GHC.Base.<> (Data.Aeson..=) "statement_descriptor" (sourceTypeGiropayStatementDescriptor obj))))
instance Data.Aeson.Types.FromJSON.FromJSON SourceTypeGiropay
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTypeGiropay" (\obj -> (((GHC.Base.pure SourceTypeGiropay GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bic")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor"))