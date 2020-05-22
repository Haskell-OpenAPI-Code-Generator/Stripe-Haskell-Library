{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postSetupIntentsIntentConfirm
module StripeAPI.Operations.PostSetupIntentsIntentConfirm where

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

-- | > POST /v1/setup_intents/{intent}/confirm
-- 
-- \<p>Confirm that your customer intends to set up the current or
-- provided payment method. For example, you would confirm a SetupIntent
-- when a customer hits the “Save” button on a payment method management
-- page on your website.\<\/p>
-- 
-- \<p>If the selected payment method does not require any additional
-- steps from the customer, the SetupIntent will transition to the
-- \<code>succeeded\<\/code> status.\<\/p>
-- 
-- \<p>Otherwise, it will transition to the \<code>requires_action\<\/code> status and
-- suggest additional actions via \<code>next_action\<\/code>. If setup fails,
-- the SetupIntent will transition to the
-- \<code>requires_payment_method\<\/code> status.\<\/p>
postSetupIntentsIntentConfirm :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                           -- ^ intent | Constraints: Maximum length of 5000
  -> PostSetupIntentsIntentConfirmRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostSetupIntentsIntentConfirmResponse)) -- ^ Monad containing the result of the operation
postSetupIntentsIntentConfirm config
                              intent
                              body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSetupIntentsIntentConfirmResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSetupIntentsIntentConfirmResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                         SetupIntent)
                                                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSetupIntentsIntentConfirmResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/setup_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/confirm"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/setup_intents/{intent}/confirm
-- 
-- The same as 'postSetupIntentsIntentConfirm' but returns the raw 'Data.ByteString.Char8.ByteString'
postSetupIntentsIntentConfirmRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                  StripeAPI.Common.SecurityScheme s) =>
                                    StripeAPI.Common.Configuration s ->
                                    GHC.Base.String ->
                                    PostSetupIntentsIntentConfirmRequestBody ->
                                    m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSetupIntentsIntentConfirmRaw config
                                 intent
                                 body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/setup_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/confirm"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/setup_intents/{intent}/confirm
-- 
-- Monadic version of 'postSetupIntentsIntentConfirm' (use with 'StripeAPI.Common.runWithConfiguration')
postSetupIntentsIntentConfirmM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                StripeAPI.Common.SecurityScheme s) =>
                                  GHC.Base.String ->
                                  PostSetupIntentsIntentConfirmRequestBody ->
                                  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                     m
                                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                         (Network.HTTP.Client.Types.Response PostSetupIntentsIntentConfirmResponse))
postSetupIntentsIntentConfirmM intent
                               body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSetupIntentsIntentConfirmResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSetupIntentsIntentConfirmResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          SetupIntent)
                                                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSetupIntentsIntentConfirmResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/setup_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/confirm"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/setup_intents/{intent}/confirm
-- 
-- Monadic version of 'postSetupIntentsIntentConfirmRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postSetupIntentsIntentConfirmRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                   StripeAPI.Common.SecurityScheme s) =>
                                     GHC.Base.String ->
                                     PostSetupIntentsIntentConfirmRequestBody ->
                                     Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                        m
                                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSetupIntentsIntentConfirmRawM intent
                                  body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/setup_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/confirm"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postSetupIntentsIntentConfirmRequestBody
