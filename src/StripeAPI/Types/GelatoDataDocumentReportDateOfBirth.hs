{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema GelatoDataDocumentReportDateOfBirth
module StripeAPI.Types.GelatoDataDocumentReportDateOfBirth where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text as Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.gelato_data_document_report_date_of_birth@ in the specification.
--
-- Point in Time
data GelatoDataDocumentReportDateOfBirth = GelatoDataDocumentReportDateOfBirth
  { -- | day: Numerical day between 1 and 31.
    gelatoDataDocumentReportDateOfBirthDay :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | month: Numerical month between 1 and 12.
    gelatoDataDocumentReportDateOfBirthMonth :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | year: The four-digit year.
    gelatoDataDocumentReportDateOfBirthYear :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GelatoDataDocumentReportDateOfBirth where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("day" Data.Aeson.Types.ToJSON..=)) (gelatoDataDocumentReportDateOfBirthDay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("month" Data.Aeson.Types.ToJSON..=)) (gelatoDataDocumentReportDateOfBirthMonth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("year" Data.Aeson.Types.ToJSON..=)) (gelatoDataDocumentReportDateOfBirthYear obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("day" Data.Aeson.Types.ToJSON..=)) (gelatoDataDocumentReportDateOfBirthDay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("month" Data.Aeson.Types.ToJSON..=)) (gelatoDataDocumentReportDateOfBirthMonth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("year" Data.Aeson.Types.ToJSON..=)) (gelatoDataDocumentReportDateOfBirthYear obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GelatoDataDocumentReportDateOfBirth where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GelatoDataDocumentReportDateOfBirth" (\obj -> ((GHC.Base.pure GelatoDataDocumentReportDateOfBirth GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "year"))

-- | Create a new 'GelatoDataDocumentReportDateOfBirth' with all required fields.
mkGelatoDataDocumentReportDateOfBirth :: GelatoDataDocumentReportDateOfBirth
mkGelatoDataDocumentReportDateOfBirth =
  GelatoDataDocumentReportDateOfBirth
    { gelatoDataDocumentReportDateOfBirthDay = GHC.Maybe.Nothing,
      gelatoDataDocumentReportDateOfBirthMonth = GHC.Maybe.Nothing,
      gelatoDataDocumentReportDateOfBirthYear = GHC.Maybe.Nothing
    }
