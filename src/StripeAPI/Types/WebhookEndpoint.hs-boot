module StripeAPI.Types.WebhookEndpoint where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data WebhookEndpoint
instance Show WebhookEndpoint
instance Eq WebhookEndpoint
instance FromJSON WebhookEndpoint
instance ToJSON WebhookEndpoint
