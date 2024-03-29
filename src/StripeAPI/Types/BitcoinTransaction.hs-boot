module StripeAPI.Types.BitcoinTransaction where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified StripeAPI.Common
data BitcoinTransaction
instance Show BitcoinTransaction
instance Eq BitcoinTransaction
instance FromJSON BitcoinTransaction
instance ToJSON BitcoinTransaction
