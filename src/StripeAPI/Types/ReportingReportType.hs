{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.ReportingReportType where

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

data Reporting'reportType
    = Reporting'reportType {reporting'reportTypeDataAvailableEnd :: GHC.Integer.Type.Integer,
                            reporting'reportTypeDataAvailableStart :: GHC.Integer.Type.Integer,
                            reporting'reportTypeDefaultColumns :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                            reporting'reportTypeId :: GHC.Base.String,
                            reporting'reportTypeName :: GHC.Base.String,
                            reporting'reportTypeObject :: Reporting'reportTypeObject',
                            reporting'reportTypeUpdated :: GHC.Integer.Type.Integer,
                            reporting'reportTypeVersion :: GHC.Integer.Type.Integer}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data Reporting'reportTypeObject'
    = Reporting'reportTypeObject'EnumOther Data.Aeson.Types.Internal.Value
    | Reporting'reportTypeObject'EnumTyped GHC.Base.String
    | Reporting'reportTypeObject'EnumStringReporting'reportType
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON Reporting'reportTypeObject'
    where toJSON (Reporting'reportTypeObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Reporting'reportTypeObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Reporting'reportTypeObject'EnumStringReporting'reportType) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "reporting.report_type"
instance Data.Aeson.FromJSON Reporting'reportTypeObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "reporting.report_type")
                                          then Reporting'reportTypeObject'EnumStringReporting'reportType
                                          else Reporting'reportTypeObject'EnumOther val)
instance Data.Aeson.ToJSON Reporting'reportType
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data_available_end" (reporting'reportTypeDataAvailableEnd obj) : (Data.Aeson..=) "data_available_start" (reporting'reportTypeDataAvailableStart obj) : (Data.Aeson..=) "default_columns" (reporting'reportTypeDefaultColumns obj) : (Data.Aeson..=) "id" (reporting'reportTypeId obj) : (Data.Aeson..=) "name" (reporting'reportTypeName obj) : (Data.Aeson..=) "object" (reporting'reportTypeObject obj) : (Data.Aeson..=) "updated" (reporting'reportTypeUpdated obj) : (Data.Aeson..=) "version" (reporting'reportTypeVersion obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data_available_end" (reporting'reportTypeDataAvailableEnd obj) GHC.Base.<> ((Data.Aeson..=) "data_available_start" (reporting'reportTypeDataAvailableStart obj) GHC.Base.<> ((Data.Aeson..=) "default_columns" (reporting'reportTypeDefaultColumns obj) GHC.Base.<> ((Data.Aeson..=) "id" (reporting'reportTypeId obj) GHC.Base.<> ((Data.Aeson..=) "name" (reporting'reportTypeName obj) GHC.Base.<> ((Data.Aeson..=) "object" (reporting'reportTypeObject obj) GHC.Base.<> ((Data.Aeson..=) "updated" (reporting'reportTypeUpdated obj) GHC.Base.<> (Data.Aeson..=) "version" (reporting'reportTypeVersion obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON Reporting'reportType
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Reporting'reportType" (\obj -> (((((((GHC.Base.pure Reporting'reportType GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data_available_end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data_available_start")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_columns")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "updated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "version"))