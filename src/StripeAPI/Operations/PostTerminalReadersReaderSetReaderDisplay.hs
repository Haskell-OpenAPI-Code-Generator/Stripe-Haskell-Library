{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postTerminalReadersReaderSetReaderDisplay
module StripeAPI.Operations.PostTerminalReadersReaderSetReaderDisplay where

import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.ByteString as Data.ByteString.Internal.Type
import qualified Data.Either
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified StripeAPI.Common
import StripeAPI.Types
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | > POST /v1/terminal/readers/{reader}/set_reader_display
--
-- \<p>Sets reader display to show cart details.\<\/p>
postTerminalReadersReaderSetReaderDisplay ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | reader | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  PostTerminalReadersReaderSetReaderDisplayRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostTerminalReadersReaderSetReaderDisplayResponse)
postTerminalReadersReaderSetReaderDisplay
  reader
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostTerminalReadersReaderSetReaderDisplayResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                       PostTerminalReadersReaderSetReaderDisplayResponse200
                                         Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                              Data.Either.Either
                                                                GHC.Base.String
                                                                Terminal'reader
                                                          )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                       PostTerminalReadersReaderSetReaderDisplayResponseDefault
                                         Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                              Data.Either.Either
                                                                GHC.Base.String
                                                                Error
                                                          )
                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                           )
                  response_0
            )
            response_0
      )
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/v1/terminal/readers/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel reader)) GHC.Base.<> "/set_reader_display")) GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/terminal\/readers\/{reader}\/set_reader_display.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostTerminalReadersReaderSetReaderDisplayRequestBody = PostTerminalReadersReaderSetReaderDisplayRequestBody
  { -- | cart: Cart
    postTerminalReadersReaderSetReaderDisplayRequestBodyCart :: (GHC.Maybe.Maybe PostTerminalReadersReaderSetReaderDisplayRequestBodyCart'),
    -- | expand: Specifies which fields in the response should be expanded.
    postTerminalReadersReaderSetReaderDisplayRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostTerminalReadersReaderSetReaderDisplayRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cart" Data.Aeson.Types.ToJSON..=)) (postTerminalReadersReaderSetReaderDisplayRequestBodyCart obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTerminalReadersReaderSetReaderDisplayRequestBodyExpand obj) : ["type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "cart"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cart" Data.Aeson.Types.ToJSON..=)) (postTerminalReadersReaderSetReaderDisplayRequestBodyCart obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTerminalReadersReaderSetReaderDisplayRequestBodyExpand obj) : ["type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "cart"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostTerminalReadersReaderSetReaderDisplayRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTerminalReadersReaderSetReaderDisplayRequestBody" (\obj -> (GHC.Base.pure PostTerminalReadersReaderSetReaderDisplayRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cart")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand"))

-- | Create a new 'PostTerminalReadersReaderSetReaderDisplayRequestBody' with all required fields.
mkPostTerminalReadersReaderSetReaderDisplayRequestBody :: PostTerminalReadersReaderSetReaderDisplayRequestBody
mkPostTerminalReadersReaderSetReaderDisplayRequestBody =
  PostTerminalReadersReaderSetReaderDisplayRequestBody
    { postTerminalReadersReaderSetReaderDisplayRequestBodyCart = GHC.Maybe.Nothing,
      postTerminalReadersReaderSetReaderDisplayRequestBodyExpand = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/terminal\/readers\/{reader}\/set_reader_display.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.cart@ in the specification.
--
-- Cart
data PostTerminalReadersReaderSetReaderDisplayRequestBodyCart' = PostTerminalReadersReaderSetReaderDisplayRequestBodyCart'
  { -- | currency
    postTerminalReadersReaderSetReaderDisplayRequestBodyCart'Currency :: Data.Text.Internal.Text,
    -- | line_items
    postTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems :: ([PostTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems']),
    -- | tax
    postTerminalReadersReaderSetReaderDisplayRequestBodyCart'Tax :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | total
    postTerminalReadersReaderSetReaderDisplayRequestBodyCart'Total :: GHC.Types.Int
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostTerminalReadersReaderSetReaderDisplayRequestBodyCart' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["currency" Data.Aeson.Types.ToJSON..= postTerminalReadersReaderSetReaderDisplayRequestBodyCart'Currency obj] : ["line_items" Data.Aeson.Types.ToJSON..= postTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax" Data.Aeson.Types.ToJSON..=)) (postTerminalReadersReaderSetReaderDisplayRequestBodyCart'Tax obj) : ["total" Data.Aeson.Types.ToJSON..= postTerminalReadersReaderSetReaderDisplayRequestBodyCart'Total obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["currency" Data.Aeson.Types.ToJSON..= postTerminalReadersReaderSetReaderDisplayRequestBodyCart'Currency obj] : ["line_items" Data.Aeson.Types.ToJSON..= postTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax" Data.Aeson.Types.ToJSON..=)) (postTerminalReadersReaderSetReaderDisplayRequestBodyCart'Tax obj) : ["total" Data.Aeson.Types.ToJSON..= postTerminalReadersReaderSetReaderDisplayRequestBodyCart'Total obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostTerminalReadersReaderSetReaderDisplayRequestBodyCart' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTerminalReadersReaderSetReaderDisplayRequestBodyCart'" (\obj -> (((GHC.Base.pure PostTerminalReadersReaderSetReaderDisplayRequestBodyCart' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "line_items")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "tax")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "total"))

-- | Create a new 'PostTerminalReadersReaderSetReaderDisplayRequestBodyCart'' with all required fields.
mkPostTerminalReadersReaderSetReaderDisplayRequestBodyCart' ::
  -- | 'postTerminalReadersReaderSetReaderDisplayRequestBodyCart'Currency'
  Data.Text.Internal.Text ->
  -- | 'postTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems'
  [PostTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems'] ->
  -- | 'postTerminalReadersReaderSetReaderDisplayRequestBodyCart'Total'
  GHC.Types.Int ->
  PostTerminalReadersReaderSetReaderDisplayRequestBodyCart'
mkPostTerminalReadersReaderSetReaderDisplayRequestBodyCart' postTerminalReadersReaderSetReaderDisplayRequestBodyCart'Currency postTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems postTerminalReadersReaderSetReaderDisplayRequestBodyCart'Total =
  PostTerminalReadersReaderSetReaderDisplayRequestBodyCart'
    { postTerminalReadersReaderSetReaderDisplayRequestBodyCart'Currency = postTerminalReadersReaderSetReaderDisplayRequestBodyCart'Currency,
      postTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems = postTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems,
      postTerminalReadersReaderSetReaderDisplayRequestBodyCart'Tax = GHC.Maybe.Nothing,
      postTerminalReadersReaderSetReaderDisplayRequestBodyCart'Total = postTerminalReadersReaderSetReaderDisplayRequestBodyCart'Total
    }

-- | Defines the object schema located at @paths.\/v1\/terminal\/readers\/{reader}\/set_reader_display.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.cart.properties.line_items.items@ in the specification.
data PostTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems' = PostTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems'
  { -- | amount
    postTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems'Amount :: GHC.Types.Int,
    -- | description
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems'Description :: Data.Text.Internal.Text,
    -- | quantity
    postTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems'Quantity :: GHC.Types.Int
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= postTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems'Amount obj] : ["description" Data.Aeson.Types.ToJSON..= postTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems'Description obj] : ["quantity" Data.Aeson.Types.ToJSON..= postTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems'Quantity obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= postTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems'Amount obj] : ["description" Data.Aeson.Types.ToJSON..= postTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems'Description obj] : ["quantity" Data.Aeson.Types.ToJSON..= postTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems'Quantity obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems'" (\obj -> ((GHC.Base.pure PostTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "quantity"))

-- | Create a new 'PostTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems'' with all required fields.
mkPostTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems' ::
  -- | 'postTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems'Amount'
  GHC.Types.Int ->
  -- | 'postTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems'Description'
  Data.Text.Internal.Text ->
  -- | 'postTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems'Quantity'
  GHC.Types.Int ->
  PostTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems'
mkPostTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems' postTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems'Amount postTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems'Description postTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems'Quantity =
  PostTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems'
    { postTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems'Amount = postTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems'Amount,
      postTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems'Description = postTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems'Description,
      postTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems'Quantity = postTerminalReadersReaderSetReaderDisplayRequestBodyCart'LineItems'Quantity
    }

-- | Represents a response of the operation 'postTerminalReadersReaderSetReaderDisplay'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostTerminalReadersReaderSetReaderDisplayResponseError' is used.
data PostTerminalReadersReaderSetReaderDisplayResponse
  = -- | Means either no matching case available or a parse error
    PostTerminalReadersReaderSetReaderDisplayResponseError GHC.Base.String
  | -- | Successful response.
    PostTerminalReadersReaderSetReaderDisplayResponse200 Terminal'reader
  | -- | Error response.
    PostTerminalReadersReaderSetReaderDisplayResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
