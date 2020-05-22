{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema MandatePaymentMethodDetails
module StripeAPI.Types.MandatePaymentMethodDetails where

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
import StripeAPI.Types.CardMandatePaymentMethodDetails
import StripeAPI.Types.MandateSepaDebit

-- | Defines the data type for the schema mandate_payment_method_details
-- 
-- 
data MandatePaymentMethodDetails = MandatePaymentMethodDetails {
  -- | card: 
  mandatePaymentMethodDetailsCard :: (GHC.Maybe.Maybe CardMandatePaymentMethodDetails)
  -- | sepa_debit: 
  , mandatePaymentMethodDetailsSepaDebit :: (GHC.Maybe.Maybe MandateSepaDebit)
  -- | type: The type of the payment method associated with this mandate. An additional hash is included on \`payment_method_details\` with a name matching this value. It contains mandate information specific to the payment method.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , mandatePaymentMethodDetailsType :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON MandatePaymentMethodDetails
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "card" (mandatePaymentMethodDetailsCard obj) : (Data.Aeson..=) "sepa_debit" (mandatePaymentMethodDetailsSepaDebit obj) : (Data.Aeson..=) "type" (mandatePaymentMethodDetailsType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "card" (mandatePaymentMethodDetailsCard obj) GHC.Base.<> ((Data.Aeson..=) "sepa_debit" (mandatePaymentMethodDetailsSepaDebit obj) GHC.Base.<> (Data.Aeson..=) "type" (mandatePaymentMethodDetailsType obj)))
instance Data.Aeson.Types.FromJSON.FromJSON MandatePaymentMethodDetails
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "MandatePaymentMethodDetails" (\obj -> ((GHC.Base.pure MandatePaymentMethodDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sepa_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))