{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

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

-- | No summary provided
--
-- POST /v1/payment_methods/{payment_method}
postPaymentMethodsPaymentMethod :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                 StripeAPI.Common.SecurityScheme s) =>
                                   StripeAPI.Common.Configuration s ->
                                   GHC.Base.String ->
                                   PostPaymentMethodsPaymentMethodRequestBody ->
                                   m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                         (Network.HTTP.Client.Types.Response PostPaymentMethodsPaymentMethodResponse))
postPaymentMethodsPaymentMethod config
                                paymentMethod
                                body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostPaymentMethodsPaymentMethodResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentMethodsPaymentMethodResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                               PaymentMethod)
                                                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentMethodsPaymentMethodResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                 Error)
                                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/payment_methods/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel paymentMethod)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postPaymentMethodsPaymentMethodRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                    StripeAPI.Common.SecurityScheme s) =>
                                      StripeAPI.Common.Configuration s ->
                                      GHC.Base.String ->
                                      PostPaymentMethodsPaymentMethodRequestBody ->
                                      m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPaymentMethodsPaymentMethodRaw config
                                   paymentMethod
                                   body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/payment_methods/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel paymentMethod)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postPaymentMethodsPaymentMethodM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                  StripeAPI.Common.SecurityScheme s) =>
                                    GHC.Base.String ->
                                    PostPaymentMethodsPaymentMethodRequestBody ->
                                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                       m
                                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                           (Network.HTTP.Client.Types.Response PostPaymentMethodsPaymentMethodResponse))
postPaymentMethodsPaymentMethodM paymentMethod
                                 body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostPaymentMethodsPaymentMethodResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentMethodsPaymentMethodResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                PaymentMethod)
                                                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentMethodsPaymentMethodResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/payment_methods/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel paymentMethod)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postPaymentMethodsPaymentMethodRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                     StripeAPI.Common.SecurityScheme s) =>
                                       GHC.Base.String ->
                                       PostPaymentMethodsPaymentMethodRequestBody ->
                                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                          m
                                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPaymentMethodsPaymentMethodRawM paymentMethod
                                    body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/payment_methods/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel paymentMethod)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostPaymentMethodsPaymentMethodRequestBody
    = PostPaymentMethodsPaymentMethodRequestBody {postPaymentMethodsPaymentMethodRequestBodyBillingDetails :: (GHC.Maybe.Maybe PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'),
                                                  postPaymentMethodsPaymentMethodRequestBodyCard :: (GHC.Maybe.Maybe PostPaymentMethodsPaymentMethodRequestBodyCard'),
                                                  postPaymentMethodsPaymentMethodRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                                  postPaymentMethodsPaymentMethodRequestBodyMetadata :: (GHC.Maybe.Maybe PostPaymentMethodsPaymentMethodRequestBodyMetadata'),
                                                  postPaymentMethodsPaymentMethodRequestBodySepaDebit :: (GHC.Maybe.Maybe PostPaymentMethodsPaymentMethodRequestBodySepaDebit')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'
    = PostPaymentMethodsPaymentMethodRequestBodyBillingDetails' {postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address :: (GHC.Maybe.Maybe PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'),
                                                                 postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Email :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                 postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                 postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Phone :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'
    = PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address' {postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                         postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                         postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                         postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                         postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                         postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'City obj) : (Data.Aeson..=) "country" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'Country obj) : (Data.Aeson..=) "line1" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'Line1 obj) : (Data.Aeson..=) "line2" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'PostalCode obj) : (Data.Aeson..=) "state" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'" (\obj -> (((((GHC.Base.pure PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
instance Data.Aeson.ToJSON PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address obj) : (Data.Aeson..=) "email" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Email obj) : (Data.Aeson..=) "name" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Name obj) : (Data.Aeson..=) "phone" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Phone obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address obj) GHC.Base.<> ((Data.Aeson..=) "email" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Email obj) GHC.Base.<> ((Data.Aeson..=) "name" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Name obj) GHC.Base.<> (Data.Aeson..=) "phone" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Phone obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'" (\obj -> (((GHC.Base.pure PostPaymentMethodsPaymentMethodRequestBodyBillingDetails' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone"))
data PostPaymentMethodsPaymentMethodRequestBodyCard'
    = PostPaymentMethodsPaymentMethodRequestBodyCard' {postPaymentMethodsPaymentMethodRequestBodyCard'ExpMonth :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                       postPaymentMethodsPaymentMethodRequestBodyCard'ExpYear :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentMethodsPaymentMethodRequestBodyCard'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "exp_month" (postPaymentMethodsPaymentMethodRequestBodyCard'ExpMonth obj) : (Data.Aeson..=) "exp_year" (postPaymentMethodsPaymentMethodRequestBodyCard'ExpYear obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "exp_month" (postPaymentMethodsPaymentMethodRequestBodyCard'ExpMonth obj) GHC.Base.<> (Data.Aeson..=) "exp_year" (postPaymentMethodsPaymentMethodRequestBodyCard'ExpYear obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsPaymentMethodRequestBodyCard'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodsPaymentMethodRequestBodyCard'" (\obj -> (GHC.Base.pure PostPaymentMethodsPaymentMethodRequestBodyCard' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_year"))
data PostPaymentMethodsPaymentMethodRequestBodyMetadata'
    = PostPaymentMethodsPaymentMethodRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentMethodsPaymentMethodRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsPaymentMethodRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodsPaymentMethodRequestBodyMetadata'" (\obj -> GHC.Base.pure PostPaymentMethodsPaymentMethodRequestBodyMetadata')
data PostPaymentMethodsPaymentMethodRequestBodySepaDebit'
    = PostPaymentMethodsPaymentMethodRequestBodySepaDebit' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentMethodsPaymentMethodRequestBodySepaDebit'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsPaymentMethodRequestBodySepaDebit'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodsPaymentMethodRequestBodySepaDebit'" (\obj -> GHC.Base.pure PostPaymentMethodsPaymentMethodRequestBodySepaDebit')
instance Data.Aeson.ToJSON PostPaymentMethodsPaymentMethodRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "billing_details" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails obj) : (Data.Aeson..=) "card" (postPaymentMethodsPaymentMethodRequestBodyCard obj) : (Data.Aeson..=) "expand" (postPaymentMethodsPaymentMethodRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postPaymentMethodsPaymentMethodRequestBodyMetadata obj) : (Data.Aeson..=) "sepa_debit" (postPaymentMethodsPaymentMethodRequestBodySepaDebit obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "billing_details" (postPaymentMethodsPaymentMethodRequestBodyBillingDetails obj) GHC.Base.<> ((Data.Aeson..=) "card" (postPaymentMethodsPaymentMethodRequestBodyCard obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postPaymentMethodsPaymentMethodRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postPaymentMethodsPaymentMethodRequestBodyMetadata obj) GHC.Base.<> (Data.Aeson..=) "sepa_debit" (postPaymentMethodsPaymentMethodRequestBodySepaDebit obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsPaymentMethodRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodsPaymentMethodRequestBody" (\obj -> ((((GHC.Base.pure PostPaymentMethodsPaymentMethodRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sepa_debit"))

data PostPaymentMethodsPaymentMethodResponse
    = PostPaymentMethodsPaymentMethodResponseError GHC.Base.String
    | PostPaymentMethodsPaymentMethodResponse200 PaymentMethod
    | PostPaymentMethodsPaymentMethodResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
