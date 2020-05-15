{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.PaymentMethodDetailsGiropay where

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

data PaymentMethodDetailsGiropay
    = PaymentMethodDetailsGiropay {paymentMethodDetailsGiropayBankCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                   paymentMethodDetailsGiropayBankName :: (GHC.Maybe.Maybe GHC.Base.String),
                                   paymentMethodDetailsGiropayBic :: (GHC.Maybe.Maybe GHC.Base.String),
                                   paymentMethodDetailsGiropayVerifiedName :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PaymentMethodDetailsGiropay
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "bank_code" (paymentMethodDetailsGiropayBankCode obj) : (Data.Aeson..=) "bank_name" (paymentMethodDetailsGiropayBankName obj) : (Data.Aeson..=) "bic" (paymentMethodDetailsGiropayBic obj) : (Data.Aeson..=) "verified_name" (paymentMethodDetailsGiropayVerifiedName obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "bank_code" (paymentMethodDetailsGiropayBankCode obj) GHC.Base.<> ((Data.Aeson..=) "bank_name" (paymentMethodDetailsGiropayBankName obj) GHC.Base.<> ((Data.Aeson..=) "bic" (paymentMethodDetailsGiropayBic obj) GHC.Base.<> (Data.Aeson..=) "verified_name" (paymentMethodDetailsGiropayVerifiedName obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsGiropay
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsGiropay" (\obj -> (((GHC.Base.pure PaymentMethodDetailsGiropay GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bic")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_name"))