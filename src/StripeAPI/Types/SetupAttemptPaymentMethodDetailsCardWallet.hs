{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SetupAttemptPaymentMethodDetailsCardWallet
module StripeAPI.Types.SetupAttemptPaymentMethodDetailsCardWallet where

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
import qualified Data.Text as Data.Text.Internal
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

-- | Defines the object schema located at @components.schemas.setup_attempt_payment_method_details_card_wallet@ in the specification.
data SetupAttemptPaymentMethodDetailsCardWallet = SetupAttemptPaymentMethodDetailsCardWallet
  { -- | apple_pay:
    setupAttemptPaymentMethodDetailsCardWalletApplePay :: (GHC.Maybe.Maybe PaymentMethodDetailsCardWalletApplePay),
    -- | google_pay:
    setupAttemptPaymentMethodDetailsCardWalletGooglePay :: (GHC.Maybe.Maybe PaymentMethodDetailsCardWalletGooglePay),
    -- | type: The type of the card wallet, one of \`apple_pay\`, \`google_pay\`, or \`link\`. An additional hash is included on the Wallet subhash with a name matching this value. It contains additional information specific to the card wallet type.
    setupAttemptPaymentMethodDetailsCardWalletType :: SetupAttemptPaymentMethodDetailsCardWalletType'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SetupAttemptPaymentMethodDetailsCardWallet where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("apple_pay" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsCardWalletApplePay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("google_pay" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsCardWalletGooglePay obj) : ["type" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsCardWalletType obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("apple_pay" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsCardWalletApplePay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("google_pay" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsCardWalletGooglePay obj) : ["type" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsCardWalletType obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SetupAttemptPaymentMethodDetailsCardWallet where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SetupAttemptPaymentMethodDetailsCardWallet" (\obj -> ((GHC.Base.pure SetupAttemptPaymentMethodDetailsCardWallet GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "apple_pay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "google_pay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))

-- | Create a new 'SetupAttemptPaymentMethodDetailsCardWallet' with all required fields.
mkSetupAttemptPaymentMethodDetailsCardWallet ::
  -- | 'setupAttemptPaymentMethodDetailsCardWalletType'
  SetupAttemptPaymentMethodDetailsCardWalletType' ->
  SetupAttemptPaymentMethodDetailsCardWallet
mkSetupAttemptPaymentMethodDetailsCardWallet setupAttemptPaymentMethodDetailsCardWalletType =
  SetupAttemptPaymentMethodDetailsCardWallet
    { setupAttemptPaymentMethodDetailsCardWalletApplePay = GHC.Maybe.Nothing,
      setupAttemptPaymentMethodDetailsCardWalletGooglePay = GHC.Maybe.Nothing,
      setupAttemptPaymentMethodDetailsCardWalletType = setupAttemptPaymentMethodDetailsCardWalletType
    }

-- | Defines the enum schema located at @components.schemas.setup_attempt_payment_method_details_card_wallet.properties.type@ in the specification.
--
-- The type of the card wallet, one of \`apple_pay\`, \`google_pay\`, or \`link\`. An additional hash is included on the Wallet subhash with a name matching this value. It contains additional information specific to the card wallet type.
data SetupAttemptPaymentMethodDetailsCardWalletType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    SetupAttemptPaymentMethodDetailsCardWalletType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    SetupAttemptPaymentMethodDetailsCardWalletType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"apple_pay"@
    SetupAttemptPaymentMethodDetailsCardWalletType'EnumApplePay
  | -- | Represents the JSON value @"google_pay"@
    SetupAttemptPaymentMethodDetailsCardWalletType'EnumGooglePay
  | -- | Represents the JSON value @"link"@
    SetupAttemptPaymentMethodDetailsCardWalletType'EnumLink
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SetupAttemptPaymentMethodDetailsCardWalletType' where
  toJSON (SetupAttemptPaymentMethodDetailsCardWalletType'Other val) = val
  toJSON (SetupAttemptPaymentMethodDetailsCardWalletType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (SetupAttemptPaymentMethodDetailsCardWalletType'EnumApplePay) = "apple_pay"
  toJSON (SetupAttemptPaymentMethodDetailsCardWalletType'EnumGooglePay) = "google_pay"
  toJSON (SetupAttemptPaymentMethodDetailsCardWalletType'EnumLink) = "link"

instance Data.Aeson.Types.FromJSON.FromJSON SetupAttemptPaymentMethodDetailsCardWalletType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "apple_pay" -> SetupAttemptPaymentMethodDetailsCardWalletType'EnumApplePay
            | val GHC.Classes.== "google_pay" -> SetupAttemptPaymentMethodDetailsCardWalletType'EnumGooglePay
            | val GHC.Classes.== "link" -> SetupAttemptPaymentMethodDetailsCardWalletType'EnumLink
            | GHC.Base.otherwise -> SetupAttemptPaymentMethodDetailsCardWalletType'Other val
      )
