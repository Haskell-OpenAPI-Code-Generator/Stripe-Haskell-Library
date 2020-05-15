{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

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
-- POST /v1/coupons
postCoupons :: forall m s . (StripeAPI.Common.MonadHTTP m,
                             StripeAPI.Common.SecurityScheme s) =>
               StripeAPI.Common.Configuration s ->
               PostCouponsRequestBody ->
               m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                     (Network.HTTP.Client.Types.Response PostCouponsResponse))
postCoupons config
            body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCouponsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCouponsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                   Coupon)
                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCouponsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/coupons") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCouponsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                StripeAPI.Common.SecurityScheme s) =>
                  StripeAPI.Common.Configuration s ->
                  PostCouponsRequestBody ->
                  m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCouponsRaw config
               body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/coupons") [] body StripeAPI.Common.RequestBodyEncodingFormData)
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
                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/coupons") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCouponsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                 StripeAPI.Common.SecurityScheme s) =>
                   PostCouponsRequestBody ->
                   Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                      m
                                                      (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCouponsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/coupons") [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostCouponsRequestBody
    = PostCouponsRequestBody {postCouponsRequestBodyAmountOff :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                              postCouponsRequestBodyCurrency :: (GHC.Maybe.Maybe GHC.Base.String),
                              postCouponsRequestBodyDuration :: PostCouponsRequestBodyDuration',
                              postCouponsRequestBodyDurationInMonths :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                              postCouponsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                              postCouponsRequestBodyId :: (GHC.Maybe.Maybe GHC.Base.String),
                              postCouponsRequestBodyMaxRedemptions :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                              postCouponsRequestBodyMetadata :: (GHC.Maybe.Maybe PostCouponsRequestBodyMetadata'),
                              postCouponsRequestBodyName :: (GHC.Maybe.Maybe GHC.Base.String),
                              postCouponsRequestBodyPercentOff :: (GHC.Maybe.Maybe GHC.Types.Double),
                              postCouponsRequestBodyRedeemBy :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
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
data PostCouponsRequestBodyMetadata'
    = PostCouponsRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCouponsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCouponsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCouponsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostCouponsRequestBodyMetadata')
instance Data.Aeson.ToJSON PostCouponsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount_off" (postCouponsRequestBodyAmountOff obj) : (Data.Aeson..=) "currency" (postCouponsRequestBodyCurrency obj) : (Data.Aeson..=) "duration" (postCouponsRequestBodyDuration obj) : (Data.Aeson..=) "duration_in_months" (postCouponsRequestBodyDurationInMonths obj) : (Data.Aeson..=) "expand" (postCouponsRequestBodyExpand obj) : (Data.Aeson..=) "id" (postCouponsRequestBodyId obj) : (Data.Aeson..=) "max_redemptions" (postCouponsRequestBodyMaxRedemptions obj) : (Data.Aeson..=) "metadata" (postCouponsRequestBodyMetadata obj) : (Data.Aeson..=) "name" (postCouponsRequestBodyName obj) : (Data.Aeson..=) "percent_off" (postCouponsRequestBodyPercentOff obj) : (Data.Aeson..=) "redeem_by" (postCouponsRequestBodyRedeemBy obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount_off" (postCouponsRequestBodyAmountOff obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postCouponsRequestBodyCurrency obj) GHC.Base.<> ((Data.Aeson..=) "duration" (postCouponsRequestBodyDuration obj) GHC.Base.<> ((Data.Aeson..=) "duration_in_months" (postCouponsRequestBodyDurationInMonths obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postCouponsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "id" (postCouponsRequestBodyId obj) GHC.Base.<> ((Data.Aeson..=) "max_redemptions" (postCouponsRequestBodyMaxRedemptions obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCouponsRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCouponsRequestBodyName obj) GHC.Base.<> ((Data.Aeson..=) "percent_off" (postCouponsRequestBodyPercentOff obj) GHC.Base.<> (Data.Aeson..=) "redeem_by" (postCouponsRequestBodyRedeemBy obj)))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCouponsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCouponsRequestBody" (\obj -> ((((((((((GHC.Base.pure PostCouponsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_off")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "duration")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "duration_in_months")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "max_redemptions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "percent_off")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "redeem_by"))

data PostCouponsResponse
    = PostCouponsResponseError GHC.Base.String
    | PostCouponsResponse200 Coupon
    | PostCouponsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
