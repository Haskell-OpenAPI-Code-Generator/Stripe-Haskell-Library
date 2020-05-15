{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.LegalEntityDob where

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

data LegalEntityDob
    = LegalEntityDob {legalEntityDobDay :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                      legalEntityDobMonth :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                      legalEntityDobYear :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON LegalEntityDob
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "day" (legalEntityDobDay obj) : (Data.Aeson..=) "month" (legalEntityDobMonth obj) : (Data.Aeson..=) "year" (legalEntityDobYear obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "day" (legalEntityDobDay obj) GHC.Base.<> ((Data.Aeson..=) "month" (legalEntityDobMonth obj) GHC.Base.<> (Data.Aeson..=) "year" (legalEntityDobYear obj)))
instance Data.Aeson.Types.FromJSON.FromJSON LegalEntityDob
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "LegalEntityDob" (\obj -> ((GHC.Base.pure LegalEntityDob GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "year"))