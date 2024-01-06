{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postRefunds
module StripeAPI.Operations.PostRefunds where

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

-- | > POST /v1/refunds
--
-- \<p>When you create a new refund, you must specify a Charge or a PaymentIntent object on which to create it.\<\/p>
--
-- \<p>Creating a new refund will refund a charge that has previously been created but not yet refunded.
-- Funds will be refunded to the credit or debit card that was originally charged.\<\/p>
--
-- \<p>You can optionally refund only part of a charge.
-- You can do so multiple times, until the entire charge has been refunded.\<\/p>
--
-- \<p>Once entirely refunded, a charge can’t be refunded again.
-- This method will raise an error when called on an already-refunded charge,
-- or when trying to refund more money than is left on a charge.\<\/p>
postRefunds ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | The request body to send
  GHC.Maybe.Maybe PostRefundsRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostRefundsResponse)
postRefunds body =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostRefundsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostRefundsResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Refund
                                                        )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostRefundsResponseDefault
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
    (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/v1/refunds" GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/refunds.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostRefundsRequestBody = PostRefundsRequestBody
  { -- | amount
    postRefundsRequestBodyAmount :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | charge: The identifier of the charge to refund.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postRefundsRequestBodyCharge :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
    postRefundsRequestBodyCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | customer: Customer whose customer balance to refund from.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postRefundsRequestBodyCustomer :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | expand: Specifies which fields in the response should be expanded.
    postRefundsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | instructions_email: For payment methods without native refund support (e.g., Konbini, PromptPay), use this email from the customer to receive refund instructions.
    postRefundsRequestBodyInstructionsEmail :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
    postRefundsRequestBodyMetadata :: (GHC.Maybe.Maybe PostRefundsRequestBodyMetadata'Variants),
    -- | origin: Origin of the refund
    postRefundsRequestBodyOrigin :: (GHC.Maybe.Maybe PostRefundsRequestBodyOrigin'),
    -- | payment_intent: The identifier of the PaymentIntent to refund.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postRefundsRequestBodyPaymentIntent :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | reason: String indicating the reason for the refund. If set, possible values are \`duplicate\`, \`fraudulent\`, and \`requested_by_customer\`. If you believe the charge to be fraudulent, specifying \`fraudulent\` as the reason will add the associated card and email to your [block lists](https:\/\/stripe.com\/docs\/radar\/lists), and will also help us improve our fraud detection algorithms.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postRefundsRequestBodyReason :: (GHC.Maybe.Maybe PostRefundsRequestBodyReason'),
    -- | refund_application_fee: Boolean indicating whether the application fee should be refunded when refunding this charge. If a full charge refund is given, the full application fee will be refunded. Otherwise, the application fee will be refunded in an amount proportional to the amount of the charge refunded. An application fee can be refunded only by the application that created the charge.
    postRefundsRequestBodyRefundApplicationFee :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | reverse_transfer: Boolean indicating whether the transfer should be reversed when refunding this charge. The transfer will be reversed proportionally to the amount being refunded (either the entire or partial amount).\<br>\<br>A transfer can be reversed only by the application that created the charge.
    postRefundsRequestBodyReverseTransfer :: (GHC.Maybe.Maybe GHC.Types.Bool)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostRefundsRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (postRefundsRequestBodyAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("charge" Data.Aeson.Types.ToJSON..=)) (postRefundsRequestBodyCharge obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (postRefundsRequestBodyCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer" Data.Aeson.Types.ToJSON..=)) (postRefundsRequestBodyCustomer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postRefundsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("instructions_email" Data.Aeson.Types.ToJSON..=)) (postRefundsRequestBodyInstructionsEmail obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postRefundsRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("origin" Data.Aeson.Types.ToJSON..=)) (postRefundsRequestBodyOrigin obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_intent" Data.Aeson.Types.ToJSON..=)) (postRefundsRequestBodyPaymentIntent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reason" Data.Aeson.Types.ToJSON..=)) (postRefundsRequestBodyReason obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_application_fee" Data.Aeson.Types.ToJSON..=)) (postRefundsRequestBodyRefundApplicationFee obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reverse_transfer" Data.Aeson.Types.ToJSON..=)) (postRefundsRequestBodyReverseTransfer obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (postRefundsRequestBodyAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("charge" Data.Aeson.Types.ToJSON..=)) (postRefundsRequestBodyCharge obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (postRefundsRequestBodyCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer" Data.Aeson.Types.ToJSON..=)) (postRefundsRequestBodyCustomer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postRefundsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("instructions_email" Data.Aeson.Types.ToJSON..=)) (postRefundsRequestBodyInstructionsEmail obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postRefundsRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("origin" Data.Aeson.Types.ToJSON..=)) (postRefundsRequestBodyOrigin obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_intent" Data.Aeson.Types.ToJSON..=)) (postRefundsRequestBodyPaymentIntent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reason" Data.Aeson.Types.ToJSON..=)) (postRefundsRequestBodyReason obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_application_fee" Data.Aeson.Types.ToJSON..=)) (postRefundsRequestBodyRefundApplicationFee obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reverse_transfer" Data.Aeson.Types.ToJSON..=)) (postRefundsRequestBodyReverseTransfer obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostRefundsRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostRefundsRequestBody" (\obj -> (((((((((((GHC.Base.pure PostRefundsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "charge")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "instructions_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "origin")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "payment_intent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "refund_application_fee")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reverse_transfer"))

-- | Create a new 'PostRefundsRequestBody' with all required fields.
mkPostRefundsRequestBody :: PostRefundsRequestBody
mkPostRefundsRequestBody =
  PostRefundsRequestBody
    { postRefundsRequestBodyAmount = GHC.Maybe.Nothing,
      postRefundsRequestBodyCharge = GHC.Maybe.Nothing,
      postRefundsRequestBodyCurrency = GHC.Maybe.Nothing,
      postRefundsRequestBodyCustomer = GHC.Maybe.Nothing,
      postRefundsRequestBodyExpand = GHC.Maybe.Nothing,
      postRefundsRequestBodyInstructionsEmail = GHC.Maybe.Nothing,
      postRefundsRequestBodyMetadata = GHC.Maybe.Nothing,
      postRefundsRequestBodyOrigin = GHC.Maybe.Nothing,
      postRefundsRequestBodyPaymentIntent = GHC.Maybe.Nothing,
      postRefundsRequestBodyReason = GHC.Maybe.Nothing,
      postRefundsRequestBodyRefundApplicationFee = GHC.Maybe.Nothing,
      postRefundsRequestBodyReverseTransfer = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @paths.\/v1\/refunds.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.metadata.anyOf@ in the specification.
--
-- Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostRefundsRequestBodyMetadata'Variants
  = -- | Represents the JSON value @""@
    PostRefundsRequestBodyMetadata'EmptyString
  | PostRefundsRequestBodyMetadata'Object Data.Aeson.Types.Internal.Object
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostRefundsRequestBodyMetadata'Variants where
  toJSON (PostRefundsRequestBodyMetadata'Object a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PostRefundsRequestBodyMetadata'EmptyString) = ""

instance Data.Aeson.Types.FromJSON.FromJSON PostRefundsRequestBodyMetadata'Variants where
  parseJSON val =
    if
        | val GHC.Classes.== "" -> GHC.Base.pure PostRefundsRequestBodyMetadata'EmptyString
        | GHC.Base.otherwise -> case (PostRefundsRequestBodyMetadata'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
            Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the enum schema located at @paths.\/v1\/refunds.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.origin@ in the specification.
--
-- Origin of the refund
data PostRefundsRequestBodyOrigin'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostRefundsRequestBodyOrigin'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostRefundsRequestBodyOrigin'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"customer_balance"@
    PostRefundsRequestBodyOrigin'EnumCustomerBalance
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostRefundsRequestBodyOrigin' where
  toJSON (PostRefundsRequestBodyOrigin'Other val) = val
  toJSON (PostRefundsRequestBodyOrigin'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostRefundsRequestBodyOrigin'EnumCustomerBalance) = "customer_balance"

instance Data.Aeson.Types.FromJSON.FromJSON PostRefundsRequestBodyOrigin' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "customer_balance" -> PostRefundsRequestBodyOrigin'EnumCustomerBalance
            | GHC.Base.otherwise -> PostRefundsRequestBodyOrigin'Other val
      )

-- | Defines the enum schema located at @paths.\/v1\/refunds.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.reason@ in the specification.
--
-- String indicating the reason for the refund. If set, possible values are \`duplicate\`, \`fraudulent\`, and \`requested_by_customer\`. If you believe the charge to be fraudulent, specifying \`fraudulent\` as the reason will add the associated card and email to your [block lists](https:\/\/stripe.com\/docs\/radar\/lists), and will also help us improve our fraud detection algorithms.
data PostRefundsRequestBodyReason'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostRefundsRequestBodyReason'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostRefundsRequestBodyReason'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"duplicate"@
    PostRefundsRequestBodyReason'EnumDuplicate
  | -- | Represents the JSON value @"fraudulent"@
    PostRefundsRequestBodyReason'EnumFraudulent
  | -- | Represents the JSON value @"requested_by_customer"@
    PostRefundsRequestBodyReason'EnumRequestedByCustomer
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostRefundsRequestBodyReason' where
  toJSON (PostRefundsRequestBodyReason'Other val) = val
  toJSON (PostRefundsRequestBodyReason'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostRefundsRequestBodyReason'EnumDuplicate) = "duplicate"
  toJSON (PostRefundsRequestBodyReason'EnumFraudulent) = "fraudulent"
  toJSON (PostRefundsRequestBodyReason'EnumRequestedByCustomer) = "requested_by_customer"

instance Data.Aeson.Types.FromJSON.FromJSON PostRefundsRequestBodyReason' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "duplicate" -> PostRefundsRequestBodyReason'EnumDuplicate
            | val GHC.Classes.== "fraudulent" -> PostRefundsRequestBodyReason'EnumFraudulent
            | val GHC.Classes.== "requested_by_customer" -> PostRefundsRequestBodyReason'EnumRequestedByCustomer
            | GHC.Base.otherwise -> PostRefundsRequestBodyReason'Other val
      )

-- | Represents a response of the operation 'postRefunds'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostRefundsResponseError' is used.
data PostRefundsResponse
  = -- | Means either no matching case available or a parse error
    PostRefundsResponseError GHC.Base.String
  | -- | Successful response.
    PostRefundsResponse200 Refund
  | -- | Error response.
    PostRefundsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
