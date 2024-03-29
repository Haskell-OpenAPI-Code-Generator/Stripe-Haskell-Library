module StripeAPI.Types.Address where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified StripeAPI.Common
data Address
instance Show Address
instance Eq Address
instance FromJSON Address
instance ToJSON Address
