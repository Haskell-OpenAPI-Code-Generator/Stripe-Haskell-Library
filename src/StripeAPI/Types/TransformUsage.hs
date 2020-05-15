{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.TransformUsage where

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

data TransformUsage
    = TransformUsage {transformUsageDivideBy :: GHC.Integer.Type.Integer,
                      transformUsageRound :: TransformUsageRound'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data TransformUsageRound'
    = TransformUsageRound'EnumOther Data.Aeson.Types.Internal.Value
    | TransformUsageRound'EnumTyped GHC.Base.String
    | TransformUsageRound'EnumStringDown
    | TransformUsageRound'EnumStringUp
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON TransformUsageRound'
    where toJSON (TransformUsageRound'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (TransformUsageRound'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (TransformUsageRound'EnumStringDown) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "down"
          toJSON (TransformUsageRound'EnumStringUp) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "up"
instance Data.Aeson.FromJSON TransformUsageRound'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "down")
                                          then TransformUsageRound'EnumStringDown
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "up")
                                                then TransformUsageRound'EnumStringUp
                                                else TransformUsageRound'EnumOther val)
instance Data.Aeson.ToJSON TransformUsage
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "divide_by" (transformUsageDivideBy obj) : (Data.Aeson..=) "round" (transformUsageRound obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "divide_by" (transformUsageDivideBy obj) GHC.Base.<> (Data.Aeson..=) "round" (transformUsageRound obj))
instance Data.Aeson.Types.FromJSON.FromJSON TransformUsage
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "TransformUsage" (\obj -> (GHC.Base.pure TransformUsage GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "divide_by")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "round"))