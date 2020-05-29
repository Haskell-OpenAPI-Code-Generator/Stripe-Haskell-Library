{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema PlatformTaxFee
module StripeAPI.Types.PlatformTaxFee where

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

-- | Defines the data type for the schema platform_tax_fee
-- 
-- 
data PlatformTaxFee = PlatformTaxFee {
  -- | account: The Connected account that incurred this charge.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  platformTaxFeeAccount :: Data.Text.Internal.Text
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , platformTaxFeeId :: Data.Text.Internal.Text
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , platformTaxFeeObject :: PlatformTaxFeeObject'
  -- | source_transaction: The payment object that caused this tax to be inflicted.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , platformTaxFeeSourceTransaction :: Data.Text.Internal.Text
  -- | type: The type of tax (VAT).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , platformTaxFeeType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PlatformTaxFee
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account" (platformTaxFeeAccount obj) : (Data.Aeson..=) "id" (platformTaxFeeId obj) : (Data.Aeson..=) "object" (platformTaxFeeObject obj) : (Data.Aeson..=) "source_transaction" (platformTaxFeeSourceTransaction obj) : (Data.Aeson..=) "type" (platformTaxFeeType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account" (platformTaxFeeAccount obj) GHC.Base.<> ((Data.Aeson..=) "id" (platformTaxFeeId obj) GHC.Base.<> ((Data.Aeson..=) "object" (platformTaxFeeObject obj) GHC.Base.<> ((Data.Aeson..=) "source_transaction" (platformTaxFeeSourceTransaction obj) GHC.Base.<> (Data.Aeson..=) "type" (platformTaxFeeType obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PlatformTaxFee
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PlatformTaxFee" (\obj -> ((((GHC.Base.pure PlatformTaxFee GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "source_transaction")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Defines the enum schema platform_tax_feeObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data PlatformTaxFeeObject'
    = PlatformTaxFeeObject'EnumOther Data.Aeson.Types.Internal.Value
    | PlatformTaxFeeObject'EnumTyped Data.Text.Internal.Text
    | PlatformTaxFeeObject'EnumStringPlatformTaxFee
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PlatformTaxFeeObject'
    where toJSON (PlatformTaxFeeObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PlatformTaxFeeObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PlatformTaxFeeObject'EnumStringPlatformTaxFee) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "platform_tax_fee"
instance Data.Aeson.FromJSON PlatformTaxFeeObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "platform_tax_fee")
                                          then PlatformTaxFeeObject'EnumStringPlatformTaxFee
                                          else PlatformTaxFeeObject'EnumOther val)