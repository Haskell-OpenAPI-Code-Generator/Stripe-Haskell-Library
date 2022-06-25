module StripeAPI.Types.Error where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified StripeAPI.Common
data Error
instance Show Error
instance Eq Error
instance FromJSON Error
instance ToJSON Error
