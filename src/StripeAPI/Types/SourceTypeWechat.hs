{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SourceTypeWechat
module StripeAPI.Types.SourceTypeWechat where

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

-- | Defines the object schema located at @components.schemas.source_type_wechat@ in the specification.
data SourceTypeWechat = SourceTypeWechat
  { -- | prepay_id
    sourceTypeWechatPrepayId :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | qr_code_url
    sourceTypeWechatQrCodeUrl :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | statement_descriptor
    sourceTypeWechatStatementDescriptor :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SourceTypeWechat where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("prepay_id" Data.Aeson.Types.ToJSON..=)) (sourceTypeWechatPrepayId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("qr_code_url" Data.Aeson.Types.ToJSON..=)) (sourceTypeWechatQrCodeUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor" Data.Aeson.Types.ToJSON..=)) (sourceTypeWechatStatementDescriptor obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("prepay_id" Data.Aeson.Types.ToJSON..=)) (sourceTypeWechatPrepayId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("qr_code_url" Data.Aeson.Types.ToJSON..=)) (sourceTypeWechatQrCodeUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor" Data.Aeson.Types.ToJSON..=)) (sourceTypeWechatStatementDescriptor obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SourceTypeWechat where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTypeWechat" (\obj -> ((GHC.Base.pure SourceTypeWechat GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "prepay_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "qr_code_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "statement_descriptor"))

-- | Create a new 'SourceTypeWechat' with all required fields.
mkSourceTypeWechat :: SourceTypeWechat
mkSourceTypeWechat =
  SourceTypeWechat
    { sourceTypeWechatPrepayId = GHC.Maybe.Nothing,
      sourceTypeWechatQrCodeUrl = GHC.Maybe.Nothing,
      sourceTypeWechatStatementDescriptor = GHC.Maybe.Nothing
    }
