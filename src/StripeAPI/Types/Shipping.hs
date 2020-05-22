{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema Shipping
module StripeAPI.Types.Shipping where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
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
import qualified GHC.Generics
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.Types.Address

-- | Defines the data type for the schema shipping
-- 
-- 
data Shipping = Shipping {
  -- | address: 
  shippingAddress :: (GHC.Maybe.Maybe Address)
  -- | carrier: The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , shippingCarrier :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | name: Recipient name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , shippingName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | phone: Recipient phone (including extension).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , shippingPhone :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | tracking_number: The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , shippingTrackingNumber :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON Shipping
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (shippingAddress obj) : (Data.Aeson..=) "carrier" (shippingCarrier obj) : (Data.Aeson..=) "name" (shippingName obj) : (Data.Aeson..=) "phone" (shippingPhone obj) : (Data.Aeson..=) "tracking_number" (shippingTrackingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (shippingAddress obj) GHC.Base.<> ((Data.Aeson..=) "carrier" (shippingCarrier obj) GHC.Base.<> ((Data.Aeson..=) "name" (shippingName obj) GHC.Base.<> ((Data.Aeson..=) "phone" (shippingPhone obj) GHC.Base.<> (Data.Aeson..=) "tracking_number" (shippingTrackingNumber obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON Shipping
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Shipping" (\obj -> ((((GHC.Base.pure Shipping GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "carrier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tracking_number"))