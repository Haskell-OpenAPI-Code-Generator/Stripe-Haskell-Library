{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.SourceTypeBancontact where

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

data SourceTypeBancontact
    = SourceTypeBancontact {sourceTypeBancontactBankCode :: (GHC.Maybe.Maybe GHC.Base.String),
                            sourceTypeBancontactBankName :: (GHC.Maybe.Maybe GHC.Base.String),
                            sourceTypeBancontactBic :: (GHC.Maybe.Maybe GHC.Base.String),
                            sourceTypeBancontactIbanLast4 :: (GHC.Maybe.Maybe GHC.Base.String),
                            sourceTypeBancontactPreferredLanguage :: (GHC.Maybe.Maybe GHC.Base.String),
                            sourceTypeBancontactStatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceTypeBancontact
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "bank_code" (sourceTypeBancontactBankCode obj) : (Data.Aeson..=) "bank_name" (sourceTypeBancontactBankName obj) : (Data.Aeson..=) "bic" (sourceTypeBancontactBic obj) : (Data.Aeson..=) "iban_last4" (sourceTypeBancontactIbanLast4 obj) : (Data.Aeson..=) "preferred_language" (sourceTypeBancontactPreferredLanguage obj) : (Data.Aeson..=) "statement_descriptor" (sourceTypeBancontactStatementDescriptor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "bank_code" (sourceTypeBancontactBankCode obj) GHC.Base.<> ((Data.Aeson..=) "bank_name" (sourceTypeBancontactBankName obj) GHC.Base.<> ((Data.Aeson..=) "bic" (sourceTypeBancontactBic obj) GHC.Base.<> ((Data.Aeson..=) "iban_last4" (sourceTypeBancontactIbanLast4 obj) GHC.Base.<> ((Data.Aeson..=) "preferred_language" (sourceTypeBancontactPreferredLanguage obj) GHC.Base.<> (Data.Aeson..=) "statement_descriptor" (sourceTypeBancontactStatementDescriptor obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON SourceTypeBancontact
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTypeBancontact" (\obj -> (((((GHC.Base.pure SourceTypeBancontact GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bic")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "iban_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "preferred_language")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor"))