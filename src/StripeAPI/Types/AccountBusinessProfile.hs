{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema AccountBusinessProfile
module StripeAPI.Types.AccountBusinessProfile where

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
import {-# SOURCE #-} StripeAPI.Types.AccountMonthlyEstimatedRevenue
import {-# SOURCE #-} StripeAPI.Types.Address
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.account_business_profile@ in the specification.
data AccountBusinessProfile = AccountBusinessProfile
  { -- | mcc: [The merchant category code for the account](https:\/\/stripe.com\/docs\/connect\/setting-mcc). MCCs are used to classify businesses based on the goods or services they provide.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    accountBusinessProfileMcc :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | monthly_estimated_revenue:
    accountBusinessProfileMonthlyEstimatedRevenue :: (GHC.Maybe.Maybe AccountMonthlyEstimatedRevenue),
    -- | name: The customer-facing business name.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    accountBusinessProfileName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | product_description: Internal-only description of the product sold or service provided by the business. It\'s used by Stripe for risk and underwriting purposes.
    --
    -- Constraints:
    --
    -- * Maximum length of 40000
    accountBusinessProfileProductDescription :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | support_address: A publicly available mailing address for sending support issues to.
    accountBusinessProfileSupportAddress :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable AccountBusinessProfileSupportAddress'NonNullable)),
    -- | support_email: A publicly available email address for sending support issues to.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    accountBusinessProfileSupportEmail :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | support_phone: A publicly available phone number to call with support issues.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    accountBusinessProfileSupportPhone :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | support_url: A publicly available website for handling support issues.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    accountBusinessProfileSupportUrl :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | url: The business\'s publicly available website.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    accountBusinessProfileUrl :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON AccountBusinessProfile where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("mcc" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileMcc obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("monthly_estimated_revenue" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileMonthlyEstimatedRevenue obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("product_description" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileProductDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("support_address" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileSupportAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("support_email" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileSupportEmail obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("support_phone" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileSupportPhone obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("support_url" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileSupportUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("url" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileUrl obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("mcc" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileMcc obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("monthly_estimated_revenue" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileMonthlyEstimatedRevenue obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("product_description" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileProductDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("support_address" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileSupportAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("support_email" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileSupportEmail obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("support_phone" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileSupportPhone obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("support_url" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileSupportUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("url" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileUrl obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON AccountBusinessProfile where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountBusinessProfile" (\obj -> ((((((((GHC.Base.pure AccountBusinessProfile GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "mcc")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "monthly_estimated_revenue")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "product_description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "support_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "support_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "support_phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "support_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "url"))

-- | Create a new 'AccountBusinessProfile' with all required fields.
mkAccountBusinessProfile :: AccountBusinessProfile
mkAccountBusinessProfile =
  AccountBusinessProfile
    { accountBusinessProfileMcc = GHC.Maybe.Nothing,
      accountBusinessProfileMonthlyEstimatedRevenue = GHC.Maybe.Nothing,
      accountBusinessProfileName = GHC.Maybe.Nothing,
      accountBusinessProfileProductDescription = GHC.Maybe.Nothing,
      accountBusinessProfileSupportAddress = GHC.Maybe.Nothing,
      accountBusinessProfileSupportEmail = GHC.Maybe.Nothing,
      accountBusinessProfileSupportPhone = GHC.Maybe.Nothing,
      accountBusinessProfileSupportUrl = GHC.Maybe.Nothing,
      accountBusinessProfileUrl = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.account_business_profile.properties.support_address.anyOf@ in the specification.
--
-- A publicly available mailing address for sending support issues to.
data AccountBusinessProfileSupportAddress'NonNullable = AccountBusinessProfileSupportAddress'NonNullable
  { -- | city: City, district, suburb, town, or village.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    accountBusinessProfileSupportAddress'NonNullableCity :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    accountBusinessProfileSupportAddress'NonNullableCountry :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | line1: Address line 1 (e.g., street, PO Box, or company name).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    accountBusinessProfileSupportAddress'NonNullableLine1 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | line2: Address line 2 (e.g., apartment, suite, unit, or building).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    accountBusinessProfileSupportAddress'NonNullableLine2 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | postal_code: ZIP or postal code.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    accountBusinessProfileSupportAddress'NonNullablePostalCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | state: State, county, province, or region.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    accountBusinessProfileSupportAddress'NonNullableState :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON AccountBusinessProfileSupportAddress'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileSupportAddress'NonNullableCity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileSupportAddress'NonNullableCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line1" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileSupportAddress'NonNullableLine1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line2" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileSupportAddress'NonNullableLine2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileSupportAddress'NonNullablePostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileSupportAddress'NonNullableState obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileSupportAddress'NonNullableCity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileSupportAddress'NonNullableCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line1" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileSupportAddress'NonNullableLine1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line2" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileSupportAddress'NonNullableLine2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileSupportAddress'NonNullablePostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (accountBusinessProfileSupportAddress'NonNullableState obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON AccountBusinessProfileSupportAddress'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountBusinessProfileSupportAddress'NonNullable" (\obj -> (((((GHC.Base.pure AccountBusinessProfileSupportAddress'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "state"))

-- | Create a new 'AccountBusinessProfileSupportAddress'NonNullable' with all required fields.
mkAccountBusinessProfileSupportAddress'NonNullable :: AccountBusinessProfileSupportAddress'NonNullable
mkAccountBusinessProfileSupportAddress'NonNullable =
  AccountBusinessProfileSupportAddress'NonNullable
    { accountBusinessProfileSupportAddress'NonNullableCity = GHC.Maybe.Nothing,
      accountBusinessProfileSupportAddress'NonNullableCountry = GHC.Maybe.Nothing,
      accountBusinessProfileSupportAddress'NonNullableLine1 = GHC.Maybe.Nothing,
      accountBusinessProfileSupportAddress'NonNullableLine2 = GHC.Maybe.Nothing,
      accountBusinessProfileSupportAddress'NonNullablePostalCode = GHC.Maybe.Nothing,
      accountBusinessProfileSupportAddress'NonNullableState = GHC.Maybe.Nothing
    }
