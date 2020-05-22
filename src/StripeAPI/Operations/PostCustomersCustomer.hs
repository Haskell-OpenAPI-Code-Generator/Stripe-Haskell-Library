{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postCustomersCustomer
module StripeAPI.Operations.PostCustomersCustomer where

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

-- | > POST /v1/customers/{customer}
-- 
-- \<p>Updates the specified customer by setting the values of the parameters passed. Any parameters not provided will be left unchanged. For example, if you pass the \<strong>source\<\/strong> parameter, that becomes the customer’s active source (e.g., a card) to be used for all charges in the future. When you update a customer to a new valid card source by passing the \<strong>source\<\/strong> parameter: for each of the customer’s current subscriptions, if the subscription bills automatically and is in the \<code>past_due\<\/code> state, then the latest open invoice for the subscription with automatic collection enabled will be retried. This retry will not count as an automatic retry, and will not affect the next regularly scheduled payment for the invoice. Changing the \<strong>default_source\<\/strong> for a customer will not trigger this behavior.\<\/p>
-- 
-- \<p>This request accepts mostly the same arguments as the customer creation call.\<\/p>
postCustomersCustomer :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                   -- ^ customer | Constraints: Maximum length of 5000
  -> PostCustomersCustomerRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostCustomersCustomerResponse)) -- ^ Monad containing the result of the operation
postCustomersCustomer config
                      customer
                      body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                 Customer)
                                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/customers/{customer}
-- 
-- The same as 'postCustomersCustomer' but returns the raw 'Data.ByteString.Char8.ByteString'
postCustomersCustomerRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                          StripeAPI.Common.SecurityScheme s) =>
                            StripeAPI.Common.Configuration s ->
                            GHC.Base.String ->
                            PostCustomersCustomerRequestBody ->
                            m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerRaw config
                         customer
                         body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/customers/{customer}
-- 
-- Monadic version of 'postCustomersCustomer' (use with 'StripeAPI.Common.runWithConfiguration')
postCustomersCustomerM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          GHC.Base.String ->
                          PostCustomersCustomerRequestBody ->
                          Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                             m
                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                 (Network.HTTP.Client.Types.Response PostCustomersCustomerResponse))
postCustomersCustomerM customer
                       body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                  Customer)
                                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/customers/{customer}
