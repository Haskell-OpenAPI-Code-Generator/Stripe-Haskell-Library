{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postOrdersId
module StripeAPI.Operations.PostOrdersId where

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

-- | > POST /v1/orders/{id}
-- 
-- \<p>Updates the specific order by setting the values of the parameters passed. Any parameters not provided will be left unchanged.\<\/p>
postOrdersId :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                          -- ^ id | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostOrdersIdRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostOrdersIdResponse)) -- ^ Monad containing the result of the operation
postOrdersId config
             id
             body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostOrdersIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostOrdersIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      Order)
                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostOrdersIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/orders/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/orders/{id}
-- 
-- The same as 'postOrdersId' but returns the raw 'Data.ByteString.Char8.ByteString'
postOrdersIdRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                 StripeAPI.Common.SecurityScheme s) =>
                   StripeAPI.Common.Configuration s ->
                   GHC.Base.String ->
                   GHC.Maybe.Maybe PostOrdersIdRequestBody ->
                   m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postOrdersIdRaw config
                id
                body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/orders/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/orders/{id}
-- 
-- Monadic version of 'postOrdersId' (use with 'StripeAPI.Common.runWithConfiguration')
postOrdersIdM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                               StripeAPI.Common.SecurityScheme s) =>
                 GHC.Base.String ->
                 GHC.Maybe.Maybe PostOrdersIdRequestBody ->
                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                    m
                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                        (Network.HTTP.Client.Types.Response PostOrdersIdResponse))
postOrdersIdM id
              body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostOrdersIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostOrdersIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                       Order)
                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostOrdersIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/orders/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/orders/{id}
-- 
-- Monadic version of 'postOrdersIdRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postOrdersIdRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                  StripeAPI.Common.SecurityScheme s) =>
                    GHC.Base.String ->
                    GHC.Maybe.Maybe PostOrdersIdRequestBody ->
                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                       m
                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postOrdersIdRawM id
                 body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/orders/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postOrdersIdRequestBody
