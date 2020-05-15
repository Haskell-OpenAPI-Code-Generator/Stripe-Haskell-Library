{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.SourceTypeP24 where

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

data SourceTypeP24
    = SourceTypeP24 {sourceTypeP24Reference :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceTypeP24
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "reference" (sourceTypeP24Reference obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "reference" (sourceTypeP24Reference obj))
instance Data.Aeson.Types.FromJSON.FromJSON SourceTypeP24
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTypeP24" (\obj -> GHC.Base.pure SourceTypeP24 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reference"))