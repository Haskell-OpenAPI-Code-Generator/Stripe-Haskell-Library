{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema TreasuryFinancialAccountsResourceInboundTransfers
module StripeAPI.Types.TreasuryFinancialAccountsResourceInboundTransfers where

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
import {-# SOURCE #-} StripeAPI.Types.TreasuryFinancialAccountsResourceAchToggleSettings
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.treasury_financial_accounts_resource_inbound_transfers@ in the specification.
--
-- InboundTransfers contains inbound transfers features for a FinancialAccount.
data TreasuryFinancialAccountsResourceInboundTransfers = TreasuryFinancialAccountsResourceInboundTransfers
  { -- | ach: Toggle settings for enabling\/disabling an ACH specific feature
    treasuryFinancialAccountsResourceInboundTransfersAch :: (GHC.Maybe.Maybe TreasuryFinancialAccountsResourceAchToggleSettings)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON TreasuryFinancialAccountsResourceInboundTransfers where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ach" Data.Aeson.Types.ToJSON..=)) (treasuryFinancialAccountsResourceInboundTransfersAch obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ach" Data.Aeson.Types.ToJSON..=)) (treasuryFinancialAccountsResourceInboundTransfersAch obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON TreasuryFinancialAccountsResourceInboundTransfers where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "TreasuryFinancialAccountsResourceInboundTransfers" (\obj -> GHC.Base.pure TreasuryFinancialAccountsResourceInboundTransfers GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "ach"))

-- | Create a new 'TreasuryFinancialAccountsResourceInboundTransfers' with all required fields.
mkTreasuryFinancialAccountsResourceInboundTransfers :: TreasuryFinancialAccountsResourceInboundTransfers
mkTreasuryFinancialAccountsResourceInboundTransfers = TreasuryFinancialAccountsResourceInboundTransfers {treasuryFinancialAccountsResourceInboundTransfersAch = GHC.Maybe.Nothing}
