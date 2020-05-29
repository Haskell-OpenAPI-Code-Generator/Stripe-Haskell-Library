{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postCharges
module StripeAPI.Operations.PostCharges where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Generics
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

-- | > POST /v1/charges
-- 
-- \<p>To charge a credit card or other payment source, you create a \<code>Charge\<\/code> object. If your API key is in test mode, the supplied payment source (e.g., card) won’t actually be charged, although everything else will occur as if in live mode. (Stripe assumes that the charge would have completed successfully).\<\/p>
postCharges :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Maybe.Maybe PostChargesRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostChargesResponse)) -- ^ Monad containing the result of the operation
postCharges config
            body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostChargesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostChargesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                   Charge)
                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostChargesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/charges") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/charges
-- 
-- The same as 'postCharges' but returns the raw 'Data.ByteString.Char8.ByteString'
postChargesRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                StripeAPI.Common.SecurityScheme s) =>
                  StripeAPI.Common.Configuration s ->
                  GHC.Maybe.Maybe PostChargesRequestBody ->
                  m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postChargesRaw config
               body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/charges") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/charges
-- 
-- Monadic version of 'postCharges' (use with 'StripeAPI.Common.runWithConfiguration')
postChargesM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                              StripeAPI.Common.SecurityScheme s) =>
                GHC.Maybe.Maybe PostChargesRequestBody ->
                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                   m
                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                       (Network.HTTP.Client.Types.Response PostChargesResponse))
postChargesM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostChargesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostChargesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                    Charge)
                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostChargesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/charges") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/charges
