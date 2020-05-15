{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.PaymentMethodDetailsMultibanco where

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

data PaymentMethodDetailsMultibanco
    = PaymentMethodDetailsMultibanco {paymentMethodDetailsMultibancoEntity :: (GHC.Maybe.Maybe GHC.Base.String),
                                      paymentMethodDetailsMultibancoReference :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PaymentMethodDetailsMultibanco
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "entity" (paymentMethodDetailsMultibancoEntity obj) : (Data.Aeson..=) "reference" (paymentMethodDetailsMultibancoReference obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "entity" (paymentMethodDetailsMultibancoEntity obj) GHC.Base.<> (Data.Aeson..=) "reference" (paymentMethodDetailsMultibancoReference obj))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsMultibanco
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsMultibanco" (\obj -> (GHC.Base.pure PaymentMethodDetailsMultibanco GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "entity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reference"))