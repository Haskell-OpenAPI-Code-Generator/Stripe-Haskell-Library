module StripeAPI.Types.Event where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified StripeAPI.Common
data Event
instance Show Event
instance Eq Event
instance FromJSON Event
instance ToJSON Event
data EventRequest'NonNullable
instance Show EventRequest'NonNullable
instance Eq EventRequest'NonNullable
instance FromJSON EventRequest'NonNullable
instance ToJSON EventRequest'NonNullable
