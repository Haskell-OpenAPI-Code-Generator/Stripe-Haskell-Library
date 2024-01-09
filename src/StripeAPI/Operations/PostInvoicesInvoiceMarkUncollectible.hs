{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postInvoicesInvoiceMarkUncollectible
module StripeAPI.Operations.PostInvoicesInvoiceMarkUncollectible where

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
import qualified Data.Text as Data.Text.Internal
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

-- | > POST /v1/invoices/{invoice}/mark_uncollectible
--
-- \<p>Marking an invoice as uncollectible is useful for keeping track of bad debts that can be written off for accounting purposes.\<\/p>
postInvoicesInvoiceMarkUncollectible ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | invoice | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe PostInvoicesInvoiceMarkUncollectibleRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostInvoicesInvoiceMarkUncollectibleResponse)
postInvoicesInvoiceMarkUncollectible
  invoice
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostInvoicesInvoiceMarkUncollectibleResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                       PostInvoicesInvoiceMarkUncollectibleResponse200
                                         Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                              Data.Either.Either
                                                                GHC.Base.String
                                                                Invoice
                                                          )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                       PostInvoicesInvoiceMarkUncollectibleResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/v1/invoices/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel invoice)) GHC.Base.<> "/mark_uncollectible")) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/invoices\/{invoice}\/mark_uncollectible.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostInvoicesInvoiceMarkUncollectibleRequestBody = PostInvoicesInvoiceMarkUncollectibleRequestBody
  { -- | expand: Specifies which fields in the response should be expanded.
    postInvoicesInvoiceMarkUncollectibleRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostInvoicesInvoiceMarkUncollectibleRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postInvoicesInvoiceMarkUncollectibleRequestBodyExpand obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postInvoicesInvoiceMarkUncollectibleRequestBodyExpand obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostInvoicesInvoiceMarkUncollectibleRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoicesInvoiceMarkUncollectibleRequestBody" (\obj -> GHC.Base.pure PostInvoicesInvoiceMarkUncollectibleRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand"))

-- | Create a new 'PostInvoicesInvoiceMarkUncollectibleRequestBody' with all required fields.
mkPostInvoicesInvoiceMarkUncollectibleRequestBody :: PostInvoicesInvoiceMarkUncollectibleRequestBody
mkPostInvoicesInvoiceMarkUncollectibleRequestBody = PostInvoicesInvoiceMarkUncollectibleRequestBody {postInvoicesInvoiceMarkUncollectibleRequestBodyExpand = GHC.Maybe.Nothing}

-- | Represents a response of the operation 'postInvoicesInvoiceMarkUncollectible'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostInvoicesInvoiceMarkUncollectibleResponseError' is used.
data PostInvoicesInvoiceMarkUncollectibleResponse
  = -- | Means either no matching case available or a parse error
    PostInvoicesInvoiceMarkUncollectibleResponseError GHC.Base.String
  | -- | Successful response.
    PostInvoicesInvoiceMarkUncollectibleResponse200 Invoice
  | -- | Error response.
    PostInvoicesInvoiceMarkUncollectibleResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
