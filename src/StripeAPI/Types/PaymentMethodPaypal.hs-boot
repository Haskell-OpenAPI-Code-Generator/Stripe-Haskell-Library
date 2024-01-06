module StripeAPI.Types.PaymentMethodPaypal where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified StripeAPI.Common
data PaymentMethodPaypal
instance Show PaymentMethodPaypal
instance Eq PaymentMethodPaypal
instance FromJSON PaymentMethodPaypal
instance ToJSON PaymentMethodPaypal
