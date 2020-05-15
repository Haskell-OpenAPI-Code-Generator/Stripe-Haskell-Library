{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.Coupon where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
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
import qualified StripeAPI.Common

data Coupon
    = Coupon {couponAmountOff :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
              couponCreated :: GHC.Integer.Type.Integer,
              couponCurrency :: (GHC.Maybe.Maybe GHC.Base.String),
              couponDuration :: CouponDuration',
              couponDurationInMonths :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
              couponId :: GHC.Base.String,
              couponLivemode :: GHC.Types.Bool,
              couponMaxRedemptions :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
              couponMetadata :: CouponMetadata',
              couponName :: (GHC.Maybe.Maybe GHC.Base.String),
              couponObject :: CouponObject',
              couponPercentOff :: (GHC.Maybe.Maybe GHC.Types.Double),
              couponRedeemBy :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
              couponTimesRedeemed :: GHC.Integer.Type.Integer,
              couponValid :: GHC.Types.Bool}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data CouponDuration'
    = CouponDuration'EnumOther Data.Aeson.Types.Internal.Value
    | CouponDuration'EnumTyped GHC.Base.String
    | CouponDuration'EnumStringForever
    | CouponDuration'EnumStringOnce
    | CouponDuration'EnumStringRepeating
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON CouponDuration'
    where toJSON (CouponDuration'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (CouponDuration'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (CouponDuration'EnumStringForever) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "forever"
          toJSON (CouponDuration'EnumStringOnce) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "once"
          toJSON (CouponDuration'EnumStringRepeating) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "repeating"
instance Data.Aeson.FromJSON CouponDuration'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "forever")
                                          then CouponDuration'EnumStringForever
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "once")
                                                then CouponDuration'EnumStringOnce
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "repeating")
                                                      then CouponDuration'EnumStringRepeating
                                                      else CouponDuration'EnumOther val)
data CouponMetadata'
    = CouponMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON CouponMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON CouponMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CouponMetadata'" (\obj -> GHC.Base.pure CouponMetadata')
data CouponObject'
    = CouponObject'EnumOther Data.Aeson.Types.Internal.Value
    | CouponObject'EnumTyped GHC.Base.String
    | CouponObject'EnumStringCoupon
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON CouponObject'
    where toJSON (CouponObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (CouponObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (CouponObject'EnumStringCoupon) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "coupon"
instance Data.Aeson.FromJSON CouponObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "coupon")
                                          then CouponObject'EnumStringCoupon
                                          else CouponObject'EnumOther val)
instance Data.Aeson.ToJSON Coupon
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount_off" (couponAmountOff obj) : (Data.Aeson..=) "created" (couponCreated obj) : (Data.Aeson..=) "currency" (couponCurrency obj) : (Data.Aeson..=) "duration" (couponDuration obj) : (Data.Aeson..=) "duration_in_months" (couponDurationInMonths obj) : (Data.Aeson..=) "id" (couponId obj) : (Data.Aeson..=) "livemode" (couponLivemode obj) : (Data.Aeson..=) "max_redemptions" (couponMaxRedemptions obj) : (Data.Aeson..=) "metadata" (couponMetadata obj) : (Data.Aeson..=) "name" (couponName obj) : (Data.Aeson..=) "object" (couponObject obj) : (Data.Aeson..=) "percent_off" (couponPercentOff obj) : (Data.Aeson..=) "redeem_by" (couponRedeemBy obj) : (Data.Aeson..=) "times_redeemed" (couponTimesRedeemed obj) : (Data.Aeson..=) "valid" (couponValid obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount_off" (couponAmountOff obj) GHC.Base.<> ((Data.Aeson..=) "created" (couponCreated obj) GHC.Base.<> ((Data.Aeson..=) "currency" (couponCurrency obj) GHC.Base.<> ((Data.Aeson..=) "duration" (couponDuration obj) GHC.Base.<> ((Data.Aeson..=) "duration_in_months" (couponDurationInMonths obj) GHC.Base.<> ((Data.Aeson..=) "id" (couponId obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (couponLivemode obj) GHC.Base.<> ((Data.Aeson..=) "max_redemptions" (couponMaxRedemptions obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (couponMetadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (couponName obj) GHC.Base.<> ((Data.Aeson..=) "object" (couponObject obj) GHC.Base.<> ((Data.Aeson..=) "percent_off" (couponPercentOff obj) GHC.Base.<> ((Data.Aeson..=) "redeem_by" (couponRedeemBy obj) GHC.Base.<> ((Data.Aeson..=) "times_redeemed" (couponTimesRedeemed obj) GHC.Base.<> (Data.Aeson..=) "valid" (couponValid obj)))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON Coupon
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Coupon" (\obj -> ((((((((((((((GHC.Base.pure Coupon GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_off")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "duration")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "duration_in_months")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "max_redemptions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "percent_off")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "redeem_by")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "times_redeemed")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "valid"))