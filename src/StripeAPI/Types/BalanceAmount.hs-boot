module StripeAPI.Types.BalanceAmount where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified StripeAPI.Common
data BalanceAmount
instance Show BalanceAmount
instance Eq BalanceAmount
instance FromJSON BalanceAmount
instance ToJSON BalanceAmount
