{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postCoupons
module StripeAPI.Operations.PostCoupons where

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

-- | > POST /v1/coupons
-- 
-- \<p>You can create coupons easily via the \<a href=\"https:\/\/dashboard.stripe.com\/coupons\">coupon management\<\/a> page of the Stripe dashboard. Coupon creation is also accessible via the API if you need to create coupons on the fly.\<\/p>
-- 
-- \<p>A coupon has either a \<code>percent_off\<\/code> or an \<code>amount_off\<\/code> and \<code>currency\<\/code>. If you set an \<code>amount_off\<\/code>, that amount will be subtracted from any invoice’s subtotal. For example, an invoice with a subtotal of \<currency>100\<\/currency> will have a final total of \<currency>0\<\/currency> if a coupon with an \<code>amount_off\<\/code> of \<amount>200\<\/amount> is applied to it and an invoice with a subtotal of \<currency>300\<\/currency> will have a final total of \<currency>100\<\/currency> if a coupon with an \<code>amount_off\<\/code> of \<amount>200\<\/amount> is applied to it.\<\/p>
postCoupons :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> PostCouponsRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostCouponsResponse)) -- ^ Monad containing the result of the operation
postCoupons config
            body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCouponsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCouponsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                   Coupon)
                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCouponsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/coupons") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/coupons
-- 
-- The same as 'postCoupons' but returns the raw 'Data.ByteString.Char8.ByteString'
postCouponsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                StripeAPI.Common.SecurityScheme s) =>
                  StripeAPI.Common.Configuration s ->
                  PostCouponsRequestBody ->
                  m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCouponsRaw config
               body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/coupons") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/coupons
-- 
-- Monadic version of 'postCoupons' (use with 'StripeAPI.Common.runWithConfiguration')
postCouponsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                              StripeAPI.Common.SecurityScheme s) =>
                PostCouponsRequestBody ->
                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                   m
                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                       (Network.HTTP.Client.Types.Response PostCouponsResponse))
postCouponsM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostCouponsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCouponsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                    Coupon)
                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCouponsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/coupons") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/coupons
