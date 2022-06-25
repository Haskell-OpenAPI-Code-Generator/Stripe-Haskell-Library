module StripeAPI.Types.Application where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified StripeAPI.Common
data Application
instance Show Application
instance Eq Application
instance FromJSON Application
instance ToJSON Application
