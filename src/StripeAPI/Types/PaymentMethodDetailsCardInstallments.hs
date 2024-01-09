{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodDetailsCardInstallments
module StripeAPI.Types.PaymentMethodDetailsCardInstallments where

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
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodDetailsCardInstallmentsPlan
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_method_details_card_installments@ in the specification.
data PaymentMethodDetailsCardInstallments = PaymentMethodDetailsCardInstallments
  { -- | plan: Installment plan selected for the payment.
    paymentMethodDetailsCardInstallmentsPlan :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodDetailsCardInstallmentsPlan'NonNullable))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsCardInstallments where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("plan" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardInstallmentsPlan obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("plan" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardInstallmentsPlan obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardInstallments where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsCardInstallments" (\obj -> GHC.Base.pure PaymentMethodDetailsCardInstallments GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "plan"))

-- | Create a new 'PaymentMethodDetailsCardInstallments' with all required fields.
mkPaymentMethodDetailsCardInstallments :: PaymentMethodDetailsCardInstallments
mkPaymentMethodDetailsCardInstallments = PaymentMethodDetailsCardInstallments {paymentMethodDetailsCardInstallmentsPlan = GHC.Maybe.Nothing}

-- | Defines the object schema located at @components.schemas.payment_method_details_card_installments.properties.plan.anyOf@ in the specification.
--
-- Installment plan selected for the payment.
data PaymentMethodDetailsCardInstallmentsPlan'NonNullable = PaymentMethodDetailsCardInstallmentsPlan'NonNullable
  { -- | count: For \`fixed_count\` installment plans, this is the number of installment payments your customer will make to their credit card.
    paymentMethodDetailsCardInstallmentsPlan'NonNullableCount :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | interval: For \`fixed_count\` installment plans, this is the interval between installment payments your customer will make to their credit card.
    -- One of \`month\`.
    paymentMethodDetailsCardInstallmentsPlan'NonNullableInterval :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodDetailsCardInstallmentsPlan'NonNullableInterval'NonNullable)),
    -- | type: Type of installment plan, one of \`fixed_count\`.
    paymentMethodDetailsCardInstallmentsPlan'NonNullableType :: (GHC.Maybe.Maybe PaymentMethodDetailsCardInstallmentsPlan'NonNullableType')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsCardInstallmentsPlan'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("count" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardInstallmentsPlan'NonNullableCount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("interval" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardInstallmentsPlan'NonNullableInterval obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardInstallmentsPlan'NonNullableType obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("count" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardInstallmentsPlan'NonNullableCount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("interval" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardInstallmentsPlan'NonNullableInterval obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardInstallmentsPlan'NonNullableType obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardInstallmentsPlan'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsCardInstallmentsPlan'NonNullable" (\obj -> ((GHC.Base.pure PaymentMethodDetailsCardInstallmentsPlan'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "type"))

-- | Create a new 'PaymentMethodDetailsCardInstallmentsPlan'NonNullable' with all required fields.
mkPaymentMethodDetailsCardInstallmentsPlan'NonNullable :: PaymentMethodDetailsCardInstallmentsPlan'NonNullable
mkPaymentMethodDetailsCardInstallmentsPlan'NonNullable =
  PaymentMethodDetailsCardInstallmentsPlan'NonNullable
    { paymentMethodDetailsCardInstallmentsPlan'NonNullableCount = GHC.Maybe.Nothing,
      paymentMethodDetailsCardInstallmentsPlan'NonNullableInterval = GHC.Maybe.Nothing,
      paymentMethodDetailsCardInstallmentsPlan'NonNullableType = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.payment_method_details_card_installments.properties.plan.anyOf.properties.interval@ in the specification.
--
-- For \`fixed_count\` installment plans, this is the interval between installment payments your customer will make to their credit card.
-- One of \`month\`.
data PaymentMethodDetailsCardInstallmentsPlan'NonNullableInterval'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodDetailsCardInstallmentsPlan'NonNullableInterval'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodDetailsCardInstallmentsPlan'NonNullableInterval'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"month"@
    PaymentMethodDetailsCardInstallmentsPlan'NonNullableInterval'NonNullableEnumMonth
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsCardInstallmentsPlan'NonNullableInterval'NonNullable where
  toJSON (PaymentMethodDetailsCardInstallmentsPlan'NonNullableInterval'NonNullableOther val) = val
  toJSON (PaymentMethodDetailsCardInstallmentsPlan'NonNullableInterval'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodDetailsCardInstallmentsPlan'NonNullableInterval'NonNullableEnumMonth) = "month"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardInstallmentsPlan'NonNullableInterval'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "month" -> PaymentMethodDetailsCardInstallmentsPlan'NonNullableInterval'NonNullableEnumMonth
            | GHC.Base.otherwise -> PaymentMethodDetailsCardInstallmentsPlan'NonNullableInterval'NonNullableOther val
      )

-- | Defines the enum schema located at @components.schemas.payment_method_details_card_installments.properties.plan.anyOf.properties.type@ in the specification.
--
-- Type of installment plan, one of \`fixed_count\`.
data PaymentMethodDetailsCardInstallmentsPlan'NonNullableType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodDetailsCardInstallmentsPlan'NonNullableType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodDetailsCardInstallmentsPlan'NonNullableType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"fixed_count"@
    PaymentMethodDetailsCardInstallmentsPlan'NonNullableType'EnumFixedCount
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsCardInstallmentsPlan'NonNullableType' where
  toJSON (PaymentMethodDetailsCardInstallmentsPlan'NonNullableType'Other val) = val
  toJSON (PaymentMethodDetailsCardInstallmentsPlan'NonNullableType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodDetailsCardInstallmentsPlan'NonNullableType'EnumFixedCount) = "fixed_count"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardInstallmentsPlan'NonNullableType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "fixed_count" -> PaymentMethodDetailsCardInstallmentsPlan'NonNullableType'EnumFixedCount
            | GHC.Base.otherwise -> PaymentMethodDetailsCardInstallmentsPlan'NonNullableType'Other val
      )
