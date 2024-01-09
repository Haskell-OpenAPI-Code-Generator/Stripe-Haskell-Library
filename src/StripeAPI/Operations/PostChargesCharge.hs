{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postChargesCharge
module StripeAPI.Operations.PostChargesCharge where

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

-- | > POST /v1/charges/{charge}
--
-- \<p>Updates the specified charge by setting the values of the parameters passed. Any parameters not provided will be left unchanged.\<\/p>
postChargesCharge ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | charge | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe PostChargesChargeRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostChargesChargeResponse)
postChargesCharge
  charge
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostChargesChargeResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                       PostChargesChargeResponse200
                                         Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                              Data.Either.Either
                                                                GHC.Base.String
                                                                Charge
                                                          )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                       PostChargesChargeResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/v1/charges/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel charge)) GHC.Base.<> "")) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/charges\/{charge}.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostChargesChargeRequestBody = PostChargesChargeRequestBody
  { -- | customer: The ID of an existing customer that will be associated with this request. This field may only be updated if there is no existing associated customer with this charge.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postChargesChargeRequestBodyCustomer :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | description: An arbitrary string which you can attach to a charge object. It is displayed when in the web interface alongside the charge. Note that if you use Stripe to send automatic email receipts to your customers, your receipt emails will include the \`description\` of the charge(s) that they are describing.
    --
    -- Constraints:
    --
    -- * Maximum length of 40000
    postChargesChargeRequestBodyDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | expand: Specifies which fields in the response should be expanded.
    postChargesChargeRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | fraud_details: A set of key-value pairs you can attach to a charge giving information about its riskiness. If you believe a charge is fraudulent, include a \`user_report\` key with a value of \`fraudulent\`. If you believe a charge is safe, include a \`user_report\` key with a value of \`safe\`. Stripe will use the information you send to improve our fraud detection algorithms.
    postChargesChargeRequestBodyFraudDetails :: (GHC.Maybe.Maybe PostChargesChargeRequestBodyFraudDetails'),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
    postChargesChargeRequestBodyMetadata :: (GHC.Maybe.Maybe PostChargesChargeRequestBodyMetadata'Variants),
    -- | receipt_email: This is the email address that the receipt for this charge will be sent to. If this field is updated, then a new email receipt will be sent to the updated address.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postChargesChargeRequestBodyReceiptEmail :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | shipping: Shipping information for the charge. Helps prevent fraud on charges for physical goods.
    postChargesChargeRequestBodyShipping :: (GHC.Maybe.Maybe PostChargesChargeRequestBodyShipping'),
    -- | transfer_group: A string that identifies this transaction as part of a group. \`transfer_group\` may only be provided if it has not been set. See the [Connect documentation](https:\/\/stripe.com\/docs\/connect\/separate-charges-and-transfers\#transfer-options) for details.
    postChargesChargeRequestBodyTransferGroup :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostChargesChargeRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyCustomer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fraud_details" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyFraudDetails obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("receipt_email" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyReceiptEmail obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shipping" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyShipping obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transfer_group" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyTransferGroup obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyCustomer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fraud_details" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyFraudDetails obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("receipt_email" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyReceiptEmail obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shipping" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyShipping obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transfer_group" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyTransferGroup obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostChargesChargeRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesChargeRequestBody" (\obj -> (((((((GHC.Base.pure PostChargesChargeRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "fraud_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "receipt_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "shipping")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "transfer_group"))

-- | Create a new 'PostChargesChargeRequestBody' with all required fields.
mkPostChargesChargeRequestBody :: PostChargesChargeRequestBody
mkPostChargesChargeRequestBody =
  PostChargesChargeRequestBody
    { postChargesChargeRequestBodyCustomer = GHC.Maybe.Nothing,
      postChargesChargeRequestBodyDescription = GHC.Maybe.Nothing,
      postChargesChargeRequestBodyExpand = GHC.Maybe.Nothing,
      postChargesChargeRequestBodyFraudDetails = GHC.Maybe.Nothing,
      postChargesChargeRequestBodyMetadata = GHC.Maybe.Nothing,
      postChargesChargeRequestBodyReceiptEmail = GHC.Maybe.Nothing,
      postChargesChargeRequestBodyShipping = GHC.Maybe.Nothing,
      postChargesChargeRequestBodyTransferGroup = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/charges\/{charge}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.fraud_details@ in the specification.
--
-- A set of key-value pairs you can attach to a charge giving information about its riskiness. If you believe a charge is fraudulent, include a \`user_report\` key with a value of \`fraudulent\`. If you believe a charge is safe, include a \`user_report\` key with a value of \`safe\`. Stripe will use the information you send to improve our fraud detection algorithms.
data PostChargesChargeRequestBodyFraudDetails' = PostChargesChargeRequestBodyFraudDetails'
  { -- | user_report
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postChargesChargeRequestBodyFraudDetails'UserReport :: PostChargesChargeRequestBodyFraudDetails'UserReport'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostChargesChargeRequestBodyFraudDetails' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["user_report" Data.Aeson.Types.ToJSON..= postChargesChargeRequestBodyFraudDetails'UserReport obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["user_report" Data.Aeson.Types.ToJSON..= postChargesChargeRequestBodyFraudDetails'UserReport obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostChargesChargeRequestBodyFraudDetails' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesChargeRequestBodyFraudDetails'" (\obj -> GHC.Base.pure PostChargesChargeRequestBodyFraudDetails' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "user_report"))

-- | Create a new 'PostChargesChargeRequestBodyFraudDetails'' with all required fields.
mkPostChargesChargeRequestBodyFraudDetails' ::
  -- | 'postChargesChargeRequestBodyFraudDetails'UserReport'
  PostChargesChargeRequestBodyFraudDetails'UserReport' ->
  PostChargesChargeRequestBodyFraudDetails'
mkPostChargesChargeRequestBodyFraudDetails' postChargesChargeRequestBodyFraudDetails'UserReport = PostChargesChargeRequestBodyFraudDetails' {postChargesChargeRequestBodyFraudDetails'UserReport = postChargesChargeRequestBodyFraudDetails'UserReport}

-- | Defines the enum schema located at @paths.\/v1\/charges\/{charge}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.fraud_details.properties.user_report@ in the specification.
data PostChargesChargeRequestBodyFraudDetails'UserReport'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostChargesChargeRequestBodyFraudDetails'UserReport'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostChargesChargeRequestBodyFraudDetails'UserReport'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @""@
    PostChargesChargeRequestBodyFraudDetails'UserReport'EnumEmptyString
  | -- | Represents the JSON value @"fraudulent"@
    PostChargesChargeRequestBodyFraudDetails'UserReport'EnumFraudulent
  | -- | Represents the JSON value @"safe"@
    PostChargesChargeRequestBodyFraudDetails'UserReport'EnumSafe
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostChargesChargeRequestBodyFraudDetails'UserReport' where
  toJSON (PostChargesChargeRequestBodyFraudDetails'UserReport'Other val) = val
  toJSON (PostChargesChargeRequestBodyFraudDetails'UserReport'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostChargesChargeRequestBodyFraudDetails'UserReport'EnumEmptyString) = ""
  toJSON (PostChargesChargeRequestBodyFraudDetails'UserReport'EnumFraudulent) = "fraudulent"
  toJSON (PostChargesChargeRequestBodyFraudDetails'UserReport'EnumSafe) = "safe"

instance Data.Aeson.Types.FromJSON.FromJSON PostChargesChargeRequestBodyFraudDetails'UserReport' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "" -> PostChargesChargeRequestBodyFraudDetails'UserReport'EnumEmptyString
            | val GHC.Classes.== "fraudulent" -> PostChargesChargeRequestBodyFraudDetails'UserReport'EnumFraudulent
            | val GHC.Classes.== "safe" -> PostChargesChargeRequestBodyFraudDetails'UserReport'EnumSafe
            | GHC.Base.otherwise -> PostChargesChargeRequestBodyFraudDetails'UserReport'Other val
      )

-- | Defines the oneOf schema located at @paths.\/v1\/charges\/{charge}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.metadata.anyOf@ in the specification.
--
-- Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostChargesChargeRequestBodyMetadata'Variants
  = -- | Represents the JSON value @""@
    PostChargesChargeRequestBodyMetadata'EmptyString
  | PostChargesChargeRequestBodyMetadata'Object Data.Aeson.Types.Internal.Object
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostChargesChargeRequestBodyMetadata'Variants where
  toJSON (PostChargesChargeRequestBodyMetadata'Object a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PostChargesChargeRequestBodyMetadata'EmptyString) = ""

instance Data.Aeson.Types.FromJSON.FromJSON PostChargesChargeRequestBodyMetadata'Variants where
  parseJSON val =
    if
        | val GHC.Classes.== "" -> GHC.Base.pure PostChargesChargeRequestBodyMetadata'EmptyString
        | GHC.Base.otherwise -> case (PostChargesChargeRequestBodyMetadata'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
            Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the object schema located at @paths.\/v1\/charges\/{charge}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.shipping@ in the specification.
--
-- Shipping information for the charge. Helps prevent fraud on charges for physical goods.
data PostChargesChargeRequestBodyShipping' = PostChargesChargeRequestBodyShipping'
  { -- | address
    postChargesChargeRequestBodyShipping'Address :: PostChargesChargeRequestBodyShipping'Address',
    -- | carrier
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postChargesChargeRequestBodyShipping'Carrier :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | name
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postChargesChargeRequestBodyShipping'Name :: Data.Text.Internal.Text,
    -- | phone
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postChargesChargeRequestBodyShipping'Phone :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | tracking_number
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postChargesChargeRequestBodyShipping'TrackingNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostChargesChargeRequestBodyShipping' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["address" Data.Aeson.Types.ToJSON..= postChargesChargeRequestBodyShipping'Address obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("carrier" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyShipping'Carrier obj) : ["name" Data.Aeson.Types.ToJSON..= postChargesChargeRequestBodyShipping'Name obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("phone" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyShipping'Phone obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tracking_number" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyShipping'TrackingNumber obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["address" Data.Aeson.Types.ToJSON..= postChargesChargeRequestBodyShipping'Address obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("carrier" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyShipping'Carrier obj) : ["name" Data.Aeson.Types.ToJSON..= postChargesChargeRequestBodyShipping'Name obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("phone" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyShipping'Phone obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tracking_number" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyShipping'TrackingNumber obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostChargesChargeRequestBodyShipping' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesChargeRequestBodyShipping'" (\obj -> ((((GHC.Base.pure PostChargesChargeRequestBodyShipping' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "carrier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "tracking_number"))

-- | Create a new 'PostChargesChargeRequestBodyShipping'' with all required fields.
mkPostChargesChargeRequestBodyShipping' ::
  -- | 'postChargesChargeRequestBodyShipping'Address'
  PostChargesChargeRequestBodyShipping'Address' ->
  -- | 'postChargesChargeRequestBodyShipping'Name'
  Data.Text.Internal.Text ->
  PostChargesChargeRequestBodyShipping'
mkPostChargesChargeRequestBodyShipping' postChargesChargeRequestBodyShipping'Address postChargesChargeRequestBodyShipping'Name =
  PostChargesChargeRequestBodyShipping'
    { postChargesChargeRequestBodyShipping'Address = postChargesChargeRequestBodyShipping'Address,
      postChargesChargeRequestBodyShipping'Carrier = GHC.Maybe.Nothing,
      postChargesChargeRequestBodyShipping'Name = postChargesChargeRequestBodyShipping'Name,
      postChargesChargeRequestBodyShipping'Phone = GHC.Maybe.Nothing,
      postChargesChargeRequestBodyShipping'TrackingNumber = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/charges\/{charge}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.shipping.properties.address@ in the specification.
data PostChargesChargeRequestBodyShipping'Address' = PostChargesChargeRequestBodyShipping'Address'
  { -- | city
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postChargesChargeRequestBodyShipping'Address'City :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | country
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postChargesChargeRequestBodyShipping'Address'Country :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | line1
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postChargesChargeRequestBodyShipping'Address'Line1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | line2
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postChargesChargeRequestBodyShipping'Address'Line2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | postal_code
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postChargesChargeRequestBodyShipping'Address'PostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | state
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postChargesChargeRequestBodyShipping'Address'State :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostChargesChargeRequestBodyShipping'Address' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyShipping'Address'City obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyShipping'Address'Country obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line1" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyShipping'Address'Line1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line2" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyShipping'Address'Line2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyShipping'Address'PostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyShipping'Address'State obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyShipping'Address'City obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyShipping'Address'Country obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line1" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyShipping'Address'Line1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line2" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyShipping'Address'Line2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyShipping'Address'PostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (postChargesChargeRequestBodyShipping'Address'State obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostChargesChargeRequestBodyShipping'Address' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesChargeRequestBodyShipping'Address'" (\obj -> (((((GHC.Base.pure PostChargesChargeRequestBodyShipping'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "state"))

-- | Create a new 'PostChargesChargeRequestBodyShipping'Address'' with all required fields.
mkPostChargesChargeRequestBodyShipping'Address' :: PostChargesChargeRequestBodyShipping'Address'
mkPostChargesChargeRequestBodyShipping'Address' =
  PostChargesChargeRequestBodyShipping'Address'
    { postChargesChargeRequestBodyShipping'Address'City = GHC.Maybe.Nothing,
      postChargesChargeRequestBodyShipping'Address'Country = GHC.Maybe.Nothing,
      postChargesChargeRequestBodyShipping'Address'Line1 = GHC.Maybe.Nothing,
      postChargesChargeRequestBodyShipping'Address'Line2 = GHC.Maybe.Nothing,
      postChargesChargeRequestBodyShipping'Address'PostalCode = GHC.Maybe.Nothing,
      postChargesChargeRequestBodyShipping'Address'State = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'postChargesCharge'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostChargesChargeResponseError' is used.
data PostChargesChargeResponse
  = -- | Means either no matching case available or a parse error
    PostChargesChargeResponseError GHC.Base.String
  | -- | Successful response.
    PostChargesChargeResponse200 Charge
  | -- | Error response.
    PostChargesChargeResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
