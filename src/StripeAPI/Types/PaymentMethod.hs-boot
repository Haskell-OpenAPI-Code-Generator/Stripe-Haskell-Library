module StripeAPI.Types.PaymentMethod where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified StripeAPI.Common
data PaymentMethod
instance Show PaymentMethod
instance Eq PaymentMethod
instance FromJSON PaymentMethod
instance ToJSON PaymentMethod
data PaymentMethodCustomer'NonNullableVariants
instance Show PaymentMethodCustomer'NonNullableVariants
instance Eq PaymentMethodCustomer'NonNullableVariants
instance FromJSON PaymentMethodCustomer'NonNullableVariants
instance ToJSON PaymentMethodCustomer'NonNullableVariants
data PaymentMethodType'
instance Show PaymentMethodType'
instance Eq PaymentMethodType'
instance FromJSON PaymentMethodType'
instance ToJSON PaymentMethodType'
