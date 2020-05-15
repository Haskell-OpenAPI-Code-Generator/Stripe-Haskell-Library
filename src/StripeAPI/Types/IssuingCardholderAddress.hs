{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.IssuingCardholderAddress where

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
import StripeAPI.Types.Address

data IssuingCardholderAddress
    = IssuingCardholderAddress {issuingCardholderAddressAddress :: Address,
                                issuingCardholderAddressName :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON IssuingCardholderAddress
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (issuingCardholderAddressAddress obj) : (Data.Aeson..=) "name" (issuingCardholderAddressName obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (issuingCardholderAddressAddress obj) GHC.Base.<> (Data.Aeson..=) "name" (issuingCardholderAddressName obj))
instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardholderAddress
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingCardholderAddress" (\obj -> (GHC.Base.pure IssuingCardholderAddress GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name"))