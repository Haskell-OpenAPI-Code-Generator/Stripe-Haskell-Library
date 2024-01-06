{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Shipping
module StripeAPI.Types.Shipping where

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

-- | Defines the object schema located at @components.schemas.shipping@ in the specification.
data Shipping = Shipping
  { -- | address:
    shippingAddress :: (GHC.Maybe.Maybe Address),
    -- | carrier: The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    shippingCarrier :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | name: Recipient name.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    shippingName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | phone: Recipient phone (including extension).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    shippingPhone :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | tracking_number: The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    shippingTrackingNumber :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Shipping where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address" Data.Aeson.Types.ToJSON..=)) (shippingAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("carrier" Data.Aeson.Types.ToJSON..=)) (shippingCarrier obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (shippingName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("phone" Data.Aeson.Types.ToJSON..=)) (shippingPhone obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tracking_number" Data.Aeson.Types.ToJSON..=)) (shippingTrackingNumber obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address" Data.Aeson.Types.ToJSON..=)) (shippingAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("carrier" Data.Aeson.Types.ToJSON..=)) (shippingCarrier obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (shippingName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("phone" Data.Aeson.Types.ToJSON..=)) (shippingPhone obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tracking_number" Data.Aeson.Types.ToJSON..=)) (shippingTrackingNumber obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON Shipping where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Shipping" (\obj -> ((((GHC.Base.pure Shipping GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "carrier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "tracking_number"))

-- | Create a new 'Shipping' with all required fields.
mkShipping :: Shipping
mkShipping =
  Shipping
    { shippingAddress = GHC.Maybe.Nothing,
      shippingCarrier = GHC.Maybe.Nothing,
      shippingName = GHC.Maybe.Nothing,
      shippingPhone = GHC.Maybe.Nothing,
      shippingTrackingNumber = GHC.Maybe.Nothing
    }
