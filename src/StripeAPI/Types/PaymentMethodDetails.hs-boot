module StripeAPI.Types.PaymentMethodDetails where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified StripeAPI.Common
data PaymentMethodDetails
instance Show PaymentMethodDetails
instance Eq PaymentMethodDetails
instance FromJSON PaymentMethodDetails
instance ToJSON PaymentMethodDetails
