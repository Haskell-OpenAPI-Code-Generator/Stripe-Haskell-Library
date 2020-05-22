{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema SourceTypeAlipay
module StripeAPI.Types.SourceTypeAlipay where

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

-- | Defines the data type for the schema source_type_alipay
-- 
-- 
data SourceTypeAlipay = SourceTypeAlipay {
  -- | data_string
  sourceTypeAlipayDataString :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | native_url
  , sourceTypeAlipayNativeUrl :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | statement_descriptor
  , sourceTypeAlipayStatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceTypeAlipay
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data_string" (sourceTypeAlipayDataString obj) : (Data.Aeson..=) "native_url" (sourceTypeAlipayNativeUrl obj) : (Data.Aeson..=) "statement_descriptor" (sourceTypeAlipayStatementDescriptor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data_string" (sourceTypeAlipayDataString obj) GHC.Base.<> ((Data.Aeson..=) "native_url" (sourceTypeAlipayNativeUrl obj) GHC.Base.<> (Data.Aeson..=) "statement_descriptor" (sourceTypeAlipayStatementDescriptor obj)))
instance Data.Aeson.Types.FromJSON.FromJSON SourceTypeAlipay
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTypeAlipay" (\obj -> ((GHC.Base.pure SourceTypeAlipay GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "data_string")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "native_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor"))