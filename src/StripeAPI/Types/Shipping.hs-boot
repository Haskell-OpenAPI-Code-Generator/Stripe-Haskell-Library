module StripeAPI.Types.Shipping where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified StripeAPI.Common
data Shipping
instance Show Shipping
instance Eq Shipping
instance FromJSON Shipping
instance ToJSON Shipping
