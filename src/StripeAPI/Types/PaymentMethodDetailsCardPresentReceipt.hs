{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.PaymentMethodDetailsCardPresentReceipt where

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

data PaymentMethodDetailsCardPresentReceipt
    = PaymentMethodDetailsCardPresentReceipt {paymentMethodDetailsCardPresentReceiptApplicationCryptogram :: (GHC.Maybe.Maybe GHC.Base.String),
                                              paymentMethodDetailsCardPresentReceiptApplicationPreferredName :: (GHC.Maybe.Maybe GHC.Base.String),
                                              paymentMethodDetailsCardPresentReceiptAuthorizationCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                              paymentMethodDetailsCardPresentReceiptAuthorizationResponseCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                              paymentMethodDetailsCardPresentReceiptCardholderVerificationMethod :: (GHC.Maybe.Maybe GHC.Base.String),
                                              paymentMethodDetailsCardPresentReceiptDedicatedFileName :: (GHC.Maybe.Maybe GHC.Base.String),
                                              paymentMethodDetailsCardPresentReceiptTerminalVerificationResults :: (GHC.Maybe.Maybe GHC.Base.String),
                                              paymentMethodDetailsCardPresentReceiptTransactionStatusInformation :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PaymentMethodDetailsCardPresentReceipt
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "application_cryptogram" (paymentMethodDetailsCardPresentReceiptApplicationCryptogram obj) : (Data.Aeson..=) "application_preferred_name" (paymentMethodDetailsCardPresentReceiptApplicationPreferredName obj) : (Data.Aeson..=) "authorization_code" (paymentMethodDetailsCardPresentReceiptAuthorizationCode obj) : (Data.Aeson..=) "authorization_response_code" (paymentMethodDetailsCardPresentReceiptAuthorizationResponseCode obj) : (Data.Aeson..=) "cardholder_verification_method" (paymentMethodDetailsCardPresentReceiptCardholderVerificationMethod obj) : (Data.Aeson..=) "dedicated_file_name" (paymentMethodDetailsCardPresentReceiptDedicatedFileName obj) : (Data.Aeson..=) "terminal_verification_results" (paymentMethodDetailsCardPresentReceiptTerminalVerificationResults obj) : (Data.Aeson..=) "transaction_status_information" (paymentMethodDetailsCardPresentReceiptTransactionStatusInformation obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "application_cryptogram" (paymentMethodDetailsCardPresentReceiptApplicationCryptogram obj) GHC.Base.<> ((Data.Aeson..=) "application_preferred_name" (paymentMethodDetailsCardPresentReceiptApplicationPreferredName obj) GHC.Base.<> ((Data.Aeson..=) "authorization_code" (paymentMethodDetailsCardPresentReceiptAuthorizationCode obj) GHC.Base.<> ((Data.Aeson..=) "authorization_response_code" (paymentMethodDetailsCardPresentReceiptAuthorizationResponseCode obj) GHC.Base.<> ((Data.Aeson..=) "cardholder_verification_method" (paymentMethodDetailsCardPresentReceiptCardholderVerificationMethod obj) GHC.Base.<> ((Data.Aeson..=) "dedicated_file_name" (paymentMethodDetailsCardPresentReceiptDedicatedFileName obj) GHC.Base.<> ((Data.Aeson..=) "terminal_verification_results" (paymentMethodDetailsCardPresentReceiptTerminalVerificationResults obj) GHC.Base.<> (Data.Aeson..=) "transaction_status_information" (paymentMethodDetailsCardPresentReceiptTransactionStatusInformation obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardPresentReceipt
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsCardPresentReceipt" (\obj -> (((((((GHC.Base.pure PaymentMethodDetailsCardPresentReceipt GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_cryptogram")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_preferred_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "authorization_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "authorization_response_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cardholder_verification_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dedicated_file_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "terminal_verification_results")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transaction_status_information"))