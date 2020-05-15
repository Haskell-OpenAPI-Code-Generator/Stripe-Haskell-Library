{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.PaymentMethodDetailsAchCreditTransfer where

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

data PaymentMethodDetailsAchCreditTransfer
    = PaymentMethodDetailsAchCreditTransfer {paymentMethodDetailsAchCreditTransferAccountNumber :: (GHC.Maybe.Maybe GHC.Base.String),
                                             paymentMethodDetailsAchCreditTransferBankName :: (GHC.Maybe.Maybe GHC.Base.String),
                                             paymentMethodDetailsAchCreditTransferRoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String),
                                             paymentMethodDetailsAchCreditTransferSwiftCode :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PaymentMethodDetailsAchCreditTransfer
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_number" (paymentMethodDetailsAchCreditTransferAccountNumber obj) : (Data.Aeson..=) "bank_name" (paymentMethodDetailsAchCreditTransferBankName obj) : (Data.Aeson..=) "routing_number" (paymentMethodDetailsAchCreditTransferRoutingNumber obj) : (Data.Aeson..=) "swift_code" (paymentMethodDetailsAchCreditTransferSwiftCode obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_number" (paymentMethodDetailsAchCreditTransferAccountNumber obj) GHC.Base.<> ((Data.Aeson..=) "bank_name" (paymentMethodDetailsAchCreditTransferBankName obj) GHC.Base.<> ((Data.Aeson..=) "routing_number" (paymentMethodDetailsAchCreditTransferRoutingNumber obj) GHC.Base.<> (Data.Aeson..=) "swift_code" (paymentMethodDetailsAchCreditTransferSwiftCode obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsAchCreditTransfer
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsAchCreditTransfer" (\obj -> (((GHC.Base.pure PaymentMethodDetailsAchCreditTransfer GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "swift_code"))