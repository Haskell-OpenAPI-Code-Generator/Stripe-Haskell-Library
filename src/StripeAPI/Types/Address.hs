{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.Address where

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

data Address
    = Address {addressCity :: (GHC.Maybe.Maybe GHC.Base.String),
               addressCountry :: (GHC.Maybe.Maybe GHC.Base.String),
               addressLine1 :: (GHC.Maybe.Maybe GHC.Base.String),
               addressLine2 :: (GHC.Maybe.Maybe GHC.Base.String),
               addressPostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
               addressState :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON Address
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (addressCity obj) : (Data.Aeson..=) "country" (addressCountry obj) : (Data.Aeson..=) "line1" (addressLine1 obj) : (Data.Aeson..=) "line2" (addressLine2 obj) : (Data.Aeson..=) "postal_code" (addressPostalCode obj) : (Data.Aeson..=) "state" (addressState obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (addressCity obj) GHC.Base.<> ((Data.Aeson..=) "country" (addressCountry obj) GHC.Base.<> ((Data.Aeson..=) "line1" (addressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (addressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (addressPostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (addressState obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON Address
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Address" (\obj -> (((((GHC.Base.pure Address GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))