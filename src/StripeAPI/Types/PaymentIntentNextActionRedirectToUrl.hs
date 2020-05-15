{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.PaymentIntentNextActionRedirectToUrl where

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

data PaymentIntentNextActionRedirectToUrl
    = PaymentIntentNextActionRedirectToUrl {paymentIntentNextActionRedirectToUrlReturnUrl :: (GHC.Maybe.Maybe GHC.Base.String),
                                            paymentIntentNextActionRedirectToUrlUrl :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PaymentIntentNextActionRedirectToUrl
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "return_url" (paymentIntentNextActionRedirectToUrlReturnUrl obj) : (Data.Aeson..=) "url" (paymentIntentNextActionRedirectToUrlUrl obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "return_url" (paymentIntentNextActionRedirectToUrlReturnUrl obj) GHC.Base.<> (Data.Aeson..=) "url" (paymentIntentNextActionRedirectToUrlUrl obj))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentNextActionRedirectToUrl
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentIntentNextActionRedirectToUrl" (\obj -> (GHC.Base.pure PaymentIntentNextActionRedirectToUrl GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "return_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "url"))