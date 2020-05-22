{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postSetupIntentsIntent
module StripeAPI.Operations.PostSetupIntentsIntent where

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

-- | > POST /v1/setup_intents/{intent}
-- 
-- \<p>Updates a SetupIntent object.\<\/p>
postSetupIntentsIntent :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                    -- ^ intent | Constraints: Maximum length of 5000
  -> PostSetupIntentsIntentRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostSetupIntentsIntentResponse)) -- ^ Monad containing the result of the operation
postSetupIntentsIntent config
                       intent
                       body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSetupIntentsIntentResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSetupIntentsIntentResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                    SetupIntent)
                                                                                                                                                                                              | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSetupIntentsIntentResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/setup_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/setup_intents/{intent}
-- 
-- The same as 'postSetupIntentsIntent' but returns the raw 'Data.ByteString.Char8.ByteString'
postSetupIntentsIntentRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             StripeAPI.Common.Configuration s ->
                             GHC.Base.String ->
                             PostSetupIntentsIntentRequestBody ->
                             m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                   (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSetupIntentsIntentRaw config
                          intent
                          body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/setup_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/setup_intents/{intent}
-- 
-- Monadic version of 'postSetupIntentsIntent' (use with 'StripeAPI.Common.runWithConfiguration')
postSetupIntentsIntentM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                         StripeAPI.Common.SecurityScheme s) =>
                           GHC.Base.String ->
                           PostSetupIntentsIntentRequestBody ->
                           Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                              m
                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                  (Network.HTTP.Client.Types.Response PostSetupIntentsIntentResponse))
postSetupIntentsIntentM intent
                        body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSetupIntentsIntentResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSetupIntentsIntentResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                     SetupIntent)
                                                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSetupIntentsIntentResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/setup_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/setup_intents/{intent}
-- 
-- Monadic version of 'postSetupIntentsIntentRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postSetupIntentsIntentRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                            StripeAPI.Common.SecurityScheme s) =>
                              GHC.Base.String ->
                              PostSetupIntentsIntentRequestBody ->
                              Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                 m
                                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSetupIntentsIntentRawM intent
                           body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/setup_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postSetupIntentsIntentRequestBody
-- 
-- 
data PostSetupIntentsIntentRequestBody = PostSetupIntentsIntentRequestBody {
  -- | customer: ID of the Customer this SetupIntent belongs to, if one exists.
  -- 
  -- If present, payment methods used with this SetupIntent can only be attached to this Customer, and payment methods attached to other Customers cannot be used with this SetupIntent.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postSetupIntentsIntentRequestBodyCustomer :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 1000
  , postSetupIntentsIntentRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | expand: Specifies which fields in the response should be expanded.
  , postSetupIntentsIntentRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postSetupIntentsIntentRequestBodyMetadata :: (GHC.Maybe.Maybe PostSetupIntentsIntentRequestBodyMetadata')
  -- | payment_method: ID of the payment method (a PaymentMethod, Card, or saved Source object) to attach to this SetupIntent.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSetupIntentsIntentRequestBodyPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | payment_method_options: Payment-method-specific configuration for this SetupIntent.
  , postSetupIntentsIntentRequestBodyPaymentMethodOptions :: (GHC.Maybe.Maybe PostSetupIntentsIntentRequestBodyPaymentMethodOptions')
  -- | payment_method_types: The list of payment method types (e.g. card) that this SetupIntent is allowed to set up. If this is not provided, defaults to [\"card\"].
  , postSetupIntentsIntentRequestBodyPaymentMethodTypes :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSetupIntentsIntentRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "customer" (postSetupIntentsIntentRequestBodyCustomer obj) : (Data.Aeson..=) "description" (postSetupIntentsIntentRequestBodyDescription obj) : (Data.Aeson..=) "expand" (postSetupIntentsIntentRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postSetupIntentsIntentRequestBodyMetadata obj) : (Data.Aeson..=) "payment_method" (postSetupIntentsIntentRequestBodyPaymentMethod obj) : (Data.Aeson..=) "payment_method_options" (postSetupIntentsIntentRequestBodyPaymentMethodOptions obj) : (Data.Aeson..=) "payment_method_types" (postSetupIntentsIntentRequestBodyPaymentMethodTypes obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "customer" (postSetupIntentsIntentRequestBodyCustomer obj) GHC.Base.<> ((Data.Aeson..=) "description" (postSetupIntentsIntentRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postSetupIntentsIntentRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postSetupIntentsIntentRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "payment_method" (postSetupIntentsIntentRequestBodyPaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "payment_method_options" (postSetupIntentsIntentRequestBodyPaymentMethodOptions obj) GHC.Base.<> (Data.Aeson..=) "payment_method_types" (postSetupIntentsIntentRequestBodyPaymentMethodTypes obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsIntentRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsIntentRequestBody" (\obj -> ((((((GHC.Base.pure PostSetupIntentsIntentRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method_options")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method_types"))
-- | Defines the data type for the schema postSetupIntentsIntentRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostSetupIntentsIntentRequestBodyMetadata' = PostSetupIntentsIntentRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSetupIntentsIntentRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsIntentRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsIntentRequestBodyMetadata'" (\obj -> GHC.Base.pure PostSetupIntentsIntentRequestBodyMetadata')
-- | Defines the data type for the schema postSetupIntentsIntentRequestBodyPayment_method_options\'
-- 
-- Payment-method-specific configuration for this SetupIntent.
data PostSetupIntentsIntentRequestBodyPaymentMethodOptions' = PostSetupIntentsIntentRequestBodyPaymentMethodOptions' {
  -- | card
  postSetupIntentsIntentRequestBodyPaymentMethodOptions'Card :: (GHC.Maybe.Maybe PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSetupIntentsIntentRequestBodyPaymentMethodOptions'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "card" (postSetupIntentsIntentRequestBodyPaymentMethodOptions'Card obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "card" (postSetupIntentsIntentRequestBodyPaymentMethodOptions'Card obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsIntentRequestBodyPaymentMethodOptions'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsIntentRequestBodyPaymentMethodOptions'" (\obj -> GHC.Base.pure PostSetupIntentsIntentRequestBodyPaymentMethodOptions' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card"))
-- | Defines the data type for the schema postSetupIntentsIntentRequestBodyPayment_method_options\'Card\'
-- 
-- 
data PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card' = PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card' {
  -- | request_three_d_secure
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure :: (GHC.Maybe.Maybe PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "request_three_d_secure" (postSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "request_three_d_secure" (postSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'" (\obj -> GHC.Base.pure PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "request_three_d_secure"))
-- | Defines the enum schema postSetupIntentsIntentRequestBodyPayment_method_options\'Card\'Request_three_d_secure\'
-- 
-- 
data PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    = PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther Data.Aeson.Types.Internal.Value
    | PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumTyped GHC.Base.String
    | PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny
    | PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    where toJSON (PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "any"
          toJSON (PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic"
instance Data.Aeson.FromJSON PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "any")
                                          then PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic")
                                                then PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic
                                                else PostSetupIntentsIntentRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther val)
-- | Represents a response of the operation 'postSetupIntentsIntent'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSetupIntentsIntentResponseError' is used.
data PostSetupIntentsIntentResponse =                   
   PostSetupIntentsIntentResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostSetupIntentsIntentResponse200 SetupIntent       -- ^ Successful response.
  | PostSetupIntentsIntentResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
