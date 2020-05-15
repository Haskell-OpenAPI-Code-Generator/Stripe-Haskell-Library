{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.PaymentMethodDetailsP24 where

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

data PaymentMethodDetailsP24
    = PaymentMethodDetailsP24 {paymentMethodDetailsP24Reference :: (GHC.Maybe.Maybe GHC.Base.String),
                               paymentMethodDetailsP24VerifiedName :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PaymentMethodDetailsP24
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "reference" (paymentMethodDetailsP24Reference obj) : (Data.Aeson..=) "verified_name" (paymentMethodDetailsP24VerifiedName obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "reference" (paymentMethodDetailsP24Reference obj) GHC.Base.<> (Data.Aeson..=) "verified_name" (paymentMethodDetailsP24VerifiedName obj))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsP24
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsP24" (\obj -> (GHC.Base.pure PaymentMethodDetailsP24 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reference")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_name"))