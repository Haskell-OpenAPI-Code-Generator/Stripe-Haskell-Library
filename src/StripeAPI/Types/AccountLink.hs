{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.AccountLink where

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

data AccountLink
    = AccountLink {accountLinkCreated :: GHC.Integer.Type.Integer,
                   accountLinkExpiresAt :: GHC.Integer.Type.Integer,
                   accountLinkObject :: AccountLinkObject',
                   accountLinkUrl :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data AccountLinkObject'
    = AccountLinkObject'EnumOther Data.Aeson.Types.Internal.Value
    | AccountLinkObject'EnumTyped GHC.Base.String
    | AccountLinkObject'EnumStringAccountLink
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON AccountLinkObject'
    where toJSON (AccountLinkObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (AccountLinkObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (AccountLinkObject'EnumStringAccountLink) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "account_link"
instance Data.Aeson.FromJSON AccountLinkObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "account_link")
                                          then AccountLinkObject'EnumStringAccountLink
                                          else AccountLinkObject'EnumOther val)
instance Data.Aeson.ToJSON AccountLink
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "created" (accountLinkCreated obj) : (Data.Aeson..=) "expires_at" (accountLinkExpiresAt obj) : (Data.Aeson..=) "object" (accountLinkObject obj) : (Data.Aeson..=) "url" (accountLinkUrl obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "created" (accountLinkCreated obj) GHC.Base.<> ((Data.Aeson..=) "expires_at" (accountLinkExpiresAt obj) GHC.Base.<> ((Data.Aeson..=) "object" (accountLinkObject obj) GHC.Base.<> (Data.Aeson..=) "url" (accountLinkUrl obj))))
instance Data.Aeson.Types.FromJSON.FromJSON AccountLink
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountLink" (\obj -> (((GHC.Base.pure AccountLink GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "expires_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))