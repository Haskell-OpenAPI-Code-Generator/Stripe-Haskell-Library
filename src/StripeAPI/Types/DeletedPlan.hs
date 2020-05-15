{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.DeletedPlan where

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

data DeletedPlan
    = DeletedPlan {deletedPlanDeleted :: DeletedPlanDeleted',
                   deletedPlanId :: GHC.Base.String,
                   deletedPlanObject :: DeletedPlanObject'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data DeletedPlanDeleted'
    = DeletedPlanDeleted'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedPlanDeleted'EnumTyped GHC.Types.Bool
    | DeletedPlanDeleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedPlanDeleted'
    where toJSON (DeletedPlanDeleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedPlanDeleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedPlanDeleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON DeletedPlanDeleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then DeletedPlanDeleted'EnumBoolTrue
                                          else DeletedPlanDeleted'EnumOther val)
data DeletedPlanObject'
    = DeletedPlanObject'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedPlanObject'EnumTyped GHC.Base.String
    | DeletedPlanObject'EnumStringPlan
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedPlanObject'
    where toJSON (DeletedPlanObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedPlanObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedPlanObject'EnumStringPlan) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "plan"
instance Data.Aeson.FromJSON DeletedPlanObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "plan")
                                          then DeletedPlanObject'EnumStringPlan
                                          else DeletedPlanObject'EnumOther val)
instance Data.Aeson.ToJSON DeletedPlan
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "deleted" (deletedPlanDeleted obj) : (Data.Aeson..=) "id" (deletedPlanId obj) : (Data.Aeson..=) "object" (deletedPlanObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "deleted" (deletedPlanDeleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (deletedPlanId obj) GHC.Base.<> (Data.Aeson..=) "object" (deletedPlanObject obj)))
instance Data.Aeson.Types.FromJSON.FromJSON DeletedPlan
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedPlan" (\obj -> ((GHC.Base.pure DeletedPlan GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))