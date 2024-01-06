{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema AccountCardPaymentsSettings
module StripeAPI.Types.AccountCardPaymentsSettings where

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
import {-# SOURCE #-} StripeAPI.Types.AccountDeclineChargeOn
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.account_card_payments_settings@ in the specification.
data AccountCardPaymentsSettings = AccountCardPaymentsSettings
  { -- | decline_on:
    accountCardPaymentsSettingsDeclineOn :: (GHC.Maybe.Maybe AccountDeclineChargeOn),
    -- | statement_descriptor_prefix: The default text that appears on credit card statements when a charge is made. This field prefixes any dynamic \`statement_descriptor\` specified on the charge. \`statement_descriptor_prefix\` is useful for maximizing descriptor space for the dynamic portion.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    accountCardPaymentsSettingsStatementDescriptorPrefix :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | statement_descriptor_prefix_kana: The Kana variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic \`statement_descriptor_suffix_kana\` specified on the charge. \`statement_descriptor_prefix_kana\` is useful for maximizing descriptor space for the dynamic portion.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    accountCardPaymentsSettingsStatementDescriptorPrefixKana :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | statement_descriptor_prefix_kanji: The Kanji variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic \`statement_descriptor_suffix_kanji\` specified on the charge. \`statement_descriptor_prefix_kanji\` is useful for maximizing descriptor space for the dynamic portion.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    accountCardPaymentsSettingsStatementDescriptorPrefixKanji :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON AccountCardPaymentsSettings where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("decline_on" Data.Aeson.Types.ToJSON..=)) (accountCardPaymentsSettingsDeclineOn obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor_prefix" Data.Aeson.Types.ToJSON..=)) (accountCardPaymentsSettingsStatementDescriptorPrefix obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor_prefix_kana" Data.Aeson.Types.ToJSON..=)) (accountCardPaymentsSettingsStatementDescriptorPrefixKana obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor_prefix_kanji" Data.Aeson.Types.ToJSON..=)) (accountCardPaymentsSettingsStatementDescriptorPrefixKanji obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("decline_on" Data.Aeson.Types.ToJSON..=)) (accountCardPaymentsSettingsDeclineOn obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor_prefix" Data.Aeson.Types.ToJSON..=)) (accountCardPaymentsSettingsStatementDescriptorPrefix obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor_prefix_kana" Data.Aeson.Types.ToJSON..=)) (accountCardPaymentsSettingsStatementDescriptorPrefixKana obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor_prefix_kanji" Data.Aeson.Types.ToJSON..=)) (accountCardPaymentsSettingsStatementDescriptorPrefixKanji obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON AccountCardPaymentsSettings where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountCardPaymentsSettings" (\obj -> (((GHC.Base.pure AccountCardPaymentsSettings GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "decline_on")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "statement_descriptor_prefix")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "statement_descriptor_prefix_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "statement_descriptor_prefix_kanji"))

-- | Create a new 'AccountCardPaymentsSettings' with all required fields.
mkAccountCardPaymentsSettings :: AccountCardPaymentsSettings
mkAccountCardPaymentsSettings =
  AccountCardPaymentsSettings
    { accountCardPaymentsSettingsDeclineOn = GHC.Maybe.Nothing,
      accountCardPaymentsSettingsStatementDescriptorPrefix = GHC.Maybe.Nothing,
      accountCardPaymentsSettingsStatementDescriptorPrefixKana = GHC.Maybe.Nothing,
      accountCardPaymentsSettingsStatementDescriptorPrefixKanji = GHC.Maybe.Nothing
    }
