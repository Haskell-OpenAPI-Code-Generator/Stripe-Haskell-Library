{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema LoginLink
module StripeAPI.Types.LoginLink where

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

-- | Defines the data type for the schema login_link
-- 
-- 
data LoginLink = LoginLink {
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  loginLinkCreated :: GHC.Integer.Type.Integer
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , loginLinkObject :: LoginLinkObject'
  -- | url: The URL for the login link.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , loginLinkUrl :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON LoginLink
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "created" (loginLinkCreated obj) : (Data.Aeson..=) "object" (loginLinkObject obj) : (Data.Aeson..=) "url" (loginLinkUrl obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "created" (loginLinkCreated obj) GHC.Base.<> ((Data.Aeson..=) "object" (loginLinkObject obj) GHC.Base.<> (Data.Aeson..=) "url" (loginLinkUrl obj)))
instance Data.Aeson.Types.FromJSON.FromJSON LoginLink
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "LoginLink" (\obj -> ((GHC.Base.pure LoginLink GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Defines the enum schema login_linkObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data LoginLinkObject'
    = LoginLinkObject'EnumOther Data.Aeson.Types.Internal.Value
    | LoginLinkObject'EnumTyped Data.Text.Internal.Text
    | LoginLinkObject'EnumStringLoginLink
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON LoginLinkObject'
    where toJSON (LoginLinkObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (LoginLinkObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (LoginLinkObject'EnumStringLoginLink) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "login_link"
instance Data.Aeson.FromJSON LoginLinkObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "login_link")
                                          then LoginLinkObject'EnumStringLoginLink
                                          else LoginLinkObject'EnumOther val)