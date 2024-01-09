{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodDetailsCashapp
module StripeAPI.Types.PaymentMethodDetailsCashapp where

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

-- | Defines the object schema located at @components.schemas.payment_method_details_cashapp@ in the specification.
data PaymentMethodDetailsCashapp = PaymentMethodDetailsCashapp
  { -- | buyer_id: A unique and immutable identifier assigned by Cash App to every buyer.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsCashappBuyerId :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | cashtag: A public identifier for buyers using Cash App.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsCashappCashtag :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsCashapp where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("buyer_id" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCashappBuyerId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cashtag" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCashappCashtag obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("buyer_id" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCashappBuyerId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cashtag" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCashappCashtag obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCashapp where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsCashapp" (\obj -> (GHC.Base.pure PaymentMethodDetailsCashapp GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "buyer_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cashtag"))

-- | Create a new 'PaymentMethodDetailsCashapp' with all required fields.
mkPaymentMethodDetailsCashapp :: PaymentMethodDetailsCashapp
mkPaymentMethodDetailsCashapp =
  PaymentMethodDetailsCashapp
    { paymentMethodDetailsCashappBuyerId = GHC.Maybe.Nothing,
      paymentMethodDetailsCashappCashtag = GHC.Maybe.Nothing
    }
