{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Terminal_ConnectionToken
module StripeAPI.Types.Terminal_ConnectionToken where

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

-- | Defines the object schema located at @components.schemas.terminal.connection_token@ in the specification.
--
-- A Connection Token is used by the Stripe Terminal SDK to connect to a reader.
--
-- Related guide: [Fleet management](https:\/\/stripe.com\/docs\/terminal\/fleet\/locations)
data Terminal'connectionToken = Terminal'connectionToken
  { -- | location: The id of the location that this connection token is scoped to. Note that location scoping only applies to internet-connected readers. For more details, see [the docs on scoping connection tokens](https:\/\/stripe.com\/docs\/terminal\/fleet\/locations\#connection-tokens).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    terminal'connectionTokenLocation :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | secret: Your application should pass this token to the Stripe Terminal SDK.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    terminal'connectionTokenSecret :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Terminal'connectionToken where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("location" Data.Aeson.Types.ToJSON..=)) (terminal'connectionTokenLocation obj) : ["secret" Data.Aeson.Types.ToJSON..= terminal'connectionTokenSecret obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "terminal.connection_token"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("location" Data.Aeson.Types.ToJSON..=)) (terminal'connectionTokenLocation obj) : ["secret" Data.Aeson.Types.ToJSON..= terminal'connectionTokenSecret obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "terminal.connection_token"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON Terminal'connectionToken where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Terminal'connectionToken" (\obj -> (GHC.Base.pure Terminal'connectionToken GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "location")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "secret"))

-- | Create a new 'Terminal'connectionToken' with all required fields.
mkTerminal'connectionToken ::
  -- | 'terminal'connectionTokenSecret'
  Data.Text.Internal.Text ->
  Terminal'connectionToken
mkTerminal'connectionToken terminal'connectionTokenSecret =
  Terminal'connectionToken
    { terminal'connectionTokenLocation = GHC.Maybe.Nothing,
      terminal'connectionTokenSecret = terminal'connectionTokenSecret
    }
