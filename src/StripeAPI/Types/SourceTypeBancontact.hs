{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SourceTypeBancontact
module StripeAPI.Types.SourceTypeBancontact where

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

-- | Defines the object schema located at @components.schemas.source_type_bancontact@ in the specification.
data SourceTypeBancontact = SourceTypeBancontact
  { -- | bank_code
    sourceTypeBancontactBankCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | bank_name
    sourceTypeBancontactBankName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | bic
    sourceTypeBancontactBic :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | iban_last4
    sourceTypeBancontactIbanLast4 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | preferred_language
    sourceTypeBancontactPreferredLanguage :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | statement_descriptor
    sourceTypeBancontactStatementDescriptor :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SourceTypeBancontact where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_code" Data.Aeson.Types.ToJSON..=)) (sourceTypeBancontactBankCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_name" Data.Aeson.Types.ToJSON..=)) (sourceTypeBancontactBankName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bic" Data.Aeson.Types.ToJSON..=)) (sourceTypeBancontactBic obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("iban_last4" Data.Aeson.Types.ToJSON..=)) (sourceTypeBancontactIbanLast4 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("preferred_language" Data.Aeson.Types.ToJSON..=)) (sourceTypeBancontactPreferredLanguage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor" Data.Aeson.Types.ToJSON..=)) (sourceTypeBancontactStatementDescriptor obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_code" Data.Aeson.Types.ToJSON..=)) (sourceTypeBancontactBankCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_name" Data.Aeson.Types.ToJSON..=)) (sourceTypeBancontactBankName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bic" Data.Aeson.Types.ToJSON..=)) (sourceTypeBancontactBic obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("iban_last4" Data.Aeson.Types.ToJSON..=)) (sourceTypeBancontactIbanLast4 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("preferred_language" Data.Aeson.Types.ToJSON..=)) (sourceTypeBancontactPreferredLanguage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor" Data.Aeson.Types.ToJSON..=)) (sourceTypeBancontactStatementDescriptor obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SourceTypeBancontact where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTypeBancontact" (\obj -> (((((GHC.Base.pure SourceTypeBancontact GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bank_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bic")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "iban_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "preferred_language")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "statement_descriptor"))

-- | Create a new 'SourceTypeBancontact' with all required fields.
mkSourceTypeBancontact :: SourceTypeBancontact
mkSourceTypeBancontact =
  SourceTypeBancontact
    { sourceTypeBancontactBankCode = GHC.Maybe.Nothing,
      sourceTypeBancontactBankName = GHC.Maybe.Nothing,
      sourceTypeBancontactBic = GHC.Maybe.Nothing,
      sourceTypeBancontactIbanLast4 = GHC.Maybe.Nothing,
      sourceTypeBancontactPreferredLanguage = GHC.Maybe.Nothing,
      sourceTypeBancontactStatementDescriptor = GHC.Maybe.Nothing
    }
