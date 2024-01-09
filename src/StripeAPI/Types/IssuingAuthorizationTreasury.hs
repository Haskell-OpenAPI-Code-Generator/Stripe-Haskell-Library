{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema IssuingAuthorizationTreasury
module StripeAPI.Types.IssuingAuthorizationTreasury where

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

-- | Defines the object schema located at @components.schemas.issuing_authorization_treasury@ in the specification.
data IssuingAuthorizationTreasury = IssuingAuthorizationTreasury
  { -- | received_credits: The array of [ReceivedCredits](https:\/\/stripe.com\/docs\/api\/treasury\/received_credits) associated with this authorization
    issuingAuthorizationTreasuryReceivedCredits :: ([Data.Text.Internal.Text]),
    -- | received_debits: The array of [ReceivedDebits](https:\/\/stripe.com\/docs\/api\/treasury\/received_debits) associated with this authorization
    issuingAuthorizationTreasuryReceivedDebits :: ([Data.Text.Internal.Text]),
    -- | transaction: The Treasury [Transaction](https:\/\/stripe.com\/docs\/api\/treasury\/transactions) associated with this authorization
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    issuingAuthorizationTreasuryTransaction :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON IssuingAuthorizationTreasury where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["received_credits" Data.Aeson.Types.ToJSON..= issuingAuthorizationTreasuryReceivedCredits obj] : ["received_debits" Data.Aeson.Types.ToJSON..= issuingAuthorizationTreasuryReceivedDebits obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transaction" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationTreasuryTransaction obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["received_credits" Data.Aeson.Types.ToJSON..= issuingAuthorizationTreasuryReceivedCredits obj] : ["received_debits" Data.Aeson.Types.ToJSON..= issuingAuthorizationTreasuryReceivedDebits obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transaction" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationTreasuryTransaction obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON IssuingAuthorizationTreasury where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingAuthorizationTreasury" (\obj -> ((GHC.Base.pure IssuingAuthorizationTreasury GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "received_credits")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "received_debits")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "transaction"))

-- | Create a new 'IssuingAuthorizationTreasury' with all required fields.
mkIssuingAuthorizationTreasury ::
  -- | 'issuingAuthorizationTreasuryReceivedCredits'
  [Data.Text.Internal.Text] ->
  -- | 'issuingAuthorizationTreasuryReceivedDebits'
  [Data.Text.Internal.Text] ->
  IssuingAuthorizationTreasury
mkIssuingAuthorizationTreasury issuingAuthorizationTreasuryReceivedCredits issuingAuthorizationTreasuryReceivedDebits =
  IssuingAuthorizationTreasury
    { issuingAuthorizationTreasuryReceivedCredits = issuingAuthorizationTreasuryReceivedCredits,
      issuingAuthorizationTreasuryReceivedDebits = issuingAuthorizationTreasuryReceivedDebits,
      issuingAuthorizationTreasuryTransaction = GHC.Maybe.Nothing
    }
