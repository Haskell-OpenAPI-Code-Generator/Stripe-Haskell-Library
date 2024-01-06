{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema ClimateRemovalsBeneficiary
module StripeAPI.Types.ClimateRemovalsBeneficiary where

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
import qualified Data.Text.Internal
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

-- | Defines the object schema located at @components.schemas.climate_removals_beneficiary@ in the specification.
data ClimateRemovalsBeneficiary = ClimateRemovalsBeneficiary
  { -- | public_name: Publicly displayable name for the end beneficiary of carbon removal.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    climateRemovalsBeneficiaryPublicName :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON ClimateRemovalsBeneficiary where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["public_name" Data.Aeson.Types.ToJSON..= climateRemovalsBeneficiaryPublicName obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["public_name" Data.Aeson.Types.ToJSON..= climateRemovalsBeneficiaryPublicName obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON ClimateRemovalsBeneficiary where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "ClimateRemovalsBeneficiary" (\obj -> GHC.Base.pure ClimateRemovalsBeneficiary GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "public_name"))

-- | Create a new 'ClimateRemovalsBeneficiary' with all required fields.
mkClimateRemovalsBeneficiary ::
  -- | 'climateRemovalsBeneficiaryPublicName'
  Data.Text.Internal.Text ->
  ClimateRemovalsBeneficiary
mkClimateRemovalsBeneficiary climateRemovalsBeneficiaryPublicName = ClimateRemovalsBeneficiary {climateRemovalsBeneficiaryPublicName = climateRemovalsBeneficiaryPublicName}
