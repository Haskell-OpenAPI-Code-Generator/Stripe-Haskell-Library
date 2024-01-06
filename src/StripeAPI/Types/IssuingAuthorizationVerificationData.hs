{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema IssuingAuthorizationVerificationData
module StripeAPI.Types.IssuingAuthorizationVerificationData where

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
import {-# SOURCE #-} StripeAPI.Types.IssuingAuthorizationAuthenticationExemption
import {-# SOURCE #-} StripeAPI.Types.IssuingAuthorizationThreeDSecure
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.issuing_authorization_verification_data@ in the specification.
data IssuingAuthorizationVerificationData = IssuingAuthorizationVerificationData
  { -- | address_line1_check: Whether the cardholder provided an address first line and if it matched the cardholder’s \`billing.address.line1\`.
    issuingAuthorizationVerificationDataAddressLine1Check :: IssuingAuthorizationVerificationDataAddressLine1Check',
    -- | address_postal_code_check: Whether the cardholder provided a postal code and if it matched the cardholder’s \`billing.address.postal_code\`.
    issuingAuthorizationVerificationDataAddressPostalCodeCheck :: IssuingAuthorizationVerificationDataAddressPostalCodeCheck',
    -- | authentication_exemption: The exemption applied to this authorization.
    issuingAuthorizationVerificationDataAuthenticationExemption :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullable)),
    -- | cvc_check: Whether the cardholder provided a CVC and if it matched Stripe’s record.
    issuingAuthorizationVerificationDataCvcCheck :: IssuingAuthorizationVerificationDataCvcCheck',
    -- | expiry_check: Whether the cardholder provided an expiry date and if it matched Stripe’s record.
    issuingAuthorizationVerificationDataExpiryCheck :: IssuingAuthorizationVerificationDataExpiryCheck',
    -- | postal_code: The postal code submitted as part of the authorization used for postal code verification.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    issuingAuthorizationVerificationDataPostalCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | three_d_secure: 3D Secure details.
    issuingAuthorizationVerificationDataThreeDSecure :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable IssuingAuthorizationVerificationDataThreeDSecure'NonNullable))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON IssuingAuthorizationVerificationData where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["address_line1_check" Data.Aeson.Types.ToJSON..= issuingAuthorizationVerificationDataAddressLine1Check obj] : ["address_postal_code_check" Data.Aeson.Types.ToJSON..= issuingAuthorizationVerificationDataAddressPostalCodeCheck obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authentication_exemption" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationVerificationDataAuthenticationExemption obj) : ["cvc_check" Data.Aeson.Types.ToJSON..= issuingAuthorizationVerificationDataCvcCheck obj] : ["expiry_check" Data.Aeson.Types.ToJSON..= issuingAuthorizationVerificationDataExpiryCheck obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationVerificationDataPostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("three_d_secure" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationVerificationDataThreeDSecure obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["address_line1_check" Data.Aeson.Types.ToJSON..= issuingAuthorizationVerificationDataAddressLine1Check obj] : ["address_postal_code_check" Data.Aeson.Types.ToJSON..= issuingAuthorizationVerificationDataAddressPostalCodeCheck obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authentication_exemption" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationVerificationDataAuthenticationExemption obj) : ["cvc_check" Data.Aeson.Types.ToJSON..= issuingAuthorizationVerificationDataCvcCheck obj] : ["expiry_check" Data.Aeson.Types.ToJSON..= issuingAuthorizationVerificationDataExpiryCheck obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationVerificationDataPostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("three_d_secure" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationVerificationDataThreeDSecure obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON IssuingAuthorizationVerificationData where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingAuthorizationVerificationData" (\obj -> ((((((GHC.Base.pure IssuingAuthorizationVerificationData GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address_line1_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address_postal_code_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "authentication_exemption")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "cvc_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "expiry_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "three_d_secure"))

-- | Create a new 'IssuingAuthorizationVerificationData' with all required fields.
mkIssuingAuthorizationVerificationData ::
  -- | 'issuingAuthorizationVerificationDataAddressLine1Check'
  IssuingAuthorizationVerificationDataAddressLine1Check' ->
  -- | 'issuingAuthorizationVerificationDataAddressPostalCodeCheck'
  IssuingAuthorizationVerificationDataAddressPostalCodeCheck' ->
  -- | 'issuingAuthorizationVerificationDataCvcCheck'
  IssuingAuthorizationVerificationDataCvcCheck' ->
  -- | 'issuingAuthorizationVerificationDataExpiryCheck'
  IssuingAuthorizationVerificationDataExpiryCheck' ->
  IssuingAuthorizationVerificationData
mkIssuingAuthorizationVerificationData issuingAuthorizationVerificationDataAddressLine1Check issuingAuthorizationVerificationDataAddressPostalCodeCheck issuingAuthorizationVerificationDataCvcCheck issuingAuthorizationVerificationDataExpiryCheck =
  IssuingAuthorizationVerificationData
    { issuingAuthorizationVerificationDataAddressLine1Check = issuingAuthorizationVerificationDataAddressLine1Check,
      issuingAuthorizationVerificationDataAddressPostalCodeCheck = issuingAuthorizationVerificationDataAddressPostalCodeCheck,
      issuingAuthorizationVerificationDataAuthenticationExemption = GHC.Maybe.Nothing,
      issuingAuthorizationVerificationDataCvcCheck = issuingAuthorizationVerificationDataCvcCheck,
      issuingAuthorizationVerificationDataExpiryCheck = issuingAuthorizationVerificationDataExpiryCheck,
      issuingAuthorizationVerificationDataPostalCode = GHC.Maybe.Nothing,
      issuingAuthorizationVerificationDataThreeDSecure = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.issuing_authorization_verification_data.properties.address_line1_check@ in the specification.
--
-- Whether the cardholder provided an address first line and if it matched the cardholder’s \`billing.address.line1\`.
data IssuingAuthorizationVerificationDataAddressLine1Check'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    IssuingAuthorizationVerificationDataAddressLine1Check'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    IssuingAuthorizationVerificationDataAddressLine1Check'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"match"@
    IssuingAuthorizationVerificationDataAddressLine1Check'EnumMatch
  | -- | Represents the JSON value @"mismatch"@
    IssuingAuthorizationVerificationDataAddressLine1Check'EnumMismatch
  | -- | Represents the JSON value @"not_provided"@
    IssuingAuthorizationVerificationDataAddressLine1Check'EnumNotProvided
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON IssuingAuthorizationVerificationDataAddressLine1Check' where
  toJSON (IssuingAuthorizationVerificationDataAddressLine1Check'Other val) = val
  toJSON (IssuingAuthorizationVerificationDataAddressLine1Check'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (IssuingAuthorizationVerificationDataAddressLine1Check'EnumMatch) = "match"
  toJSON (IssuingAuthorizationVerificationDataAddressLine1Check'EnumMismatch) = "mismatch"
  toJSON (IssuingAuthorizationVerificationDataAddressLine1Check'EnumNotProvided) = "not_provided"

instance Data.Aeson.Types.FromJSON.FromJSON IssuingAuthorizationVerificationDataAddressLine1Check' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "match" -> IssuingAuthorizationVerificationDataAddressLine1Check'EnumMatch
            | val GHC.Classes.== "mismatch" -> IssuingAuthorizationVerificationDataAddressLine1Check'EnumMismatch
            | val GHC.Classes.== "not_provided" -> IssuingAuthorizationVerificationDataAddressLine1Check'EnumNotProvided
            | GHC.Base.otherwise -> IssuingAuthorizationVerificationDataAddressLine1Check'Other val
      )

-- | Defines the enum schema located at @components.schemas.issuing_authorization_verification_data.properties.address_postal_code_check@ in the specification.
--
-- Whether the cardholder provided a postal code and if it matched the cardholder’s \`billing.address.postal_code\`.
data IssuingAuthorizationVerificationDataAddressPostalCodeCheck'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    IssuingAuthorizationVerificationDataAddressPostalCodeCheck'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    IssuingAuthorizationVerificationDataAddressPostalCodeCheck'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"match"@
    IssuingAuthorizationVerificationDataAddressPostalCodeCheck'EnumMatch
  | -- | Represents the JSON value @"mismatch"@
    IssuingAuthorizationVerificationDataAddressPostalCodeCheck'EnumMismatch
  | -- | Represents the JSON value @"not_provided"@
    IssuingAuthorizationVerificationDataAddressPostalCodeCheck'EnumNotProvided
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON IssuingAuthorizationVerificationDataAddressPostalCodeCheck' where
  toJSON (IssuingAuthorizationVerificationDataAddressPostalCodeCheck'Other val) = val
  toJSON (IssuingAuthorizationVerificationDataAddressPostalCodeCheck'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (IssuingAuthorizationVerificationDataAddressPostalCodeCheck'EnumMatch) = "match"
  toJSON (IssuingAuthorizationVerificationDataAddressPostalCodeCheck'EnumMismatch) = "mismatch"
  toJSON (IssuingAuthorizationVerificationDataAddressPostalCodeCheck'EnumNotProvided) = "not_provided"

instance Data.Aeson.Types.FromJSON.FromJSON IssuingAuthorizationVerificationDataAddressPostalCodeCheck' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "match" -> IssuingAuthorizationVerificationDataAddressPostalCodeCheck'EnumMatch
            | val GHC.Classes.== "mismatch" -> IssuingAuthorizationVerificationDataAddressPostalCodeCheck'EnumMismatch
            | val GHC.Classes.== "not_provided" -> IssuingAuthorizationVerificationDataAddressPostalCodeCheck'EnumNotProvided
            | GHC.Base.otherwise -> IssuingAuthorizationVerificationDataAddressPostalCodeCheck'Other val
      )

-- | Defines the object schema located at @components.schemas.issuing_authorization_verification_data.properties.authentication_exemption.anyOf@ in the specification.
--
-- The exemption applied to this authorization.
data IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullable = IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullable
  { -- | claimed_by: The entity that requested the exemption, either the acquiring merchant or the Issuing user.
    issuingAuthorizationVerificationDataAuthenticationExemption'NonNullableClaimedBy :: (GHC.Maybe.Maybe IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableClaimedBy'),
    -- | type: The specific exemption claimed for this authorization.
    issuingAuthorizationVerificationDataAuthenticationExemption'NonNullableType :: (GHC.Maybe.Maybe IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableType')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("claimed_by" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationVerificationDataAuthenticationExemption'NonNullableClaimedBy obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationVerificationDataAuthenticationExemption'NonNullableType obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("claimed_by" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationVerificationDataAuthenticationExemption'NonNullableClaimedBy obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationVerificationDataAuthenticationExemption'NonNullableType obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullable" (\obj -> (GHC.Base.pure IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "claimed_by")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "type"))

-- | Create a new 'IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullable' with all required fields.
mkIssuingAuthorizationVerificationDataAuthenticationExemption'NonNullable :: IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullable
mkIssuingAuthorizationVerificationDataAuthenticationExemption'NonNullable =
  IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullable
    { issuingAuthorizationVerificationDataAuthenticationExemption'NonNullableClaimedBy = GHC.Maybe.Nothing,
      issuingAuthorizationVerificationDataAuthenticationExemption'NonNullableType = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.issuing_authorization_verification_data.properties.authentication_exemption.anyOf.properties.claimed_by@ in the specification.
--
-- The entity that requested the exemption, either the acquiring merchant or the Issuing user.
data IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableClaimedBy'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableClaimedBy'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableClaimedBy'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"acquirer"@
    IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableClaimedBy'EnumAcquirer
  | -- | Represents the JSON value @"issuer"@
    IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableClaimedBy'EnumIssuer
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableClaimedBy' where
  toJSON (IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableClaimedBy'Other val) = val
  toJSON (IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableClaimedBy'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableClaimedBy'EnumAcquirer) = "acquirer"
  toJSON (IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableClaimedBy'EnumIssuer) = "issuer"

instance Data.Aeson.Types.FromJSON.FromJSON IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableClaimedBy' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "acquirer" -> IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableClaimedBy'EnumAcquirer
            | val GHC.Classes.== "issuer" -> IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableClaimedBy'EnumIssuer
            | GHC.Base.otherwise -> IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableClaimedBy'Other val
      )

-- | Defines the enum schema located at @components.schemas.issuing_authorization_verification_data.properties.authentication_exemption.anyOf.properties.type@ in the specification.
--
-- The specific exemption claimed for this authorization.
data IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"low_value_transaction"@
    IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableType'EnumLowValueTransaction
  | -- | Represents the JSON value @"transaction_risk_analysis"@
    IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableType'EnumTransactionRiskAnalysis
  | -- | Represents the JSON value @"unknown"@
    IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableType'EnumUnknown
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableType' where
  toJSON (IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableType'Other val) = val
  toJSON (IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableType'EnumLowValueTransaction) = "low_value_transaction"
  toJSON (IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableType'EnumTransactionRiskAnalysis) = "transaction_risk_analysis"
  toJSON (IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableType'EnumUnknown) = "unknown"

instance Data.Aeson.Types.FromJSON.FromJSON IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "low_value_transaction" -> IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableType'EnumLowValueTransaction
            | val GHC.Classes.== "transaction_risk_analysis" -> IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableType'EnumTransactionRiskAnalysis
            | val GHC.Classes.== "unknown" -> IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableType'EnumUnknown
            | GHC.Base.otherwise -> IssuingAuthorizationVerificationDataAuthenticationExemption'NonNullableType'Other val
      )

-- | Defines the enum schema located at @components.schemas.issuing_authorization_verification_data.properties.cvc_check@ in the specification.
--
-- Whether the cardholder provided a CVC and if it matched Stripe’s record.
data IssuingAuthorizationVerificationDataCvcCheck'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    IssuingAuthorizationVerificationDataCvcCheck'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    IssuingAuthorizationVerificationDataCvcCheck'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"match"@
    IssuingAuthorizationVerificationDataCvcCheck'EnumMatch
  | -- | Represents the JSON value @"mismatch"@
    IssuingAuthorizationVerificationDataCvcCheck'EnumMismatch
  | -- | Represents the JSON value @"not_provided"@
    IssuingAuthorizationVerificationDataCvcCheck'EnumNotProvided
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON IssuingAuthorizationVerificationDataCvcCheck' where
  toJSON (IssuingAuthorizationVerificationDataCvcCheck'Other val) = val
  toJSON (IssuingAuthorizationVerificationDataCvcCheck'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (IssuingAuthorizationVerificationDataCvcCheck'EnumMatch) = "match"
  toJSON (IssuingAuthorizationVerificationDataCvcCheck'EnumMismatch) = "mismatch"
  toJSON (IssuingAuthorizationVerificationDataCvcCheck'EnumNotProvided) = "not_provided"

instance Data.Aeson.Types.FromJSON.FromJSON IssuingAuthorizationVerificationDataCvcCheck' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "match" -> IssuingAuthorizationVerificationDataCvcCheck'EnumMatch
            | val GHC.Classes.== "mismatch" -> IssuingAuthorizationVerificationDataCvcCheck'EnumMismatch
            | val GHC.Classes.== "not_provided" -> IssuingAuthorizationVerificationDataCvcCheck'EnumNotProvided
            | GHC.Base.otherwise -> IssuingAuthorizationVerificationDataCvcCheck'Other val
      )

-- | Defines the enum schema located at @components.schemas.issuing_authorization_verification_data.properties.expiry_check@ in the specification.
--
-- Whether the cardholder provided an expiry date and if it matched Stripe’s record.
data IssuingAuthorizationVerificationDataExpiryCheck'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    IssuingAuthorizationVerificationDataExpiryCheck'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    IssuingAuthorizationVerificationDataExpiryCheck'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"match"@
    IssuingAuthorizationVerificationDataExpiryCheck'EnumMatch
  | -- | Represents the JSON value @"mismatch"@
    IssuingAuthorizationVerificationDataExpiryCheck'EnumMismatch
  | -- | Represents the JSON value @"not_provided"@
    IssuingAuthorizationVerificationDataExpiryCheck'EnumNotProvided
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON IssuingAuthorizationVerificationDataExpiryCheck' where
  toJSON (IssuingAuthorizationVerificationDataExpiryCheck'Other val) = val
  toJSON (IssuingAuthorizationVerificationDataExpiryCheck'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (IssuingAuthorizationVerificationDataExpiryCheck'EnumMatch) = "match"
  toJSON (IssuingAuthorizationVerificationDataExpiryCheck'EnumMismatch) = "mismatch"
  toJSON (IssuingAuthorizationVerificationDataExpiryCheck'EnumNotProvided) = "not_provided"

instance Data.Aeson.Types.FromJSON.FromJSON IssuingAuthorizationVerificationDataExpiryCheck' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "match" -> IssuingAuthorizationVerificationDataExpiryCheck'EnumMatch
            | val GHC.Classes.== "mismatch" -> IssuingAuthorizationVerificationDataExpiryCheck'EnumMismatch
            | val GHC.Classes.== "not_provided" -> IssuingAuthorizationVerificationDataExpiryCheck'EnumNotProvided
            | GHC.Base.otherwise -> IssuingAuthorizationVerificationDataExpiryCheck'Other val
      )

-- | Defines the object schema located at @components.schemas.issuing_authorization_verification_data.properties.three_d_secure.anyOf@ in the specification.
--
-- 3D Secure details.
data IssuingAuthorizationVerificationDataThreeDSecure'NonNullable = IssuingAuthorizationVerificationDataThreeDSecure'NonNullable
  { -- | result: The outcome of the 3D Secure authentication request.
    issuingAuthorizationVerificationDataThreeDSecure'NonNullableResult :: (GHC.Maybe.Maybe IssuingAuthorizationVerificationDataThreeDSecure'NonNullableResult')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON IssuingAuthorizationVerificationDataThreeDSecure'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("result" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationVerificationDataThreeDSecure'NonNullableResult obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("result" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationVerificationDataThreeDSecure'NonNullableResult obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON IssuingAuthorizationVerificationDataThreeDSecure'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingAuthorizationVerificationDataThreeDSecure'NonNullable" (\obj -> GHC.Base.pure IssuingAuthorizationVerificationDataThreeDSecure'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "result"))

-- | Create a new 'IssuingAuthorizationVerificationDataThreeDSecure'NonNullable' with all required fields.
mkIssuingAuthorizationVerificationDataThreeDSecure'NonNullable :: IssuingAuthorizationVerificationDataThreeDSecure'NonNullable
mkIssuingAuthorizationVerificationDataThreeDSecure'NonNullable = IssuingAuthorizationVerificationDataThreeDSecure'NonNullable {issuingAuthorizationVerificationDataThreeDSecure'NonNullableResult = GHC.Maybe.Nothing}

-- | Defines the enum schema located at @components.schemas.issuing_authorization_verification_data.properties.three_d_secure.anyOf.properties.result@ in the specification.
--
-- The outcome of the 3D Secure authentication request.
data IssuingAuthorizationVerificationDataThreeDSecure'NonNullableResult'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    IssuingAuthorizationVerificationDataThreeDSecure'NonNullableResult'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    IssuingAuthorizationVerificationDataThreeDSecure'NonNullableResult'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"attempt_acknowledged"@
    IssuingAuthorizationVerificationDataThreeDSecure'NonNullableResult'EnumAttemptAcknowledged
  | -- | Represents the JSON value @"authenticated"@
    IssuingAuthorizationVerificationDataThreeDSecure'NonNullableResult'EnumAuthenticated
  | -- | Represents the JSON value @"failed"@
    IssuingAuthorizationVerificationDataThreeDSecure'NonNullableResult'EnumFailed
  | -- | Represents the JSON value @"required"@
    IssuingAuthorizationVerificationDataThreeDSecure'NonNullableResult'EnumRequired
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON IssuingAuthorizationVerificationDataThreeDSecure'NonNullableResult' where
  toJSON (IssuingAuthorizationVerificationDataThreeDSecure'NonNullableResult'Other val) = val
  toJSON (IssuingAuthorizationVerificationDataThreeDSecure'NonNullableResult'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (IssuingAuthorizationVerificationDataThreeDSecure'NonNullableResult'EnumAttemptAcknowledged) = "attempt_acknowledged"
  toJSON (IssuingAuthorizationVerificationDataThreeDSecure'NonNullableResult'EnumAuthenticated) = "authenticated"
  toJSON (IssuingAuthorizationVerificationDataThreeDSecure'NonNullableResult'EnumFailed) = "failed"
  toJSON (IssuingAuthorizationVerificationDataThreeDSecure'NonNullableResult'EnumRequired) = "required"

instance Data.Aeson.Types.FromJSON.FromJSON IssuingAuthorizationVerificationDataThreeDSecure'NonNullableResult' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "attempt_acknowledged" -> IssuingAuthorizationVerificationDataThreeDSecure'NonNullableResult'EnumAttemptAcknowledged
            | val GHC.Classes.== "authenticated" -> IssuingAuthorizationVerificationDataThreeDSecure'NonNullableResult'EnumAuthenticated
            | val GHC.Classes.== "failed" -> IssuingAuthorizationVerificationDataThreeDSecure'NonNullableResult'EnumFailed
            | val GHC.Classes.== "required" -> IssuingAuthorizationVerificationDataThreeDSecure'NonNullableResult'EnumRequired
            | GHC.Base.otherwise -> IssuingAuthorizationVerificationDataThreeDSecure'NonNullableResult'Other val
      )
