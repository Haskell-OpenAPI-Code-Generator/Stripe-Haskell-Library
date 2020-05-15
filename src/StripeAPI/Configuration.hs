{-# LANGUAGE OverloadedStrings #-}

module StripeAPI.Configuration where

import qualified Data.Text
import qualified StripeAPI.Common

defaultURL = Data.Text.pack "https://api.stripe.com/"
defaultConfiguration = StripeAPI.Common.Configuration defaultURL StripeAPI.Common.AnonymousSecurityScheme