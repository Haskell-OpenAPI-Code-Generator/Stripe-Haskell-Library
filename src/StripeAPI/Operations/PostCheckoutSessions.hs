{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostCheckoutSessions where

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
-- POST /v1/checkout/sessions
postCheckoutSessions :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        StripeAPI.Common.Configuration s ->
                        PostCheckoutSessionsRequestBody ->
                        m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                              (Network.HTTP.Client.Types.Response PostCheckoutSessionsResponse))
postCheckoutSessions config
                     body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCheckoutSessionsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCheckoutSessionsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                              Checkout'session)
                                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCheckoutSessionsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                Error)
                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/checkout/sessions") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCheckoutSessionsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                         StripeAPI.Common.SecurityScheme s) =>
                           StripeAPI.Common.Configuration s ->
                           PostCheckoutSessionsRequestBody ->
                           m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                 (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCheckoutSessionsRaw config
                        body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/checkout/sessions") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCheckoutSessionsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                       StripeAPI.Common.SecurityScheme s) =>
                         PostCheckoutSessionsRequestBody ->
                         Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                            m
                                                            (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                (Network.HTTP.Client.Types.Response PostCheckoutSessionsResponse))
postCheckoutSessionsM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostCheckoutSessionsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCheckoutSessionsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                               Checkout'session)
                                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCheckoutSessionsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                 Error)
                                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/checkout/sessions") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCheckoutSessionsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                          StripeAPI.Common.SecurityScheme s) =>
                            PostCheckoutSessionsRequestBody ->
                            Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                               m
                                                               (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                   (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCheckoutSessionsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/checkout/sessions") [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostCheckoutSessionsRequestBody
    = PostCheckoutSessionsRequestBody {postCheckoutSessionsRequestBodyBillingAddressCollection :: (GHC.Maybe.Maybe PostCheckoutSessionsRequestBodyBillingAddressCollection'),
                                       postCheckoutSessionsRequestBodyCancelUrl :: GHC.Base.String,
                                       postCheckoutSessionsRequestBodyClientReferenceId :: (GHC.Maybe.Maybe GHC.Base.String),
                                       postCheckoutSessionsRequestBodyCustomer :: (GHC.Maybe.Maybe GHC.Base.String),
                                       postCheckoutSessionsRequestBodyCustomerEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                                       postCheckoutSessionsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                       postCheckoutSessionsRequestBodyLineItems :: (GHC.Maybe.Maybe ([] PostCheckoutSessionsRequestBodyLineItems')),
                                       postCheckoutSessionsRequestBodyLocale :: (GHC.Maybe.Maybe PostCheckoutSessionsRequestBodyLocale'),
                                       postCheckoutSessionsRequestBodyMetadata :: (GHC.Maybe.Maybe PostCheckoutSessionsRequestBodyMetadata'),
                                       postCheckoutSessionsRequestBodyMode :: (GHC.Maybe.Maybe PostCheckoutSessionsRequestBodyMode'),
                                       postCheckoutSessionsRequestBodyPaymentIntentData :: (GHC.Maybe.Maybe PostCheckoutSessionsRequestBodyPaymentIntentData'),
                                       postCheckoutSessionsRequestBodyPaymentMethodTypes :: ([] PostCheckoutSessionsRequestBodyPaymentMethodTypes'),
                                       postCheckoutSessionsRequestBodySetupIntentData :: (GHC.Maybe.Maybe PostCheckoutSessionsRequestBodySetupIntentData'),
                                       postCheckoutSessionsRequestBodySubmitType :: (GHC.Maybe.Maybe PostCheckoutSessionsRequestBodySubmitType'),
                                       postCheckoutSessionsRequestBodySubscriptionData :: (GHC.Maybe.Maybe PostCheckoutSessionsRequestBodySubscriptionData'),
                                       postCheckoutSessionsRequestBodySuccessUrl :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCheckoutSessionsRequestBodyBillingAddressCollection'
    = PostCheckoutSessionsRequestBodyBillingAddressCollection'EnumOther Data.Aeson.Types.Internal.Value
    | PostCheckoutSessionsRequestBodyBillingAddressCollection'EnumTyped GHC.Base.String
    | PostCheckoutSessionsRequestBodyBillingAddressCollection'EnumStringAuto
    | PostCheckoutSessionsRequestBodyBillingAddressCollection'EnumStringRequired
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCheckoutSessionsRequestBodyBillingAddressCollection'
    where toJSON (PostCheckoutSessionsRequestBodyBillingAddressCollection'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCheckoutSessionsRequestBodyBillingAddressCollection'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCheckoutSessionsRequestBodyBillingAddressCollection'EnumStringAuto) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "auto"
          toJSON (PostCheckoutSessionsRequestBodyBillingAddressCollection'EnumStringRequired) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "required"
instance Data.Aeson.FromJSON PostCheckoutSessionsRequestBodyBillingAddressCollection'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "auto")
                                          then PostCheckoutSessionsRequestBodyBillingAddressCollection'EnumStringAuto
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "required")
                                                then PostCheckoutSessionsRequestBodyBillingAddressCollection'EnumStringRequired
                                                else PostCheckoutSessionsRequestBodyBillingAddressCollection'EnumOther val)
data PostCheckoutSessionsRequestBodyLineItems'
    = PostCheckoutSessionsRequestBodyLineItems' {postCheckoutSessionsRequestBodyLineItems'Amount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                 postCheckoutSessionsRequestBodyLineItems'Currency :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postCheckoutSessionsRequestBodyLineItems'Description :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postCheckoutSessionsRequestBodyLineItems'Images :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                                 postCheckoutSessionsRequestBodyLineItems'Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postCheckoutSessionsRequestBodyLineItems'Quantity :: GHC.Integer.Type.Integer,
                                                 postCheckoutSessionsRequestBodyLineItems'TaxRates :: (GHC.Maybe.Maybe ([] GHC.Base.String))}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCheckoutSessionsRequestBodyLineItems'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postCheckoutSessionsRequestBodyLineItems'Amount obj) : (Data.Aeson..=) "currency" (postCheckoutSessionsRequestBodyLineItems'Currency obj) : (Data.Aeson..=) "description" (postCheckoutSessionsRequestBodyLineItems'Description obj) : (Data.Aeson..=) "images" (postCheckoutSessionsRequestBodyLineItems'Images obj) : (Data.Aeson..=) "name" (postCheckoutSessionsRequestBodyLineItems'Name obj) : (Data.Aeson..=) "quantity" (postCheckoutSessionsRequestBodyLineItems'Quantity obj) : (Data.Aeson..=) "tax_rates" (postCheckoutSessionsRequestBodyLineItems'TaxRates obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postCheckoutSessionsRequestBodyLineItems'Amount obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postCheckoutSessionsRequestBodyLineItems'Currency obj) GHC.Base.<> ((Data.Aeson..=) "description" (postCheckoutSessionsRequestBodyLineItems'Description obj) GHC.Base.<> ((Data.Aeson..=) "images" (postCheckoutSessionsRequestBodyLineItems'Images obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCheckoutSessionsRequestBodyLineItems'Name obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (postCheckoutSessionsRequestBodyLineItems'Quantity obj) GHC.Base.<> (Data.Aeson..=) "tax_rates" (postCheckoutSessionsRequestBodyLineItems'TaxRates obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCheckoutSessionsRequestBodyLineItems'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCheckoutSessionsRequestBodyLineItems'" (\obj -> ((((((GHC.Base.pure PostCheckoutSessionsRequestBodyLineItems' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "images")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_rates"))
data PostCheckoutSessionsRequestBodyLocale'
    = PostCheckoutSessionsRequestBodyLocale'EnumOther Data.Aeson.Types.Internal.Value
    | PostCheckoutSessionsRequestBodyLocale'EnumTyped GHC.Base.String
    | PostCheckoutSessionsRequestBodyLocale'EnumStringAuto
    | PostCheckoutSessionsRequestBodyLocale'EnumStringDa
    | PostCheckoutSessionsRequestBodyLocale'EnumStringDe
    | PostCheckoutSessionsRequestBodyLocale'EnumStringEn
    | PostCheckoutSessionsRequestBodyLocale'EnumStringEs
    | PostCheckoutSessionsRequestBodyLocale'EnumStringFi
    | PostCheckoutSessionsRequestBodyLocale'EnumStringFr
    | PostCheckoutSessionsRequestBodyLocale'EnumStringIt
    | PostCheckoutSessionsRequestBodyLocale'EnumStringJa
    | PostCheckoutSessionsRequestBodyLocale'EnumStringMs
    | PostCheckoutSessionsRequestBodyLocale'EnumStringNb
    | PostCheckoutSessionsRequestBodyLocale'EnumStringNl
    | PostCheckoutSessionsRequestBodyLocale'EnumStringPl
    | PostCheckoutSessionsRequestBodyLocale'EnumStringPt
    | PostCheckoutSessionsRequestBodyLocale'EnumStringSv
    | PostCheckoutSessionsRequestBodyLocale'EnumStringZh
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCheckoutSessionsRequestBodyLocale'
    where toJSON (PostCheckoutSessionsRequestBodyLocale'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCheckoutSessionsRequestBodyLocale'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCheckoutSessionsRequestBodyLocale'EnumStringAuto) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "auto"
          toJSON (PostCheckoutSessionsRequestBodyLocale'EnumStringDa) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "da"
          toJSON (PostCheckoutSessionsRequestBodyLocale'EnumStringDe) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "de"
          toJSON (PostCheckoutSessionsRequestBodyLocale'EnumStringEn) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "en"
          toJSON (PostCheckoutSessionsRequestBodyLocale'EnumStringEs) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "es"
          toJSON (PostCheckoutSessionsRequestBodyLocale'EnumStringFi) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fi"
          toJSON (PostCheckoutSessionsRequestBodyLocale'EnumStringFr) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fr"
          toJSON (PostCheckoutSessionsRequestBodyLocale'EnumStringIt) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "it"
          toJSON (PostCheckoutSessionsRequestBodyLocale'EnumStringJa) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ja"
          toJSON (PostCheckoutSessionsRequestBodyLocale'EnumStringMs) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ms"
          toJSON (PostCheckoutSessionsRequestBodyLocale'EnumStringNb) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "nb"
          toJSON (PostCheckoutSessionsRequestBodyLocale'EnumStringNl) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "nl"
          toJSON (PostCheckoutSessionsRequestBodyLocale'EnumStringPl) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pl"
          toJSON (PostCheckoutSessionsRequestBodyLocale'EnumStringPt) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pt"
          toJSON (PostCheckoutSessionsRequestBodyLocale'EnumStringSv) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sv"
          toJSON (PostCheckoutSessionsRequestBodyLocale'EnumStringZh) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "zh"
instance Data.Aeson.FromJSON PostCheckoutSessionsRequestBodyLocale'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "auto")
                                          then PostCheckoutSessionsRequestBodyLocale'EnumStringAuto
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "da")
                                                then PostCheckoutSessionsRequestBodyLocale'EnumStringDa
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "de")
                                                      then PostCheckoutSessionsRequestBodyLocale'EnumStringDe
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "en")
                                                            then PostCheckoutSessionsRequestBodyLocale'EnumStringEn
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "es")
                                                                  then PostCheckoutSessionsRequestBodyLocale'EnumStringEs
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fi")
                                                                        then PostCheckoutSessionsRequestBodyLocale'EnumStringFi
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fr")
                                                                              then PostCheckoutSessionsRequestBodyLocale'EnumStringFr
                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "it")
                                                                                    then PostCheckoutSessionsRequestBodyLocale'EnumStringIt
                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ja")
                                                                                          then PostCheckoutSessionsRequestBodyLocale'EnumStringJa
                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ms")
                                                                                                then PostCheckoutSessionsRequestBodyLocale'EnumStringMs
                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "nb")
                                                                                                      then PostCheckoutSessionsRequestBodyLocale'EnumStringNb
                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "nl")
                                                                                                            then PostCheckoutSessionsRequestBodyLocale'EnumStringNl
                                                                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pl")
                                                                                                                  then PostCheckoutSessionsRequestBodyLocale'EnumStringPl
                                                                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pt")
                                                                                                                        then PostCheckoutSessionsRequestBodyLocale'EnumStringPt
                                                                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sv")
                                                                                                                              then PostCheckoutSessionsRequestBodyLocale'EnumStringSv
                                                                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "zh")
                                                                                                                                    then PostCheckoutSessionsRequestBodyLocale'EnumStringZh
                                                                                                                                    else PostCheckoutSessionsRequestBodyLocale'EnumOther val)
data PostCheckoutSessionsRequestBodyMetadata'
    = PostCheckoutSessionsRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCheckoutSessionsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCheckoutSessionsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCheckoutSessionsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostCheckoutSessionsRequestBodyMetadata')
data PostCheckoutSessionsRequestBodyMode'
    = PostCheckoutSessionsRequestBodyMode'EnumOther Data.Aeson.Types.Internal.Value
    | PostCheckoutSessionsRequestBodyMode'EnumTyped GHC.Base.String
    | PostCheckoutSessionsRequestBodyMode'EnumStringPayment
    | PostCheckoutSessionsRequestBodyMode'EnumStringSetup
    | PostCheckoutSessionsRequestBodyMode'EnumStringSubscription
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCheckoutSessionsRequestBodyMode'
    where toJSON (PostCheckoutSessionsRequestBodyMode'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCheckoutSessionsRequestBodyMode'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCheckoutSessionsRequestBodyMode'EnumStringPayment) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "payment"
          toJSON (PostCheckoutSessionsRequestBodyMode'EnumStringSetup) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "setup"
          toJSON (PostCheckoutSessionsRequestBodyMode'EnumStringSubscription) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "subscription"
instance Data.Aeson.FromJSON PostCheckoutSessionsRequestBodyMode'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "payment")
                                          then PostCheckoutSessionsRequestBodyMode'EnumStringPayment
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "setup")
                                                then PostCheckoutSessionsRequestBodyMode'EnumStringSetup
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "subscription")
                                                      then PostCheckoutSessionsRequestBodyMode'EnumStringSubscription
                                                      else PostCheckoutSessionsRequestBodyMode'EnumOther val)
data PostCheckoutSessionsRequestBodyPaymentIntentData'
    = PostCheckoutSessionsRequestBodyPaymentIntentData' {postCheckoutSessionsRequestBodyPaymentIntentData'ApplicationFeeAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                         postCheckoutSessionsRequestBodyPaymentIntentData'CaptureMethod :: (GHC.Maybe.Maybe PostCheckoutSessionsRequestBodyPaymentIntentData'CaptureMethod'),
                                                         postCheckoutSessionsRequestBodyPaymentIntentData'Description :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postCheckoutSessionsRequestBodyPaymentIntentData'Metadata :: (GHC.Maybe.Maybe PostCheckoutSessionsRequestBodyPaymentIntentData'Metadata'),
                                                         postCheckoutSessionsRequestBodyPaymentIntentData'OnBehalfOf :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postCheckoutSessionsRequestBodyPaymentIntentData'ReceiptEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postCheckoutSessionsRequestBodyPaymentIntentData'SetupFutureUsage :: (GHC.Maybe.Maybe PostCheckoutSessionsRequestBodyPaymentIntentData'SetupFutureUsage'),
                                                         postCheckoutSessionsRequestBodyPaymentIntentData'Shipping :: (GHC.Maybe.Maybe PostCheckoutSessionsRequestBodyPaymentIntentData'Shipping'),
                                                         postCheckoutSessionsRequestBodyPaymentIntentData'StatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postCheckoutSessionsRequestBodyPaymentIntentData'StatementDescriptorSuffix :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postCheckoutSessionsRequestBodyPaymentIntentData'TransferData :: (GHC.Maybe.Maybe PostCheckoutSessionsRequestBodyPaymentIntentData'TransferData')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCheckoutSessionsRequestBodyPaymentIntentData'CaptureMethod'
    = PostCheckoutSessionsRequestBodyPaymentIntentData'CaptureMethod'EnumOther Data.Aeson.Types.Internal.Value
    | PostCheckoutSessionsRequestBodyPaymentIntentData'CaptureMethod'EnumTyped GHC.Base.String
    | PostCheckoutSessionsRequestBodyPaymentIntentData'CaptureMethod'EnumStringAutomatic
    | PostCheckoutSessionsRequestBodyPaymentIntentData'CaptureMethod'EnumStringManual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCheckoutSessionsRequestBodyPaymentIntentData'CaptureMethod'
    where toJSON (PostCheckoutSessionsRequestBodyPaymentIntentData'CaptureMethod'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCheckoutSessionsRequestBodyPaymentIntentData'CaptureMethod'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCheckoutSessionsRequestBodyPaymentIntentData'CaptureMethod'EnumStringAutomatic) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic"
          toJSON (PostCheckoutSessionsRequestBodyPaymentIntentData'CaptureMethod'EnumStringManual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "manual"
instance Data.Aeson.FromJSON PostCheckoutSessionsRequestBodyPaymentIntentData'CaptureMethod'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic")
                                          then PostCheckoutSessionsRequestBodyPaymentIntentData'CaptureMethod'EnumStringAutomatic
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "manual")
                                                then PostCheckoutSessionsRequestBodyPaymentIntentData'CaptureMethod'EnumStringManual
                                                else PostCheckoutSessionsRequestBodyPaymentIntentData'CaptureMethod'EnumOther val)
data PostCheckoutSessionsRequestBodyPaymentIntentData'Metadata'
    = PostCheckoutSessionsRequestBodyPaymentIntentData'Metadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCheckoutSessionsRequestBodyPaymentIntentData'Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCheckoutSessionsRequestBodyPaymentIntentData'Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCheckoutSessionsRequestBodyPaymentIntentData'Metadata'" (\obj -> GHC.Base.pure PostCheckoutSessionsRequestBodyPaymentIntentData'Metadata')
data PostCheckoutSessionsRequestBodyPaymentIntentData'SetupFutureUsage'
    = PostCheckoutSessionsRequestBodyPaymentIntentData'SetupFutureUsage'EnumOther Data.Aeson.Types.Internal.Value
    | PostCheckoutSessionsRequestBodyPaymentIntentData'SetupFutureUsage'EnumTyped GHC.Base.String
    | PostCheckoutSessionsRequestBodyPaymentIntentData'SetupFutureUsage'EnumStringOffSession
    | PostCheckoutSessionsRequestBodyPaymentIntentData'SetupFutureUsage'EnumStringOnSession
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCheckoutSessionsRequestBodyPaymentIntentData'SetupFutureUsage'
    where toJSON (PostCheckoutSessionsRequestBodyPaymentIntentData'SetupFutureUsage'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCheckoutSessionsRequestBodyPaymentIntentData'SetupFutureUsage'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCheckoutSessionsRequestBodyPaymentIntentData'SetupFutureUsage'EnumStringOffSession) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "off_session"
          toJSON (PostCheckoutSessionsRequestBodyPaymentIntentData'SetupFutureUsage'EnumStringOnSession) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "on_session"
instance Data.Aeson.FromJSON PostCheckoutSessionsRequestBodyPaymentIntentData'SetupFutureUsage'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "off_session")
                                          then PostCheckoutSessionsRequestBodyPaymentIntentData'SetupFutureUsage'EnumStringOffSession
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "on_session")
                                                then PostCheckoutSessionsRequestBodyPaymentIntentData'SetupFutureUsage'EnumStringOnSession
                                                else PostCheckoutSessionsRequestBodyPaymentIntentData'SetupFutureUsage'EnumOther val)
data PostCheckoutSessionsRequestBodyPaymentIntentData'Shipping'
    = PostCheckoutSessionsRequestBodyPaymentIntentData'Shipping' {postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Address :: PostCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Address',
                                                                  postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Carrier :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                  postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Name :: GHC.Base.String,
                                                                  postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Phone :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                  postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'TrackingNumber :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Address'
    = PostCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Address' {postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Address'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                          postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                          postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Address'Line1 :: GHC.Base.String,
                                                                          postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                          postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                          postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Address'City obj) : (Data.Aeson..=) "country" (postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Address'Country obj) : (Data.Aeson..=) "line1" (postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Address'Line1 obj) : (Data.Aeson..=) "line2" (postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Address'PostalCode obj) : (Data.Aeson..=) "state" (postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Address'" (\obj -> (((((GHC.Base.pure PostCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
instance Data.Aeson.ToJSON PostCheckoutSessionsRequestBodyPaymentIntentData'Shipping'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Address obj) : (Data.Aeson..=) "carrier" (postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Carrier obj) : (Data.Aeson..=) "name" (postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Name obj) : (Data.Aeson..=) "phone" (postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Phone obj) : (Data.Aeson..=) "tracking_number" (postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'TrackingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Address obj) GHC.Base.<> ((Data.Aeson..=) "carrier" (postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Carrier obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Name obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'Phone obj) GHC.Base.<> (Data.Aeson..=) "tracking_number" (postCheckoutSessionsRequestBodyPaymentIntentData'Shipping'TrackingNumber obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCheckoutSessionsRequestBodyPaymentIntentData'Shipping'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCheckoutSessionsRequestBodyPaymentIntentData'Shipping'" (\obj -> ((((GHC.Base.pure PostCheckoutSessionsRequestBodyPaymentIntentData'Shipping' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "carrier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tracking_number"))
data PostCheckoutSessionsRequestBodyPaymentIntentData'TransferData'
    = PostCheckoutSessionsRequestBodyPaymentIntentData'TransferData' {postCheckoutSessionsRequestBodyPaymentIntentData'TransferData'Amount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                                      postCheckoutSessionsRequestBodyPaymentIntentData'TransferData'Destination :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCheckoutSessionsRequestBodyPaymentIntentData'TransferData'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postCheckoutSessionsRequestBodyPaymentIntentData'TransferData'Amount obj) : (Data.Aeson..=) "destination" (postCheckoutSessionsRequestBodyPaymentIntentData'TransferData'Destination obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postCheckoutSessionsRequestBodyPaymentIntentData'TransferData'Amount obj) GHC.Base.<> (Data.Aeson..=) "destination" (postCheckoutSessionsRequestBodyPaymentIntentData'TransferData'Destination obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostCheckoutSessionsRequestBodyPaymentIntentData'TransferData'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCheckoutSessionsRequestBodyPaymentIntentData'TransferData'" (\obj -> (GHC.Base.pure PostCheckoutSessionsRequestBodyPaymentIntentData'TransferData' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "destination"))
instance Data.Aeson.ToJSON PostCheckoutSessionsRequestBodyPaymentIntentData'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "application_fee_amount" (postCheckoutSessionsRequestBodyPaymentIntentData'ApplicationFeeAmount obj) : (Data.Aeson..=) "capture_method" (postCheckoutSessionsRequestBodyPaymentIntentData'CaptureMethod obj) : (Data.Aeson..=) "description" (postCheckoutSessionsRequestBodyPaymentIntentData'Description obj) : (Data.Aeson..=) "metadata" (postCheckoutSessionsRequestBodyPaymentIntentData'Metadata obj) : (Data.Aeson..=) "on_behalf_of" (postCheckoutSessionsRequestBodyPaymentIntentData'OnBehalfOf obj) : (Data.Aeson..=) "receipt_email" (postCheckoutSessionsRequestBodyPaymentIntentData'ReceiptEmail obj) : (Data.Aeson..=) "setup_future_usage" (postCheckoutSessionsRequestBodyPaymentIntentData'SetupFutureUsage obj) : (Data.Aeson..=) "shipping" (postCheckoutSessionsRequestBodyPaymentIntentData'Shipping obj) : (Data.Aeson..=) "statement_descriptor" (postCheckoutSessionsRequestBodyPaymentIntentData'StatementDescriptor obj) : (Data.Aeson..=) "statement_descriptor_suffix" (postCheckoutSessionsRequestBodyPaymentIntentData'StatementDescriptorSuffix obj) : (Data.Aeson..=) "transfer_data" (postCheckoutSessionsRequestBodyPaymentIntentData'TransferData obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "application_fee_amount" (postCheckoutSessionsRequestBodyPaymentIntentData'ApplicationFeeAmount obj) GHC.Base.<> ((Data.Aeson..=) "capture_method" (postCheckoutSessionsRequestBodyPaymentIntentData'CaptureMethod obj) GHC.Base.<> ((Data.Aeson..=) "description" (postCheckoutSessionsRequestBodyPaymentIntentData'Description obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCheckoutSessionsRequestBodyPaymentIntentData'Metadata obj) GHC.Base.<> ((Data.Aeson..=) "on_behalf_of" (postCheckoutSessionsRequestBodyPaymentIntentData'OnBehalfOf obj) GHC.Base.<> ((Data.Aeson..=) "receipt_email" (postCheckoutSessionsRequestBodyPaymentIntentData'ReceiptEmail obj) GHC.Base.<> ((Data.Aeson..=) "setup_future_usage" (postCheckoutSessionsRequestBodyPaymentIntentData'SetupFutureUsage obj) GHC.Base.<> ((Data.Aeson..=) "shipping" (postCheckoutSessionsRequestBodyPaymentIntentData'Shipping obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor" (postCheckoutSessionsRequestBodyPaymentIntentData'StatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor_suffix" (postCheckoutSessionsRequestBodyPaymentIntentData'StatementDescriptorSuffix obj) GHC.Base.<> (Data.Aeson..=) "transfer_data" (postCheckoutSessionsRequestBodyPaymentIntentData'TransferData obj)))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCheckoutSessionsRequestBodyPaymentIntentData'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCheckoutSessionsRequestBodyPaymentIntentData'" (\obj -> ((((((((((GHC.Base.pure PostCheckoutSessionsRequestBodyPaymentIntentData' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "capture_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "on_behalf_of")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "receipt_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "setup_future_usage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_suffix")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transfer_data"))
data PostCheckoutSessionsRequestBodyPaymentMethodTypes'
    = PostCheckoutSessionsRequestBodyPaymentMethodTypes'EnumOther Data.Aeson.Types.Internal.Value
    | PostCheckoutSessionsRequestBodyPaymentMethodTypes'EnumTyped GHC.Base.String
    | PostCheckoutSessionsRequestBodyPaymentMethodTypes'EnumStringCard
    | PostCheckoutSessionsRequestBodyPaymentMethodTypes'EnumStringFpx
    | PostCheckoutSessionsRequestBodyPaymentMethodTypes'EnumStringIdeal
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCheckoutSessionsRequestBodyPaymentMethodTypes'
    where toJSON (PostCheckoutSessionsRequestBodyPaymentMethodTypes'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCheckoutSessionsRequestBodyPaymentMethodTypes'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCheckoutSessionsRequestBodyPaymentMethodTypes'EnumStringCard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card"
          toJSON (PostCheckoutSessionsRequestBodyPaymentMethodTypes'EnumStringFpx) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fpx"
          toJSON (PostCheckoutSessionsRequestBodyPaymentMethodTypes'EnumStringIdeal) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ideal"
instance Data.Aeson.FromJSON PostCheckoutSessionsRequestBodyPaymentMethodTypes'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card")
                                          then PostCheckoutSessionsRequestBodyPaymentMethodTypes'EnumStringCard
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fpx")
                                                then PostCheckoutSessionsRequestBodyPaymentMethodTypes'EnumStringFpx
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ideal")
                                                      then PostCheckoutSessionsRequestBodyPaymentMethodTypes'EnumStringIdeal
                                                      else PostCheckoutSessionsRequestBodyPaymentMethodTypes'EnumOther val)
data PostCheckoutSessionsRequestBodySetupIntentData'
    = PostCheckoutSessionsRequestBodySetupIntentData' {postCheckoutSessionsRequestBodySetupIntentData'Description :: (GHC.Maybe.Maybe GHC.Base.String),
                                                       postCheckoutSessionsRequestBodySetupIntentData'Metadata :: (GHC.Maybe.Maybe PostCheckoutSessionsRequestBodySetupIntentData'Metadata'),
                                                       postCheckoutSessionsRequestBodySetupIntentData'OnBehalfOf :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCheckoutSessionsRequestBodySetupIntentData'Metadata'
    = PostCheckoutSessionsRequestBodySetupIntentData'Metadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCheckoutSessionsRequestBodySetupIntentData'Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCheckoutSessionsRequestBodySetupIntentData'Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCheckoutSessionsRequestBodySetupIntentData'Metadata'" (\obj -> GHC.Base.pure PostCheckoutSessionsRequestBodySetupIntentData'Metadata')
instance Data.Aeson.ToJSON PostCheckoutSessionsRequestBodySetupIntentData'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "description" (postCheckoutSessionsRequestBodySetupIntentData'Description obj) : (Data.Aeson..=) "metadata" (postCheckoutSessionsRequestBodySetupIntentData'Metadata obj) : (Data.Aeson..=) "on_behalf_of" (postCheckoutSessionsRequestBodySetupIntentData'OnBehalfOf obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "description" (postCheckoutSessionsRequestBodySetupIntentData'Description obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCheckoutSessionsRequestBodySetupIntentData'Metadata obj) GHC.Base.<> (Data.Aeson..=) "on_behalf_of" (postCheckoutSessionsRequestBodySetupIntentData'OnBehalfOf obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostCheckoutSessionsRequestBodySetupIntentData'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCheckoutSessionsRequestBodySetupIntentData'" (\obj -> ((GHC.Base.pure PostCheckoutSessionsRequestBodySetupIntentData' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "on_behalf_of"))
data PostCheckoutSessionsRequestBodySubmitType'
    = PostCheckoutSessionsRequestBodySubmitType'EnumOther Data.Aeson.Types.Internal.Value
    | PostCheckoutSessionsRequestBodySubmitType'EnumTyped GHC.Base.String
    | PostCheckoutSessionsRequestBodySubmitType'EnumStringAuto
    | PostCheckoutSessionsRequestBodySubmitType'EnumStringBook
    | PostCheckoutSessionsRequestBodySubmitType'EnumStringDonate
    | PostCheckoutSessionsRequestBodySubmitType'EnumStringPay
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCheckoutSessionsRequestBodySubmitType'
    where toJSON (PostCheckoutSessionsRequestBodySubmitType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCheckoutSessionsRequestBodySubmitType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCheckoutSessionsRequestBodySubmitType'EnumStringAuto) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "auto"
          toJSON (PostCheckoutSessionsRequestBodySubmitType'EnumStringBook) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "book"
          toJSON (PostCheckoutSessionsRequestBodySubmitType'EnumStringDonate) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "donate"
          toJSON (PostCheckoutSessionsRequestBodySubmitType'EnumStringPay) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pay"
instance Data.Aeson.FromJSON PostCheckoutSessionsRequestBodySubmitType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "auto")
                                          then PostCheckoutSessionsRequestBodySubmitType'EnumStringAuto
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "book")
                                                then PostCheckoutSessionsRequestBodySubmitType'EnumStringBook
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "donate")
                                                      then PostCheckoutSessionsRequestBodySubmitType'EnumStringDonate
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pay")
                                                            then PostCheckoutSessionsRequestBodySubmitType'EnumStringPay
                                                            else PostCheckoutSessionsRequestBodySubmitType'EnumOther val)
data PostCheckoutSessionsRequestBodySubscriptionData'
    = PostCheckoutSessionsRequestBodySubscriptionData' {postCheckoutSessionsRequestBodySubscriptionData'ApplicationFeePercent :: (GHC.Maybe.Maybe GHC.Types.Double),
                                                        postCheckoutSessionsRequestBodySubscriptionData'DefaultTaxRates :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                                        postCheckoutSessionsRequestBodySubscriptionData'Items :: (GHC.Maybe.Maybe ([] PostCheckoutSessionsRequestBodySubscriptionData'Items')),
                                                        postCheckoutSessionsRequestBodySubscriptionData'Metadata :: (GHC.Maybe.Maybe PostCheckoutSessionsRequestBodySubscriptionData'Metadata'),
                                                        postCheckoutSessionsRequestBodySubscriptionData'TrialEnd :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                        postCheckoutSessionsRequestBodySubscriptionData'TrialFromPlan :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                        postCheckoutSessionsRequestBodySubscriptionData'TrialPeriodDays :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCheckoutSessionsRequestBodySubscriptionData'Items'
    = PostCheckoutSessionsRequestBodySubscriptionData'Items' {postCheckoutSessionsRequestBodySubscriptionData'Items'Plan :: GHC.Base.String,
                                                              postCheckoutSessionsRequestBodySubscriptionData'Items'Quantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                              postCheckoutSessionsRequestBodySubscriptionData'Items'TaxRates :: (GHC.Maybe.Maybe ([] GHC.Base.String))}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCheckoutSessionsRequestBodySubscriptionData'Items'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "plan" (postCheckoutSessionsRequestBodySubscriptionData'Items'Plan obj) : (Data.Aeson..=) "quantity" (postCheckoutSessionsRequestBodySubscriptionData'Items'Quantity obj) : (Data.Aeson..=) "tax_rates" (postCheckoutSessionsRequestBodySubscriptionData'Items'TaxRates obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "plan" (postCheckoutSessionsRequestBodySubscriptionData'Items'Plan obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (postCheckoutSessionsRequestBodySubscriptionData'Items'Quantity obj) GHC.Base.<> (Data.Aeson..=) "tax_rates" (postCheckoutSessionsRequestBodySubscriptionData'Items'TaxRates obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostCheckoutSessionsRequestBodySubscriptionData'Items'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCheckoutSessionsRequestBodySubscriptionData'Items'" (\obj -> ((GHC.Base.pure PostCheckoutSessionsRequestBodySubscriptionData'Items' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "plan")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_rates"))
data PostCheckoutSessionsRequestBodySubscriptionData'Metadata'
    = PostCheckoutSessionsRequestBodySubscriptionData'Metadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCheckoutSessionsRequestBodySubscriptionData'Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCheckoutSessionsRequestBodySubscriptionData'Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCheckoutSessionsRequestBodySubscriptionData'Metadata'" (\obj -> GHC.Base.pure PostCheckoutSessionsRequestBodySubscriptionData'Metadata')
instance Data.Aeson.ToJSON PostCheckoutSessionsRequestBodySubscriptionData'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "application_fee_percent" (postCheckoutSessionsRequestBodySubscriptionData'ApplicationFeePercent obj) : (Data.Aeson..=) "default_tax_rates" (postCheckoutSessionsRequestBodySubscriptionData'DefaultTaxRates obj) : (Data.Aeson..=) "items" (postCheckoutSessionsRequestBodySubscriptionData'Items obj) : (Data.Aeson..=) "metadata" (postCheckoutSessionsRequestBodySubscriptionData'Metadata obj) : (Data.Aeson..=) "trial_end" (postCheckoutSessionsRequestBodySubscriptionData'TrialEnd obj) : (Data.Aeson..=) "trial_from_plan" (postCheckoutSessionsRequestBodySubscriptionData'TrialFromPlan obj) : (Data.Aeson..=) "trial_period_days" (postCheckoutSessionsRequestBodySubscriptionData'TrialPeriodDays obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "application_fee_percent" (postCheckoutSessionsRequestBodySubscriptionData'ApplicationFeePercent obj) GHC.Base.<> ((Data.Aeson..=) "default_tax_rates" (postCheckoutSessionsRequestBodySubscriptionData'DefaultTaxRates obj) GHC.Base.<> ((Data.Aeson..=) "items" (postCheckoutSessionsRequestBodySubscriptionData'Items obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCheckoutSessionsRequestBodySubscriptionData'Metadata obj) GHC.Base.<> ((Data.Aeson..=) "trial_end" (postCheckoutSessionsRequestBodySubscriptionData'TrialEnd obj) GHC.Base.<> ((Data.Aeson..=) "trial_from_plan" (postCheckoutSessionsRequestBodySubscriptionData'TrialFromPlan obj) GHC.Base.<> (Data.Aeson..=) "trial_period_days" (postCheckoutSessionsRequestBodySubscriptionData'TrialPeriodDays obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCheckoutSessionsRequestBodySubscriptionData'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCheckoutSessionsRequestBodySubscriptionData'" (\obj -> ((((((GHC.Base.pure PostCheckoutSessionsRequestBodySubscriptionData' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_tax_rates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "items")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_from_plan")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_period_days"))
instance Data.Aeson.ToJSON PostCheckoutSessionsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "billing_address_collection" (postCheckoutSessionsRequestBodyBillingAddressCollection obj) : (Data.Aeson..=) "cancel_url" (postCheckoutSessionsRequestBodyCancelUrl obj) : (Data.Aeson..=) "client_reference_id" (postCheckoutSessionsRequestBodyClientReferenceId obj) : (Data.Aeson..=) "customer" (postCheckoutSessionsRequestBodyCustomer obj) : (Data.Aeson..=) "customer_email" (postCheckoutSessionsRequestBodyCustomerEmail obj) : (Data.Aeson..=) "expand" (postCheckoutSessionsRequestBodyExpand obj) : (Data.Aeson..=) "line_items" (postCheckoutSessionsRequestBodyLineItems obj) : (Data.Aeson..=) "locale" (postCheckoutSessionsRequestBodyLocale obj) : (Data.Aeson..=) "metadata" (postCheckoutSessionsRequestBodyMetadata obj) : (Data.Aeson..=) "mode" (postCheckoutSessionsRequestBodyMode obj) : (Data.Aeson..=) "payment_intent_data" (postCheckoutSessionsRequestBodyPaymentIntentData obj) : (Data.Aeson..=) "payment_method_types" (postCheckoutSessionsRequestBodyPaymentMethodTypes obj) : (Data.Aeson..=) "setup_intent_data" (postCheckoutSessionsRequestBodySetupIntentData obj) : (Data.Aeson..=) "submit_type" (postCheckoutSessionsRequestBodySubmitType obj) : (Data.Aeson..=) "subscription_data" (postCheckoutSessionsRequestBodySubscriptionData obj) : (Data.Aeson..=) "success_url" (postCheckoutSessionsRequestBodySuccessUrl obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "billing_address_collection" (postCheckoutSessionsRequestBodyBillingAddressCollection obj) GHC.Base.<> ((Data.Aeson..=) "cancel_url" (postCheckoutSessionsRequestBodyCancelUrl obj) GHC.Base.<> ((Data.Aeson..=) "client_reference_id" (postCheckoutSessionsRequestBodyClientReferenceId obj) GHC.Base.<> ((Data.Aeson..=) "customer" (postCheckoutSessionsRequestBodyCustomer obj) GHC.Base.<> ((Data.Aeson..=) "customer_email" (postCheckoutSessionsRequestBodyCustomerEmail obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postCheckoutSessionsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "line_items" (postCheckoutSessionsRequestBodyLineItems obj) GHC.Base.<> ((Data.Aeson..=) "locale" (postCheckoutSessionsRequestBodyLocale obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCheckoutSessionsRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "mode" (postCheckoutSessionsRequestBodyMode obj) GHC.Base.<> ((Data.Aeson..=) "payment_intent_data" (postCheckoutSessionsRequestBodyPaymentIntentData obj) GHC.Base.<> ((Data.Aeson..=) "payment_method_types" (postCheckoutSessionsRequestBodyPaymentMethodTypes obj) GHC.Base.<> ((Data.Aeson..=) "setup_intent_data" (postCheckoutSessionsRequestBodySetupIntentData obj) GHC.Base.<> ((Data.Aeson..=) "submit_type" (postCheckoutSessionsRequestBodySubmitType obj) GHC.Base.<> ((Data.Aeson..=) "subscription_data" (postCheckoutSessionsRequestBodySubscriptionData obj) GHC.Base.<> (Data.Aeson..=) "success_url" (postCheckoutSessionsRequestBodySuccessUrl obj))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCheckoutSessionsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCheckoutSessionsRequestBody" (\obj -> (((((((((((((((GHC.Base.pure PostCheckoutSessionsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_address_collection")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "cancel_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "client_reference_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line_items")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "locale")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_intent_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "payment_method_types")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "setup_intent_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "submit_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "subscription_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "success_url"))

data PostCheckoutSessionsResponse
    = PostCheckoutSessionsResponseError GHC.Base.String
    | PostCheckoutSessionsResponse200 Checkout'session
    | PostCheckoutSessionsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
