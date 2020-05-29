{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation deleteCouponsCoupon
module StripeAPI.Operations.DeleteCouponsCoupon where

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

-- | > DELETE /v1/coupons/{coupon}
-- 
-- \<p>You can delete coupons via the \<a href=\"https:\/\/dashboard.stripe.com\/coupons\">coupon management\<\/a> page of the Stripe dashboard. However, deleting a coupon does not affect any customers who have already applied the coupon; it means that new customers can’t redeem the coupon. You can also delete coupons via the API.\<\/p>
deleteCouponsCoupon :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text                                                                                                         -- ^ coupon | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe DeleteCouponsCouponRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response DeleteCouponsCouponResponse)) -- ^ Monad containing the result of the operation
deleteCouponsCoupon config
                    coupon
                    body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either DeleteCouponsCouponResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteCouponsCouponResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                           DeletedCoupon)
                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteCouponsCouponResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/v1/coupons/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel coupon)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/coupons/{coupon}
-- 
-- The same as 'deleteCouponsCoupon' but returns the raw 'Data.ByteString.Char8.ByteString'
deleteCouponsCouponRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          StripeAPI.Common.Configuration s ->
                          Data.Text.Internal.Text ->
                          GHC.Maybe.Maybe DeleteCouponsCouponRequestBody ->
                          m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
deleteCouponsCouponRaw config
                       coupon
                       body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/v1/coupons/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel coupon)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/coupons/{coupon}
-- 
-- Monadic version of 'deleteCouponsCoupon' (use with 'StripeAPI.Common.runWithConfiguration')
deleteCouponsCouponM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        Data.Text.Internal.Text ->
                        GHC.Maybe.Maybe DeleteCouponsCouponRequestBody ->
                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                           m
                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response DeleteCouponsCouponResponse))
deleteCouponsCouponM coupon
                     body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either DeleteCouponsCouponResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteCouponsCouponResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                            DeletedCoupon)
                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteCouponsCouponResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/v1/coupons/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel coupon)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/coupons/{coupon}
-- 
-- Monadic version of 'deleteCouponsCouponRaw' (use with 'StripeAPI.Common.runWithConfiguration')
deleteCouponsCouponRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                         StripeAPI.Common.SecurityScheme s) =>
                           Data.Text.Internal.Text ->
                           GHC.Maybe.Maybe DeleteCouponsCouponRequestBody ->
                           Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                              m
                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
deleteCouponsCouponRawM coupon
                        body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/v1/coupons/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel coupon)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema deleteCouponsCouponRequestBody
-- 
-- 
data DeleteCouponsCouponRequestBody = DeleteCouponsCouponRequestBody {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeleteCouponsCouponRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON DeleteCouponsCouponRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteCouponsCouponRequestBody" (\obj -> GHC.Base.pure DeleteCouponsCouponRequestBody)
-- | Represents a response of the operation 'deleteCouponsCoupon'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteCouponsCouponResponseError' is used.
data DeleteCouponsCouponResponse =                   
   DeleteCouponsCouponResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | DeleteCouponsCouponResponse200 DeletedCoupon     -- ^ Successful response.
  | DeleteCouponsCouponResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
