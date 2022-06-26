module StripeAPI.Types.Dispute where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified StripeAPI.Common
data Dispute
instance Show Dispute
instance Eq Dispute
instance FromJSON Dispute
instance ToJSON Dispute
data DisputeCharge'Variants
instance Show DisputeCharge'Variants
instance Eq DisputeCharge'Variants
instance FromJSON DisputeCharge'Variants
instance ToJSON DisputeCharge'Variants
data DisputePaymentIntent'NonNullableVariants
instance Show DisputePaymentIntent'NonNullableVariants
instance Eq DisputePaymentIntent'NonNullableVariants
instance FromJSON DisputePaymentIntent'NonNullableVariants
instance ToJSON DisputePaymentIntent'NonNullableVariants
data DisputeStatus'
instance Show DisputeStatus'
instance Eq DisputeStatus'
instance FromJSON DisputeStatus'
instance ToJSON DisputeStatus'
