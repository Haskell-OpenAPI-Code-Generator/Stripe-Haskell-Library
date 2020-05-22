{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postPaymentMethodsPaymentMethodAttach
module StripeAPI.Operations.PostPaymentMethodsPaymentMethodAttach where

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

-- | > POST /v1/payment_methods/{payment_method}/attach
-- 
-- \<p>Attaches a PaymentMethod object to a Customer.\<\/p>
-- 
-- \<p>To use this PaymentMethod as the default for invoice or subscription payments,
-- set \<a href=\"\/docs\/api\/customers\/update\#update_customer-invoice_settings-default_payment_method\">\<code>invoice_settings.default_payment_method\<\/code>\<\/a>,
-- on the Customer to the PaymentMethod’s ID.\<\/p>
postPaymentMethodsPaymentMethodAttach :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                                   -- ^ payment_method | Constraints: Maximum length of 5000
  -> PostPaymentMethodsPaymentMethodAttachRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostPaymentMethodsPaymentMethodAttachResponse)) -- ^ Monad containing the result of the operation
postPaymentMethodsPaymentMethodAttach config
                                      paymentMethod
                                      body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostPaymentMethodsPaymentMethodAttachResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentMethodsPaymentMethodAttachResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 PaymentMethod)
                                                                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentMethodsPaymentMethodAttachResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/payment_methods/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel paymentMethod)) GHC.Base.++ "/attach"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/payment_methods/{payment_method}/attach
-- 
-- The same as 'postPaymentMethodsPaymentMethodAttach' but returns the raw 'Data.ByteString.Char8.ByteString'
postPaymentMethodsPaymentMethodAttachRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                          StripeAPI.Common.SecurityScheme s) =>
                                            StripeAPI.Common.Configuration s ->
                                            GHC.Base.String ->
                                            PostPaymentMethodsPaymentMethodAttachRequestBody ->
                                            m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPaymentMethodsPaymentMethodAttachRaw config
                                         paymentMethod
                                         body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/payment_methods/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel paymentMethod)) GHC.Base.++ "/attach"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/payment_methods/{payment_method}/attach
-- 
-- Monadic version of 'postPaymentMethodsPaymentMethodAttach' (use with 'StripeAPI.Common.runWithConfiguration')
postPaymentMethodsPaymentMethodAttachM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                        StripeAPI.Common.SecurityScheme s) =>
                                          GHC.Base.String ->
                                          PostPaymentMethodsPaymentMethodAttachRequestBody ->
                                          Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                             m
                                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                 (Network.HTTP.Client.Types.Response PostPaymentMethodsPaymentMethodAttachResponse))
postPaymentMethodsPaymentMethodAttachM paymentMethod
                                       body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostPaymentMethodsPaymentMethodAttachResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentMethodsPaymentMethodAttachResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  PaymentMethod)
                                                                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentMethodsPaymentMethodAttachResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/payment_methods/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel paymentMethod)) GHC.Base.++ "/attach"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/payment_methods/{payment_method}/attach
-- 
-- Monadic version of 'postPaymentMethodsPaymentMethodAttachRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postPaymentMethodsPaymentMethodAttachRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                           StripeAPI.Common.SecurityScheme s) =>
                                             GHC.Base.String ->
                                             PostPaymentMethodsPaymentMethodAttachRequestBody ->
                                             Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                m
                                                                                (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                    (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPaymentMethodsPaymentMethodAttachRawM paymentMethod
                                          body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/payment_methods/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel paymentMethod)) GHC.Base.++ "/attach"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postPaymentMethodsPaymentMethodAttachRequestBody
-- 
-- 
data PostPaymentMethodsPaymentMethodAttachRequestBody = PostPaymentMethodsPaymentMethodAttachRequestBody {
  -- | customer: The ID of the customer to which to attach the PaymentMethod.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postPaymentMethodsPaymentMethodAttachRequestBodyCustomer :: GHC.Base.String
  -- | expand: Specifies which fields in the response should be expanded.
  , postPaymentMethodsPaymentMethodAttachRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentMethodsPaymentMethodAttachRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "customer" (postPaymentMethodsPaymentMethodAttachRequestBodyCustomer obj) : (Data.Aeson..=) "expand" (postPaymentMethodsPaymentMethodAttachRequestBodyExpand obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "customer" (postPaymentMethodsPaymentMethodAttachRequestBodyCustomer obj) GHC.Base.<> (Data.Aeson..=) "expand" (postPaymentMethodsPaymentMethodAttachRequestBodyExpand obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsPaymentMethodAttachRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodsPaymentMethodAttachRequestBody" (\obj -> (GHC.Base.pure PostPaymentMethodsPaymentMethodAttachRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand"))
-- | Represents a response of the operation 'postPaymentMethodsPaymentMethodAttach'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostPaymentMethodsPaymentMethodAttachResponseError' is used.
data PostPaymentMethodsPaymentMethodAttachResponse =                   
   PostPaymentMethodsPaymentMethodAttachResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostPaymentMethodsPaymentMethodAttachResponse200 PaymentMethod     -- ^ Successful response.
  | PostPaymentMethodsPaymentMethodAttachResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
