{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema IssuingAuthorizationRequest
module StripeAPI.Types.IssuingAuthorizationRequest where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
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
import {-# SOURCE #-} StripeAPI.Types.IssuingAuthorizationAmountDetails
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.issuing_authorization_request@ in the specification.
data IssuingAuthorizationRequest = IssuingAuthorizationRequest
  { -- | amount: The \`pending_request.amount\` at the time of the request, presented in your card\'s currency and in the [smallest currency unit](https:\/\/stripe.com\/docs\/currencies\#zero-decimal). Stripe held this amount from your account to fund the authorization if the request was approved.
    issuingAuthorizationRequestAmount :: GHC.Types.Int,
    -- | amount_details: Detailed breakdown of amount components. These amounts are denominated in \`currency\` and in the [smallest currency unit](https:\/\/stripe.com\/docs\/currencies\#zero-decimal).
    issuingAuthorizationRequestAmountDetails :: (GHC.Maybe.Maybe IssuingAuthorizationRequestAmountDetails'),
    -- | approved: Whether this request was approved.
    issuingAuthorizationRequestApproved :: GHC.Types.Bool,
    -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
    issuingAuthorizationRequestCreated :: GHC.Types.Int,
    -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    issuingAuthorizationRequestCurrency :: Data.Text.Internal.Text,
    -- | merchant_amount: The \`pending_request.merchant_amount\` at the time of the request, presented in the \`merchant_currency\` and in the [smallest currency unit](https:\/\/stripe.com\/docs\/currencies\#zero-decimal).
    issuingAuthorizationRequestMerchantAmount :: GHC.Types.Int,
    -- | merchant_currency: The currency that was collected by the merchant and presented to the cardholder for the authorization. Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    issuingAuthorizationRequestMerchantCurrency :: Data.Text.Internal.Text,
    -- | reason: The reason for the approval or decline.
    issuingAuthorizationRequestReason :: IssuingAuthorizationRequestReason'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON IssuingAuthorizationRequest where
  toJSON obj = Data.Aeson.Types.Internal.object ("amount" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestAmount obj : "amount_details" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestAmountDetails obj : "approved" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestApproved obj : "created" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestCreated obj : "currency" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestCurrency obj : "merchant_amount" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestMerchantAmount obj : "merchant_currency" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestMerchantCurrency obj : "reason" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestReason obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("amount" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestAmount obj) GHC.Base.<> (("amount_details" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestAmountDetails obj) GHC.Base.<> (("approved" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestApproved obj) GHC.Base.<> (("created" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestCreated obj) GHC.Base.<> (("currency" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestCurrency obj) GHC.Base.<> (("merchant_amount" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestMerchantAmount obj) GHC.Base.<> (("merchant_currency" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestMerchantCurrency obj) GHC.Base.<> ("reason" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestReason obj))))))))

instance Data.Aeson.Types.FromJSON.FromJSON IssuingAuthorizationRequest where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingAuthorizationRequest" (\obj -> (((((((GHC.Base.pure IssuingAuthorizationRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "approved")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "merchant_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "merchant_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "reason"))

-- | Create a new 'IssuingAuthorizationRequest' with all required fields.
mkIssuingAuthorizationRequest ::
  -- | 'issuingAuthorizationRequestAmount'
  GHC.Types.Int ->
  -- | 'issuingAuthorizationRequestApproved'
  GHC.Types.Bool ->
  -- | 'issuingAuthorizationRequestCreated'
  GHC.Types.Int ->
  -- | 'issuingAuthorizationRequestCurrency'
  Data.Text.Internal.Text ->
  -- | 'issuingAuthorizationRequestMerchantAmount'
  GHC.Types.Int ->
  -- | 'issuingAuthorizationRequestMerchantCurrency'
  Data.Text.Internal.Text ->
  -- | 'issuingAuthorizationRequestReason'
  IssuingAuthorizationRequestReason' ->
  IssuingAuthorizationRequest
mkIssuingAuthorizationRequest issuingAuthorizationRequestAmount issuingAuthorizationRequestApproved issuingAuthorizationRequestCreated issuingAuthorizationRequestCurrency issuingAuthorizationRequestMerchantAmount issuingAuthorizationRequestMerchantCurrency issuingAuthorizationRequestReason =
  IssuingAuthorizationRequest
    { issuingAuthorizationRequestAmount = issuingAuthorizationRequestAmount,
      issuingAuthorizationRequestAmountDetails = GHC.Maybe.Nothing,
      issuingAuthorizationRequestApproved = issuingAuthorizationRequestApproved,
      issuingAuthorizationRequestCreated = issuingAuthorizationRequestCreated,
      issuingAuthorizationRequestCurrency = issuingAuthorizationRequestCurrency,
      issuingAuthorizationRequestMerchantAmount = issuingAuthorizationRequestMerchantAmount,
      issuingAuthorizationRequestMerchantCurrency = issuingAuthorizationRequestMerchantCurrency,
      issuingAuthorizationRequestReason = issuingAuthorizationRequestReason
    }

-- | Defines the object schema located at @components.schemas.issuing_authorization_request.properties.amount_details.anyOf@ in the specification.
--
-- Detailed breakdown of amount components. These amounts are denominated in \\\`currency\\\` and in the [smallest currency unit](https:\\\/\\\/stripe.com\\\/docs\\\/currencies\\\#zero-decimal).
data IssuingAuthorizationRequestAmountDetails' = IssuingAuthorizationRequestAmountDetails'
  { -- | atm_fee: The fee charged by the ATM for the cash withdrawal.
    issuingAuthorizationRequestAmountDetails'AtmFee :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON IssuingAuthorizationRequestAmountDetails' where
  toJSON obj = Data.Aeson.Types.Internal.object ("atm_fee" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestAmountDetails'AtmFee obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("atm_fee" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestAmountDetails'AtmFee obj)

instance Data.Aeson.Types.FromJSON.FromJSON IssuingAuthorizationRequestAmountDetails' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingAuthorizationRequestAmountDetails'" (\obj -> GHC.Base.pure IssuingAuthorizationRequestAmountDetails' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "atm_fee"))

-- | Create a new 'IssuingAuthorizationRequestAmountDetails'' with all required fields.
mkIssuingAuthorizationRequestAmountDetails' :: IssuingAuthorizationRequestAmountDetails'
mkIssuingAuthorizationRequestAmountDetails' = IssuingAuthorizationRequestAmountDetails' {issuingAuthorizationRequestAmountDetails'AtmFee = GHC.Maybe.Nothing}

-- | Defines the enum schema located at @components.schemas.issuing_authorization_request.properties.reason@ in the specification.
--
-- The reason for the approval or decline.
data IssuingAuthorizationRequestReason'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    IssuingAuthorizationRequestReason'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    IssuingAuthorizationRequestReason'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"account_disabled"@
    IssuingAuthorizationRequestReason'EnumAccountDisabled
  | -- | Represents the JSON value @"card_active"@
    IssuingAuthorizationRequestReason'EnumCardActive
  | -- | Represents the JSON value @"card_inactive"@
    IssuingAuthorizationRequestReason'EnumCardInactive
  | -- | Represents the JSON value @"cardholder_inactive"@
    IssuingAuthorizationRequestReason'EnumCardholderInactive
  | -- | Represents the JSON value @"cardholder_verification_required"@
    IssuingAuthorizationRequestReason'EnumCardholderVerificationRequired
  | -- | Represents the JSON value @"insufficient_funds"@
    IssuingAuthorizationRequestReason'EnumInsufficientFunds
  | -- | Represents the JSON value @"not_allowed"@
    IssuingAuthorizationRequestReason'EnumNotAllowed
  | -- | Represents the JSON value @"spending_controls"@
    IssuingAuthorizationRequestReason'EnumSpendingControls
  | -- | Represents the JSON value @"suspected_fraud"@
    IssuingAuthorizationRequestReason'EnumSuspectedFraud
  | -- | Represents the JSON value @"verification_failed"@
    IssuingAuthorizationRequestReason'EnumVerificationFailed
  | -- | Represents the JSON value @"webhook_approved"@
    IssuingAuthorizationRequestReason'EnumWebhookApproved
  | -- | Represents the JSON value @"webhook_declined"@
    IssuingAuthorizationRequestReason'EnumWebhookDeclined
  | -- | Represents the JSON value @"webhook_timeout"@
    IssuingAuthorizationRequestReason'EnumWebhookTimeout
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON IssuingAuthorizationRequestReason' where
  toJSON (IssuingAuthorizationRequestReason'Other val) = val
  toJSON (IssuingAuthorizationRequestReason'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (IssuingAuthorizationRequestReason'EnumAccountDisabled) = "account_disabled"
  toJSON (IssuingAuthorizationRequestReason'EnumCardActive) = "card_active"
  toJSON (IssuingAuthorizationRequestReason'EnumCardInactive) = "card_inactive"
  toJSON (IssuingAuthorizationRequestReason'EnumCardholderInactive) = "cardholder_inactive"
  toJSON (IssuingAuthorizationRequestReason'EnumCardholderVerificationRequired) = "cardholder_verification_required"
  toJSON (IssuingAuthorizationRequestReason'EnumInsufficientFunds) = "insufficient_funds"
  toJSON (IssuingAuthorizationRequestReason'EnumNotAllowed) = "not_allowed"
  toJSON (IssuingAuthorizationRequestReason'EnumSpendingControls) = "spending_controls"
  toJSON (IssuingAuthorizationRequestReason'EnumSuspectedFraud) = "suspected_fraud"
  toJSON (IssuingAuthorizationRequestReason'EnumVerificationFailed) = "verification_failed"
  toJSON (IssuingAuthorizationRequestReason'EnumWebhookApproved) = "webhook_approved"
  toJSON (IssuingAuthorizationRequestReason'EnumWebhookDeclined) = "webhook_declined"
  toJSON (IssuingAuthorizationRequestReason'EnumWebhookTimeout) = "webhook_timeout"

instance Data.Aeson.Types.FromJSON.FromJSON IssuingAuthorizationRequestReason' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "account_disabled" -> IssuingAuthorizationRequestReason'EnumAccountDisabled
            | val GHC.Classes.== "card_active" -> IssuingAuthorizationRequestReason'EnumCardActive
            | val GHC.Classes.== "card_inactive" -> IssuingAuthorizationRequestReason'EnumCardInactive
            | val GHC.Classes.== "cardholder_inactive" -> IssuingAuthorizationRequestReason'EnumCardholderInactive
            | val GHC.Classes.== "cardholder_verification_required" -> IssuingAuthorizationRequestReason'EnumCardholderVerificationRequired
            | val GHC.Classes.== "insufficient_funds" -> IssuingAuthorizationRequestReason'EnumInsufficientFunds
            | val GHC.Classes.== "not_allowed" -> IssuingAuthorizationRequestReason'EnumNotAllowed
            | val GHC.Classes.== "spending_controls" -> IssuingAuthorizationRequestReason'EnumSpendingControls
            | val GHC.Classes.== "suspected_fraud" -> IssuingAuthorizationRequestReason'EnumSuspectedFraud
            | val GHC.Classes.== "verification_failed" -> IssuingAuthorizationRequestReason'EnumVerificationFailed
            | val GHC.Classes.== "webhook_approved" -> IssuingAuthorizationRequestReason'EnumWebhookApproved
            | val GHC.Classes.== "webhook_declined" -> IssuingAuthorizationRequestReason'EnumWebhookDeclined
            | val GHC.Classes.== "webhook_timeout" -> IssuingAuthorizationRequestReason'EnumWebhookTimeout
            | GHC.Base.otherwise -> IssuingAuthorizationRequestReason'Other val
      )
