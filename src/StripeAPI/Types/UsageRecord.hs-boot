module StripeAPI.Types.UsageRecord where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified StripeAPI.Common
data UsageRecord
instance Show UsageRecord
instance Eq UsageRecord
instance FromJSON UsageRecord
instance ToJSON UsageRecord
