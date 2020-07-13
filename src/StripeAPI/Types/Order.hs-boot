module StripeAPI.Types.Order where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data Order
instance Show Order
instance Eq Order
instance FromJSON Order
instance ToJSON Order
data OrderCharge'Variants
instance Show OrderCharge'Variants
instance Eq OrderCharge'Variants
instance FromJSON OrderCharge'Variants
instance ToJSON OrderCharge'Variants
data OrderCustomer'Variants
instance Show OrderCustomer'Variants
instance Eq OrderCustomer'Variants
instance FromJSON OrderCustomer'Variants
instance ToJSON OrderCustomer'Variants
data OrderReturns'
instance Show OrderReturns'
instance Eq OrderReturns'
instance FromJSON OrderReturns'
instance ToJSON OrderReturns'
data OrderShipping'
instance Show OrderShipping'
instance Eq OrderShipping'
instance FromJSON OrderShipping'
instance ToJSON OrderShipping'
data OrderStatusTransitions'
instance Show OrderStatusTransitions'
instance Eq OrderStatusTransitions'
instance FromJSON OrderStatusTransitions'
instance ToJSON OrderStatusTransitions'
