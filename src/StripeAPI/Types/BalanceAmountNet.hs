{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema BalanceAmountNet
module StripeAPI.Types.BalanceAmountNet where

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
import {-# SOURCE #-} StripeAPI.Types.BalanceAmountBySourceType
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.balance_amount_net@ in the specification.
data BalanceAmountNet = BalanceAmountNet
  { -- | amount: Balance amount.
    balanceAmountNetAmount :: GHC.Types.Int,
    -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
    balanceAmountNetCurrency :: Data.Text.Internal.Text,
    -- | source_types:
    balanceAmountNetSourceTypes :: (GHC.Maybe.Maybe BalanceAmountBySourceType)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON BalanceAmountNet where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= balanceAmountNetAmount obj] : ["currency" Data.Aeson.Types.ToJSON..= balanceAmountNetCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("source_types" Data.Aeson.Types.ToJSON..=)) (balanceAmountNetSourceTypes obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= balanceAmountNetAmount obj] : ["currency" Data.Aeson.Types.ToJSON..= balanceAmountNetCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("source_types" Data.Aeson.Types.ToJSON..=)) (balanceAmountNetSourceTypes obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON BalanceAmountNet where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "BalanceAmountNet" (\obj -> ((GHC.Base.pure BalanceAmountNet GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "source_types"))

-- | Create a new 'BalanceAmountNet' with all required fields.
mkBalanceAmountNet ::
  -- | 'balanceAmountNetAmount'
  GHC.Types.Int ->
  -- | 'balanceAmountNetCurrency'
  Data.Text.Internal.Text ->
  BalanceAmountNet
mkBalanceAmountNet balanceAmountNetAmount balanceAmountNetCurrency =
  BalanceAmountNet
    { balanceAmountNetAmount = balanceAmountNetAmount,
      balanceAmountNetCurrency = balanceAmountNetCurrency,
      balanceAmountNetSourceTypes = GHC.Maybe.Nothing
    }
