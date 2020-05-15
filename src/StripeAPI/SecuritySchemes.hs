{-# LANGUAGE OverloadedStrings #-}

module StripeAPI.SecuritySchemes where

import qualified Data.Text.Internal
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Show
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Simple
import qualified StripeAPI.Common

data BasicAuthenticationSecurityScheme
    = BasicAuthenticationSecurityScheme {basicAuthenticationSecuritySchemeUsername :: Data.Text.Internal.Text,
                                         basicAuthenticationSecuritySchemePassword :: Data.Text.Internal.Text}
    deriving (GHC.Show.Show, GHC.Classes.Ord, GHC.Classes.Eq)

instance StripeAPI.Common.SecurityScheme BasicAuthenticationSecurityScheme
    where authenticateRequest basicAuth = Network.HTTP.Client.Request.applyBasicAuth (StripeAPI.Common.textToByte GHC.Base.$ basicAuthenticationSecuritySchemeUsername basicAuth) (StripeAPI.Common.textToByte GHC.Base.$ basicAuthenticationSecuritySchemePassword basicAuth)

data BearerAuthenticationSecurityScheme
    = BearerAuthenticationSecurityScheme Data.Text.Internal.Text
    deriving (GHC.Show.Show, GHC.Classes.Ord, GHC.Classes.Eq)

instance StripeAPI.Common.SecurityScheme BearerAuthenticationSecurityScheme
    where authenticateRequest (BearerAuthenticationSecurityScheme token) = Network.HTTP.Simple.addRequestHeader "Authorization" GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ ("Bearer " GHC.Base.<> token))
