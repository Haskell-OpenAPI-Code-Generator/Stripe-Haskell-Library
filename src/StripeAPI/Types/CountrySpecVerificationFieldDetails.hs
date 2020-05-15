{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.CountrySpecVerificationFieldDetails where

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

data CountrySpecVerificationFieldDetails
    = CountrySpecVerificationFieldDetails {countrySpecVerificationFieldDetailsAdditional :: ([] GHC.Base.String),
                                           countrySpecVerificationFieldDetailsMinimum :: ([] GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON CountrySpecVerificationFieldDetails
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "additional" (countrySpecVerificationFieldDetailsAdditional obj) : (Data.Aeson..=) "minimum" (countrySpecVerificationFieldDetailsMinimum obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "additional" (countrySpecVerificationFieldDetailsAdditional obj) GHC.Base.<> (Data.Aeson..=) "minimum" (countrySpecVerificationFieldDetailsMinimum obj))
instance Data.Aeson.Types.FromJSON.FromJSON CountrySpecVerificationFieldDetails
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CountrySpecVerificationFieldDetails" (\obj -> (GHC.Base.pure CountrySpecVerificationFieldDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "additional")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "minimum"))