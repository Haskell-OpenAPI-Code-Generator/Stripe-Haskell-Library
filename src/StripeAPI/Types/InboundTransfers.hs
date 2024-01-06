{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema InboundTransfers
module StripeAPI.Types.InboundTransfers where

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
import {-# SOURCE #-} StripeAPI.Types.InboundTransfersPaymentMethodDetailsUsBankAccount
import {-# SOURCE #-} StripeAPI.Types.TreasurySharedResourceBillingDetails
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.inbound_transfers@ in the specification.
data InboundTransfers = InboundTransfers
  { -- | billing_details:
    inboundTransfersBillingDetails :: TreasurySharedResourceBillingDetails,
    -- | us_bank_account:
    inboundTransfersUsBankAccount :: (GHC.Maybe.Maybe InboundTransfersPaymentMethodDetailsUsBankAccount)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON InboundTransfers where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["billing_details" Data.Aeson.Types.ToJSON..= inboundTransfersBillingDetails obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("us_bank_account" Data.Aeson.Types.ToJSON..=)) (inboundTransfersUsBankAccount obj) : ["type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "us_bank_account"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["billing_details" Data.Aeson.Types.ToJSON..= inboundTransfersBillingDetails obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("us_bank_account" Data.Aeson.Types.ToJSON..=)) (inboundTransfersUsBankAccount obj) : ["type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "us_bank_account"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON InboundTransfers where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "InboundTransfers" (\obj -> (GHC.Base.pure InboundTransfers GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "billing_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "us_bank_account"))

-- | Create a new 'InboundTransfers' with all required fields.
mkInboundTransfers ::
  -- | 'inboundTransfersBillingDetails'
  TreasurySharedResourceBillingDetails ->
  InboundTransfers
mkInboundTransfers inboundTransfersBillingDetails =
  InboundTransfers
    { inboundTransfersBillingDetails = inboundTransfersBillingDetails,
      inboundTransfersUsBankAccount = GHC.Maybe.Nothing
    }
