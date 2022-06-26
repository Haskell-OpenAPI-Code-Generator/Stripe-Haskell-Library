module StripeAPI.Types.CountrySpec where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified StripeAPI.Common
data CountrySpec
instance Show CountrySpec
instance Eq CountrySpec
instance FromJSON CountrySpec
instance ToJSON CountrySpec
