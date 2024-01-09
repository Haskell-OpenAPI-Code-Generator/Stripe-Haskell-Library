{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation deleteSubscriptionsSubscriptionExposedId
module StripeAPI.Operations.DeleteSubscriptionsSubscriptionExposedId where

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

-- | > DELETE /v1/subscriptions/{subscription_exposed_id}
--
-- \<p>Cancels a customer’s subscription immediately. The customer will not be charged again for the subscription.\<\/p>
--
-- \<p>Note, however, that any pending invoice items that you’ve created will still be charged for at the end of the period, unless manually \<a href=\"\#delete_invoiceitem\">deleted\<\/a>. If you’ve set the subscription to cancel at the end of the period, any pending prorations will also be left in place and collected at the end of the period. But if the subscription is set to cancel immediately, pending prorations will be removed.\<\/p>
--
-- \<p>By default, upon subscription cancellation, Stripe will stop automatic collection of all finalized invoices for the customer. This is intended to prevent unexpected payment attempts after the customer has canceled a subscription. However, you can resume automatic collection of the invoices manually after subscription cancellation to have us proceed. Or, you could check for unpaid invoices before allowing the customer to cancel the subscription at all.\<\/p>
deleteSubscriptionsSubscriptionExposedId ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | subscription_exposed_id | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe DeleteSubscriptionsSubscriptionExposedIdRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response DeleteSubscriptionsSubscriptionExposedIdResponse)
deleteSubscriptionsSubscriptionExposedId
  subscriptionExposedId
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either DeleteSubscriptionsSubscriptionExposedIdResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                       DeleteSubscriptionsSubscriptionExposedIdResponse200
                                         Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                              Data.Either.Either
                                                                GHC.Base.String
                                                                Subscription
                                                          )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                       DeleteSubscriptionsSubscriptionExposedIdResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "DELETE") ("/v1/subscriptions/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionExposedId)) GHC.Base.<> "")) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/subscriptions\/{subscription_exposed_id}.DELETE.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data DeleteSubscriptionsSubscriptionExposedIdRequestBody = DeleteSubscriptionsSubscriptionExposedIdRequestBody
  { -- | cancellation_details: Details about why this subscription was cancelled
    deleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails :: (GHC.Maybe.Maybe DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'),
    -- | expand: Specifies which fields in the response should be expanded.
    deleteSubscriptionsSubscriptionExposedIdRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | invoice_now: Will generate a final invoice that invoices for any un-invoiced metered usage and new\/pending proration invoice items.
    deleteSubscriptionsSubscriptionExposedIdRequestBodyInvoiceNow :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | prorate: Will generate a proration invoice item that credits remaining unused time until the subscription period end.
    deleteSubscriptionsSubscriptionExposedIdRequestBodyProrate :: (GHC.Maybe.Maybe GHC.Types.Bool)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON DeleteSubscriptionsSubscriptionExposedIdRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cancellation_details" Data.Aeson.Types.ToJSON..=)) (deleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (deleteSubscriptionsSubscriptionExposedIdRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("invoice_now" Data.Aeson.Types.ToJSON..=)) (deleteSubscriptionsSubscriptionExposedIdRequestBodyInvoiceNow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("prorate" Data.Aeson.Types.ToJSON..=)) (deleteSubscriptionsSubscriptionExposedIdRequestBodyProrate obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cancellation_details" Data.Aeson.Types.ToJSON..=)) (deleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (deleteSubscriptionsSubscriptionExposedIdRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("invoice_now" Data.Aeson.Types.ToJSON..=)) (deleteSubscriptionsSubscriptionExposedIdRequestBodyInvoiceNow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("prorate" Data.Aeson.Types.ToJSON..=)) (deleteSubscriptionsSubscriptionExposedIdRequestBodyProrate obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON DeleteSubscriptionsSubscriptionExposedIdRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteSubscriptionsSubscriptionExposedIdRequestBody" (\obj -> (((GHC.Base.pure DeleteSubscriptionsSubscriptionExposedIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cancellation_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "invoice_now")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "prorate"))

-- | Create a new 'DeleteSubscriptionsSubscriptionExposedIdRequestBody' with all required fields.
mkDeleteSubscriptionsSubscriptionExposedIdRequestBody :: DeleteSubscriptionsSubscriptionExposedIdRequestBody
mkDeleteSubscriptionsSubscriptionExposedIdRequestBody =
  DeleteSubscriptionsSubscriptionExposedIdRequestBody
    { deleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails = GHC.Maybe.Nothing,
      deleteSubscriptionsSubscriptionExposedIdRequestBodyExpand = GHC.Maybe.Nothing,
      deleteSubscriptionsSubscriptionExposedIdRequestBodyInvoiceNow = GHC.Maybe.Nothing,
      deleteSubscriptionsSubscriptionExposedIdRequestBodyProrate = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/subscriptions\/{subscription_exposed_id}.DELETE.requestBody.content.application\/x-www-form-urlencoded.schema.properties.cancellation_details@ in the specification.
--
-- Details about why this subscription was cancelled
data DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails' = DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'
  { -- | comment
    deleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Comment :: (GHC.Maybe.Maybe DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Comment'Variants),
    -- | feedback
    deleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback :: (GHC.Maybe.Maybe DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("comment" Data.Aeson.Types.ToJSON..=)) (deleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Comment obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("feedback" Data.Aeson.Types.ToJSON..=)) (deleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("comment" Data.Aeson.Types.ToJSON..=)) (deleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Comment obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("feedback" Data.Aeson.Types.ToJSON..=)) (deleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'" (\obj -> (GHC.Base.pure DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "comment")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "feedback"))

-- | Create a new 'DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'' with all required fields.
mkDeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails' :: DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'
mkDeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails' =
  DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'
    { deleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Comment = GHC.Maybe.Nothing,
      deleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @paths.\/v1\/subscriptions\/{subscription_exposed_id}.DELETE.requestBody.content.application\/x-www-form-urlencoded.schema.properties.cancellation_details.properties.comment.anyOf@ in the specification.
data DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Comment'Variants
  = -- | Represents the JSON value @""@
    DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Comment'EmptyString
  | DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Comment'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Comment'Variants where
  toJSON (DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Comment'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Comment'EmptyString) = ""

instance Data.Aeson.Types.FromJSON.FromJSON DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Comment'Variants where
  parseJSON val =
    if
        | val GHC.Classes.== "" -> GHC.Base.pure DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Comment'EmptyString
        | GHC.Base.otherwise -> case (DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Comment'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
            Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the enum schema located at @paths.\/v1\/subscriptions\/{subscription_exposed_id}.DELETE.requestBody.content.application\/x-www-form-urlencoded.schema.properties.cancellation_details.properties.feedback@ in the specification.
data DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @""@
    DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'EnumEmptyString
  | -- | Represents the JSON value @"customer_service"@
    DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'EnumCustomerService
  | -- | Represents the JSON value @"low_quality"@
    DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'EnumLowQuality
  | -- | Represents the JSON value @"missing_features"@
    DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'EnumMissingFeatures
  | -- | Represents the JSON value @"other"@
    DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'EnumOther
  | -- | Represents the JSON value @"switched_service"@
    DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'EnumSwitchedService
  | -- | Represents the JSON value @"too_complex"@
    DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'EnumTooComplex
  | -- | Represents the JSON value @"too_expensive"@
    DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'EnumTooExpensive
  | -- | Represents the JSON value @"unused"@
    DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'EnumUnused
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback' where
  toJSON (DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'Other val) = val
  toJSON (DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'EnumEmptyString) = ""
  toJSON (DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'EnumCustomerService) = "customer_service"
  toJSON (DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'EnumLowQuality) = "low_quality"
  toJSON (DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'EnumMissingFeatures) = "missing_features"
  toJSON (DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'EnumOther) = "other"
  toJSON (DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'EnumSwitchedService) = "switched_service"
  toJSON (DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'EnumTooComplex) = "too_complex"
  toJSON (DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'EnumTooExpensive) = "too_expensive"
  toJSON (DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'EnumUnused) = "unused"

instance Data.Aeson.Types.FromJSON.FromJSON DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "" -> DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'EnumEmptyString
            | val GHC.Classes.== "customer_service" -> DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'EnumCustomerService
            | val GHC.Classes.== "low_quality" -> DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'EnumLowQuality
            | val GHC.Classes.== "missing_features" -> DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'EnumMissingFeatures
            | val GHC.Classes.== "other" -> DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'EnumOther
            | val GHC.Classes.== "switched_service" -> DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'EnumSwitchedService
            | val GHC.Classes.== "too_complex" -> DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'EnumTooComplex
            | val GHC.Classes.== "too_expensive" -> DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'EnumTooExpensive
            | val GHC.Classes.== "unused" -> DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'EnumUnused
            | GHC.Base.otherwise -> DeleteSubscriptionsSubscriptionExposedIdRequestBodyCancellationDetails'Feedback'Other val
      )

-- | Represents a response of the operation 'deleteSubscriptionsSubscriptionExposedId'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteSubscriptionsSubscriptionExposedIdResponseError' is used.
data DeleteSubscriptionsSubscriptionExposedIdResponse
  = -- | Means either no matching case available or a parse error
    DeleteSubscriptionsSubscriptionExposedIdResponseError GHC.Base.String
  | -- | Successful response.
    DeleteSubscriptionsSubscriptionExposedIdResponse200 Subscription
  | -- | Error response.
    DeleteSubscriptionsSubscriptionExposedIdResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
