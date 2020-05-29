{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postPaymentMethodsPaymentMethod
module StripeAPI.Operations.PostPaymentMethodsPaymentMethod where

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

-- | > POST /v1/payment_methods/{payment_method}
-- 
-- \<p>Updates a PaymentMethod object. A PaymentMethod must be attached a customer to be updated.\<\/p>
postPaymentMethodsPaymentMethod :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                             -- ^ payment_method | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostPaymentMethodsPaymentMethodRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostPaymentMethodsPaymentMethodResponse)) -- ^ Monad containing the result of the operation
postPaymentMethodsPaymentMethod config
                                paymentMethod
                                body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostPaymentMethodsPaymentMethodResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentMethodsPaymentMethodResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                               PaymentMethod)
                                                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentMethodsPaymentMethodResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                 Error)
                                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/payment_methods/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel paymentMethod)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/payment_methods/{payment_method}
-- 
-- The same as 'postPaymentMethodsPaymentMethod' but returns the raw 'Data.ByteString.Char8.ByteString'
postPaymentMethodsPaymentMethodRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                    StripeAPI.Common.SecurityScheme s) =>
                                      StripeAPI.Common.Configuration s ->
                                      GHC.Base.String ->
                                      GHC.Maybe.Maybe PostPaymentMethodsPaymentMethodRequestBody ->
                                      m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPaymentMethodsPaymentMethodRaw config
                                   paymentMethod
                                   body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/payment_methods/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel paymentMethod)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/payment_methods/{payment_method}
-- 
-- Monadic version of 'postPaymentMethodsPaymentMethod' (use with 'StripeAPI.Common.runWithConfiguration')
postPaymentMethodsPaymentMethodM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                  StripeAPI.Common.SecurityScheme s) =>
                                    GHC.Base.String ->
                                    GHC.Maybe.Maybe PostPaymentMethodsPaymentMethodRequestBody ->
                                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                       m
                                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                           (Network.HTTP.Client.Types.Response PostPaymentMethodsPaymentMethodResponse))
postPaymentMethodsPaymentMethodM paymentMethod
                                 body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostPaymentMethodsPaymentMethodResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentMethodsPaymentMethodResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                PaymentMethod)
                                                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentMethodsPaymentMethodResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/payment_methods/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel paymentMethod)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/payment_methods/{payment_method}
-- 
-- Monadic version of 'postPaymentMethodsPaymentMethodRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postPaymentMethodsPaymentMethodRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                     StripeAPI.Common.SecurityScheme s) =>
                                       GHC.Base.String ->
                                       GHC.Maybe.Maybe PostPaymentMethodsPaymentMethodRequestBody ->
                                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                          m
                                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPaymentMethodsPaymentMethodRawM paymentMethod
                                    body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/payment_methods/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel paymentMethod)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postPaymentMethodsPaymentMethodRequestBody
