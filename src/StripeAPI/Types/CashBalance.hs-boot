module StripeAPI.Types.CashBalance where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified StripeAPI.Common
data CashBalance
instance Show CashBalance
instance Eq CashBalance
instance FromJSON CashBalance
instance ToJSON CashBalance
