{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PortalFlowsSubscriptionUpdateConfirmDiscount
module StripeAPI.Types.PortalFlowsSubscriptionUpdateConfirmDiscount where

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

-- | Defines the object schema located at @components.schemas.portal_flows_subscription_update_confirm_discount@ in the specification.
data PortalFlowsSubscriptionUpdateConfirmDiscount = PortalFlowsSubscriptionUpdateConfirmDiscount
  { -- | coupon: The ID of the coupon to apply to this subscription update.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    portalFlowsSubscriptionUpdateConfirmDiscountCoupon :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | promotion_code: The ID of a promotion code to apply to this subscription update.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    portalFlowsSubscriptionUpdateConfirmDiscountPromotionCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PortalFlowsSubscriptionUpdateConfirmDiscount where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("coupon" Data.Aeson.Types.ToJSON..=)) (portalFlowsSubscriptionUpdateConfirmDiscountCoupon obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("promotion_code" Data.Aeson.Types.ToJSON..=)) (portalFlowsSubscriptionUpdateConfirmDiscountPromotionCode obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("coupon" Data.Aeson.Types.ToJSON..=)) (portalFlowsSubscriptionUpdateConfirmDiscountCoupon obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("promotion_code" Data.Aeson.Types.ToJSON..=)) (portalFlowsSubscriptionUpdateConfirmDiscountPromotionCode obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PortalFlowsSubscriptionUpdateConfirmDiscount where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PortalFlowsSubscriptionUpdateConfirmDiscount" (\obj -> (GHC.Base.pure PortalFlowsSubscriptionUpdateConfirmDiscount GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "coupon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "promotion_code"))

-- | Create a new 'PortalFlowsSubscriptionUpdateConfirmDiscount' with all required fields.
mkPortalFlowsSubscriptionUpdateConfirmDiscount :: PortalFlowsSubscriptionUpdateConfirmDiscount
mkPortalFlowsSubscriptionUpdateConfirmDiscount =
  PortalFlowsSubscriptionUpdateConfirmDiscount
    { portalFlowsSubscriptionUpdateConfirmDiscountCoupon = GHC.Maybe.Nothing,
      portalFlowsSubscriptionUpdateConfirmDiscountPromotionCode = GHC.Maybe.Nothing
    }
