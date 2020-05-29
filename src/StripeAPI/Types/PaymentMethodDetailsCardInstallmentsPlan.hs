{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema PaymentMethodDetailsCardInstallmentsPlan
module StripeAPI.Types.PaymentMethodDetailsCardInstallmentsPlan where

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

-- | Defines the data type for the schema payment_method_details_card_installments_plan
-- 
-- 
data PaymentMethodDetailsCardInstallmentsPlan = PaymentMethodDetailsCardInstallmentsPlan {
  -- | count: For \`fixed_count\` installment plans, this is the number of installment payments your customer will make to their credit card.
  paymentMethodDetailsCardInstallmentsPlanCount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | interval: For \`fixed_count\` installment plans, this is the interval between installment payments your customer will make to their credit card.
  -- One of \`month\`.
  , paymentMethodDetailsCardInstallmentsPlanInterval :: (GHC.Maybe.Maybe PaymentMethodDetailsCardInstallmentsPlanInterval')
  -- | type: Type of installment plan, one of \`fixed_count\`.
  , paymentMethodDetailsCardInstallmentsPlanType :: PaymentMethodDetailsCardInstallmentsPlanType'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PaymentMethodDetailsCardInstallmentsPlan
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "count" (paymentMethodDetailsCardInstallmentsPlanCount obj) : (Data.Aeson..=) "interval" (paymentMethodDetailsCardInstallmentsPlanInterval obj) : (Data.Aeson..=) "type" (paymentMethodDetailsCardInstallmentsPlanType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "count" (paymentMethodDetailsCardInstallmentsPlanCount obj) GHC.Base.<> ((Data.Aeson..=) "interval" (paymentMethodDetailsCardInstallmentsPlanInterval obj) GHC.Base.<> (Data.Aeson..=) "type" (paymentMethodDetailsCardInstallmentsPlanType obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardInstallmentsPlan
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsCardInstallmentsPlan" (\obj -> ((GHC.Base.pure PaymentMethodDetailsCardInstallmentsPlan GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Defines the enum schema payment_method_details_card_installments_planInterval\'
-- 
-- For \`fixed_count\` installment plans, this is the interval between installment payments your customer will make to their credit card.
-- One of \`month\`.
data PaymentMethodDetailsCardInstallmentsPlanInterval'
    = PaymentMethodDetailsCardInstallmentsPlanInterval'EnumOther Data.Aeson.Types.Internal.Value
    | PaymentMethodDetailsCardInstallmentsPlanInterval'EnumTyped Data.Text.Internal.Text
    | PaymentMethodDetailsCardInstallmentsPlanInterval'EnumStringMonth
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PaymentMethodDetailsCardInstallmentsPlanInterval'
    where toJSON (PaymentMethodDetailsCardInstallmentsPlanInterval'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PaymentMethodDetailsCardInstallmentsPlanInterval'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PaymentMethodDetailsCardInstallmentsPlanInterval'EnumStringMonth) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month"
instance Data.Aeson.FromJSON PaymentMethodDetailsCardInstallmentsPlanInterval'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month")
                                          then PaymentMethodDetailsCardInstallmentsPlanInterval'EnumStringMonth
                                          else PaymentMethodDetailsCardInstallmentsPlanInterval'EnumOther val)
-- | Defines the enum schema payment_method_details_card_installments_planType\'
-- 
-- Type of installment plan, one of \`fixed_count\`.
data PaymentMethodDetailsCardInstallmentsPlanType'
    = PaymentMethodDetailsCardInstallmentsPlanType'EnumOther Data.Aeson.Types.Internal.Value
    | PaymentMethodDetailsCardInstallmentsPlanType'EnumTyped Data.Text.Internal.Text
    | PaymentMethodDetailsCardInstallmentsPlanType'EnumStringFixedCount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PaymentMethodDetailsCardInstallmentsPlanType'
    where toJSON (PaymentMethodDetailsCardInstallmentsPlanType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PaymentMethodDetailsCardInstallmentsPlanType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PaymentMethodDetailsCardInstallmentsPlanType'EnumStringFixedCount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fixed_count"
instance Data.Aeson.FromJSON PaymentMethodDetailsCardInstallmentsPlanType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fixed_count")
                                          then PaymentMethodDetailsCardInstallmentsPlanType'EnumStringFixedCount
                                          else PaymentMethodDetailsCardInstallmentsPlanType'EnumOther val)