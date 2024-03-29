module StripeAPI.Types.Coupon where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified StripeAPI.Common
data Coupon
instance Show Coupon
instance Eq Coupon
instance FromJSON Coupon
instance ToJSON Coupon
data CouponDuration'
instance Show CouponDuration'
instance Eq CouponDuration'
instance FromJSON CouponDuration'
instance ToJSON CouponDuration'
