{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema RefundDestinationDetailsGeneric
module StripeAPI.Types.RefundDestinationDetailsGeneric where

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

-- | Defines the object schema located at @components.schemas.refund_destination_details_generic@ in the specification.
data RefundDestinationDetailsGeneric = RefundDestinationDetailsGeneric
  { -- | reference: The reference assigned to the refund.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    refundDestinationDetailsGenericReference :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | reference_status: Status of the reference on the refund. This can be \`pending\`, \`available\` or \`unavailable\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    refundDestinationDetailsGenericReferenceStatus :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON RefundDestinationDetailsGeneric where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reference" Data.Aeson.Types.ToJSON..=)) (refundDestinationDetailsGenericReference obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reference_status" Data.Aeson.Types.ToJSON..=)) (refundDestinationDetailsGenericReferenceStatus obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reference" Data.Aeson.Types.ToJSON..=)) (refundDestinationDetailsGenericReference obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reference_status" Data.Aeson.Types.ToJSON..=)) (refundDestinationDetailsGenericReferenceStatus obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON RefundDestinationDetailsGeneric where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "RefundDestinationDetailsGeneric" (\obj -> (GHC.Base.pure RefundDestinationDetailsGeneric GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reference")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reference_status"))

-- | Create a new 'RefundDestinationDetailsGeneric' with all required fields.
mkRefundDestinationDetailsGeneric :: RefundDestinationDetailsGeneric
mkRefundDestinationDetailsGeneric =
  RefundDestinationDetailsGeneric
    { refundDestinationDetailsGenericReference = GHC.Maybe.Nothing,
      refundDestinationDetailsGenericReferenceStatus = GHC.Maybe.Nothing
    }
