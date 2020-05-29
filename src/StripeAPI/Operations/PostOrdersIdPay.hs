{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postOrdersIdPay
module StripeAPI.Operations.PostOrdersIdPay where

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

-- | > POST /v1/orders/{id}/pay
-- 
-- \<p>Pay an order by providing a \<code>source\<\/code> to create a payment.\<\/p>
postOrdersIdPay :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text                                                                                                     -- ^ id | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostOrdersIdPayRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostOrdersIdPayResponse)) -- ^ Monad containing the result of the operation
postOrdersIdPay config
                id
                body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostOrdersIdPayResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostOrdersIdPayResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                               Order)
                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostOrdersIdPayResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                 Error)
                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/orders/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ "/pay"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/orders/{id}/pay
-- 
-- The same as 'postOrdersIdPay' but returns the raw 'Data.ByteString.Char8.ByteString'
postOrdersIdPayRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                    StripeAPI.Common.SecurityScheme s) =>
                      StripeAPI.Common.Configuration s ->
                      Data.Text.Internal.Text ->
                      GHC.Maybe.Maybe PostOrdersIdPayRequestBody ->
                      m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postOrdersIdPayRaw config
                   id
                   body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/orders/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ "/pay"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/orders/{id}/pay
-- 
-- Monadic version of 'postOrdersIdPay' (use with 'StripeAPI.Common.runWithConfiguration')
postOrdersIdPayM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                  StripeAPI.Common.SecurityScheme s) =>
                    Data.Text.Internal.Text ->
                    GHC.Maybe.Maybe PostOrdersIdPayRequestBody ->
                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                       m
                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                           (Network.HTTP.Client.Types.Response PostOrdersIdPayResponse))
postOrdersIdPayM id
                 body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostOrdersIdPayResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostOrdersIdPayResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                Order)
                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostOrdersIdPayResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/orders/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ "/pay"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/orders/{id}/pay
-- 
-- Monadic version of 'postOrdersIdPayRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postOrdersIdPayRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                     StripeAPI.Common.SecurityScheme s) =>
                       Data.Text.Internal.Text ->
                       GHC.Maybe.Maybe PostOrdersIdPayRequestBody ->
                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                          m
                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postOrdersIdPayRawM id
                    body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/orders/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ "/pay"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postOrdersIdPayRequestBody
-- 
-- 
data PostOrdersIdPayRequestBody = PostOrdersIdPayRequestBody {
  -- | application_fee: A fee in %s that will be applied to the order and transferred to the application owner\'s Stripe account. The request must be made with an OAuth key or the \`Stripe-Account\` header in order to take an application fee. For more information, see the application fees [documentation](https:\/\/stripe.com\/docs\/connect\/direct-charges\#collecting-fees).
  postOrdersIdPayRequestBodyApplicationFee :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | customer: The ID of an existing customer that will be charged for this order. If no customer was attached to the order at creation, either \`source\` or \`customer\` is required. Otherwise, the specified customer will be charged instead of the one attached to the order.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postOrdersIdPayRequestBodyCustomer :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | email: The email address of the customer placing the order. Required if not previously specified for the order.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postOrdersIdPayRequestBodyEmail :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | expand: Specifies which fields in the response should be expanded.
  , postOrdersIdPayRequestBodyExpand :: (GHC.Maybe.Maybe ([] Data.Text.Internal.Text))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postOrdersIdPayRequestBodyMetadata :: (GHC.Maybe.Maybe PostOrdersIdPayRequestBodyMetadata')
  -- | source: A [Token](https:\/\/stripe.com\/docs\/api\#tokens)\'s or a [Source](https:\/\/stripe.com\/docs\/api\#sources)\'s ID, as returned by [Elements](https:\/\/stripe.com\/docs\/elements). If no customer was attached to the order at creation, either \`source\` or \`customer\` is required. Otherwise, the specified source will be charged intead of the customer attached to the order.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postOrdersIdPayRequestBodySource :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostOrdersIdPayRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "application_fee" (postOrdersIdPayRequestBodyApplicationFee obj) : (Data.Aeson..=) "customer" (postOrdersIdPayRequestBodyCustomer obj) : (Data.Aeson..=) "email" (postOrdersIdPayRequestBodyEmail obj) : (Data.Aeson..=) "expand" (postOrdersIdPayRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postOrdersIdPayRequestBodyMetadata obj) : (Data.Aeson..=) "source" (postOrdersIdPayRequestBodySource obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "application_fee" (postOrdersIdPayRequestBodyApplicationFee obj) GHC.Base.<> ((Data.Aeson..=) "customer" (postOrdersIdPayRequestBodyCustomer obj) GHC.Base.<> ((Data.Aeson..=) "email" (postOrdersIdPayRequestBodyEmail obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postOrdersIdPayRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postOrdersIdPayRequestBodyMetadata obj) GHC.Base.<> (Data.Aeson..=) "source" (postOrdersIdPayRequestBodySource obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostOrdersIdPayRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostOrdersIdPayRequestBody" (\obj -> (((((GHC.Base.pure PostOrdersIdPayRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source"))
-- | Defines the data type for the schema postOrdersIdPayRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostOrdersIdPayRequestBodyMetadata' = PostOrdersIdPayRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostOrdersIdPayRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostOrdersIdPayRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostOrdersIdPayRequestBodyMetadata'" (\obj -> GHC.Base.pure PostOrdersIdPayRequestBodyMetadata')
-- | Represents a response of the operation 'postOrdersIdPay'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostOrdersIdPayResponseError' is used.
data PostOrdersIdPayResponse =                   
   PostOrdersIdPayResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostOrdersIdPayResponse200 Order             -- ^ Successful response.
  | PostOrdersIdPayResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
