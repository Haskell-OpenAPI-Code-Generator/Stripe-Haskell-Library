{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.Application where

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

data Application
    = Application {applicationId :: GHC.Base.String,
                   applicationName :: (GHC.Maybe.Maybe GHC.Base.String),
                   applicationObject :: ApplicationObject'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data ApplicationObject'
    = ApplicationObject'EnumOther Data.Aeson.Types.Internal.Value
    | ApplicationObject'EnumTyped GHC.Base.String
    | ApplicationObject'EnumStringApplication
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON ApplicationObject'
    where toJSON (ApplicationObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (ApplicationObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (ApplicationObject'EnumStringApplication) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "application"
instance Data.Aeson.FromJSON ApplicationObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "application")
                                          then ApplicationObject'EnumStringApplication
                                          else ApplicationObject'EnumOther val)
instance Data.Aeson.ToJSON Application
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "id" (applicationId obj) : (Data.Aeson..=) "name" (applicationName obj) : (Data.Aeson..=) "object" (applicationObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "id" (applicationId obj) GHC.Base.<> ((Data.Aeson..=) "name" (applicationName obj) GHC.Base.<> (Data.Aeson..=) "object" (applicationObject obj)))
instance Data.Aeson.Types.FromJSON.FromJSON Application
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Application" (\obj -> ((GHC.Base.pure Application GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))