-- 
-- Monadic version of 'postCustomersCustomerRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postCustomersCustomerRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             GHC.Base.String ->
                             PostCustomersCustomerRequestBody ->
                             Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                m
                                                                (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                    (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerRawM customer
                          body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postCustomersCustomerRequestBody
-- 
-- 
data PostCustomersCustomerRequestBody = PostCustomersCustomerRequestBody {
  -- | address: The customer\'s address.
  postCustomersCustomerRequestBodyAddress :: (GHC.Maybe.Maybe PostCustomersCustomerRequestBodyAddress'Variants)
  -- | balance: An integer amount in %s that represents the customer\'s current balance, which affect the customer\'s future invoices. A negative amount represents a credit that decreases the amount due on an invoice; a positive amount increases the amount due on an invoice.
  , postCustomersCustomerRequestBodyBalance :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | bank_account: Either a token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/stripe.js), or a dictionary containing a user\'s bank account details.
  , postCustomersCustomerRequestBodyBankAccount :: (GHC.Maybe.Maybe PostCustomersCustomerRequestBodyBankAccount'Variants)
  -- | card: A token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/stripe.js).
  , postCustomersCustomerRequestBodyCard :: (GHC.Maybe.Maybe PostCustomersCustomerRequestBodyCard'Variants)
  -- | coupon
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyCoupon :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | default_alipay_account: ID of Alipay account to make the customer\'s new default for invoice payments.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  , postCustomersCustomerRequestBodyDefaultAlipayAccount :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | default_bank_account: ID of bank account to make the customer\'s new default for invoice payments.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  , postCustomersCustomerRequestBodyDefaultBankAccount :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | default_card: ID of card to make the customer\'s new default for invoice payments.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  , postCustomersCustomerRequestBodyDefaultCard :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | default_source: If you are using payment methods created via the PaymentMethods API, see the [invoice_settings.default_payment_method](https:\/\/stripe.com\/docs\/api\/customers\/update\#update_customer-invoice_settings-default_payment_method) parameter.
  -- 
  -- Provide the ID of a payment source already attached to this customer to make it this customer\'s default payment source.
  -- 
  -- If you want to add a new payment source and make it the default, see the [source](https:\/\/stripe.com\/docs\/api\/customers\/update\#update_customer-source) property.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  , postCustomersCustomerRequestBodyDefaultSource :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | description: An arbitrary string that you can attach to a customer object. It is displayed alongside the customer in the dashboard.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | email: Customer\'s email address. It\'s displayed alongside the customer in your dashboard and can be useful for searching and tracking. This may be up to *512 characters*.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 512
  , postCustomersCustomerRequestBodyEmail :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | expand: Specifies which fields in the response should be expanded.
  , postCustomersCustomerRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | invoice_prefix: The prefix for the customer used to generate unique invoice numbers. Must be 3–12 uppercase letters or numbers.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyInvoicePrefix :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | invoice_settings: Default invoice settings for this customer.
  , postCustomersCustomerRequestBodyInvoiceSettings :: (GHC.Maybe.Maybe PostCustomersCustomerRequestBodyInvoiceSettings')
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postCustomersCustomerRequestBodyMetadata :: (GHC.Maybe.Maybe PostCustomersCustomerRequestBodyMetadata')
  -- | name: The customer\'s full name or business name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 256
  , postCustomersCustomerRequestBodyName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | next_invoice_sequence: The sequence to be used on the customer\'s next invoice. Defaults to 1.
  , postCustomersCustomerRequestBodyNextInvoiceSequence :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | phone: The customer\'s phone number.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 20
  , postCustomersCustomerRequestBodyPhone :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | preferred_locales: Customer\'s preferred languages, ordered by preference.
  , postCustomersCustomerRequestBodyPreferredLocales :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | shipping: The customer\'s shipping information. Appears on invoices emailed to this customer.
  , postCustomersCustomerRequestBodyShipping :: (GHC.Maybe.Maybe PostCustomersCustomerRequestBodyShipping'Variants)
  -- | source
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodySource :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | tax_exempt: The customer\'s tax exemption. One of \`none\`, \`exempt\`, or \`reverse\`.
  , postCustomersCustomerRequestBodyTaxExempt :: (GHC.Maybe.Maybe PostCustomersCustomerRequestBodyTaxExempt')
  -- | trial_end: Unix timestamp representing the end of the trial period the customer will get before being charged for the first time. This will always overwrite any trials that might apply via a subscribed plan. If set, trial_end will override the default trial period of the plan the customer is being subscribed to. The special value \`now\` can be provided to end the customer\'s trial immediately. Can be at most two years from \`billing_cycle_anchor\`.
  , postCustomersCustomerRequestBodyTrialEnd :: (GHC.Maybe.Maybe PostCustomersCustomerRequestBodyTrialEnd'Variants)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postCustomersCustomerRequestBodyAddress obj) : (Data.Aeson..=) "balance" (postCustomersCustomerRequestBodyBalance obj) : (Data.Aeson..=) "bank_account" (postCustomersCustomerRequestBodyBankAccount obj) : (Data.Aeson..=) "card" (postCustomersCustomerRequestBodyCard obj) : (Data.Aeson..=) "coupon" (postCustomersCustomerRequestBodyCoupon obj) : (Data.Aeson..=) "default_alipay_account" (postCustomersCustomerRequestBodyDefaultAlipayAccount obj) : (Data.Aeson..=) "default_bank_account" (postCustomersCustomerRequestBodyDefaultBankAccount obj) : (Data.Aeson..=) "default_card" (postCustomersCustomerRequestBodyDefaultCard obj) : (Data.Aeson..=) "default_source" (postCustomersCustomerRequestBodyDefaultSource obj) : (Data.Aeson..=) "description" (postCustomersCustomerRequestBodyDescription obj) : (Data.Aeson..=) "email" (postCustomersCustomerRequestBodyEmail obj) : (Data.Aeson..=) "expand" (postCustomersCustomerRequestBodyExpand obj) : (Data.Aeson..=) "invoice_prefix" (postCustomersCustomerRequestBodyInvoicePrefix obj) : (Data.Aeson..=) "invoice_settings" (postCustomersCustomerRequestBodyInvoiceSettings obj) : (Data.Aeson..=) "metadata" (postCustomersCustomerRequestBodyMetadata obj) : (Data.Aeson..=) "name" (postCustomersCustomerRequestBodyName obj) : (Data.Aeson..=) "next_invoice_sequence" (postCustomersCustomerRequestBodyNextInvoiceSequence obj) : (Data.Aeson..=) "phone" (postCustomersCustomerRequestBodyPhone obj) : (Data.Aeson..=) "preferred_locales" (postCustomersCustomerRequestBodyPreferredLocales obj) : (Data.Aeson..=) "shipping" (postCustomersCustomerRequestBodyShipping obj) : (Data.Aeson..=) "source" (postCustomersCustomerRequestBodySource obj) : (Data.Aeson..=) "tax_exempt" (postCustomersCustomerRequestBodyTaxExempt obj) : (Data.Aeson..=) "trial_end" (postCustomersCustomerRequestBodyTrialEnd obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postCustomersCustomerRequestBodyAddress obj) GHC.Base.<> ((Data.Aeson..=) "balance" (postCustomersCustomerRequestBodyBalance obj) GHC.Base.<> ((Data.Aeson..=) "bank_account" (postCustomersCustomerRequestBodyBankAccount obj) GHC.Base.<> ((Data.Aeson..=) "card" (postCustomersCustomerRequestBodyCard obj) GHC.Base.<> ((Data.Aeson..=) "coupon" (postCustomersCustomerRequestBodyCoupon obj) GHC.Base.<> ((Data.Aeson..=) "default_alipay_account" (postCustomersCustomerRequestBodyDefaultAlipayAccount obj) GHC.Base.<> ((Data.Aeson..=) "default_bank_account" (postCustomersCustomerRequestBodyDefaultBankAccount obj) GHC.Base.<> ((Data.Aeson..=) "default_card" (postCustomersCustomerRequestBodyDefaultCard obj) GHC.Base.<> ((Data.Aeson..=) "default_source" (postCustomersCustomerRequestBodyDefaultSource obj) GHC.Base.<> ((Data.Aeson..=) "description" (postCustomersCustomerRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "email" (postCustomersCustomerRequestBodyEmail obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postCustomersCustomerRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "invoice_prefix" (postCustomersCustomerRequestBodyInvoicePrefix obj) GHC.Base.<> ((Data.Aeson..=) "invoice_settings" (postCustomersCustomerRequestBodyInvoiceSettings obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCustomersCustomerRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCustomersCustomerRequestBodyName obj) GHC.Base.<> ((Data.Aeson..=) "next_invoice_sequence" (postCustomersCustomerRequestBodyNextInvoiceSequence obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postCustomersCustomerRequestBodyPhone obj) GHC.Base.<> ((Data.Aeson..=) "preferred_locales" (postCustomersCustomerRequestBodyPreferredLocales obj) GHC.Base.<> ((Data.Aeson..=) "shipping" (postCustomersCustomerRequestBodyShipping obj) GHC.Base.<> ((Data.Aeson..=) "source" (postCustomersCustomerRequestBodySource obj) GHC.Base.<> ((Data.Aeson..=) "tax_exempt" (postCustomersCustomerRequestBodyTaxExempt obj) GHC.Base.<> (Data.Aeson..=) "trial_end" (postCustomersCustomerRequestBodyTrialEnd obj)))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerRequestBody" (\obj -> ((((((((((((((((((((((GHC.Base.pure PostCustomersCustomerRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "balance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "coupon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_alipay_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_bank_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoice_prefix")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoice_settings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "next_invoice_sequence")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "preferred_locales")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_exempt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_end"))
-- | Defines the enum schema postCustomersCustomerRequestBodyAddress\'OneOf1
-- 
-- 
data PostCustomersCustomerRequestBodyAddress'OneOf1
    = PostCustomersCustomerRequestBodyAddress'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerRequestBodyAddress'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerRequestBodyAddress'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyAddress'OneOf1
    where toJSON (PostCustomersCustomerRequestBodyAddress'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyAddress'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyAddress'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerRequestBodyAddress'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerRequestBodyAddress'OneOf1EnumString_
                                          else PostCustomersCustomerRequestBodyAddress'OneOf1EnumOther val)
-- | Defines the data type for the schema postCustomersCustomerRequestBodyAddress\'OneOf2
-- 
-- 
data PostCustomersCustomerRequestBodyAddress'OneOf2 = PostCustomersCustomerRequestBodyAddress'OneOf2 {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postCustomersCustomerRequestBodyAddress'OneOf2City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyAddress'OneOf2Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyAddress'OneOf2Line1 :: GHC.Base.String
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyAddress'OneOf2Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyAddress'OneOf2PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyAddress'OneOf2State :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyAddress'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postCustomersCustomerRequestBodyAddress'OneOf2City obj) : (Data.Aeson..=) "country" (postCustomersCustomerRequestBodyAddress'OneOf2Country obj) : (Data.Aeson..=) "line1" (postCustomersCustomerRequestBodyAddress'OneOf2Line1 obj) : (Data.Aeson..=) "line2" (postCustomersCustomerRequestBodyAddress'OneOf2Line2 obj) : (Data.Aeson..=) "postal_code" (postCustomersCustomerRequestBodyAddress'OneOf2PostalCode obj) : (Data.Aeson..=) "state" (postCustomersCustomerRequestBodyAddress'OneOf2State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postCustomersCustomerRequestBodyAddress'OneOf2City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postCustomersCustomerRequestBodyAddress'OneOf2Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postCustomersCustomerRequestBodyAddress'OneOf2Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postCustomersCustomerRequestBodyAddress'OneOf2Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postCustomersCustomerRequestBodyAddress'OneOf2PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postCustomersCustomerRequestBodyAddress'OneOf2State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerRequestBodyAddress'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerRequestBodyAddress'OneOf2" (\obj -> (((((GHC.Base.pure PostCustomersCustomerRequestBodyAddress'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
-- | Define the one-of schema postCustomersCustomerRequestBodyAddress\'
-- 
-- The customer\'s address.
data PostCustomersCustomerRequestBodyAddress'Variants
    = PostCustomersCustomerRequestBodyAddress'PostCustomersCustomerRequestBodyAddress'OneOf1 PostCustomersCustomerRequestBodyAddress'OneOf1
    | PostCustomersCustomerRequestBodyAddress'PostCustomersCustomerRequestBodyAddress'OneOf2 PostCustomersCustomerRequestBodyAddress'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyAddress'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerRequestBodyAddress'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postCustomersCustomerRequestBodyBank_account\'OneOf2
-- 
-- 
data PostCustomersCustomerRequestBodyBankAccount'OneOf2 = PostCustomersCustomerRequestBodyBankAccount'OneOf2 {
  -- | account_holder_name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | account_holder_type
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType :: (GHC.Maybe.Maybe PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType')
  -- | account_number
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyBankAccount'OneOf2AccountNumber :: GHC.Base.String
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyBankAccount'OneOf2Country :: GHC.Base.String
  -- | currency
  , postCustomersCustomerRequestBodyBankAccount'OneOf2Currency :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | object
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyBankAccount'OneOf2Object :: (GHC.Maybe.Maybe PostCustomersCustomerRequestBodyBankAccount'OneOf2Object')
  -- | routing_number
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyBankAccount'OneOf2RoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyBankAccount'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_holder_name" (postCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (postCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType obj) : (Data.Aeson..=) "account_number" (postCustomersCustomerRequestBodyBankAccount'OneOf2AccountNumber obj) : (Data.Aeson..=) "country" (postCustomersCustomerRequestBodyBankAccount'OneOf2Country obj) : (Data.Aeson..=) "currency" (postCustomersCustomerRequestBodyBankAccount'OneOf2Currency obj) : (Data.Aeson..=) "object" (postCustomersCustomerRequestBodyBankAccount'OneOf2Object obj) : (Data.Aeson..=) "routing_number" (postCustomersCustomerRequestBodyBankAccount'OneOf2RoutingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_holder_name" (postCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (postCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "account_number" (postCustomersCustomerRequestBodyBankAccount'OneOf2AccountNumber obj) GHC.Base.<> ((Data.Aeson..=) "country" (postCustomersCustomerRequestBodyBankAccount'OneOf2Country obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postCustomersCustomerRequestBodyBankAccount'OneOf2Currency obj) GHC.Base.<> ((Data.Aeson..=) "object" (postCustomersCustomerRequestBodyBankAccount'OneOf2Object obj) GHC.Base.<> (Data.Aeson..=) "routing_number" (postCustomersCustomerRequestBodyBankAccount'OneOf2RoutingNumber obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerRequestBodyBankAccount'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerRequestBodyBankAccount'OneOf2" (\obj -> ((((((GHC.Base.pure PostCustomersCustomerRequestBodyBankAccount'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number"))
-- | Defines the enum schema postCustomersCustomerRequestBodyBank_account\'OneOf2Account_holder_type\'
-- 
-- 
data PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'
    = PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'EnumTyped GHC.Base.String
    | PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany
    | PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'
    where toJSON (PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company"
          toJSON (PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
instance Data.Aeson.FromJSON PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company")
                                          then PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                then PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual
                                                else PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther val)
-- | Defines the enum schema postCustomersCustomerRequestBodyBank_account\'OneOf2Object\'
-- 
-- 
data PostCustomersCustomerRequestBodyBankAccount'OneOf2Object'
    = PostCustomersCustomerRequestBodyBankAccount'OneOf2Object'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerRequestBodyBankAccount'OneOf2Object'EnumTyped GHC.Base.String
    | PostCustomersCustomerRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyBankAccount'OneOf2Object'
    where toJSON (PostCustomersCustomerRequestBodyBankAccount'OneOf2Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyBankAccount'OneOf2Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account"
instance Data.Aeson.FromJSON PostCustomersCustomerRequestBodyBankAccount'OneOf2Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account")
                                          then PostCustomersCustomerRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount
                                          else PostCustomersCustomerRequestBodyBankAccount'OneOf2Object'EnumOther val)
-- | Define the one-of schema postCustomersCustomerRequestBodyBank_account\'
-- 
-- Either a token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/stripe.js), or a dictionary containing a user\'s bank account details.
data PostCustomersCustomerRequestBodyBankAccount'Variants
    = PostCustomersCustomerRequestBodyBankAccount'String GHC.Base.String
    | PostCustomersCustomerRequestBodyBankAccount'PostCustomersCustomerRequestBodyBankAccount'OneOf2 PostCustomersCustomerRequestBodyBankAccount'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyBankAccount'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerRequestBodyBankAccount'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postCustomersCustomerRequestBodyCard\'OneOf2
-- 
-- 
data PostCustomersCustomerRequestBodyCard'OneOf2 = PostCustomersCustomerRequestBodyCard'OneOf2 {
  -- | address_city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postCustomersCustomerRequestBodyCard'OneOf2AddressCity :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyCard'OneOf2AddressCountry :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyCard'OneOf2AddressLine1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyCard'OneOf2AddressLine2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyCard'OneOf2AddressState :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_zip
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyCard'OneOf2AddressZip :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | cvc
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyCard'OneOf2Cvc :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | exp_month
  , postCustomersCustomerRequestBodyCard'OneOf2ExpMonth :: GHC.Integer.Type.Integer
  -- | exp_year
  , postCustomersCustomerRequestBodyCard'OneOf2ExpYear :: GHC.Integer.Type.Integer
  -- | metadata
  , postCustomersCustomerRequestBodyCard'OneOf2Metadata :: (GHC.Maybe.Maybe PostCustomersCustomerRequestBodyCard'OneOf2Metadata')
  -- | name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyCard'OneOf2Name :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | number
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyCard'OneOf2Number :: GHC.Base.String
  -- | object
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyCard'OneOf2Object :: (GHC.Maybe.Maybe PostCustomersCustomerRequestBodyCard'OneOf2Object')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyCard'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address_city" (postCustomersCustomerRequestBodyCard'OneOf2AddressCity obj) : (Data.Aeson..=) "address_country" (postCustomersCustomerRequestBodyCard'OneOf2AddressCountry obj) : (Data.Aeson..=) "address_line1" (postCustomersCustomerRequestBodyCard'OneOf2AddressLine1 obj) : (Data.Aeson..=) "address_line2" (postCustomersCustomerRequestBodyCard'OneOf2AddressLine2 obj) : (Data.Aeson..=) "address_state" (postCustomersCustomerRequestBodyCard'OneOf2AddressState obj) : (Data.Aeson..=) "address_zip" (postCustomersCustomerRequestBodyCard'OneOf2AddressZip obj) : (Data.Aeson..=) "cvc" (postCustomersCustomerRequestBodyCard'OneOf2Cvc obj) : (Data.Aeson..=) "exp_month" (postCustomersCustomerRequestBodyCard'OneOf2ExpMonth obj) : (Data.Aeson..=) "exp_year" (postCustomersCustomerRequestBodyCard'OneOf2ExpYear obj) : (Data.Aeson..=) "metadata" (postCustomersCustomerRequestBodyCard'OneOf2Metadata obj) : (Data.Aeson..=) "name" (postCustomersCustomerRequestBodyCard'OneOf2Name obj) : (Data.Aeson..=) "number" (postCustomersCustomerRequestBodyCard'OneOf2Number obj) : (Data.Aeson..=) "object" (postCustomersCustomerRequestBodyCard'OneOf2Object obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address_city" (postCustomersCustomerRequestBodyCard'OneOf2AddressCity obj) GHC.Base.<> ((Data.Aeson..=) "address_country" (postCustomersCustomerRequestBodyCard'OneOf2AddressCountry obj) GHC.Base.<> ((Data.Aeson..=) "address_line1" (postCustomersCustomerRequestBodyCard'OneOf2AddressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "address_line2" (postCustomersCustomerRequestBodyCard'OneOf2AddressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "address_state" (postCustomersCustomerRequestBodyCard'OneOf2AddressState obj) GHC.Base.<> ((Data.Aeson..=) "address_zip" (postCustomersCustomerRequestBodyCard'OneOf2AddressZip obj) GHC.Base.<> ((Data.Aeson..=) "cvc" (postCustomersCustomerRequestBodyCard'OneOf2Cvc obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (postCustomersCustomerRequestBodyCard'OneOf2ExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (postCustomersCustomerRequestBodyCard'OneOf2ExpYear obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCustomersCustomerRequestBodyCard'OneOf2Metadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCustomersCustomerRequestBodyCard'OneOf2Name obj) GHC.Base.<> ((Data.Aeson..=) "number" (postCustomersCustomerRequestBodyCard'OneOf2Number obj) GHC.Base.<> (Data.Aeson..=) "object" (postCustomersCustomerRequestBodyCard'OneOf2Object obj)))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerRequestBodyCard'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerRequestBodyCard'OneOf2" (\obj -> ((((((((((((GHC.Base.pure PostCustomersCustomerRequestBodyCard'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object"))
-- | Defines the data type for the schema postCustomersCustomerRequestBodyCard\'OneOf2Metadata\'
-- 
-- 
data PostCustomersCustomerRequestBodyCard'OneOf2Metadata' = PostCustomersCustomerRequestBodyCard'OneOf2Metadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyCard'OneOf2Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerRequestBodyCard'OneOf2Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerRequestBodyCard'OneOf2Metadata'" (\obj -> GHC.Base.pure PostCustomersCustomerRequestBodyCard'OneOf2Metadata')
-- | Defines the enum schema postCustomersCustomerRequestBodyCard\'OneOf2Object\'
-- 
-- 
data PostCustomersCustomerRequestBodyCard'OneOf2Object'
    = PostCustomersCustomerRequestBodyCard'OneOf2Object'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerRequestBodyCard'OneOf2Object'EnumTyped GHC.Base.String
    | PostCustomersCustomerRequestBodyCard'OneOf2Object'EnumStringCard
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyCard'OneOf2Object'
    where toJSON (PostCustomersCustomerRequestBodyCard'OneOf2Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyCard'OneOf2Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyCard'OneOf2Object'EnumStringCard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card"
instance Data.Aeson.FromJSON PostCustomersCustomerRequestBodyCard'OneOf2Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card")
                                          then PostCustomersCustomerRequestBodyCard'OneOf2Object'EnumStringCard
                                          else PostCustomersCustomerRequestBodyCard'OneOf2Object'EnumOther val)
-- | Define the one-of schema postCustomersCustomerRequestBodyCard\'
-- 
-- A token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/stripe.js).
data PostCustomersCustomerRequestBodyCard'Variants
    = PostCustomersCustomerRequestBodyCard'String GHC.Base.String
    | PostCustomersCustomerRequestBodyCard'PostCustomersCustomerRequestBodyCard'OneOf2 PostCustomersCustomerRequestBodyCard'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyCard'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerRequestBodyCard'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postCustomersCustomerRequestBodyInvoice_settings\'
-- 
-- Default invoice settings for this customer.
data PostCustomersCustomerRequestBodyInvoiceSettings' = PostCustomersCustomerRequestBodyInvoiceSettings' {
  -- | custom_fields
  postCustomersCustomerRequestBodyInvoiceSettings'CustomFields :: (GHC.Maybe.Maybe PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'Variants)
  -- | default_payment_method
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyInvoiceSettings'DefaultPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | footer
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyInvoiceSettings'Footer :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyInvoiceSettings'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "custom_fields" (postCustomersCustomerRequestBodyInvoiceSettings'CustomFields obj) : (Data.Aeson..=) "default_payment_method" (postCustomersCustomerRequestBodyInvoiceSettings'DefaultPaymentMethod obj) : (Data.Aeson..=) "footer" (postCustomersCustomerRequestBodyInvoiceSettings'Footer obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "custom_fields" (postCustomersCustomerRequestBodyInvoiceSettings'CustomFields obj) GHC.Base.<> ((Data.Aeson..=) "default_payment_method" (postCustomersCustomerRequestBodyInvoiceSettings'DefaultPaymentMethod obj) GHC.Base.<> (Data.Aeson..=) "footer" (postCustomersCustomerRequestBodyInvoiceSettings'Footer obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerRequestBodyInvoiceSettings'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerRequestBodyInvoiceSettings'" (\obj -> ((GHC.Base.pure PostCustomersCustomerRequestBodyInvoiceSettings' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "custom_fields")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "footer"))
-- | Defines the enum schema postCustomersCustomerRequestBodyInvoice_settings\'Custom_fields\'OneOf1
-- 
-- 
data PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf1
    = PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf1
    where toJSON (PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf1EnumString_
                                          else PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf1EnumOther val)
-- | Defines the data type for the schema postCustomersCustomerRequestBodyInvoice_settings\'Custom_fields\'OneOf2
-- 
-- 
data PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf2 = PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf2 {
  -- | name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 30
  postCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf2Name :: GHC.Base.String
  -- | value
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 30
  , postCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf2Value :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "name" (postCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf2Name obj) : (Data.Aeson..=) "value" (postCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf2Value obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "name" (postCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf2Name obj) GHC.Base.<> (Data.Aeson..=) "value" (postCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf2Value obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf2" (\obj -> (GHC.Base.pure PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "value"))
-- | Define the one-of schema postCustomersCustomerRequestBodyInvoice_settings\'Custom_fields\'
-- 
-- 
data PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'Variants
    = PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf1 PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf1
    | PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'ListPostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf2 ([] PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf2)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postCustomersCustomerRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostCustomersCustomerRequestBodyMetadata' = PostCustomersCustomerRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerRequestBodyMetadata'" (\obj -> GHC.Base.pure PostCustomersCustomerRequestBodyMetadata')
-- | Defines the enum schema postCustomersCustomerRequestBodyShipping\'OneOf1
-- 
-- 
data PostCustomersCustomerRequestBodyShipping'OneOf1
    = PostCustomersCustomerRequestBodyShipping'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerRequestBodyShipping'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerRequestBodyShipping'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyShipping'OneOf1
    where toJSON (PostCustomersCustomerRequestBodyShipping'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyShipping'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyShipping'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerRequestBodyShipping'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerRequestBodyShipping'OneOf1EnumString_
                                          else PostCustomersCustomerRequestBodyShipping'OneOf1EnumOther val)
-- | Defines the data type for the schema postCustomersCustomerRequestBodyShipping\'OneOf2
-- 
-- 
data PostCustomersCustomerRequestBodyShipping'OneOf2 = PostCustomersCustomerRequestBodyShipping'OneOf2 {
  -- | address
  postCustomersCustomerRequestBodyShipping'OneOf2Address :: PostCustomersCustomerRequestBodyShipping'OneOf2Address'
  -- | name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyShipping'OneOf2Name :: GHC.Base.String
  -- | phone
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyShipping'OneOf2Phone :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyShipping'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postCustomersCustomerRequestBodyShipping'OneOf2Address obj) : (Data.Aeson..=) "name" (postCustomersCustomerRequestBodyShipping'OneOf2Name obj) : (Data.Aeson..=) "phone" (postCustomersCustomerRequestBodyShipping'OneOf2Phone obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postCustomersCustomerRequestBodyShipping'OneOf2Address obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCustomersCustomerRequestBodyShipping'OneOf2Name obj) GHC.Base.<> (Data.Aeson..=) "phone" (postCustomersCustomerRequestBodyShipping'OneOf2Phone obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerRequestBodyShipping'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerRequestBodyShipping'OneOf2" (\obj -> ((GHC.Base.pure PostCustomersCustomerRequestBodyShipping'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone"))
-- | Defines the data type for the schema postCustomersCustomerRequestBodyShipping\'OneOf2Address\'
-- 
-- 
data PostCustomersCustomerRequestBodyShipping'OneOf2Address' = PostCustomersCustomerRequestBodyShipping'OneOf2Address' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postCustomersCustomerRequestBodyShipping'OneOf2Address'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyShipping'OneOf2Address'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyShipping'OneOf2Address'Line1 :: GHC.Base.String
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyShipping'OneOf2Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyShipping'OneOf2Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerRequestBodyShipping'OneOf2Address'State :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyShipping'OneOf2Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postCustomersCustomerRequestBodyShipping'OneOf2Address'City obj) : (Data.Aeson..=) "country" (postCustomersCustomerRequestBodyShipping'OneOf2Address'Country obj) : (Data.Aeson..=) "line1" (postCustomersCustomerRequestBodyShipping'OneOf2Address'Line1 obj) : (Data.Aeson..=) "line2" (postCustomersCustomerRequestBodyShipping'OneOf2Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postCustomersCustomerRequestBodyShipping'OneOf2Address'PostalCode obj) : (Data.Aeson..=) "state" (postCustomersCustomerRequestBodyShipping'OneOf2Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postCustomersCustomerRequestBodyShipping'OneOf2Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postCustomersCustomerRequestBodyShipping'OneOf2Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postCustomersCustomerRequestBodyShipping'OneOf2Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postCustomersCustomerRequestBodyShipping'OneOf2Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postCustomersCustomerRequestBodyShipping'OneOf2Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postCustomersCustomerRequestBodyShipping'OneOf2Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerRequestBodyShipping'OneOf2Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerRequestBodyShipping'OneOf2Address'" (\obj -> (((((GHC.Base.pure PostCustomersCustomerRequestBodyShipping'OneOf2Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
-- | Define the one-of schema postCustomersCustomerRequestBodyShipping\'
-- 
-- The customer\'s shipping information. Appears on invoices emailed to this customer.
data PostCustomersCustomerRequestBodyShipping'Variants
    = PostCustomersCustomerRequestBodyShipping'PostCustomersCustomerRequestBodyShipping'OneOf1 PostCustomersCustomerRequestBodyShipping'OneOf1
    | PostCustomersCustomerRequestBodyShipping'PostCustomersCustomerRequestBodyShipping'OneOf2 PostCustomersCustomerRequestBodyShipping'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyShipping'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerRequestBodyShipping'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postCustomersCustomerRequestBodyTax_exempt\'
-- 
-- The customer\'s tax exemption. One of \`none\`, \`exempt\`, or \`reverse\`.
data PostCustomersCustomerRequestBodyTaxExempt'
    = PostCustomersCustomerRequestBodyTaxExempt'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerRequestBodyTaxExempt'EnumTyped GHC.Base.String
    | PostCustomersCustomerRequestBodyTaxExempt'EnumString_
    | PostCustomersCustomerRequestBodyTaxExempt'EnumStringExempt
    | PostCustomersCustomerRequestBodyTaxExempt'EnumStringNone
    | PostCustomersCustomerRequestBodyTaxExempt'EnumStringReverse
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyTaxExempt'
    where toJSON (PostCustomersCustomerRequestBodyTaxExempt'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyTaxExempt'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyTaxExempt'EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
          toJSON (PostCustomersCustomerRequestBodyTaxExempt'EnumStringExempt) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "exempt"
          toJSON (PostCustomersCustomerRequestBodyTaxExempt'EnumStringNone) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none"
          toJSON (PostCustomersCustomerRequestBodyTaxExempt'EnumStringReverse) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "reverse"
instance Data.Aeson.FromJSON PostCustomersCustomerRequestBodyTaxExempt'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerRequestBodyTaxExempt'EnumString_
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "exempt")
                                                then PostCustomersCustomerRequestBodyTaxExempt'EnumStringExempt
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none")
                                                      then PostCustomersCustomerRequestBodyTaxExempt'EnumStringNone
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "reverse")
                                                            then PostCustomersCustomerRequestBodyTaxExempt'EnumStringReverse
                                                            else PostCustomersCustomerRequestBodyTaxExempt'EnumOther val)
-- | Defines the enum schema postCustomersCustomerRequestBodyTrial_end\'OneOf1
-- 
-- 
data PostCustomersCustomerRequestBodyTrialEnd'OneOf1
    = PostCustomersCustomerRequestBodyTrialEnd'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerRequestBodyTrialEnd'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerRequestBodyTrialEnd'OneOf1EnumStringNow
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyTrialEnd'OneOf1
    where toJSON (PostCustomersCustomerRequestBodyTrialEnd'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyTrialEnd'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyTrialEnd'OneOf1EnumStringNow) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now"
instance Data.Aeson.FromJSON PostCustomersCustomerRequestBodyTrialEnd'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now")
                                          then PostCustomersCustomerRequestBodyTrialEnd'OneOf1EnumStringNow
                                          else PostCustomersCustomerRequestBodyTrialEnd'OneOf1EnumOther val)
-- | Define the one-of schema postCustomersCustomerRequestBodyTrial_end\'
-- 
-- Unix timestamp representing the end of the trial period the customer will get before being charged for the first time. This will always overwrite any trials that might apply via a subscribed plan. If set, trial_end will override the default trial period of the plan the customer is being subscribed to. The special value \`now\` can be provided to end the customer\'s trial immediately. Can be at most two years from \`billing_cycle_anchor\`.
data PostCustomersCustomerRequestBodyTrialEnd'Variants
    = PostCustomersCustomerRequestBodyTrialEnd'PostCustomersCustomerRequestBodyTrialEnd'OneOf1 PostCustomersCustomerRequestBodyTrialEnd'OneOf1
    | PostCustomersCustomerRequestBodyTrialEnd'Integer GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyTrialEnd'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerRequestBodyTrialEnd'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Represents a response of the operation 'postCustomersCustomer'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostCustomersCustomerResponseError' is used.
data PostCustomersCustomerResponse =                   
   PostCustomersCustomerResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostCustomersCustomerResponse200 Customer          -- ^ Successful response.
  | PostCustomersCustomerResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
