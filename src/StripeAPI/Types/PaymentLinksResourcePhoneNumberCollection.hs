{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentLinksResourcePhoneNumberCollection
module StripeAPI.Types.PaymentLinksResourcePhoneNumberCollection where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_links_resource_phone_number_collection@ in the specification.
data PaymentLinksResourcePhoneNumberCollection = PaymentLinksResourcePhoneNumberCollection
  { -- | enabled: If \`true\`, a phone number will be collected during checkout.
    paymentLinksResourcePhoneNumberCollectionEnabled :: GHC.Types.Bool
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentLinksResourcePhoneNumberCollection where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["enabled" Data.Aeson.Types.ToJSON..= paymentLinksResourcePhoneNumberCollectionEnabled obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["enabled" Data.Aeson.Types.ToJSON..= paymentLinksResourcePhoneNumberCollectionEnabled obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentLinksResourcePhoneNumberCollection where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentLinksResourcePhoneNumberCollection" (\obj -> GHC.Base.pure PaymentLinksResourcePhoneNumberCollection GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "enabled"))

-- | Create a new 'PaymentLinksResourcePhoneNumberCollection' with all required fields.
mkPaymentLinksResourcePhoneNumberCollection ::
  -- | 'paymentLinksResourcePhoneNumberCollectionEnabled'
  GHC.Types.Bool ->
  PaymentLinksResourcePhoneNumberCollection
mkPaymentLinksResourcePhoneNumberCollection paymentLinksResourcePhoneNumberCollectionEnabled = PaymentLinksResourcePhoneNumberCollection {paymentLinksResourcePhoneNumberCollectionEnabled = paymentLinksResourcePhoneNumberCollectionEnabled}