-- 
-- 
data PostSetupIntentsIntentConfirmRequestBody = PostSetupIntentsIntentConfirmRequestBody {
  -- | client_secret: The client secret of the SetupIntent.
  postSetupIntentsIntentConfirmRequestBodyClientSecret :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | expand: Specifies which fields in the response should be expanded.
  , postSetupIntentsIntentConfirmRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | mandate_data: This hash contains details about the Mandate to create
  , postSetupIntentsIntentConfirmRequestBodyMandateData :: (GHC.Maybe.Maybe PostSetupIntentsIntentConfirmRequestBodyMandateData')
  -- | payment_method: ID of the payment method (a PaymentMethod, Card, or saved Source object) to attach to this SetupIntent.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSetupIntentsIntentConfirmRequestBodyPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | payment_method_options: Payment-method-specific configuration for this SetupIntent.
  , postSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions :: (GHC.Maybe.Maybe PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions')
  -- | return_url: The URL to redirect your customer back to after they authenticate on the payment method\'s app or site.
  -- If you\'d prefer to redirect to a mobile application, you can alternatively supply an application URI scheme.
  -- This parameter is only used for cards and other redirect-based payment methods.
  , postSetupIntentsIntentConfirmRequestBodyReturnUrl :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSetupIntentsIntentConfirmRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "client_secret" (postSetupIntentsIntentConfirmRequestBodyClientSecret obj) : (Data.Aeson..=) "expand" (postSetupIntentsIntentConfirmRequestBodyExpand obj) : (Data.Aeson..=) "mandate_data" (postSetupIntentsIntentConfirmRequestBodyMandateData obj) : (Data.Aeson..=) "payment_method" (postSetupIntentsIntentConfirmRequestBodyPaymentMethod obj) : (Data.Aeson..=) "payment_method_options" (postSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions obj) : (Data.Aeson..=) "return_url" (postSetupIntentsIntentConfirmRequestBodyReturnUrl obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "client_secret" (postSetupIntentsIntentConfirmRequestBodyClientSecret obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postSetupIntentsIntentConfirmRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "mandate_data" (postSetupIntentsIntentConfirmRequestBodyMandateData obj) GHC.Base.<> ((Data.Aeson..=) "payment_method" (postSetupIntentsIntentConfirmRequestBodyPaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "payment_method_options" (postSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions obj) GHC.Base.<> (Data.Aeson..=) "return_url" (postSetupIntentsIntentConfirmRequestBodyReturnUrl obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsIntentConfirmRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsIntentConfirmRequestBody" (\obj -> (((((GHC.Base.pure PostSetupIntentsIntentConfirmRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "client_secret")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mandate_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method_options")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "return_url"))
-- | Defines the data type for the schema postSetupIntentsIntentConfirmRequestBodyMandate_data\'
-- 
-- This hash contains details about the Mandate to create
data PostSetupIntentsIntentConfirmRequestBodyMandateData' = PostSetupIntentsIntentConfirmRequestBodyMandateData' {
  -- | customer_acceptance
  postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance :: (GHC.Maybe.Maybe PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSetupIntentsIntentConfirmRequestBodyMandateData'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "customer_acceptance" (postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "customer_acceptance" (postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsIntentConfirmRequestBodyMandateData'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsIntentConfirmRequestBodyMandateData'" (\obj -> GHC.Base.pure PostSetupIntentsIntentConfirmRequestBodyMandateData' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer_acceptance"))
-- | Defines the data type for the schema postSetupIntentsIntentConfirmRequestBodyMandate_data\'Customer_acceptance\'
-- 
-- 
data PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance' = PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance' {
  -- | online
  postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online :: PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'
  -- | type
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type :: PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "online" (postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online obj) : (Data.Aeson..=) "type" (postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "online" (postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online obj) GHC.Base.<> (Data.Aeson..=) "type" (postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'" (\obj -> (GHC.Base.pure PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "online")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Defines the data type for the schema postSetupIntentsIntentConfirmRequestBodyMandate_data\'Customer_acceptance\'Online\'
-- 
-- 
data PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online' = PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online' {
  -- | ip_address
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'IpAddress :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | user_agent
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'UserAgent :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "ip_address" (postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'IpAddress obj) : (Data.Aeson..=) "user_agent" (postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'UserAgent obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "ip_address" (postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'IpAddress obj) GHC.Base.<> (Data.Aeson..=) "user_agent" (postSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'UserAgent obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'" (\obj -> (GHC.Base.pure PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ip_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "user_agent"))
-- | Defines the enum schema postSetupIntentsIntentConfirmRequestBodyMandate_data\'Customer_acceptance\'Type\'
-- 
-- 
data PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'
    = PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumOther Data.Aeson.Types.Internal.Value
    | PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumTyped GHC.Base.String
    | PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOnline
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'
    where toJSON (PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOnline) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "online"
instance Data.Aeson.FromJSON PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "online")
                                          then PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOnline
                                          else PostSetupIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumOther val)
-- | Defines the data type for the schema postSetupIntentsIntentConfirmRequestBodyPayment_method_options\'
-- 
-- Payment-method-specific configuration for this SetupIntent.
data PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions' = PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions' {
  -- | card
  postSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card :: (GHC.Maybe.Maybe PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "card" (postSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "card" (postSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'" (\obj -> GHC.Base.pure PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card"))
-- | Defines the data type for the schema postSetupIntentsIntentConfirmRequestBodyPayment_method_options\'Card\'
-- 
-- 
data PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card' = PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card' {
  -- | request_three_d_secure
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure :: (GHC.Maybe.Maybe PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "request_three_d_secure" (postSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "request_three_d_secure" (postSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'" (\obj -> GHC.Base.pure PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "request_three_d_secure"))
-- | Defines the enum schema postSetupIntentsIntentConfirmRequestBodyPayment_method_options\'Card\'Request_three_d_secure\'
-- 
-- 
data PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    = PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther Data.Aeson.Types.Internal.Value
    | PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumTyped GHC.Base.String
    | PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny
    | PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    where toJSON (PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "any"
          toJSON (PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic"
instance Data.Aeson.FromJSON PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "any")
                                          then PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic")
                                                then PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic
                                                else PostSetupIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther val)
-- | Represents a response of the operation 'postSetupIntentsIntentConfirm'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSetupIntentsIntentConfirmResponseError' is used.
data PostSetupIntentsIntentConfirmResponse =                   
   PostSetupIntentsIntentConfirmResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostSetupIntentsIntentConfirmResponse200 SetupIntent       -- ^ Successful response.
  | PostSetupIntentsIntentConfirmResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
