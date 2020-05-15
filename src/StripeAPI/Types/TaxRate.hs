{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.TaxRate where

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

data TaxRate
    = TaxRate {taxRateActive :: GHC.Types.Bool,
               taxRateCreated :: GHC.Integer.Type.Integer,
               taxRateDescription :: (GHC.Maybe.Maybe GHC.Base.String),
               taxRateDisplayName :: GHC.Base.String,
               taxRateId :: GHC.Base.String,
               taxRateInclusive :: GHC.Types.Bool,
               taxRateJurisdiction :: (GHC.Maybe.Maybe GHC.Base.String),
               taxRateLivemode :: GHC.Types.Bool,
               taxRateMetadata :: TaxRateMetadata',
               taxRateObject :: TaxRateObject',
               taxRatePercentage :: GHC.Types.Double}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data TaxRateMetadata'
    = TaxRateMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON TaxRateMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON TaxRateMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "TaxRateMetadata'" (\obj -> GHC.Base.pure TaxRateMetadata')
data TaxRateObject'
    = TaxRateObject'EnumOther Data.Aeson.Types.Internal.Value
    | TaxRateObject'EnumTyped GHC.Base.String
    | TaxRateObject'EnumStringTaxRate
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON TaxRateObject'
    where toJSON (TaxRateObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (TaxRateObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (TaxRateObject'EnumStringTaxRate) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tax_rate"
instance Data.Aeson.FromJSON TaxRateObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tax_rate")
                                          then TaxRateObject'EnumStringTaxRate
                                          else TaxRateObject'EnumOther val)
instance Data.Aeson.ToJSON TaxRate
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "active" (taxRateActive obj) : (Data.Aeson..=) "created" (taxRateCreated obj) : (Data.Aeson..=) "description" (taxRateDescription obj) : (Data.Aeson..=) "display_name" (taxRateDisplayName obj) : (Data.Aeson..=) "id" (taxRateId obj) : (Data.Aeson..=) "inclusive" (taxRateInclusive obj) : (Data.Aeson..=) "jurisdiction" (taxRateJurisdiction obj) : (Data.Aeson..=) "livemode" (taxRateLivemode obj) : (Data.Aeson..=) "metadata" (taxRateMetadata obj) : (Data.Aeson..=) "object" (taxRateObject obj) : (Data.Aeson..=) "percentage" (taxRatePercentage obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "active" (taxRateActive obj) GHC.Base.<> ((Data.Aeson..=) "created" (taxRateCreated obj) GHC.Base.<> ((Data.Aeson..=) "description" (taxRateDescription obj) GHC.Base.<> ((Data.Aeson..=) "display_name" (taxRateDisplayName obj) GHC.Base.<> ((Data.Aeson..=) "id" (taxRateId obj) GHC.Base.<> ((Data.Aeson..=) "inclusive" (taxRateInclusive obj) GHC.Base.<> ((Data.Aeson..=) "jurisdiction" (taxRateJurisdiction obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (taxRateLivemode obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (taxRateMetadata obj) GHC.Base.<> ((Data.Aeson..=) "object" (taxRateObject obj) GHC.Base.<> (Data.Aeson..=) "percentage" (taxRatePercentage obj)))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON TaxRate
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "TaxRate" (\obj -> ((((((((((GHC.Base.pure TaxRate GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "display_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "inclusive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "jurisdiction")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "percentage"))