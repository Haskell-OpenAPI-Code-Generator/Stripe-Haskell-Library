{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema ChargeFraudDetails
module StripeAPI.Types.ChargeFraudDetails where

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

-- | Defines the object schema located at @components.schemas.charge_fraud_details@ in the specification.
data ChargeFraudDetails = ChargeFraudDetails
  { -- | stripe_report: Assessments from Stripe. If set, the value is \`fraudulent\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    chargeFraudDetailsStripeReport :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | user_report: Assessments reported by you. If set, possible values of are \`safe\` and \`fraudulent\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    chargeFraudDetailsUserReport :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON ChargeFraudDetails where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("stripe_report" Data.Aeson.Types.ToJSON..=)) (chargeFraudDetailsStripeReport obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_report" Data.Aeson.Types.ToJSON..=)) (chargeFraudDetailsUserReport obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("stripe_report" Data.Aeson.Types.ToJSON..=)) (chargeFraudDetailsStripeReport obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_report" Data.Aeson.Types.ToJSON..=)) (chargeFraudDetailsUserReport obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON ChargeFraudDetails where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "ChargeFraudDetails" (\obj -> (GHC.Base.pure ChargeFraudDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "stripe_report")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_report"))

-- | Create a new 'ChargeFraudDetails' with all required fields.
mkChargeFraudDetails :: ChargeFraudDetails
mkChargeFraudDetails =
  ChargeFraudDetails
    { chargeFraudDetailsStripeReport = GHC.Maybe.Nothing,
      chargeFraudDetailsUserReport = GHC.Maybe.Nothing
    }
