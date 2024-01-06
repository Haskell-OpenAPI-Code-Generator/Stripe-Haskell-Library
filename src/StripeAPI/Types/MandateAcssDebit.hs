{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema MandateAcssDebit
module StripeAPI.Types.MandateAcssDebit where

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

-- | Defines the object schema located at @components.schemas.mandate_acss_debit@ in the specification.
data MandateAcssDebit = MandateAcssDebit
  { -- | default_for: List of Stripe products where this mandate can be selected automatically.
    mandateAcssDebitDefaultFor :: (GHC.Maybe.Maybe ([MandateAcssDebitDefaultFor'])),
    -- | interval_description: Description of the interval. Only required if the \'payment_schedule\' parameter is \'interval\' or \'combined\'.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    mandateAcssDebitIntervalDescription :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | payment_schedule: Payment schedule for the mandate.
    mandateAcssDebitPaymentSchedule :: MandateAcssDebitPaymentSchedule',
    -- | transaction_type: Transaction type of the mandate.
    mandateAcssDebitTransactionType :: MandateAcssDebitTransactionType'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON MandateAcssDebit where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_for" Data.Aeson.Types.ToJSON..=)) (mandateAcssDebitDefaultFor obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("interval_description" Data.Aeson.Types.ToJSON..=)) (mandateAcssDebitIntervalDescription obj) : ["payment_schedule" Data.Aeson.Types.ToJSON..= mandateAcssDebitPaymentSchedule obj] : ["transaction_type" Data.Aeson.Types.ToJSON..= mandateAcssDebitTransactionType obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_for" Data.Aeson.Types.ToJSON..=)) (mandateAcssDebitDefaultFor obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("interval_description" Data.Aeson.Types.ToJSON..=)) (mandateAcssDebitIntervalDescription obj) : ["payment_schedule" Data.Aeson.Types.ToJSON..= mandateAcssDebitPaymentSchedule obj] : ["transaction_type" Data.Aeson.Types.ToJSON..= mandateAcssDebitTransactionType obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON MandateAcssDebit where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "MandateAcssDebit" (\obj -> (((GHC.Base.pure MandateAcssDebit GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "default_for")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "interval_description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "payment_schedule")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "transaction_type"))

-- | Create a new 'MandateAcssDebit' with all required fields.
mkMandateAcssDebit ::
  -- | 'mandateAcssDebitPaymentSchedule'
  MandateAcssDebitPaymentSchedule' ->
  -- | 'mandateAcssDebitTransactionType'
  MandateAcssDebitTransactionType' ->
  MandateAcssDebit
mkMandateAcssDebit mandateAcssDebitPaymentSchedule mandateAcssDebitTransactionType =
  MandateAcssDebit
    { mandateAcssDebitDefaultFor = GHC.Maybe.Nothing,
      mandateAcssDebitIntervalDescription = GHC.Maybe.Nothing,
      mandateAcssDebitPaymentSchedule = mandateAcssDebitPaymentSchedule,
      mandateAcssDebitTransactionType = mandateAcssDebitTransactionType
    }

-- | Defines the enum schema located at @components.schemas.mandate_acss_debit.properties.default_for.items@ in the specification.
data MandateAcssDebitDefaultFor'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    MandateAcssDebitDefaultFor'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    MandateAcssDebitDefaultFor'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"invoice"@
    MandateAcssDebitDefaultFor'EnumInvoice
  | -- | Represents the JSON value @"subscription"@
    MandateAcssDebitDefaultFor'EnumSubscription
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON MandateAcssDebitDefaultFor' where
  toJSON (MandateAcssDebitDefaultFor'Other val) = val
  toJSON (MandateAcssDebitDefaultFor'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (MandateAcssDebitDefaultFor'EnumInvoice) = "invoice"
  toJSON (MandateAcssDebitDefaultFor'EnumSubscription) = "subscription"

instance Data.Aeson.Types.FromJSON.FromJSON MandateAcssDebitDefaultFor' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "invoice" -> MandateAcssDebitDefaultFor'EnumInvoice
            | val GHC.Classes.== "subscription" -> MandateAcssDebitDefaultFor'EnumSubscription
            | GHC.Base.otherwise -> MandateAcssDebitDefaultFor'Other val
      )

-- | Defines the enum schema located at @components.schemas.mandate_acss_debit.properties.payment_schedule@ in the specification.
--
-- Payment schedule for the mandate.
data MandateAcssDebitPaymentSchedule'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    MandateAcssDebitPaymentSchedule'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    MandateAcssDebitPaymentSchedule'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"combined"@
    MandateAcssDebitPaymentSchedule'EnumCombined
  | -- | Represents the JSON value @"interval"@
    MandateAcssDebitPaymentSchedule'EnumInterval
  | -- | Represents the JSON value @"sporadic"@
    MandateAcssDebitPaymentSchedule'EnumSporadic
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON MandateAcssDebitPaymentSchedule' where
  toJSON (MandateAcssDebitPaymentSchedule'Other val) = val
  toJSON (MandateAcssDebitPaymentSchedule'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (MandateAcssDebitPaymentSchedule'EnumCombined) = "combined"
  toJSON (MandateAcssDebitPaymentSchedule'EnumInterval) = "interval"
  toJSON (MandateAcssDebitPaymentSchedule'EnumSporadic) = "sporadic"

instance Data.Aeson.Types.FromJSON.FromJSON MandateAcssDebitPaymentSchedule' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "combined" -> MandateAcssDebitPaymentSchedule'EnumCombined
            | val GHC.Classes.== "interval" -> MandateAcssDebitPaymentSchedule'EnumInterval
            | val GHC.Classes.== "sporadic" -> MandateAcssDebitPaymentSchedule'EnumSporadic
            | GHC.Base.otherwise -> MandateAcssDebitPaymentSchedule'Other val
      )

-- | Defines the enum schema located at @components.schemas.mandate_acss_debit.properties.transaction_type@ in the specification.
--
-- Transaction type of the mandate.
data MandateAcssDebitTransactionType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    MandateAcssDebitTransactionType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    MandateAcssDebitTransactionType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"business"@
    MandateAcssDebitTransactionType'EnumBusiness
  | -- | Represents the JSON value @"personal"@
    MandateAcssDebitTransactionType'EnumPersonal
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON MandateAcssDebitTransactionType' where
  toJSON (MandateAcssDebitTransactionType'Other val) = val
  toJSON (MandateAcssDebitTransactionType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (MandateAcssDebitTransactionType'EnumBusiness) = "business"
  toJSON (MandateAcssDebitTransactionType'EnumPersonal) = "personal"

instance Data.Aeson.Types.FromJSON.FromJSON MandateAcssDebitTransactionType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "business" -> MandateAcssDebitTransactionType'EnumBusiness
            | val GHC.Classes.== "personal" -> MandateAcssDebitTransactionType'EnumPersonal
            | GHC.Base.otherwise -> MandateAcssDebitTransactionType'Other val
      )
