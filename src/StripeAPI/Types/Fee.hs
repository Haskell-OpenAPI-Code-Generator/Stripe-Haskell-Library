{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.Fee where

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

data Fee
    = Fee {feeAmount :: GHC.Integer.Type.Integer,
           feeApplication :: (GHC.Maybe.Maybe GHC.Base.String),
           feeCurrency :: GHC.Base.String,
           feeDescription :: (GHC.Maybe.Maybe GHC.Base.String),
           feeType :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON Fee
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (feeAmount obj) : (Data.Aeson..=) "application" (feeApplication obj) : (Data.Aeson..=) "currency" (feeCurrency obj) : (Data.Aeson..=) "description" (feeDescription obj) : (Data.Aeson..=) "type" (feeType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (feeAmount obj) GHC.Base.<> ((Data.Aeson..=) "application" (feeApplication obj) GHC.Base.<> ((Data.Aeson..=) "currency" (feeCurrency obj) GHC.Base.<> ((Data.Aeson..=) "description" (feeDescription obj) GHC.Base.<> (Data.Aeson..=) "type" (feeType obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON Fee
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Fee" (\obj -> ((((GHC.Base.pure Fee GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))