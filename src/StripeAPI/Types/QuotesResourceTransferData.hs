{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema QuotesResourceTransferData
module StripeAPI.Types.QuotesResourceTransferData where

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
import {-# SOURCE #-} StripeAPI.Types.Account
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.quotes_resource_transfer_data@ in the specification.
data QuotesResourceTransferData = QuotesResourceTransferData
  { -- | amount: The amount in cents (or local equivalent) that will be transferred to the destination account when the invoice is paid. By default, the entire amount is transferred to the destination.
    quotesResourceTransferDataAmount :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | amount_percent: A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount will be transferred to the destination.
    quotesResourceTransferDataAmountPercent :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Double)),
    -- | destination: The account where funds from the payment will be transferred to upon payment success.
    quotesResourceTransferDataDestination :: QuotesResourceTransferDataDestination'Variants
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON QuotesResourceTransferData where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (quotesResourceTransferDataAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_percent" Data.Aeson.Types.ToJSON..=)) (quotesResourceTransferDataAmountPercent obj) : ["destination" Data.Aeson.Types.ToJSON..= quotesResourceTransferDataDestination obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (quotesResourceTransferDataAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_percent" Data.Aeson.Types.ToJSON..=)) (quotesResourceTransferDataAmountPercent obj) : ["destination" Data.Aeson.Types.ToJSON..= quotesResourceTransferDataDestination obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON QuotesResourceTransferData where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "QuotesResourceTransferData" (\obj -> ((GHC.Base.pure QuotesResourceTransferData GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "destination"))

-- | Create a new 'QuotesResourceTransferData' with all required fields.
mkQuotesResourceTransferData ::
  -- | 'quotesResourceTransferDataDestination'
  QuotesResourceTransferDataDestination'Variants ->
  QuotesResourceTransferData
mkQuotesResourceTransferData quotesResourceTransferDataDestination =
  QuotesResourceTransferData
    { quotesResourceTransferDataAmount = GHC.Maybe.Nothing,
      quotesResourceTransferDataAmountPercent = GHC.Maybe.Nothing,
      quotesResourceTransferDataDestination = quotesResourceTransferDataDestination
    }

-- | Defines the oneOf schema located at @components.schemas.quotes_resource_transfer_data.properties.destination.anyOf@ in the specification.
--
-- The account where funds from the payment will be transferred to upon payment success.
data QuotesResourceTransferDataDestination'Variants
  = QuotesResourceTransferDataDestination'Text Data.Text.Internal.Text
  | QuotesResourceTransferDataDestination'Account Account
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON QuotesResourceTransferDataDestination'Variants where
  toJSON (QuotesResourceTransferDataDestination'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (QuotesResourceTransferDataDestination'Account a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON QuotesResourceTransferDataDestination'Variants where
  parseJSON val = case (QuotesResourceTransferDataDestination'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((QuotesResourceTransferDataDestination'Account Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
