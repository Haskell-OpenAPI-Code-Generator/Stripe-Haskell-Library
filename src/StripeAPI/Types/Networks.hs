{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Networks
module StripeAPI.Types.Networks where

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

-- | Defines the object schema located at @components.schemas.networks@ in the specification.
data Networks = Networks
  { -- | available: All available networks for the card.
    networksAvailable :: ([Data.Text.Internal.Text]),
    -- | preferred: The preferred network for the card.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    networksPreferred :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Networks where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["available" Data.Aeson.Types.ToJSON..= networksAvailable obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("preferred" Data.Aeson.Types.ToJSON..=)) (networksPreferred obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["available" Data.Aeson.Types.ToJSON..= networksAvailable obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("preferred" Data.Aeson.Types.ToJSON..=)) (networksPreferred obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON Networks where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Networks" (\obj -> (GHC.Base.pure Networks GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "available")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "preferred"))

-- | Create a new 'Networks' with all required fields.
mkNetworks ::
  -- | 'networksAvailable'
  [Data.Text.Internal.Text] ->
  Networks
mkNetworks networksAvailable =
  Networks
    { networksAvailable = networksAvailable,
      networksPreferred = GHC.Maybe.Nothing
    }
