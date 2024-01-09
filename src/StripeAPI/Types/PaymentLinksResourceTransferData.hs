{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentLinksResourceTransferData
module StripeAPI.Types.PaymentLinksResourceTransferData where

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
import {-# SOURCE #-} StripeAPI.Types.Account
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_links_resource_transfer_data@ in the specification.
data PaymentLinksResourceTransferData = PaymentLinksResourceTransferData
  { -- | amount: The amount in cents (or local equivalent) that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
    paymentLinksResourceTransferDataAmount :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | destination: The connected account receiving the transfer.
    paymentLinksResourceTransferDataDestination :: PaymentLinksResourceTransferDataDestination'Variants
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentLinksResourceTransferData where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (paymentLinksResourceTransferDataAmount obj) : ["destination" Data.Aeson.Types.ToJSON..= paymentLinksResourceTransferDataDestination obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (paymentLinksResourceTransferDataAmount obj) : ["destination" Data.Aeson.Types.ToJSON..= paymentLinksResourceTransferDataDestination obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentLinksResourceTransferData where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentLinksResourceTransferData" (\obj -> (GHC.Base.pure PaymentLinksResourceTransferData GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "destination"))

-- | Create a new 'PaymentLinksResourceTransferData' with all required fields.
mkPaymentLinksResourceTransferData ::
  -- | 'paymentLinksResourceTransferDataDestination'
  PaymentLinksResourceTransferDataDestination'Variants ->
  PaymentLinksResourceTransferData
mkPaymentLinksResourceTransferData paymentLinksResourceTransferDataDestination =
  PaymentLinksResourceTransferData
    { paymentLinksResourceTransferDataAmount = GHC.Maybe.Nothing,
      paymentLinksResourceTransferDataDestination = paymentLinksResourceTransferDataDestination
    }

-- | Defines the oneOf schema located at @components.schemas.payment_links_resource_transfer_data.properties.destination.anyOf@ in the specification.
--
-- The connected account receiving the transfer.
data PaymentLinksResourceTransferDataDestination'Variants
  = PaymentLinksResourceTransferDataDestination'Text Data.Text.Internal.Text
  | PaymentLinksResourceTransferDataDestination'Account Account
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentLinksResourceTransferDataDestination'Variants where
  toJSON (PaymentLinksResourceTransferDataDestination'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PaymentLinksResourceTransferDataDestination'Account a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON PaymentLinksResourceTransferDataDestination'Variants where
  parseJSON val = case (PaymentLinksResourceTransferDataDestination'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PaymentLinksResourceTransferDataDestination'Account Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
