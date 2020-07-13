module StripeAPI.Types.Token where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data Token
instance Show Token
instance Eq Token
instance FromJSON Token
instance ToJSON Token
