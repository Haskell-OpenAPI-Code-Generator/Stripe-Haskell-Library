{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.TerminalConnectionToken where

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

data Terminal'connectionToken
    = Terminal'connectionToken {terminal'connectionTokenLocation :: (GHC.Maybe.Maybe GHC.Base.String),
                                terminal'connectionTokenObject :: Terminal'connectionTokenObject',
                                terminal'connectionTokenSecret :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data Terminal'connectionTokenObject'
    = Terminal'connectionTokenObject'EnumOther Data.Aeson.Types.Internal.Value
    | Terminal'connectionTokenObject'EnumTyped GHC.Base.String
    | Terminal'connectionTokenObject'EnumStringTerminal'connectionToken
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON Terminal'connectionTokenObject'
    where toJSON (Terminal'connectionTokenObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Terminal'connectionTokenObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Terminal'connectionTokenObject'EnumStringTerminal'connectionToken) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "terminal.connection_token"
instance Data.Aeson.FromJSON Terminal'connectionTokenObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "terminal.connection_token")
                                          then Terminal'connectionTokenObject'EnumStringTerminal'connectionToken
                                          else Terminal'connectionTokenObject'EnumOther val)
instance Data.Aeson.ToJSON Terminal'connectionToken
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "location" (terminal'connectionTokenLocation obj) : (Data.Aeson..=) "object" (terminal'connectionTokenObject obj) : (Data.Aeson..=) "secret" (terminal'connectionTokenSecret obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "location" (terminal'connectionTokenLocation obj) GHC.Base.<> ((Data.Aeson..=) "object" (terminal'connectionTokenObject obj) GHC.Base.<> (Data.Aeson..=) "secret" (terminal'connectionTokenSecret obj)))
instance Data.Aeson.Types.FromJSON.FromJSON Terminal'connectionToken
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Terminal'connectionToken" (\obj -> ((GHC.Base.pure Terminal'connectionToken GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "location")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "secret"))