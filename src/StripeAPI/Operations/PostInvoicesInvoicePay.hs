{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postInvoicesInvoicePay
module StripeAPI.Operations.PostInvoicesInvoicePay where

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

-- | > POST /v1/invoices/{invoice}/pay
-- 
-- \<p>Stripe automatically creates and then attempts to collect payment on invoices for customers on subscriptions according to your \<a href=\"https:\/\/dashboard.stripe.com\/account\/billing\/automatic\">subscriptions settings\<\/a>. However, if you’d like to attempt payment on an invoice out of the normal collection schedule or for some other reason, you can do so.\<\/p>
postInvoicesInvoicePay :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                    -- ^ invoice | Constraints: Maximum length of 5000
  -> PostInvoicesInvoicePayRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostInvoicesInvoicePayResponse)) -- ^ Monad containing the result of the operation
postInvoicesInvoicePay config
                       invoice
                       body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostInvoicesInvoicePayResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesInvoicePayResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                    Invoice)
                                                                                                                                                                                              | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesInvoicePayResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/invoices/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel invoice)) GHC.Base.++ "/pay"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/invoices/{invoice}/pay
-- 
-- The same as 'postInvoicesInvoicePay' but returns the raw 'Data.ByteString.Char8.ByteString'
postInvoicesInvoicePayRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             StripeAPI.Common.Configuration s ->
                             GHC.Base.String ->
                             PostInvoicesInvoicePayRequestBody ->
                             m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                   (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postInvoicesInvoicePayRaw config
                          invoice
                          body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/invoices/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel invoice)) GHC.Base.++ "/pay"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/invoices/{invoice}/pay
-- 
-- Monadic version of 'postInvoicesInvoicePay' (use with 'StripeAPI.Common.runWithConfiguration')
postInvoicesInvoicePayM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                         StripeAPI.Common.SecurityScheme s) =>
                           GHC.Base.String ->
                           PostInvoicesInvoicePayRequestBody ->
                           Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                              m
                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                  (Network.HTTP.Client.Types.Response PostInvoicesInvoicePayResponse))
postInvoicesInvoicePayM invoice
                        body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostInvoicesInvoicePayResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesInvoicePayResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                     Invoice)
                                                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesInvoicePayResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/invoices/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel invoice)) GHC.Base.++ "/pay"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/invoices/{invoice}/pay
-- 
-- Monadic version of 'postInvoicesInvoicePayRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postInvoicesInvoicePayRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                            StripeAPI.Common.SecurityScheme s) =>
                              GHC.Base.String ->
                              PostInvoicesInvoicePayRequestBody ->
                              Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                 m
                                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postInvoicesInvoicePayRawM invoice
                           body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/invoices/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel invoice)) GHC.Base.++ "/pay"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postInvoicesInvoicePayRequestBody
-- 
-- 
data PostInvoicesInvoicePayRequestBody = PostInvoicesInvoicePayRequestBody {
  -- | expand: Specifies which fields in the response should be expanded.
  postInvoicesInvoicePayRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | forgive: In cases where the source used to pay the invoice has insufficient funds, passing \`forgive=true\` controls whether a charge should be attempted for the full amount available on the source, up to the amount to fully pay the invoice. This effectively forgives the difference between the amount available on the source and the amount due. 
  -- 
  -- Passing \`forgive=false\` will fail the charge if the source hasn\'t been pre-funded with the right amount. An example for this case is with ACH Credit Transfers and wires: if the amount wired is less than the amount due by a small amount, you might want to forgive the difference.
  , postInvoicesInvoicePayRequestBodyForgive :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | off_session: Indicates if a customer is on or off-session while an invoice payment is attempted.
  , postInvoicesInvoicePayRequestBodyOffSession :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | paid_out_of_band: Boolean representing whether an invoice is paid outside of Stripe. This will result in no charge being made.
  , postInvoicesInvoicePayRequestBodyPaidOutOfBand :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | payment_method: A PaymentMethod to be charged. The PaymentMethod must be the ID of a PaymentMethod belonging to the customer associated with the invoice being paid.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postInvoicesInvoicePayRequestBodyPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | source: A payment source to be charged. The source must be the ID of a source belonging to the customer associated with the invoice being paid.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postInvoicesInvoicePayRequestBodySource :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoicesInvoicePayRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "expand" (postInvoicesInvoicePayRequestBodyExpand obj) : (Data.Aeson..=) "forgive" (postInvoicesInvoicePayRequestBodyForgive obj) : (Data.Aeson..=) "off_session" (postInvoicesInvoicePayRequestBodyOffSession obj) : (Data.Aeson..=) "paid_out_of_band" (postInvoicesInvoicePayRequestBodyPaidOutOfBand obj) : (Data.Aeson..=) "payment_method" (postInvoicesInvoicePayRequestBodyPaymentMethod obj) : (Data.Aeson..=) "source" (postInvoicesInvoicePayRequestBodySource obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "expand" (postInvoicesInvoicePayRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "forgive" (postInvoicesInvoicePayRequestBodyForgive obj) GHC.Base.<> ((Data.Aeson..=) "off_session" (postInvoicesInvoicePayRequestBodyOffSession obj) GHC.Base.<> ((Data.Aeson..=) "paid_out_of_band" (postInvoicesInvoicePayRequestBodyPaidOutOfBand obj) GHC.Base.<> ((Data.Aeson..=) "payment_method" (postInvoicesInvoicePayRequestBodyPaymentMethod obj) GHC.Base.<> (Data.Aeson..=) "source" (postInvoicesInvoicePayRequestBodySource obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostInvoicesInvoicePayRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoicesInvoicePayRequestBody" (\obj -> (((((GHC.Base.pure PostInvoicesInvoicePayRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "forgive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "off_session")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "paid_out_of_band")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source"))
-- | Represents a response of the operation 'postInvoicesInvoicePay'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostInvoicesInvoicePayResponseError' is used.
data PostInvoicesInvoicePayResponse =                   
   PostInvoicesInvoicePayResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostInvoicesInvoicePayResponse200 Invoice           -- ^ Successful response.
  | PostInvoicesInvoicePayResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
