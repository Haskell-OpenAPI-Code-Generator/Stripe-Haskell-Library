{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema DeletedCard
module StripeAPI.Types.DeletedCard where

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

-- | Defines the object schema located at @components.schemas.deleted_card@ in the specification.
data DeletedCard = DeletedCard
  { -- | currency: Three-letter [ISO code for the currency](https:\/\/stripe.com\/docs\/payouts) paid out to the bank account.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    deletedCardCurrency :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    deletedCardId :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON DeletedCard where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (deletedCardCurrency obj) : ["id" Data.Aeson.Types.ToJSON..= deletedCardId obj] : ["deleted" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.Bool GHC.Types.True] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "card"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (deletedCardCurrency obj) : ["id" Data.Aeson.Types.ToJSON..= deletedCardId obj] : ["deleted" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.Bool GHC.Types.True] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "card"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON DeletedCard where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedCard" (\obj -> (GHC.Base.pure DeletedCard GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id"))

-- | Create a new 'DeletedCard' with all required fields.
mkDeletedCard ::
  -- | 'deletedCardId'
  Data.Text.Internal.Text ->
  DeletedCard
mkDeletedCard deletedCardId =
  DeletedCard
    { deletedCardCurrency = GHC.Maybe.Nothing,
      deletedCardId = deletedCardId
    }