-- 
-- 
data PostPaymentMethodsPaymentMethodRequestBody = PostPaymentMethodsPaymentMethodRequestBody {
  -- | billing_details: Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
  postPaymentMethodsPaymentMethodRequestBodyBillingDetails :: (GHC.Maybe.Maybe PostPaymentMethodsPaymentMethodRequestBodyBillingDetails')
  -- | card: If this is a \`card\` PaymentMethod, this hash contains the user\'s card details.
  , postPaymentMethodsPaymentMethodRequestBodyCard :: (GHC.Maybe.Maybe PostPaymentMethodsPaymentMethodRequestBodyCard')
  -- | expand: Specifies which fields in the response should be expanded.
  , postPaymentMethodsPaymentMethodRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postPaymentMethodsPaymentMethodRequestBodyMetadata :: (GHC.Maybe.Maybe PostPaymentMethodsPaymentMethodRequestBodyMetadata')
  -- | sepa_debit: If this is a \`sepa_debit\` PaymentMethod, this hash contains details about the SEPA debit bank account.
  , postPaymentMethodsPaymentMethodRequestBodySepaDebit :: (GHC.Maybe.Maybe PostPaymentMethodsPaymentMethodRequestBodySepaDebit')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentMethodsPaymentMethodRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "billing_details" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails obj) : (Data.Aeson..=) "card" (postPaymentMethodsPaymentMethodRequestBodyCard obj) : (Data.Aeson..=) "expand" (postPaymentMethodsPaymentMethodRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postPaymentMethodsPaymentMethodRequestBodyMetadata obj) : (Data.Aeson..=) "sepa_debit" (postPaymentMethodsPaymentMethodRequestBodySepaDebit obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "billing_details" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails obj) GHC.Base.<> ((Data.Aeson..=) "card" (postPaymentMethodsPaymentMethodRequestBodyCard obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postPaymentMethodsPaymentMethodRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postPaymentMethodsPaymentMethodRequestBodyMetadata obj) GHC.Base.<> (Data.Aeson..=) "sepa_debit" (postPaymentMethodsPaymentMethodRequestBodySepaDebit obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsPaymentMethodRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodsPaymentMethodRequestBody" (\obj -> ((((GHC.Base.pure PostPaymentMethodsPaymentMethodRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sepa_debit"))
-- | Defines the data type for the schema postPaymentMethodsPaymentMethodRequestBodyBilling_details\'
-- 
-- Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
data PostPaymentMethodsPaymentMethodRequestBodyBillingDetails' = PostPaymentMethodsPaymentMethodRequestBodyBillingDetails' {
  -- | address
  postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address :: (GHC.Maybe.Maybe PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address')
  -- | email
  , postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Email :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Name :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | phone
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Phone :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address obj) : (Data.Aeson..=) "email" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Email obj) : (Data.Aeson..=) "name" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Name obj) : (Data.Aeson..=) "phone" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Phone obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address obj) GHC.Base.<> ((Data.Aeson..=) "email" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Email obj) GHC.Base.<> ((Data.Aeson..=) "name" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Name obj) GHC.Base.<> (Data.Aeson..=) "phone" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Phone obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'" (\obj -> (((GHC.Base.pure PostPaymentMethodsPaymentMethodRequestBodyBillingDetails' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone"))
-- | Defines the data type for the schema postPaymentMethodsPaymentMethodRequestBodyBilling_details\'Address\'
-- 
-- 
data PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address' = PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'Line1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'City obj) : (Data.Aeson..=) "country" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'Country obj) : (Data.Aeson..=) "line1" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'Line1 obj) : (Data.Aeson..=) "line2" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'PostalCode obj) : (Data.Aeson..=) "state" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'" (\obj -> (((((GHC.Base.pure PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
-- | Defines the data type for the schema postPaymentMethodsPaymentMethodRequestBodyCard\'
-- 
-- If this is a \`card\` PaymentMethod, this hash contains the user\'s card details.
data PostPaymentMethodsPaymentMethodRequestBodyCard' = PostPaymentMethodsPaymentMethodRequestBodyCard' {
  -- | exp_month
  postPaymentMethodsPaymentMethodRequestBodyCard'ExpMonth :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | exp_year
  , postPaymentMethodsPaymentMethodRequestBodyCard'ExpYear :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentMethodsPaymentMethodRequestBodyCard'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "exp_month" (postPaymentMethodsPaymentMethodRequestBodyCard'ExpMonth obj) : (Data.Aeson..=) "exp_year" (postPaymentMethodsPaymentMethodRequestBodyCard'ExpYear obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "exp_month" (postPaymentMethodsPaymentMethodRequestBodyCard'ExpMonth obj) GHC.Base.<> (Data.Aeson..=) "exp_year" (postPaymentMethodsPaymentMethodRequestBodyCard'ExpYear obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsPaymentMethodRequestBodyCard'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodsPaymentMethodRequestBodyCard'" (\obj -> (GHC.Base.pure PostPaymentMethodsPaymentMethodRequestBodyCard' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_year"))
-- | Defines the data type for the schema postPaymentMethodsPaymentMethodRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostPaymentMethodsPaymentMethodRequestBodyMetadata' = PostPaymentMethodsPaymentMethodRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentMethodsPaymentMethodRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsPaymentMethodRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodsPaymentMethodRequestBodyMetadata'" (\obj -> GHC.Base.pure PostPaymentMethodsPaymentMethodRequestBodyMetadata')
-- | Defines the data type for the schema postPaymentMethodsPaymentMethodRequestBodySepa_debit\'
-- 
-- If this is a \`sepa_debit\` PaymentMethod, this hash contains details about the SEPA debit bank account.
data PostPaymentMethodsPaymentMethodRequestBodySepaDebit' = PostPaymentMethodsPaymentMethodRequestBodySepaDebit' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentMethodsPaymentMethodRequestBodySepaDebit'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsPaymentMethodRequestBodySepaDebit'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodsPaymentMethodRequestBodySepaDebit'" (\obj -> GHC.Base.pure PostPaymentMethodsPaymentMethodRequestBodySepaDebit')
-- | Represents a response of the operation 'postPaymentMethodsPaymentMethod'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostPaymentMethodsPaymentMethodResponseError' is used.
data PostPaymentMethodsPaymentMethodResponse =                   
   PostPaymentMethodsPaymentMethodResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostPaymentMethodsPaymentMethodResponse200 PaymentMethod     -- ^ Successful response.
  | PostPaymentMethodsPaymentMethodResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