-- 
-- 
data PostOrdersIdRequestBody = PostOrdersIdRequestBody {
  -- | coupon: A coupon code that represents a discount to be applied to this order. Must be one-time duration and in same currency as the order. An order can have multiple coupons.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postOrdersIdRequestBodyCoupon :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | expand: Specifies which fields in the response should be expanded.
  , postOrdersIdRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postOrdersIdRequestBodyMetadata :: (GHC.Maybe.Maybe PostOrdersIdRequestBodyMetadata')
  -- | selected_shipping_method: The shipping method to select for fulfilling this order. If specified, must be one of the \`id\`s of a shipping method in the \`shipping_methods\` array. If specified, will overwrite the existing selected shipping method, updating \`items\` as necessary.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postOrdersIdRequestBodySelectedShippingMethod :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | shipping: Tracking information once the order has been fulfilled.
  , postOrdersIdRequestBodyShipping :: (GHC.Maybe.Maybe PostOrdersIdRequestBodyShipping')
  -- | status: Current order status. One of \`created\`, \`paid\`, \`canceled\`, \`fulfilled\`, or \`returned\`. More detail in the [Orders Guide](https:\/\/stripe.com\/docs\/orders\/guide\#understanding-order-statuses).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postOrdersIdRequestBodyStatus :: (GHC.Maybe.Maybe PostOrdersIdRequestBodyStatus')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostOrdersIdRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "coupon" (postOrdersIdRequestBodyCoupon obj) : (Data.Aeson..=) "expand" (postOrdersIdRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postOrdersIdRequestBodyMetadata obj) : (Data.Aeson..=) "selected_shipping_method" (postOrdersIdRequestBodySelectedShippingMethod obj) : (Data.Aeson..=) "shipping" (postOrdersIdRequestBodyShipping obj) : (Data.Aeson..=) "status" (postOrdersIdRequestBodyStatus obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "coupon" (postOrdersIdRequestBodyCoupon obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postOrdersIdRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postOrdersIdRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "selected_shipping_method" (postOrdersIdRequestBodySelectedShippingMethod obj) GHC.Base.<> ((Data.Aeson..=) "shipping" (postOrdersIdRequestBodyShipping obj) GHC.Base.<> (Data.Aeson..=) "status" (postOrdersIdRequestBodyStatus obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostOrdersIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostOrdersIdRequestBody" (\obj -> (((((GHC.Base.pure PostOrdersIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "coupon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "selected_shipping_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "status"))
-- | Defines the data type for the schema postOrdersIdRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostOrdersIdRequestBodyMetadata' = PostOrdersIdRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostOrdersIdRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostOrdersIdRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostOrdersIdRequestBodyMetadata'" (\obj -> GHC.Base.pure PostOrdersIdRequestBodyMetadata')
-- | Defines the data type for the schema postOrdersIdRequestBodyShipping\'
-- 
-- Tracking information once the order has been fulfilled.
data PostOrdersIdRequestBodyShipping' = PostOrdersIdRequestBodyShipping' {
  -- | carrier
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postOrdersIdRequestBodyShipping'Carrier :: GHC.Base.String
  -- | tracking_number
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postOrdersIdRequestBodyShipping'TrackingNumber :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostOrdersIdRequestBodyShipping'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "carrier" (postOrdersIdRequestBodyShipping'Carrier obj) : (Data.Aeson..=) "tracking_number" (postOrdersIdRequestBodyShipping'TrackingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "carrier" (postOrdersIdRequestBodyShipping'Carrier obj) GHC.Base.<> (Data.Aeson..=) "tracking_number" (postOrdersIdRequestBodyShipping'TrackingNumber obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostOrdersIdRequestBodyShipping'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostOrdersIdRequestBodyShipping'" (\obj -> (GHC.Base.pure PostOrdersIdRequestBodyShipping' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "carrier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tracking_number"))
-- | Defines the enum schema postOrdersIdRequestBodyStatus\'
-- 
-- Current order status. One of \`created\`, \`paid\`, \`canceled\`, \`fulfilled\`, or \`returned\`. More detail in the [Orders Guide](https:\/\/stripe.com\/docs\/orders\/guide\#understanding-order-statuses).
data PostOrdersIdRequestBodyStatus'
    = PostOrdersIdRequestBodyStatus'EnumOther Data.Aeson.Types.Internal.Value
    | PostOrdersIdRequestBodyStatus'EnumTyped GHC.Base.String
    | PostOrdersIdRequestBodyStatus'EnumStringCanceled
    | PostOrdersIdRequestBodyStatus'EnumStringCreated
    | PostOrdersIdRequestBodyStatus'EnumStringFulfilled
    | PostOrdersIdRequestBodyStatus'EnumStringPaid
    | PostOrdersIdRequestBodyStatus'EnumStringReturned
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostOrdersIdRequestBodyStatus'
    where toJSON (PostOrdersIdRequestBodyStatus'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostOrdersIdRequestBodyStatus'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostOrdersIdRequestBodyStatus'EnumStringCanceled) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "canceled"
          toJSON (PostOrdersIdRequestBodyStatus'EnumStringCreated) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "created"
          toJSON (PostOrdersIdRequestBodyStatus'EnumStringFulfilled) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fulfilled"
          toJSON (PostOrdersIdRequestBodyStatus'EnumStringPaid) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "paid"
          toJSON (PostOrdersIdRequestBodyStatus'EnumStringReturned) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "returned"
instance Data.Aeson.FromJSON PostOrdersIdRequestBodyStatus'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "canceled")
                                          then PostOrdersIdRequestBodyStatus'EnumStringCanceled
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "created")
                                                then PostOrdersIdRequestBodyStatus'EnumStringCreated
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fulfilled")
                                                      then PostOrdersIdRequestBodyStatus'EnumStringFulfilled
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "paid")
                                                            then PostOrdersIdRequestBodyStatus'EnumStringPaid
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "returned")
                                                                  then PostOrdersIdRequestBodyStatus'EnumStringReturned
                                                                  else PostOrdersIdRequestBodyStatus'EnumOther val)
-- | Represents a response of the operation 'postOrdersId'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostOrdersIdResponseError' is used.
data PostOrdersIdResponse =                   
   PostOrdersIdResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostOrdersIdResponse200 Order             -- ^ Successful response.
  | PostOrdersIdResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
