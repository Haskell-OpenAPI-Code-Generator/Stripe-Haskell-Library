{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.TaxDeductedAtSource where

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

data TaxDeductedAtSource
    = TaxDeductedAtSource {taxDeductedAtSourceId :: GHC.Base.String,
                           taxDeductedAtSourceObject :: TaxDeductedAtSourceObject',
                           taxDeductedAtSourcePeriodEnd :: GHC.Integer.Type.Integer,
                           taxDeductedAtSourcePeriodStart :: GHC.Integer.Type.Integer,
                           taxDeductedAtSourceTaxDeductionAccountNumber :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data TaxDeductedAtSourceObject'
    = TaxDeductedAtSourceObject'EnumOther Data.Aeson.Types.Internal.Value
    | TaxDeductedAtSourceObject'EnumTyped GHC.Base.String
    | TaxDeductedAtSourceObject'EnumStringTaxDeductedAtSource
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON TaxDeductedAtSourceObject'
    where toJSON (TaxDeductedAtSourceObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (TaxDeductedAtSourceObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (TaxDeductedAtSourceObject'EnumStringTaxDeductedAtSource) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tax_deducted_at_source"
instance Data.Aeson.FromJSON TaxDeductedAtSourceObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tax_deducted_at_source")
                                          then TaxDeductedAtSourceObject'EnumStringTaxDeductedAtSource
                                          else TaxDeductedAtSourceObject'EnumOther val)
instance Data.Aeson.ToJSON TaxDeductedAtSource
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "id" (taxDeductedAtSourceId obj) : (Data.Aeson..=) "object" (taxDeductedAtSourceObject obj) : (Data.Aeson..=) "period_end" (taxDeductedAtSourcePeriodEnd obj) : (Data.Aeson..=) "period_start" (taxDeductedAtSourcePeriodStart obj) : (Data.Aeson..=) "tax_deduction_account_number" (taxDeductedAtSourceTaxDeductionAccountNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "id" (taxDeductedAtSourceId obj) GHC.Base.<> ((Data.Aeson..=) "object" (taxDeductedAtSourceObject obj) GHC.Base.<> ((Data.Aeson..=) "period_end" (taxDeductedAtSourcePeriodEnd obj) GHC.Base.<> ((Data.Aeson..=) "period_start" (taxDeductedAtSourcePeriodStart obj) GHC.Base.<> (Data.Aeson..=) "tax_deduction_account_number" (taxDeductedAtSourceTaxDeductionAccountNumber obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON TaxDeductedAtSource
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "TaxDeductedAtSource" (\obj -> ((((GHC.Base.pure TaxDeductedAtSource GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "period_end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "period_start")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tax_deduction_account_number"))