{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema PaymentMethodDetailsSepaDebit
module StripeAPI.Types.PaymentMethodDetailsSepaDebit where

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

-- | Defines the data type for the schema payment_method_details_sepa_debit
-- 
-- 
data PaymentMethodDetailsSepaDebit = PaymentMethodDetailsSepaDebit {
  -- | bank_code: Bank code of bank associated with the bank account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  paymentMethodDetailsSepaDebitBankCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | branch_code: Branch code of bank associated with the bank account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodDetailsSepaDebitBranchCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | country: Two-letter ISO code representing the country the bank account is located in.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodDetailsSepaDebitCountry :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | fingerprint: Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodDetailsSepaDebitFingerprint :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | last4: Last four characters of the IBAN.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodDetailsSepaDebitLast4 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | mandate: ID of the mandate used to make this payment.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodDetailsSepaDebitMandate :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PaymentMethodDetailsSepaDebit
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "bank_code" (paymentMethodDetailsSepaDebitBankCode obj) : (Data.Aeson..=) "branch_code" (paymentMethodDetailsSepaDebitBranchCode obj) : (Data.Aeson..=) "country" (paymentMethodDetailsSepaDebitCountry obj) : (Data.Aeson..=) "fingerprint" (paymentMethodDetailsSepaDebitFingerprint obj) : (Data.Aeson..=) "last4" (paymentMethodDetailsSepaDebitLast4 obj) : (Data.Aeson..=) "mandate" (paymentMethodDetailsSepaDebitMandate obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "bank_code" (paymentMethodDetailsSepaDebitBankCode obj) GHC.Base.<> ((Data.Aeson..=) "branch_code" (paymentMethodDetailsSepaDebitBranchCode obj) GHC.Base.<> ((Data.Aeson..=) "country" (paymentMethodDetailsSepaDebitCountry obj) GHC.Base.<> ((Data.Aeson..=) "fingerprint" (paymentMethodDetailsSepaDebitFingerprint obj) GHC.Base.<> ((Data.Aeson..=) "last4" (paymentMethodDetailsSepaDebitLast4 obj) GHC.Base.<> (Data.Aeson..=) "mandate" (paymentMethodDetailsSepaDebitMandate obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsSepaDebit
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsSepaDebit" (\obj -> (((((GHC.Base.pure PaymentMethodDetailsSepaDebit GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "branch_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mandate"))