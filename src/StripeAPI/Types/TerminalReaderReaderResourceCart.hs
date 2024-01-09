{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema TerminalReaderReaderResourceCart
module StripeAPI.Types.TerminalReaderReaderResourceCart where

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
import {-# SOURCE #-} StripeAPI.Types.TerminalReaderReaderResourceLineItem
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.terminal_reader_reader_resource_cart@ in the specification.
--
-- Represents a cart to be displayed on the reader
data TerminalReaderReaderResourceCart = TerminalReaderReaderResourceCart
  { -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
    terminalReaderReaderResourceCartCurrency :: Data.Text.Internal.Text,
    -- | line_items: List of line items in the cart.
    terminalReaderReaderResourceCartLineItems :: ([TerminalReaderReaderResourceLineItem]),
    -- | tax: Tax amount for the entire cart. A positive integer in the [smallest currency unit](https:\/\/stripe.com\/docs\/currencies\#zero-decimal).
    terminalReaderReaderResourceCartTax :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | total: Total amount for the entire cart, including tax. A positive integer in the [smallest currency unit](https:\/\/stripe.com\/docs\/currencies\#zero-decimal).
    terminalReaderReaderResourceCartTotal :: GHC.Types.Int
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON TerminalReaderReaderResourceCart where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["currency" Data.Aeson.Types.ToJSON..= terminalReaderReaderResourceCartCurrency obj] : ["line_items" Data.Aeson.Types.ToJSON..= terminalReaderReaderResourceCartLineItems obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceCartTax obj) : ["total" Data.Aeson.Types.ToJSON..= terminalReaderReaderResourceCartTotal obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["currency" Data.Aeson.Types.ToJSON..= terminalReaderReaderResourceCartCurrency obj] : ["line_items" Data.Aeson.Types.ToJSON..= terminalReaderReaderResourceCartLineItems obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceCartTax obj) : ["total" Data.Aeson.Types.ToJSON..= terminalReaderReaderResourceCartTotal obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON TerminalReaderReaderResourceCart where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "TerminalReaderReaderResourceCart" (\obj -> (((GHC.Base.pure TerminalReaderReaderResourceCart GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "line_items")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "tax")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "total"))

-- | Create a new 'TerminalReaderReaderResourceCart' with all required fields.
mkTerminalReaderReaderResourceCart ::
  -- | 'terminalReaderReaderResourceCartCurrency'
  Data.Text.Internal.Text ->
  -- | 'terminalReaderReaderResourceCartLineItems'
  [TerminalReaderReaderResourceLineItem] ->
  -- | 'terminalReaderReaderResourceCartTotal'
  GHC.Types.Int ->
  TerminalReaderReaderResourceCart
mkTerminalReaderReaderResourceCart terminalReaderReaderResourceCartCurrency terminalReaderReaderResourceCartLineItems terminalReaderReaderResourceCartTotal =
  TerminalReaderReaderResourceCart
    { terminalReaderReaderResourceCartCurrency = terminalReaderReaderResourceCartCurrency,
      terminalReaderReaderResourceCartLineItems = terminalReaderReaderResourceCartLineItems,
      terminalReaderReaderResourceCartTax = GHC.Maybe.Nothing,
      terminalReaderReaderResourceCartTotal = terminalReaderReaderResourceCartTotal
    }
