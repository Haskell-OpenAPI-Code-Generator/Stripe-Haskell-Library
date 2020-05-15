{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostCharges where

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
-- POST /v1/charges
postCharges :: forall m s . (StripeAPI.Common.MonadHTTP m,
                             StripeAPI.Common.SecurityScheme s) =>
               StripeAPI.Common.Configuration s ->
               PostChargesRequestBody ->
               m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                     (Network.HTTP.Client.Types.Response PostChargesResponse))
postCharges config
            body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostChargesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostChargesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                   Charge)
                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostChargesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/charges") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postChargesRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                StripeAPI.Common.SecurityScheme s) =>
                  StripeAPI.Common.Configuration s ->
                  PostChargesRequestBody ->
                  m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postChargesRaw config
               body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/charges") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postChargesM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                              StripeAPI.Common.SecurityScheme s) =>
                PostChargesRequestBody ->
                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                   m
                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                       (Network.HTTP.Client.Types.Response PostChargesResponse))
postChargesM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostChargesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostChargesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                    Charge)
                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostChargesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/charges") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postChargesRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                 StripeAPI.Common.SecurityScheme s) =>
                   PostChargesRequestBody ->
                   Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                      m
                                                      (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postChargesRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/charges") [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostChargesRequestBody
    = PostChargesRequestBody {postChargesRequestBodyAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                              postChargesRequestBodyApplicationFee :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                              postChargesRequestBodyApplicationFeeAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                              postChargesRequestBodyCapture :: (GHC.Maybe.Maybe GHC.Types.Bool),
                              postChargesRequestBodyCard :: (GHC.Maybe.Maybe PostChargesRequestBodyCard'Variants),
                              postChargesRequestBodyCurrency :: (GHC.Maybe.Maybe GHC.Base.String),
                              postChargesRequestBodyCustomer :: (GHC.Maybe.Maybe GHC.Base.String),
                              postChargesRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String),
                              postChargesRequestBodyDestination :: (GHC.Maybe.Maybe PostChargesRequestBodyDestination'Variants),
                              postChargesRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                              postChargesRequestBodyMetadata :: (GHC.Maybe.Maybe PostChargesRequestBodyMetadata'),
                              postChargesRequestBodyOnBehalfOf :: (GHC.Maybe.Maybe GHC.Base.String),
                              postChargesRequestBodyReceiptEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                              postChargesRequestBodyShipping :: (GHC.Maybe.Maybe PostChargesRequestBodyShipping'),
                              postChargesRequestBodySource :: (GHC.Maybe.Maybe GHC.Base.String),
                              postChargesRequestBodyStatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String),
                              postChargesRequestBodyStatementDescriptorSuffix :: (GHC.Maybe.Maybe GHC.Base.String),
                              postChargesRequestBodyTransferData :: (GHC.Maybe.Maybe PostChargesRequestBodyTransferData'),
                              postChargesRequestBodyTransferGroup :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostChargesRequestBodyCard'OneOf2
    = PostChargesRequestBodyCard'OneOf2 {postChargesRequestBodyCard'OneOf2AddressCity :: (GHC.Maybe.Maybe GHC.Base.String),
                                         postChargesRequestBodyCard'OneOf2AddressCountry :: (GHC.Maybe.Maybe GHC.Base.String),
                                         postChargesRequestBodyCard'OneOf2AddressLine1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                         postChargesRequestBodyCard'OneOf2AddressLine2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                         postChargesRequestBodyCard'OneOf2AddressState :: (GHC.Maybe.Maybe GHC.Base.String),
                                         postChargesRequestBodyCard'OneOf2AddressZip :: (GHC.Maybe.Maybe GHC.Base.String),
                                         postChargesRequestBodyCard'OneOf2Cvc :: (GHC.Maybe.Maybe GHC.Base.String),
                                         postChargesRequestBodyCard'OneOf2ExpMonth :: GHC.Integer.Type.Integer,
                                         postChargesRequestBodyCard'OneOf2ExpYear :: GHC.Integer.Type.Integer,
                                         postChargesRequestBodyCard'OneOf2Metadata :: (GHC.Maybe.Maybe PostChargesRequestBodyCard'OneOf2Metadata'),
                                         postChargesRequestBodyCard'OneOf2Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                         postChargesRequestBodyCard'OneOf2Number :: GHC.Base.String,
                                         postChargesRequestBodyCard'OneOf2Object :: (GHC.Maybe.Maybe PostChargesRequestBodyCard'OneOf2Object')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostChargesRequestBodyCard'OneOf2Metadata'
    = PostChargesRequestBodyCard'OneOf2Metadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesRequestBodyCard'OneOf2Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesRequestBodyCard'OneOf2Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesRequestBodyCard'OneOf2Metadata'" (\obj -> GHC.Base.pure PostChargesRequestBodyCard'OneOf2Metadata')
data PostChargesRequestBodyCard'OneOf2Object'
    = PostChargesRequestBodyCard'OneOf2Object'EnumOther Data.Aeson.Types.Internal.Value
    | PostChargesRequestBodyCard'OneOf2Object'EnumTyped GHC.Base.String
    | PostChargesRequestBodyCard'OneOf2Object'EnumStringCard
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesRequestBodyCard'OneOf2Object'
    where toJSON (PostChargesRequestBodyCard'OneOf2Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostChargesRequestBodyCard'OneOf2Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostChargesRequestBodyCard'OneOf2Object'EnumStringCard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card"
instance Data.Aeson.FromJSON PostChargesRequestBodyCard'OneOf2Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card")
                                          then PostChargesRequestBodyCard'OneOf2Object'EnumStringCard
                                          else PostChargesRequestBodyCard'OneOf2Object'EnumOther val)
instance Data.Aeson.ToJSON PostChargesRequestBodyCard'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address_city" (postChargesRequestBodyCard'OneOf2AddressCity obj) : (Data.Aeson..=) "address_country" (postChargesRequestBodyCard'OneOf2AddressCountry obj) : (Data.Aeson..=) "address_line1" (postChargesRequestBodyCard'OneOf2AddressLine1 obj) : (Data.Aeson..=) "address_line2" (postChargesRequestBodyCard'OneOf2AddressLine2 obj) : (Data.Aeson..=) "address_state" (postChargesRequestBodyCard'OneOf2AddressState obj) : (Data.Aeson..=) "address_zip" (postChargesRequestBodyCard'OneOf2AddressZip obj) : (Data.Aeson..=) "cvc" (postChargesRequestBodyCard'OneOf2Cvc obj) : (Data.Aeson..=) "exp_month" (postChargesRequestBodyCard'OneOf2ExpMonth obj) : (Data.Aeson..=) "exp_year" (postChargesRequestBodyCard'OneOf2ExpYear obj) : (Data.Aeson..=) "metadata" (postChargesRequestBodyCard'OneOf2Metadata obj) : (Data.Aeson..=) "name" (postChargesRequestBodyCard'OneOf2Name obj) : (Data.Aeson..=) "number" (postChargesRequestBodyCard'OneOf2Number obj) : (Data.Aeson..=) "object" (postChargesRequestBodyCard'OneOf2Object obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address_city" (postChargesRequestBodyCard'OneOf2AddressCity obj) GHC.Base.<> ((Data.Aeson..=) "address_country" (postChargesRequestBodyCard'OneOf2AddressCountry obj) GHC.Base.<> ((Data.Aeson..=) "address_line1" (postChargesRequestBodyCard'OneOf2AddressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "address_line2" (postChargesRequestBodyCard'OneOf2AddressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "address_state" (postChargesRequestBodyCard'OneOf2AddressState obj) GHC.Base.<> ((Data.Aeson..=) "address_zip" (postChargesRequestBodyCard'OneOf2AddressZip obj) GHC.Base.<> ((Data.Aeson..=) "cvc" (postChargesRequestBodyCard'OneOf2Cvc obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (postChargesRequestBodyCard'OneOf2ExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (postChargesRequestBodyCard'OneOf2ExpYear obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postChargesRequestBodyCard'OneOf2Metadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (postChargesRequestBodyCard'OneOf2Name obj) GHC.Base.<> ((Data.Aeson..=) "number" (postChargesRequestBodyCard'OneOf2Number obj) GHC.Base.<> (Data.Aeson..=) "object" (postChargesRequestBodyCard'OneOf2Object obj)))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesRequestBodyCard'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesRequestBodyCard'OneOf2" (\obj -> ((((((((((((GHC.Base.pure PostChargesRequestBodyCard'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object"))
data PostChargesRequestBodyCard'Variants
    = PostChargesRequestBodyCard'Variant1 GHC.Base.String
    | PostChargesRequestBodyCard'Variant2 PostChargesRequestBodyCard'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostChargesRequestBodyCard'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostChargesRequestBodyCard'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostChargesRequestBodyDestination'OneOf2
    = PostChargesRequestBodyDestination'OneOf2 {postChargesRequestBodyDestination'OneOf2Account :: GHC.Base.String,
                                                postChargesRequestBodyDestination'OneOf2Amount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesRequestBodyDestination'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account" (postChargesRequestBodyDestination'OneOf2Account obj) : (Data.Aeson..=) "amount" (postChargesRequestBodyDestination'OneOf2Amount obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account" (postChargesRequestBodyDestination'OneOf2Account obj) GHC.Base.<> (Data.Aeson..=) "amount" (postChargesRequestBodyDestination'OneOf2Amount obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesRequestBodyDestination'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesRequestBodyDestination'OneOf2" (\obj -> (GHC.Base.pure PostChargesRequestBodyDestination'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount"))
data PostChargesRequestBodyDestination'Variants
    = PostChargesRequestBodyDestination'Variant1 GHC.Base.String
    | PostChargesRequestBodyDestination'Variant2 PostChargesRequestBodyDestination'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostChargesRequestBodyDestination'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostChargesRequestBodyDestination'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostChargesRequestBodyMetadata'
    = PostChargesRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesRequestBodyMetadata'" (\obj -> GHC.Base.pure PostChargesRequestBodyMetadata')
data PostChargesRequestBodyShipping'
    = PostChargesRequestBodyShipping' {postChargesRequestBodyShipping'Address :: PostChargesRequestBodyShipping'Address',
                                       postChargesRequestBodyShipping'Carrier :: (GHC.Maybe.Maybe GHC.Base.String),
                                       postChargesRequestBodyShipping'Name :: GHC.Base.String,
                                       postChargesRequestBodyShipping'Phone :: (GHC.Maybe.Maybe GHC.Base.String),
                                       postChargesRequestBodyShipping'TrackingNumber :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostChargesRequestBodyShipping'Address'
    = PostChargesRequestBodyShipping'Address' {postChargesRequestBodyShipping'Address'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postChargesRequestBodyShipping'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postChargesRequestBodyShipping'Address'Line1 :: GHC.Base.String,
                                               postChargesRequestBodyShipping'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postChargesRequestBodyShipping'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postChargesRequestBodyShipping'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesRequestBodyShipping'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postChargesRequestBodyShipping'Address'City obj) : (Data.Aeson..=) "country" (postChargesRequestBodyShipping'Address'Country obj) : (Data.Aeson..=) "line1" (postChargesRequestBodyShipping'Address'Line1 obj) : (Data.Aeson..=) "line2" (postChargesRequestBodyShipping'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postChargesRequestBodyShipping'Address'PostalCode obj) : (Data.Aeson..=) "state" (postChargesRequestBodyShipping'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postChargesRequestBodyShipping'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postChargesRequestBodyShipping'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postChargesRequestBodyShipping'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postChargesRequestBodyShipping'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postChargesRequestBodyShipping'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postChargesRequestBodyShipping'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesRequestBodyShipping'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesRequestBodyShipping'Address'" (\obj -> (((((GHC.Base.pure PostChargesRequestBodyShipping'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
instance Data.Aeson.ToJSON PostChargesRequestBodyShipping'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postChargesRequestBodyShipping'Address obj) : (Data.Aeson..=) "carrier" (postChargesRequestBodyShipping'Carrier obj) : (Data.Aeson..=) "name" (postChargesRequestBodyShipping'Name obj) : (Data.Aeson..=) "phone" (postChargesRequestBodyShipping'Phone obj) : (Data.Aeson..=) "tracking_number" (postChargesRequestBodyShipping'TrackingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postChargesRequestBodyShipping'Address obj) GHC.Base.<> ((Data.Aeson..=) "carrier" (postChargesRequestBodyShipping'Carrier obj) GHC.Base.<> ((Data.Aeson..=) "name" (postChargesRequestBodyShipping'Name obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postChargesRequestBodyShipping'Phone obj) GHC.Base.<> (Data.Aeson..=) "tracking_number" (postChargesRequestBodyShipping'TrackingNumber obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesRequestBodyShipping'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesRequestBodyShipping'" (\obj -> ((((GHC.Base.pure PostChargesRequestBodyShipping' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "carrier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tracking_number"))
data PostChargesRequestBodyTransferData'
    = PostChargesRequestBodyTransferData' {postChargesRequestBodyTransferData'Amount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                           postChargesRequestBodyTransferData'Destination :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesRequestBodyTransferData'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postChargesRequestBodyTransferData'Amount obj) : (Data.Aeson..=) "destination" (postChargesRequestBodyTransferData'Destination obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postChargesRequestBodyTransferData'Amount obj) GHC.Base.<> (Data.Aeson..=) "destination" (postChargesRequestBodyTransferData'Destination obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesRequestBodyTransferData'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesRequestBodyTransferData'" (\obj -> (GHC.Base.pure PostChargesRequestBodyTransferData' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "destination"))
instance Data.Aeson.ToJSON PostChargesRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postChargesRequestBodyAmount obj) : (Data.Aeson..=) "application_fee" (postChargesRequestBodyApplicationFee obj) : (Data.Aeson..=) "application_fee_amount" (postChargesRequestBodyApplicationFeeAmount obj) : (Data.Aeson..=) "capture" (postChargesRequestBodyCapture obj) : (Data.Aeson..=) "card" (postChargesRequestBodyCard obj) : (Data.Aeson..=) "currency" (postChargesRequestBodyCurrency obj) : (Data.Aeson..=) "customer" (postChargesRequestBodyCustomer obj) : (Data.Aeson..=) "description" (postChargesRequestBodyDescription obj) : (Data.Aeson..=) "destination" (postChargesRequestBodyDestination obj) : (Data.Aeson..=) "expand" (postChargesRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postChargesRequestBodyMetadata obj) : (Data.Aeson..=) "on_behalf_of" (postChargesRequestBodyOnBehalfOf obj) : (Data.Aeson..=) "receipt_email" (postChargesRequestBodyReceiptEmail obj) : (Data.Aeson..=) "shipping" (postChargesRequestBodyShipping obj) : (Data.Aeson..=) "source" (postChargesRequestBodySource obj) : (Data.Aeson..=) "statement_descriptor" (postChargesRequestBodyStatementDescriptor obj) : (Data.Aeson..=) "statement_descriptor_suffix" (postChargesRequestBodyStatementDescriptorSuffix obj) : (Data.Aeson..=) "transfer_data" (postChargesRequestBodyTransferData obj) : (Data.Aeson..=) "transfer_group" (postChargesRequestBodyTransferGroup obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postChargesRequestBodyAmount obj) GHC.Base.<> ((Data.Aeson..=) "application_fee" (postChargesRequestBodyApplicationFee obj) GHC.Base.<> ((Data.Aeson..=) "application_fee_amount" (postChargesRequestBodyApplicationFeeAmount obj) GHC.Base.<> ((Data.Aeson..=) "capture" (postChargesRequestBodyCapture obj) GHC.Base.<> ((Data.Aeson..=) "card" (postChargesRequestBodyCard obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postChargesRequestBodyCurrency obj) GHC.Base.<> ((Data.Aeson..=) "customer" (postChargesRequestBodyCustomer obj) GHC.Base.<> ((Data.Aeson..=) "description" (postChargesRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "destination" (postChargesRequestBodyDestination obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postChargesRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postChargesRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "on_behalf_of" (postChargesRequestBodyOnBehalfOf obj) GHC.Base.<> ((Data.Aeson..=) "receipt_email" (postChargesRequestBodyReceiptEmail obj) GHC.Base.<> ((Data.Aeson..=) "shipping" (postChargesRequestBodyShipping obj) GHC.Base.<> ((Data.Aeson..=) "source" (postChargesRequestBodySource obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor" (postChargesRequestBodyStatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor_suffix" (postChargesRequestBodyStatementDescriptorSuffix obj) GHC.Base.<> ((Data.Aeson..=) "transfer_data" (postChargesRequestBodyTransferData obj) GHC.Base.<> (Data.Aeson..=) "transfer_group" (postChargesRequestBodyTransferGroup obj)))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesRequestBody" (\obj -> ((((((((((((((((((GHC.Base.pure PostChargesRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "capture")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "destination")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "on_behalf_of")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "receipt_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_suffix")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transfer_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transfer_group"))

data PostChargesResponse
    = PostChargesResponseError GHC.Base.String
    | PostChargesResponse200 Charge
    | PostChargesResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
