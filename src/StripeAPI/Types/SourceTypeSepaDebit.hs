{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.SourceTypeSepaDebit where

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

data SourceTypeSepaDebit
    = SourceTypeSepaDebit {sourceTypeSepaDebitBankCode :: (GHC.Maybe.Maybe GHC.Base.String),
                           sourceTypeSepaDebitBranchCode :: (GHC.Maybe.Maybe GHC.Base.String),
                           sourceTypeSepaDebitCountry :: (GHC.Maybe.Maybe GHC.Base.String),
                           sourceTypeSepaDebitFingerprint :: (GHC.Maybe.Maybe GHC.Base.String),
                           sourceTypeSepaDebitLast4 :: (GHC.Maybe.Maybe GHC.Base.String),
                           sourceTypeSepaDebitMandateReference :: (GHC.Maybe.Maybe GHC.Base.String),
                           sourceTypeSepaDebitMandateUrl :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceTypeSepaDebit
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "bank_code" (sourceTypeSepaDebitBankCode obj) : (Data.Aeson..=) "branch_code" (sourceTypeSepaDebitBranchCode obj) : (Data.Aeson..=) "country" (sourceTypeSepaDebitCountry obj) : (Data.Aeson..=) "fingerprint" (sourceTypeSepaDebitFingerprint obj) : (Data.Aeson..=) "last4" (sourceTypeSepaDebitLast4 obj) : (Data.Aeson..=) "mandate_reference" (sourceTypeSepaDebitMandateReference obj) : (Data.Aeson..=) "mandate_url" (sourceTypeSepaDebitMandateUrl obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "bank_code" (sourceTypeSepaDebitBankCode obj) GHC.Base.<> ((Data.Aeson..=) "branch_code" (sourceTypeSepaDebitBranchCode obj) GHC.Base.<> ((Data.Aeson..=) "country" (sourceTypeSepaDebitCountry obj) GHC.Base.<> ((Data.Aeson..=) "fingerprint" (sourceTypeSepaDebitFingerprint obj) GHC.Base.<> ((Data.Aeson..=) "last4" (sourceTypeSepaDebitLast4 obj) GHC.Base.<> ((Data.Aeson..=) "mandate_reference" (sourceTypeSepaDebitMandateReference obj) GHC.Base.<> (Data.Aeson..=) "mandate_url" (sourceTypeSepaDebitMandateUrl obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON SourceTypeSepaDebit
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTypeSepaDebit" (\obj -> ((((((GHC.Base.pure SourceTypeSepaDebit GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "branch_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mandate_reference")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mandate_url"))