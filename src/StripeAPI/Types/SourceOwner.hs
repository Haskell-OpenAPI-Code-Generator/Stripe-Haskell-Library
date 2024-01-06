{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SourceOwner
module StripeAPI.Types.SourceOwner where

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
import {-# SOURCE #-} StripeAPI.Types.Address
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.source_owner@ in the specification.
data SourceOwner = SourceOwner
  { -- | address: Owner\'s address.
    sourceOwnerAddress :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable SourceOwnerAddress'NonNullable)),
    -- | email: Owner\'s email address.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwnerEmail :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | name: Owner\'s full name.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwnerName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | phone: Owner\'s phone number (including extension).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwnerPhone :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | verified_address: Verified owner\'s address. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
    sourceOwnerVerifiedAddress :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable SourceOwnerVerifiedAddress'NonNullable)),
    -- | verified_email: Verified owner\'s email address. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwnerVerifiedEmail :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | verified_name: Verified owner\'s full name. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwnerVerifiedName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | verified_phone: Verified owner\'s phone number (including extension). Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwnerVerifiedPhone :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SourceOwner where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address" Data.Aeson.Types.ToJSON..=)) (sourceOwnerAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("email" Data.Aeson.Types.ToJSON..=)) (sourceOwnerEmail obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (sourceOwnerName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("phone" Data.Aeson.Types.ToJSON..=)) (sourceOwnerPhone obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verified_address" Data.Aeson.Types.ToJSON..=)) (sourceOwnerVerifiedAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verified_email" Data.Aeson.Types.ToJSON..=)) (sourceOwnerVerifiedEmail obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verified_name" Data.Aeson.Types.ToJSON..=)) (sourceOwnerVerifiedName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verified_phone" Data.Aeson.Types.ToJSON..=)) (sourceOwnerVerifiedPhone obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address" Data.Aeson.Types.ToJSON..=)) (sourceOwnerAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("email" Data.Aeson.Types.ToJSON..=)) (sourceOwnerEmail obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (sourceOwnerName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("phone" Data.Aeson.Types.ToJSON..=)) (sourceOwnerPhone obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verified_address" Data.Aeson.Types.ToJSON..=)) (sourceOwnerVerifiedAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verified_email" Data.Aeson.Types.ToJSON..=)) (sourceOwnerVerifiedEmail obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verified_name" Data.Aeson.Types.ToJSON..=)) (sourceOwnerVerifiedName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verified_phone" Data.Aeson.Types.ToJSON..=)) (sourceOwnerVerifiedPhone obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SourceOwner where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceOwner" (\obj -> (((((((GHC.Base.pure SourceOwner GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "verified_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "verified_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "verified_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "verified_phone"))

-- | Create a new 'SourceOwner' with all required fields.
mkSourceOwner :: SourceOwner
mkSourceOwner =
  SourceOwner
    { sourceOwnerAddress = GHC.Maybe.Nothing,
      sourceOwnerEmail = GHC.Maybe.Nothing,
      sourceOwnerName = GHC.Maybe.Nothing,
      sourceOwnerPhone = GHC.Maybe.Nothing,
      sourceOwnerVerifiedAddress = GHC.Maybe.Nothing,
      sourceOwnerVerifiedEmail = GHC.Maybe.Nothing,
      sourceOwnerVerifiedName = GHC.Maybe.Nothing,
      sourceOwnerVerifiedPhone = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.source_owner.properties.address.anyOf@ in the specification.
--
-- Owner\\\'s address.
data SourceOwnerAddress'NonNullable = SourceOwnerAddress'NonNullable
  { -- | city: City, district, suburb, town, or village.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwnerAddress'NonNullableCity :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwnerAddress'NonNullableCountry :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | line1: Address line 1 (e.g., street, PO Box, or company name).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwnerAddress'NonNullableLine1 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | line2: Address line 2 (e.g., apartment, suite, unit, or building).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwnerAddress'NonNullableLine2 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | postal_code: ZIP or postal code.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwnerAddress'NonNullablePostalCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | state: State, county, province, or region.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwnerAddress'NonNullableState :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SourceOwnerAddress'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (sourceOwnerAddress'NonNullableCity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (sourceOwnerAddress'NonNullableCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line1" Data.Aeson.Types.ToJSON..=)) (sourceOwnerAddress'NonNullableLine1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line2" Data.Aeson.Types.ToJSON..=)) (sourceOwnerAddress'NonNullableLine2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (sourceOwnerAddress'NonNullablePostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (sourceOwnerAddress'NonNullableState obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (sourceOwnerAddress'NonNullableCity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (sourceOwnerAddress'NonNullableCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line1" Data.Aeson.Types.ToJSON..=)) (sourceOwnerAddress'NonNullableLine1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line2" Data.Aeson.Types.ToJSON..=)) (sourceOwnerAddress'NonNullableLine2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (sourceOwnerAddress'NonNullablePostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (sourceOwnerAddress'NonNullableState obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SourceOwnerAddress'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceOwnerAddress'NonNullable" (\obj -> (((((GHC.Base.pure SourceOwnerAddress'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "state"))

-- | Create a new 'SourceOwnerAddress'NonNullable' with all required fields.
mkSourceOwnerAddress'NonNullable :: SourceOwnerAddress'NonNullable
mkSourceOwnerAddress'NonNullable =
  SourceOwnerAddress'NonNullable
    { sourceOwnerAddress'NonNullableCity = GHC.Maybe.Nothing,
      sourceOwnerAddress'NonNullableCountry = GHC.Maybe.Nothing,
      sourceOwnerAddress'NonNullableLine1 = GHC.Maybe.Nothing,
      sourceOwnerAddress'NonNullableLine2 = GHC.Maybe.Nothing,
      sourceOwnerAddress'NonNullablePostalCode = GHC.Maybe.Nothing,
      sourceOwnerAddress'NonNullableState = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.source_owner.properties.verified_address.anyOf@ in the specification.
--
-- Verified owner\\\'s address. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
data SourceOwnerVerifiedAddress'NonNullable = SourceOwnerVerifiedAddress'NonNullable
  { -- | city: City, district, suburb, town, or village.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwnerVerifiedAddress'NonNullableCity :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwnerVerifiedAddress'NonNullableCountry :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | line1: Address line 1 (e.g., street, PO Box, or company name).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwnerVerifiedAddress'NonNullableLine1 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | line2: Address line 2 (e.g., apartment, suite, unit, or building).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwnerVerifiedAddress'NonNullableLine2 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | postal_code: ZIP or postal code.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwnerVerifiedAddress'NonNullablePostalCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | state: State, county, province, or region.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwnerVerifiedAddress'NonNullableState :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SourceOwnerVerifiedAddress'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (sourceOwnerVerifiedAddress'NonNullableCity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (sourceOwnerVerifiedAddress'NonNullableCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line1" Data.Aeson.Types.ToJSON..=)) (sourceOwnerVerifiedAddress'NonNullableLine1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line2" Data.Aeson.Types.ToJSON..=)) (sourceOwnerVerifiedAddress'NonNullableLine2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (sourceOwnerVerifiedAddress'NonNullablePostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (sourceOwnerVerifiedAddress'NonNullableState obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (sourceOwnerVerifiedAddress'NonNullableCity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (sourceOwnerVerifiedAddress'NonNullableCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line1" Data.Aeson.Types.ToJSON..=)) (sourceOwnerVerifiedAddress'NonNullableLine1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line2" Data.Aeson.Types.ToJSON..=)) (sourceOwnerVerifiedAddress'NonNullableLine2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (sourceOwnerVerifiedAddress'NonNullablePostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (sourceOwnerVerifiedAddress'NonNullableState obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SourceOwnerVerifiedAddress'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceOwnerVerifiedAddress'NonNullable" (\obj -> (((((GHC.Base.pure SourceOwnerVerifiedAddress'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "state"))

-- | Create a new 'SourceOwnerVerifiedAddress'NonNullable' with all required fields.
mkSourceOwnerVerifiedAddress'NonNullable :: SourceOwnerVerifiedAddress'NonNullable
mkSourceOwnerVerifiedAddress'NonNullable =
  SourceOwnerVerifiedAddress'NonNullable
    { sourceOwnerVerifiedAddress'NonNullableCity = GHC.Maybe.Nothing,
      sourceOwnerVerifiedAddress'NonNullableCountry = GHC.Maybe.Nothing,
      sourceOwnerVerifiedAddress'NonNullableLine1 = GHC.Maybe.Nothing,
      sourceOwnerVerifiedAddress'NonNullableLine2 = GHC.Maybe.Nothing,
      sourceOwnerVerifiedAddress'NonNullablePostalCode = GHC.Maybe.Nothing,
      sourceOwnerVerifiedAddress'NonNullableState = GHC.Maybe.Nothing
    }
