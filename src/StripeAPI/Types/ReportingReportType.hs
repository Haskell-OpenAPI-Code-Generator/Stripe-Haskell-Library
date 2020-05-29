{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema ReportingReportType
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

-- | Defines the data type for the schema reporting.report_type
-- 
-- The Report Type resource corresponds to a particular type of report, such as
-- the \"Activity summary\" or \"Itemized payouts\" reports. These objects are
-- identified by an ID belonging to a set of enumerated values. See
-- [API Access to Reports documentation](https:\/\/stripe.com\/docs\/reporting\/statements\/api)
-- for those Report Type IDs, along with required and optional parameters.
-- 
-- Note that reports can only be run based on your live-mode data (not test-mode
-- data), and thus related requests must be made with a
-- [live-mode API key](https:\/\/stripe.com\/docs\/keys\#test-live-modes).
data Reporting'reportType = Reporting'reportType {
  -- | data_available_end: Most recent time for which this Report Type is available. Measured in seconds since the Unix epoch.
  reporting'reportTypeDataAvailableEnd :: GHC.Integer.Type.Integer
  -- | data_available_start: Earliest time for which this Report Type is available. Measured in seconds since the Unix epoch.
  , reporting'reportTypeDataAvailableStart :: GHC.Integer.Type.Integer
  -- | default_columns: List of column names that are included by default when this Report Type gets run. (If the Report Type doesn\'t support the \`columns\` parameter, this will be null.)
  , reporting'reportTypeDefaultColumns :: (GHC.Maybe.Maybe ([] Data.Text.Internal.Text))
  -- | id: The [ID of the Report Type](https:\/\/stripe.com\/docs\/reporting\/statements\/api\#available-report-types), such as \`balance.summary.1\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , reporting'reportTypeId :: Data.Text.Internal.Text
  -- | name: Human-readable name of the Report Type
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , reporting'reportTypeName :: Data.Text.Internal.Text
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , reporting'reportTypeObject :: Reporting'reportTypeObject'
  -- | updated: When this Report Type was latest updated. Measured in seconds since the Unix epoch.
  , reporting'reportTypeUpdated :: GHC.Integer.Type.Integer
  -- | version: Version of the Report Type. Different versions report with the same ID will have the same purpose, but may take different run parameters or have different result schemas.
  , reporting'reportTypeVersion :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON Reporting'reportType
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data_available_end" (reporting'reportTypeDataAvailableEnd obj) : (Data.Aeson..=) "data_available_start" (reporting'reportTypeDataAvailableStart obj) : (Data.Aeson..=) "default_columns" (reporting'reportTypeDefaultColumns obj) : (Data.Aeson..=) "id" (reporting'reportTypeId obj) : (Data.Aeson..=) "name" (reporting'reportTypeName obj) : (Data.Aeson..=) "object" (reporting'reportTypeObject obj) : (Data.Aeson..=) "updated" (reporting'reportTypeUpdated obj) : (Data.Aeson..=) "version" (reporting'reportTypeVersion obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data_available_end" (reporting'reportTypeDataAvailableEnd obj) GHC.Base.<> ((Data.Aeson..=) "data_available_start" (reporting'reportTypeDataAvailableStart obj) GHC.Base.<> ((Data.Aeson..=) "default_columns" (reporting'reportTypeDefaultColumns obj) GHC.Base.<> ((Data.Aeson..=) "id" (reporting'reportTypeId obj) GHC.Base.<> ((Data.Aeson..=) "name" (reporting'reportTypeName obj) GHC.Base.<> ((Data.Aeson..=) "object" (reporting'reportTypeObject obj) GHC.Base.<> ((Data.Aeson..=) "updated" (reporting'reportTypeUpdated obj) GHC.Base.<> (Data.Aeson..=) "version" (reporting'reportTypeVersion obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON Reporting'reportType
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Reporting'reportType" (\obj -> (((((((GHC.Base.pure Reporting'reportType GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data_available_end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data_available_start")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_columns")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "updated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "version"))
-- | Defines the enum schema reporting.report_typeObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data Reporting'reportTypeObject'
    = Reporting'reportTypeObject'EnumOther Data.Aeson.Types.Internal.Value
    | Reporting'reportTypeObject'EnumTyped Data.Text.Internal.Text
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