module StripeAPI.Types.Fee where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified StripeAPI.Common
data Fee
instance Show Fee
instance Eq Fee
instance FromJSON Fee
instance ToJSON Fee