-- 
-- Monadic version of 'postCouponsRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postCouponsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                 StripeAPI.Common.SecurityScheme s) =>
                   PostCouponsRequestBody ->
                   Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                      m
                                                      (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCouponsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/coupons") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postCouponsRequestBody
-- 
-- 
data PostCouponsRequestBody = PostCouponsRequestBody {
  -- | amount_off: A positive integer representing the amount to subtract from an invoice total (required if \`percent_off\` is not passed).
  postCouponsRequestBodyAmountOff :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | currency: Three-letter [ISO code for the currency](https:\/\/stripe.com\/docs\/currencies) of the \`amount_off\` parameter (required if \`amount_off\` is passed).
  , postCouponsRequestBodyCurrency :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | duration: Specifies how long the discount will be in effect. Can be \`forever\`, \`once\`, or \`repeating\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCouponsRequestBodyDuration :: PostCouponsRequestBodyDuration'
  -- | duration_in_months: Required only if \`duration\` is \`repeating\`, in which case it must be a positive integer that specifies the number of months the discount will be in effect.
  , postCouponsRequestBodyDurationInMonths :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | expand: Specifies which fields in the response should be expanded.
  , postCouponsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | id: Unique string of your choice that will be used to identify this coupon when applying it to a customer. This is often a specific code you\'ll give to your customer to use when signing up (e.g., \`FALL25OFF\`). If you don\'t want to specify a particular code, you can leave the ID blank and we\'ll generate a random code for you.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCouponsRequestBodyId :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | max_redemptions: A positive integer specifying the number of times the coupon can be redeemed before it\'s no longer valid. For example, you might have a 50% off coupon that the first 20 readers of your blog can use.
  , postCouponsRequestBodyMaxRedemptions :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postCouponsRequestBodyMetadata :: (GHC.Maybe.Maybe PostCouponsRequestBodyMetadata')
  -- | name: Name of the coupon displayed to customers on, for instance invoices, or receipts. By default the \`id\` is shown if \`name\` is not set.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 40
  , postCouponsRequestBodyName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | percent_off: A positive float larger than 0, and smaller or equal to 100, that represents the discount the coupon will apply (required if \`amount_off\` is not passed).
  , postCouponsRequestBodyPercentOff :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | redeem_by: Unix timestamp specifying the last time at which the coupon can be redeemed. After the redeem_by date, the coupon can no longer be applied to new customers.
  , postCouponsRequestBodyRedeemBy :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCouponsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount_off" (postCouponsRequestBodyAmountOff obj) : (Data.Aeson..=) "currency" (postCouponsRequestBodyCurrency obj) : (Data.Aeson..=) "duration" (postCouponsRequestBodyDuration obj) : (Data.Aeson..=) "duration_in_months" (postCouponsRequestBodyDurationInMonths obj) : (Data.Aeson..=) "expand" (postCouponsRequestBodyExpand obj) : (Data.Aeson..=) "id" (postCouponsRequestBodyId obj) : (Data.Aeson..=) "max_redemptions" (postCouponsRequestBodyMaxRedemptions obj) : (Data.Aeson..=) "metadata" (postCouponsRequestBodyMetadata obj) : (Data.Aeson..=) "name" (postCouponsRequestBodyName obj) : (Data.Aeson..=) "percent_off" (postCouponsRequestBodyPercentOff obj) : (Data.Aeson..=) "redeem_by" (postCouponsRequestBodyRedeemBy obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount_off" (postCouponsRequestBodyAmountOff obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postCouponsRequestBodyCurrency obj) GHC.Base.<> ((Data.Aeson..=) "duration" (postCouponsRequestBodyDuration obj) GHC.Base.<> ((Data.Aeson..=) "duration_in_months" (postCouponsRequestBodyDurationInMonths obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postCouponsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "id" (postCouponsRequestBodyId obj) GHC.Base.<> ((Data.Aeson..=) "max_redemptions" (postCouponsRequestBodyMaxRedemptions obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCouponsRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCouponsRequestBodyName obj) GHC.Base.<> ((Data.Aeson..=) "percent_off" (postCouponsRequestBodyPercentOff obj) GHC.Base.<> (Data.Aeson..=) "redeem_by" (postCouponsRequestBodyRedeemBy obj)))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCouponsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCouponsRequestBody" (\obj -> ((((((((((GHC.Base.pure PostCouponsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_off")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "duration")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "duration_in_months")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "max_redemptions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "percent_off")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "redeem_by"))
-- | Defines the enum schema postCouponsRequestBodyDuration\'
-- 
-- Specifies how long the discount will be in effect. Can be \`forever\`, \`once\`, or \`repeating\`.
data PostCouponsRequestBodyDuration'
    = PostCouponsRequestBodyDuration'EnumOther Data.Aeson.Types.Internal.Value
    | PostCouponsRequestBodyDuration'EnumTyped GHC.Base.String
    | PostCouponsRequestBodyDuration'EnumStringForever
    | PostCouponsRequestBodyDuration'EnumStringOnce
    | PostCouponsRequestBodyDuration'EnumStringRepeating
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCouponsRequestBodyDuration'
    where toJSON (PostCouponsRequestBodyDuration'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCouponsRequestBodyDuration'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCouponsRequestBodyDuration'EnumStringForever) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "forever"
          toJSON (PostCouponsRequestBodyDuration'EnumStringOnce) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "once"
          toJSON (PostCouponsRequestBodyDuration'EnumStringRepeating) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "repeating"
instance Data.Aeson.FromJSON PostCouponsRequestBodyDuration'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "forever")
                                          then PostCouponsRequestBodyDuration'EnumStringForever
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "once")
                                                then PostCouponsRequestBodyDuration'EnumStringOnce
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "repeating")
                                                      then PostCouponsRequestBodyDuration'EnumStringRepeating
                                                      else PostCouponsRequestBodyDuration'EnumOther val)
-- | Defines the data type for the schema postCouponsRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostCouponsRequestBodyMetadata' = PostCouponsRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCouponsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCouponsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCouponsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostCouponsRequestBodyMetadata')
-- | Represents a response of the operation 'postCoupons'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostCouponsResponseError' is used.
data PostCouponsResponse =                   
   PostCouponsResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostCouponsResponse200 Coupon            -- ^ Successful response.
  | PostCouponsResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
