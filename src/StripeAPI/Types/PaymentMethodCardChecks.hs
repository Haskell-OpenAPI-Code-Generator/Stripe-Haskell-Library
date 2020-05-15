{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.PaymentMethodCardChecks where

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

data PaymentMethodCardChecks
    = PaymentMethodCardChecks {paymentMethodCardChecksAddressLine1Check :: (GHC.Maybe.Maybe GHC.Base.String),
                               paymentMethodCardChecksAddressPostalCodeCheck :: (GHC.Maybe.Maybe GHC.Base.String),
                               paymentMethodCardChecksCvcCheck :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PaymentMethodCardChecks
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address_line1_check" (paymentMethodCardChecksAddressLine1Check obj) : (Data.Aeson..=) "address_postal_code_check" (paymentMethodCardChecksAddressPostalCodeCheck obj) : (Data.Aeson..=) "cvc_check" (paymentMethodCardChecksCvcCheck obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address_line1_check" (paymentMethodCardChecksAddressLine1Check obj) GHC.Base.<> ((Data.Aeson..=) "address_postal_code_check" (paymentMethodCardChecksAddressPostalCodeCheck obj) GHC.Base.<> (Data.Aeson..=) "cvc_check" (paymentMethodCardChecksCvcCheck obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodCardChecks
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodCardChecks" (\obj -> ((GHC.Base.pure PaymentMethodCardChecks GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_postal_code_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc_check"))