-- 
-- Monadic version of 'postChargesRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postChargesRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                 StripeAPI.Common.SecurityScheme s) =>
                   GHC.Maybe.Maybe PostChargesRequestBody ->
                   Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                      m
                                                      (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postChargesRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/charges") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postChargesRequestBody
-- 
-- 
data PostChargesRequestBody = PostChargesRequestBody {
  -- | amount: Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https:\/\/stripe.com\/docs\/currencies\#zero-decimal) (e.g., 100 cents to charge \$1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is \$0.50 US or [equivalent in charge currency](https:\/\/stripe.com\/docs\/currencies\#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of \$999,999.99).
  postChargesRequestBodyAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | application_fee
  , postChargesRequestBodyApplicationFee :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | application_fee_amount: A fee in %s that will be applied to the charge and transferred to the application owner\'s Stripe account. The request must be made with an OAuth key or the \`Stripe-Account\` header in order to take an application fee. For more information, see the application fees [documentation](https:\/\/stripe.com\/docs\/connect\/direct-charges\#collecting-fees).
  , postChargesRequestBodyApplicationFeeAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | capture: Whether to immediately capture the charge. Defaults to \`true\`. When \`false\`, the charge issues an authorization (or pre-authorization), and will need to be [captured](https:\/\/stripe.com\/docs\/api\#capture_charge) later. Uncaptured charges expire in _seven days_. For more information, see the [authorizing charges and settling later](https:\/\/stripe.com\/docs\/charges\/placing-a-hold) documentation.
  , postChargesRequestBodyCapture :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | card: A token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/stripe.js).
  , postChargesRequestBodyCard :: (GHC.Maybe.Maybe PostChargesRequestBodyCard'Variants)
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  , postChargesRequestBodyCurrency :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | customer: The ID of an existing customer that will be charged in this request.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  , postChargesRequestBodyCustomer :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | description: An arbitrary string which you can attach to a \`Charge\` object. It is displayed when in the web interface alongside the charge. Note that if you use Stripe to send automatic email receipts to your customers, your receipt emails will include the \`description\` of the charge(s) that they are describing.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 40000
  , postChargesRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | destination
  , postChargesRequestBodyDestination :: (GHC.Maybe.Maybe PostChargesRequestBodyDestination'Variants)
  -- | expand: Specifies which fields in the response should be expanded.
  , postChargesRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postChargesRequestBodyMetadata :: (GHC.Maybe.Maybe PostChargesRequestBodyMetadata')
  -- | on_behalf_of: The Stripe account ID for which these funds are intended. Automatically set if you use the \`destination\` parameter. For details, see [Creating Separate Charges and Transfers](https:\/\/stripe.com\/docs\/connect\/charges-transfers\#on-behalf-of).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesRequestBodyOnBehalfOf :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | receipt_email: The email address to which this charge\'s [receipt](https:\/\/stripe.com\/docs\/dashboard\/receipts) will be sent. The receipt will not be sent until the charge is paid, and no receipts will be sent for test mode charges. If this charge is for a [Customer](https:\/\/stripe.com\/docs\/api\/customers\/object), the email address specified here will override the customer\'s email address. If \`receipt_email\` is specified for a charge in live mode, a receipt will be sent regardless of your [email settings](https:\/\/dashboard.stripe.com\/account\/emails).
  , postChargesRequestBodyReceiptEmail :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | shipping: Shipping information for the charge. Helps prevent fraud on charges for physical goods.
  , postChargesRequestBodyShipping :: (GHC.Maybe.Maybe PostChargesRequestBodyShipping')
  -- | source: A payment source to be charged. This can be the ID of a [card](https:\/\/stripe.com\/docs\/api\#cards) (i.e., credit or debit card), a [bank account](https:\/\/stripe.com\/docs\/api\#bank_accounts), a [source](https:\/\/stripe.com\/docs\/api\#sources), a [token](https:\/\/stripe.com\/docs\/api\#tokens), or a [connected account](https:\/\/stripe.com\/docs\/connect\/account-debits\#charging-a-connected-account). For certain sources---namely, [cards](https:\/\/stripe.com\/docs\/api\#cards), [bank accounts](https:\/\/stripe.com\/docs\/api\#bank_accounts), and attached [sources](https:\/\/stripe.com\/docs\/api\#sources)---you must also pass the ID of the associated customer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesRequestBodySource :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | statement_descriptor: For card charges, use \`statement_descriptor_suffix\` instead. Otherwise, you can use this value as the complete description of a charge on your customers’ statements. Must contain at least one letter, maximum 22 characters.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 22
  , postChargesRequestBodyStatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | statement_descriptor_suffix: Provides information about the charge that customers see on their statements. Concatenated with the prefix (shortened descriptor) or statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters for the concatenated descriptor.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 22
  , postChargesRequestBodyStatementDescriptorSuffix :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | transfer_data: An optional dictionary including the account to automatically transfer to as part of a destination charge. [See the Connect documentation](https:\/\/stripe.com\/docs\/connect\/destination-charges) for details.
  , postChargesRequestBodyTransferData :: (GHC.Maybe.Maybe PostChargesRequestBodyTransferData')
  -- | transfer_group: A string that identifies this transaction as part of a group. For details, see [Grouping transactions](https:\/\/stripe.com\/docs\/connect\/charges-transfers\#transfer-options).
  , postChargesRequestBodyTransferGroup :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postChargesRequestBodyAmount obj) : (Data.Aeson..=) "application_fee" (postChargesRequestBodyApplicationFee obj) : (Data.Aeson..=) "application_fee_amount" (postChargesRequestBodyApplicationFeeAmount obj) : (Data.Aeson..=) "capture" (postChargesRequestBodyCapture obj) : (Data.Aeson..=) "card" (postChargesRequestBodyCard obj) : (Data.Aeson..=) "currency" (postChargesRequestBodyCurrency obj) : (Data.Aeson..=) "customer" (postChargesRequestBodyCustomer obj) : (Data.Aeson..=) "description" (postChargesRequestBodyDescription obj) : (Data.Aeson..=) "destination" (postChargesRequestBodyDestination obj) : (Data.Aeson..=) "expand" (postChargesRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postChargesRequestBodyMetadata obj) : (Data.Aeson..=) "on_behalf_of" (postChargesRequestBodyOnBehalfOf obj) : (Data.Aeson..=) "receipt_email" (postChargesRequestBodyReceiptEmail obj) : (Data.Aeson..=) "shipping" (postChargesRequestBodyShipping obj) : (Data.Aeson..=) "source" (postChargesRequestBodySource obj) : (Data.Aeson..=) "statement_descriptor" (postChargesRequestBodyStatementDescriptor obj) : (Data.Aeson..=) "statement_descriptor_suffix" (postChargesRequestBodyStatementDescriptorSuffix obj) : (Data.Aeson..=) "transfer_data" (postChargesRequestBodyTransferData obj) : (Data.Aeson..=) "transfer_group" (postChargesRequestBodyTransferGroup obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postChargesRequestBodyAmount obj) GHC.Base.<> ((Data.Aeson..=) "application_fee" (postChargesRequestBodyApplicationFee obj) GHC.Base.<> ((Data.Aeson..=) "application_fee_amount" (postChargesRequestBodyApplicationFeeAmount obj) GHC.Base.<> ((Data.Aeson..=) "capture" (postChargesRequestBodyCapture obj) GHC.Base.<> ((Data.Aeson..=) "card" (postChargesRequestBodyCard obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postChargesRequestBodyCurrency obj) GHC.Base.<> ((Data.Aeson..=) "customer" (postChargesRequestBodyCustomer obj) GHC.Base.<> ((Data.Aeson..=) "description" (postChargesRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "destination" (postChargesRequestBodyDestination obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postChargesRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postChargesRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "on_behalf_of" (postChargesRequestBodyOnBehalfOf obj) GHC.Base.<> ((Data.Aeson..=) "receipt_email" (postChargesRequestBodyReceiptEmail obj) GHC.Base.<> ((Data.Aeson..=) "shipping" (postChargesRequestBodyShipping obj) GHC.Base.<> ((Data.Aeson..=) "source" (postChargesRequestBodySource obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor" (postChargesRequestBodyStatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor_suffix" (postChargesRequestBodyStatementDescriptorSuffix obj) GHC.Base.<> ((Data.Aeson..=) "transfer_data" (postChargesRequestBodyTransferData obj) GHC.Base.<> (Data.Aeson..=) "transfer_group" (postChargesRequestBodyTransferGroup obj)))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesRequestBody" (\obj -> ((((((((((((((((((GHC.Base.pure PostChargesRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "capture")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "destination")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "on_behalf_of")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "receipt_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_suffix")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transfer_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transfer_group"))
-- | Defines the data type for the schema postChargesRequestBodyCard\'OneOf2
-- 
-- 
data PostChargesRequestBodyCard'OneOf2 = PostChargesRequestBodyCard'OneOf2 {
  -- | address_city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postChargesRequestBodyCard'OneOf2AddressCity :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesRequestBodyCard'OneOf2AddressCountry :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesRequestBodyCard'OneOf2AddressLine1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesRequestBodyCard'OneOf2AddressLine2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesRequestBodyCard'OneOf2AddressState :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_zip
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesRequestBodyCard'OneOf2AddressZip :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | cvc
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesRequestBodyCard'OneOf2Cvc :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | exp_month
  , postChargesRequestBodyCard'OneOf2ExpMonth :: GHC.Integer.Type.Integer
  -- | exp_year
  , postChargesRequestBodyCard'OneOf2ExpYear :: GHC.Integer.Type.Integer
  -- | metadata
  , postChargesRequestBodyCard'OneOf2Metadata :: (GHC.Maybe.Maybe PostChargesRequestBodyCard'OneOf2Metadata')
  -- | name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesRequestBodyCard'OneOf2Name :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | number
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesRequestBodyCard'OneOf2Number :: GHC.Base.String
  -- | object
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesRequestBodyCard'OneOf2Object :: (GHC.Maybe.Maybe PostChargesRequestBodyCard'OneOf2Object')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesRequestBodyCard'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address_city" (postChargesRequestBodyCard'OneOf2AddressCity obj) : (Data.Aeson..=) "address_country" (postChargesRequestBodyCard'OneOf2AddressCountry obj) : (Data.Aeson..=) "address_line1" (postChargesRequestBodyCard'OneOf2AddressLine1 obj) : (Data.Aeson..=) "address_line2" (postChargesRequestBodyCard'OneOf2AddressLine2 obj) : (Data.Aeson..=) "address_state" (postChargesRequestBodyCard'OneOf2AddressState obj) : (Data.Aeson..=) "address_zip" (postChargesRequestBodyCard'OneOf2AddressZip obj) : (Data.Aeson..=) "cvc" (postChargesRequestBodyCard'OneOf2Cvc obj) : (Data.Aeson..=) "exp_month" (postChargesRequestBodyCard'OneOf2ExpMonth obj) : (Data.Aeson..=) "exp_year" (postChargesRequestBodyCard'OneOf2ExpYear obj) : (Data.Aeson..=) "metadata" (postChargesRequestBodyCard'OneOf2Metadata obj) : (Data.Aeson..=) "name" (postChargesRequestBodyCard'OneOf2Name obj) : (Data.Aeson..=) "number" (postChargesRequestBodyCard'OneOf2Number obj) : (Data.Aeson..=) "object" (postChargesRequestBodyCard'OneOf2Object obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address_city" (postChargesRequestBodyCard'OneOf2AddressCity obj) GHC.Base.<> ((Data.Aeson..=) "address_country" (postChargesRequestBodyCard'OneOf2AddressCountry obj) GHC.Base.<> ((Data.Aeson..=) "address_line1" (postChargesRequestBodyCard'OneOf2AddressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "address_line2" (postChargesRequestBodyCard'OneOf2AddressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "address_state" (postChargesRequestBodyCard'OneOf2AddressState obj) GHC.Base.<> ((Data.Aeson..=) "address_zip" (postChargesRequestBodyCard'OneOf2AddressZip obj) GHC.Base.<> ((Data.Aeson..=) "cvc" (postChargesRequestBodyCard'OneOf2Cvc obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (postChargesRequestBodyCard'OneOf2ExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (postChargesRequestBodyCard'OneOf2ExpYear obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postChargesRequestBodyCard'OneOf2Metadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (postChargesRequestBodyCard'OneOf2Name obj) GHC.Base.<> ((Data.Aeson..=) "number" (postChargesRequestBodyCard'OneOf2Number obj) GHC.Base.<> (Data.Aeson..=) "object" (postChargesRequestBodyCard'OneOf2Object obj)))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesRequestBodyCard'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesRequestBodyCard'OneOf2" (\obj -> ((((((((((((GHC.Base.pure PostChargesRequestBodyCard'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object"))
-- | Defines the data type for the schema postChargesRequestBodyCard\'OneOf2Metadata\'
-- 
-- 
data PostChargesRequestBodyCard'OneOf2Metadata' = PostChargesRequestBodyCard'OneOf2Metadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesRequestBodyCard'OneOf2Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesRequestBodyCard'OneOf2Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesRequestBodyCard'OneOf2Metadata'" (\obj -> GHC.Base.pure PostChargesRequestBodyCard'OneOf2Metadata')
-- | Defines the enum schema postChargesRequestBodyCard\'OneOf2Object\'
-- 
-- 
data PostChargesRequestBodyCard'OneOf2Object'
    = PostChargesRequestBodyCard'OneOf2Object'EnumOther Data.Aeson.Types.Internal.Value
    | PostChargesRequestBodyCard'OneOf2Object'EnumTyped GHC.Base.String
    | PostChargesRequestBodyCard'OneOf2Object'EnumStringCard
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesRequestBodyCard'OneOf2Object'
    where toJSON (PostChargesRequestBodyCard'OneOf2Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostChargesRequestBodyCard'OneOf2Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostChargesRequestBodyCard'OneOf2Object'EnumStringCard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card"
instance Data.Aeson.FromJSON PostChargesRequestBodyCard'OneOf2Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card")
                                          then PostChargesRequestBodyCard'OneOf2Object'EnumStringCard
                                          else PostChargesRequestBodyCard'OneOf2Object'EnumOther val)
-- | Define the one-of schema postChargesRequestBodyCard\'
-- 
-- A token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/stripe.js).
data PostChargesRequestBodyCard'Variants
    = PostChargesRequestBodyCard'String GHC.Base.String
    | PostChargesRequestBodyCard'PostChargesRequestBodyCard'OneOf2 PostChargesRequestBodyCard'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostChargesRequestBodyCard'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostChargesRequestBodyCard'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postChargesRequestBodyDestination\'OneOf2
-- 
-- 
data PostChargesRequestBodyDestination'OneOf2 = PostChargesRequestBodyDestination'OneOf2 {
  -- | account
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postChargesRequestBodyDestination'OneOf2Account :: GHC.Base.String
  -- | amount
  , postChargesRequestBodyDestination'OneOf2Amount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesRequestBodyDestination'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account" (postChargesRequestBodyDestination'OneOf2Account obj) : (Data.Aeson..=) "amount" (postChargesRequestBodyDestination'OneOf2Amount obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account" (postChargesRequestBodyDestination'OneOf2Account obj) GHC.Base.<> (Data.Aeson..=) "amount" (postChargesRequestBodyDestination'OneOf2Amount obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesRequestBodyDestination'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesRequestBodyDestination'OneOf2" (\obj -> (GHC.Base.pure PostChargesRequestBodyDestination'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount"))
-- | Define the one-of schema postChargesRequestBodyDestination\'
-- 
-- 
data PostChargesRequestBodyDestination'Variants
    = PostChargesRequestBodyDestination'String GHC.Base.String
    | PostChargesRequestBodyDestination'PostChargesRequestBodyDestination'OneOf2 PostChargesRequestBodyDestination'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostChargesRequestBodyDestination'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostChargesRequestBodyDestination'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postChargesRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostChargesRequestBodyMetadata' = PostChargesRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesRequestBodyMetadata'" (\obj -> GHC.Base.pure PostChargesRequestBodyMetadata')
-- | Defines the data type for the schema postChargesRequestBodyShipping\'
-- 
-- Shipping information for the charge. Helps prevent fraud on charges for physical goods.
data PostChargesRequestBodyShipping' = PostChargesRequestBodyShipping' {
  -- | address
  postChargesRequestBodyShipping'Address :: PostChargesRequestBodyShipping'Address'
  -- | carrier
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesRequestBodyShipping'Carrier :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesRequestBodyShipping'Name :: GHC.Base.String
  -- | phone
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesRequestBodyShipping'Phone :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | tracking_number
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesRequestBodyShipping'TrackingNumber :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesRequestBodyShipping'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postChargesRequestBodyShipping'Address obj) : (Data.Aeson..=) "carrier" (postChargesRequestBodyShipping'Carrier obj) : (Data.Aeson..=) "name" (postChargesRequestBodyShipping'Name obj) : (Data.Aeson..=) "phone" (postChargesRequestBodyShipping'Phone obj) : (Data.Aeson..=) "tracking_number" (postChargesRequestBodyShipping'TrackingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postChargesRequestBodyShipping'Address obj) GHC.Base.<> ((Data.Aeson..=) "carrier" (postChargesRequestBodyShipping'Carrier obj) GHC.Base.<> ((Data.Aeson..=) "name" (postChargesRequestBodyShipping'Name obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postChargesRequestBodyShipping'Phone obj) GHC.Base.<> (Data.Aeson..=) "tracking_number" (postChargesRequestBodyShipping'TrackingNumber obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesRequestBodyShipping'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesRequestBodyShipping'" (\obj -> ((((GHC.Base.pure PostChargesRequestBodyShipping' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "carrier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tracking_number"))
-- | Defines the data type for the schema postChargesRequestBodyShipping\'Address\'
-- 
-- 
data PostChargesRequestBodyShipping'Address' = PostChargesRequestBodyShipping'Address' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postChargesRequestBodyShipping'Address'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesRequestBodyShipping'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesRequestBodyShipping'Address'Line1 :: GHC.Base.String
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesRequestBodyShipping'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesRequestBodyShipping'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesRequestBodyShipping'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesRequestBodyShipping'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postChargesRequestBodyShipping'Address'City obj) : (Data.Aeson..=) "country" (postChargesRequestBodyShipping'Address'Country obj) : (Data.Aeson..=) "line1" (postChargesRequestBodyShipping'Address'Line1 obj) : (Data.Aeson..=) "line2" (postChargesRequestBodyShipping'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postChargesRequestBodyShipping'Address'PostalCode obj) : (Data.Aeson..=) "state" (postChargesRequestBodyShipping'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postChargesRequestBodyShipping'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postChargesRequestBodyShipping'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postChargesRequestBodyShipping'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postChargesRequestBodyShipping'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postChargesRequestBodyShipping'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postChargesRequestBodyShipping'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesRequestBodyShipping'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesRequestBodyShipping'Address'" (\obj -> (((((GHC.Base.pure PostChargesRequestBodyShipping'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
-- | Defines the data type for the schema postChargesRequestBodyTransfer_data\'
-- 
-- An optional dictionary including the account to automatically transfer to as part of a destination charge. [See the Connect documentation](https:\/\/stripe.com\/docs\/connect\/destination-charges) for details.
data PostChargesRequestBodyTransferData' = PostChargesRequestBodyTransferData' {
  -- | amount
  postChargesRequestBodyTransferData'Amount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | destination
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesRequestBodyTransferData'Destination :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesRequestBodyTransferData'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postChargesRequestBodyTransferData'Amount obj) : (Data.Aeson..=) "destination" (postChargesRequestBodyTransferData'Destination obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postChargesRequestBodyTransferData'Amount obj) GHC.Base.<> (Data.Aeson..=) "destination" (postChargesRequestBodyTransferData'Destination obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesRequestBodyTransferData'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesRequestBodyTransferData'" (\obj -> (GHC.Base.pure PostChargesRequestBodyTransferData' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "destination"))
-- | Represents a response of the operation 'postCharges'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostChargesResponseError' is used.
data PostChargesResponse =                   
   PostChargesResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostChargesResponse200 Charge            -- ^ Successful response.
  | PostChargesResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
