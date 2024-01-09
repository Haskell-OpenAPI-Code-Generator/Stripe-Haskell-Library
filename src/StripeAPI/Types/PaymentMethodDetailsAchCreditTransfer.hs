{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodDetailsAchCreditTransfer
module StripeAPI.Types.PaymentMethodDetailsAchCreditTransfer where

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

-- | Defines the object schema located at @components.schemas.payment_method_details_ach_credit_transfer@ in the specification.
data PaymentMethodDetailsAchCreditTransfer = PaymentMethodDetailsAchCreditTransfer
  { -- | account_number: Account number to transfer funds to.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsAchCreditTransferAccountNumber :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | bank_name: Name of the bank associated with the routing number.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsAchCreditTransferBankName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | routing_number: Routing transit number for the bank account to transfer funds to.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsAchCreditTransferRoutingNumber :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | swift_code: SWIFT code of the bank associated with the routing number.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsAchCreditTransferSwiftCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsAchCreditTransfer where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_number" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsAchCreditTransferAccountNumber obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_name" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsAchCreditTransferBankName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("routing_number" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsAchCreditTransferRoutingNumber obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("swift_code" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsAchCreditTransferSwiftCode obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_number" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsAchCreditTransferAccountNumber obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_name" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsAchCreditTransferBankName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("routing_number" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsAchCreditTransferRoutingNumber obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("swift_code" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsAchCreditTransferSwiftCode obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsAchCreditTransfer where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsAchCreditTransfer" (\obj -> (((GHC.Base.pure PaymentMethodDetailsAchCreditTransfer GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "routing_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "swift_code"))

-- | Create a new 'PaymentMethodDetailsAchCreditTransfer' with all required fields.
mkPaymentMethodDetailsAchCreditTransfer :: PaymentMethodDetailsAchCreditTransfer
mkPaymentMethodDetailsAchCreditTransfer =
  PaymentMethodDetailsAchCreditTransfer
    { paymentMethodDetailsAchCreditTransferAccountNumber = GHC.Maybe.Nothing,
      paymentMethodDetailsAchCreditTransferBankName = GHC.Maybe.Nothing,
      paymentMethodDetailsAchCreditTransferRoutingNumber = GHC.Maybe.Nothing,
      paymentMethodDetailsAchCreditTransferSwiftCode = GHC.Maybe.Nothing
    }
