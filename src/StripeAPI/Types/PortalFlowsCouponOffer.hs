{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PortalFlowsCouponOffer
module StripeAPI.Types.PortalFlowsCouponOffer where

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

-- | Defines the object schema located at @components.schemas.portal_flows_coupon_offer@ in the specification.
data PortalFlowsCouponOffer = PortalFlowsCouponOffer
  { -- | coupon: The ID of the coupon to be offered.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    portalFlowsCouponOfferCoupon :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PortalFlowsCouponOffer where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["coupon" Data.Aeson.Types.ToJSON..= portalFlowsCouponOfferCoupon obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["coupon" Data.Aeson.Types.ToJSON..= portalFlowsCouponOfferCoupon obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PortalFlowsCouponOffer where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PortalFlowsCouponOffer" (\obj -> GHC.Base.pure PortalFlowsCouponOffer GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "coupon"))

-- | Create a new 'PortalFlowsCouponOffer' with all required fields.
mkPortalFlowsCouponOffer ::
  -- | 'portalFlowsCouponOfferCoupon'
  Data.Text.Internal.Text ->
  PortalFlowsCouponOffer
mkPortalFlowsCouponOffer portalFlowsCouponOfferCoupon = PortalFlowsCouponOffer {portalFlowsCouponOfferCoupon = portalFlowsCouponOfferCoupon}
