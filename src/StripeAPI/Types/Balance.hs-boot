module StripeAPI.Types.Balance where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified StripeAPI.Common
data Balance
instance Show Balance
instance Eq Balance
instance FromJSON Balance
instance ToJSON Balance
