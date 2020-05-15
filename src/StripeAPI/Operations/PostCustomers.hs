{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostCustomers where

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
-- POST /v1/customers
postCustomers :: forall m s . (StripeAPI.Common.MonadHTTP m,
                               StripeAPI.Common.SecurityScheme s) =>
                 StripeAPI.Common.Configuration s ->
                 PostCustomersRequestBody ->
                 m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                       (Network.HTTP.Client.Types.Response PostCustomersResponse))
postCustomers config
              body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCustomersResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                         Customer)
                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/customers") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                  StripeAPI.Common.SecurityScheme s) =>
                    StripeAPI.Common.Configuration s ->
                    PostCustomersRequestBody ->
                    m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersRaw config
                 body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/customers") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                StripeAPI.Common.SecurityScheme s) =>
                  PostCustomersRequestBody ->
                  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                     m
                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                         (Network.HTTP.Client.Types.Response PostCustomersResponse))
postCustomersM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostCustomersResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                          Customer)
                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/customers") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                   StripeAPI.Common.SecurityScheme s) =>
                     PostCustomersRequestBody ->
                     Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                        m
                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/customers") [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostCustomersRequestBody
    = PostCustomersRequestBody {postCustomersRequestBodyAddress :: (GHC.Maybe.Maybe PostCustomersRequestBodyAddress'Variants),
                                postCustomersRequestBodyBalance :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                postCustomersRequestBodyCoupon :: (GHC.Maybe.Maybe GHC.Base.String),
                                postCustomersRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String),
                                postCustomersRequestBodyEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                                postCustomersRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                postCustomersRequestBodyInvoicePrefix :: (GHC.Maybe.Maybe GHC.Base.String),
                                postCustomersRequestBodyInvoiceSettings :: (GHC.Maybe.Maybe PostCustomersRequestBodyInvoiceSettings'),
                                postCustomersRequestBodyMetadata :: (GHC.Maybe.Maybe PostCustomersRequestBodyMetadata'),
                                postCustomersRequestBodyName :: (GHC.Maybe.Maybe GHC.Base.String),
                                postCustomersRequestBodyNextInvoiceSequence :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                postCustomersRequestBodyPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String),
                                postCustomersRequestBodyPhone :: (GHC.Maybe.Maybe GHC.Base.String),
                                postCustomersRequestBodyPreferredLocales :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                postCustomersRequestBodyShipping :: (GHC.Maybe.Maybe PostCustomersRequestBodyShipping'Variants),
                                postCustomersRequestBodySource :: (GHC.Maybe.Maybe GHC.Base.String),
                                postCustomersRequestBodyTaxExempt :: (GHC.Maybe.Maybe PostCustomersRequestBodyTaxExempt'),
                                postCustomersRequestBodyTaxIdData :: (GHC.Maybe.Maybe ([] PostCustomersRequestBodyTaxIdData'))}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersRequestBodyAddress'OneOf1
    = PostCustomersRequestBodyAddress'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersRequestBodyAddress'OneOf1EnumTyped GHC.Base.String
    | PostCustomersRequestBodyAddress'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersRequestBodyAddress'OneOf1
    where toJSON (PostCustomersRequestBodyAddress'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersRequestBodyAddress'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersRequestBodyAddress'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersRequestBodyAddress'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersRequestBodyAddress'OneOf1EnumString_
                                          else PostCustomersRequestBodyAddress'OneOf1EnumOther val)
data PostCustomersRequestBodyAddress'OneOf2
    = PostCustomersRequestBodyAddress'OneOf2 {postCustomersRequestBodyAddress'OneOf2City :: (GHC.Maybe.Maybe GHC.Base.String),
                                              postCustomersRequestBodyAddress'OneOf2Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                              postCustomersRequestBodyAddress'OneOf2Line1 :: GHC.Base.String,
                                              postCustomersRequestBodyAddress'OneOf2Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                              postCustomersRequestBodyAddress'OneOf2PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                              postCustomersRequestBodyAddress'OneOf2State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersRequestBodyAddress'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postCustomersRequestBodyAddress'OneOf2City obj) : (Data.Aeson..=) "country" (postCustomersRequestBodyAddress'OneOf2Country obj) : (Data.Aeson..=) "line1" (postCustomersRequestBodyAddress'OneOf2Line1 obj) : (Data.Aeson..=) "line2" (postCustomersRequestBodyAddress'OneOf2Line2 obj) : (Data.Aeson..=) "postal_code" (postCustomersRequestBodyAddress'OneOf2PostalCode obj) : (Data.Aeson..=) "state" (postCustomersRequestBodyAddress'OneOf2State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postCustomersRequestBodyAddress'OneOf2City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postCustomersRequestBodyAddress'OneOf2Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postCustomersRequestBodyAddress'OneOf2Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postCustomersRequestBodyAddress'OneOf2Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postCustomersRequestBodyAddress'OneOf2PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postCustomersRequestBodyAddress'OneOf2State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersRequestBodyAddress'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersRequestBodyAddress'OneOf2" (\obj -> (((((GHC.Base.pure PostCustomersRequestBodyAddress'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
data PostCustomersRequestBodyAddress'Variants
    = PostCustomersRequestBodyAddress'Variant1 PostCustomersRequestBodyAddress'OneOf1
    | PostCustomersRequestBodyAddress'Variant2 PostCustomersRequestBodyAddress'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersRequestBodyAddress'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersRequestBodyAddress'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersRequestBodyInvoiceSettings'
    = PostCustomersRequestBodyInvoiceSettings' {postCustomersRequestBodyInvoiceSettings'CustomFields :: (GHC.Maybe.Maybe PostCustomersRequestBodyInvoiceSettings'CustomFields'Variants),
                                                postCustomersRequestBodyInvoiceSettings'DefaultPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postCustomersRequestBodyInvoiceSettings'Footer :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersRequestBodyInvoiceSettings'CustomFields'OneOf1
    = PostCustomersRequestBodyInvoiceSettings'CustomFields'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersRequestBodyInvoiceSettings'CustomFields'OneOf1EnumTyped GHC.Base.String
    | PostCustomersRequestBodyInvoiceSettings'CustomFields'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersRequestBodyInvoiceSettings'CustomFields'OneOf1
    where toJSON (PostCustomersRequestBodyInvoiceSettings'CustomFields'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersRequestBodyInvoiceSettings'CustomFields'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersRequestBodyInvoiceSettings'CustomFields'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersRequestBodyInvoiceSettings'CustomFields'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersRequestBodyInvoiceSettings'CustomFields'OneOf1EnumString_
                                          else PostCustomersRequestBodyInvoiceSettings'CustomFields'OneOf1EnumOther val)
data PostCustomersRequestBodyInvoiceSettings'CustomFields'OneOf2
    = PostCustomersRequestBodyInvoiceSettings'CustomFields'OneOf2 {postCustomersRequestBodyInvoiceSettings'CustomFields'OneOf2Name :: GHC.Base.String,
                                                                   postCustomersRequestBodyInvoiceSettings'CustomFields'OneOf2Value :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersRequestBodyInvoiceSettings'CustomFields'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "name" (postCustomersRequestBodyInvoiceSettings'CustomFields'OneOf2Name obj) : (Data.Aeson..=) "value" (postCustomersRequestBodyInvoiceSettings'CustomFields'OneOf2Value obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "name" (postCustomersRequestBodyInvoiceSettings'CustomFields'OneOf2Name obj) GHC.Base.<> (Data.Aeson..=) "value" (postCustomersRequestBodyInvoiceSettings'CustomFields'OneOf2Value obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersRequestBodyInvoiceSettings'CustomFields'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersRequestBodyInvoiceSettings'CustomFields'OneOf2" (\obj -> (GHC.Base.pure PostCustomersRequestBodyInvoiceSettings'CustomFields'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "value"))
data PostCustomersRequestBodyInvoiceSettings'CustomFields'Variants
    = PostCustomersRequestBodyInvoiceSettings'CustomFields'Variant1 PostCustomersRequestBodyInvoiceSettings'CustomFields'OneOf1
    | PostCustomersRequestBodyInvoiceSettings'CustomFields'Variant2 ([] PostCustomersRequestBodyInvoiceSettings'CustomFields'OneOf2)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersRequestBodyInvoiceSettings'CustomFields'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersRequestBodyInvoiceSettings'CustomFields'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostCustomersRequestBodyInvoiceSettings'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "custom_fields" (postCustomersRequestBodyInvoiceSettings'CustomFields obj) : (Data.Aeson..=) "default_payment_method" (postCustomersRequestBodyInvoiceSettings'DefaultPaymentMethod obj) : (Data.Aeson..=) "footer" (postCustomersRequestBodyInvoiceSettings'Footer obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "custom_fields" (postCustomersRequestBodyInvoiceSettings'CustomFields obj) GHC.Base.<> ((Data.Aeson..=) "default_payment_method" (postCustomersRequestBodyInvoiceSettings'DefaultPaymentMethod obj) GHC.Base.<> (Data.Aeson..=) "footer" (postCustomersRequestBodyInvoiceSettings'Footer obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersRequestBodyInvoiceSettings'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersRequestBodyInvoiceSettings'" (\obj -> ((GHC.Base.pure PostCustomersRequestBodyInvoiceSettings' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "custom_fields")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "footer"))
data PostCustomersRequestBodyMetadata'
    = PostCustomersRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersRequestBodyMetadata'" (\obj -> GHC.Base.pure PostCustomersRequestBodyMetadata')
data PostCustomersRequestBodyShipping'OneOf1
    = PostCustomersRequestBodyShipping'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersRequestBodyShipping'OneOf1EnumTyped GHC.Base.String
    | PostCustomersRequestBodyShipping'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersRequestBodyShipping'OneOf1
    where toJSON (PostCustomersRequestBodyShipping'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersRequestBodyShipping'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersRequestBodyShipping'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersRequestBodyShipping'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersRequestBodyShipping'OneOf1EnumString_
                                          else PostCustomersRequestBodyShipping'OneOf1EnumOther val)
data PostCustomersRequestBodyShipping'OneOf2
    = PostCustomersRequestBodyShipping'OneOf2 {postCustomersRequestBodyShipping'OneOf2Address :: PostCustomersRequestBodyShipping'OneOf2Address',
                                               postCustomersRequestBodyShipping'OneOf2Name :: GHC.Base.String,
                                               postCustomersRequestBodyShipping'OneOf2Phone :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersRequestBodyShipping'OneOf2Address'
    = PostCustomersRequestBodyShipping'OneOf2Address' {postCustomersRequestBodyShipping'OneOf2Address'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                       postCustomersRequestBodyShipping'OneOf2Address'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                       postCustomersRequestBodyShipping'OneOf2Address'Line1 :: GHC.Base.String,
                                                       postCustomersRequestBodyShipping'OneOf2Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                       postCustomersRequestBodyShipping'OneOf2Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                       postCustomersRequestBodyShipping'OneOf2Address'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersRequestBodyShipping'OneOf2Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postCustomersRequestBodyShipping'OneOf2Address'City obj) : (Data.Aeson..=) "country" (postCustomersRequestBodyShipping'OneOf2Address'Country obj) : (Data.Aeson..=) "line1" (postCustomersRequestBodyShipping'OneOf2Address'Line1 obj) : (Data.Aeson..=) "line2" (postCustomersRequestBodyShipping'OneOf2Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postCustomersRequestBodyShipping'OneOf2Address'PostalCode obj) : (Data.Aeson..=) "state" (postCustomersRequestBodyShipping'OneOf2Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postCustomersRequestBodyShipping'OneOf2Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postCustomersRequestBodyShipping'OneOf2Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postCustomersRequestBodyShipping'OneOf2Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postCustomersRequestBodyShipping'OneOf2Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postCustomersRequestBodyShipping'OneOf2Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postCustomersRequestBodyShipping'OneOf2Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersRequestBodyShipping'OneOf2Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersRequestBodyShipping'OneOf2Address'" (\obj -> (((((GHC.Base.pure PostCustomersRequestBodyShipping'OneOf2Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
instance Data.Aeson.ToJSON PostCustomersRequestBodyShipping'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postCustomersRequestBodyShipping'OneOf2Address obj) : (Data.Aeson..=) "name" (postCustomersRequestBodyShipping'OneOf2Name obj) : (Data.Aeson..=) "phone" (postCustomersRequestBodyShipping'OneOf2Phone obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postCustomersRequestBodyShipping'OneOf2Address obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCustomersRequestBodyShipping'OneOf2Name obj) GHC.Base.<> (Data.Aeson..=) "phone" (postCustomersRequestBodyShipping'OneOf2Phone obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersRequestBodyShipping'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersRequestBodyShipping'OneOf2" (\obj -> ((GHC.Base.pure PostCustomersRequestBodyShipping'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone"))
data PostCustomersRequestBodyShipping'Variants
    = PostCustomersRequestBodyShipping'Variant1 PostCustomersRequestBodyShipping'OneOf1
    | PostCustomersRequestBodyShipping'Variant2 PostCustomersRequestBodyShipping'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersRequestBodyShipping'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersRequestBodyShipping'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersRequestBodyTaxExempt'
    = PostCustomersRequestBodyTaxExempt'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersRequestBodyTaxExempt'EnumTyped GHC.Base.String
    | PostCustomersRequestBodyTaxExempt'EnumString_
    | PostCustomersRequestBodyTaxExempt'EnumStringExempt
    | PostCustomersRequestBodyTaxExempt'EnumStringNone
    | PostCustomersRequestBodyTaxExempt'EnumStringReverse
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersRequestBodyTaxExempt'
    where toJSON (PostCustomersRequestBodyTaxExempt'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersRequestBodyTaxExempt'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersRequestBodyTaxExempt'EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
          toJSON (PostCustomersRequestBodyTaxExempt'EnumStringExempt) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "exempt"
          toJSON (PostCustomersRequestBodyTaxExempt'EnumStringNone) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none"
          toJSON (PostCustomersRequestBodyTaxExempt'EnumStringReverse) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "reverse"
instance Data.Aeson.FromJSON PostCustomersRequestBodyTaxExempt'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersRequestBodyTaxExempt'EnumString_
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "exempt")
                                                then PostCustomersRequestBodyTaxExempt'EnumStringExempt
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none")
                                                      then PostCustomersRequestBodyTaxExempt'EnumStringNone
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "reverse")
                                                            then PostCustomersRequestBodyTaxExempt'EnumStringReverse
                                                            else PostCustomersRequestBodyTaxExempt'EnumOther val)
data PostCustomersRequestBodyTaxIdData'
    = PostCustomersRequestBodyTaxIdData' {postCustomersRequestBodyTaxIdData'Type :: PostCustomersRequestBodyTaxIdData'Type',
                                          postCustomersRequestBodyTaxIdData'Value :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersRequestBodyTaxIdData'Type'
    = PostCustomersRequestBodyTaxIdData'Type'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersRequestBodyTaxIdData'Type'EnumTyped GHC.Base.String
    | PostCustomersRequestBodyTaxIdData'Type'EnumStringAuAbn
    | PostCustomersRequestBodyTaxIdData'Type'EnumStringCaBn
    | PostCustomersRequestBodyTaxIdData'Type'EnumStringCaQst
    | PostCustomersRequestBodyTaxIdData'Type'EnumStringChVat
    | PostCustomersRequestBodyTaxIdData'Type'EnumStringEsCif
    | PostCustomersRequestBodyTaxIdData'Type'EnumStringEuVat
    | PostCustomersRequestBodyTaxIdData'Type'EnumStringHkBr
    | PostCustomersRequestBodyTaxIdData'Type'EnumStringInGst
    | PostCustomersRequestBodyTaxIdData'Type'EnumStringJpCn
    | PostCustomersRequestBodyTaxIdData'Type'EnumStringKrBrn
    | PostCustomersRequestBodyTaxIdData'Type'EnumStringLiUid
    | PostCustomersRequestBodyTaxIdData'Type'EnumStringMxRfc
    | PostCustomersRequestBodyTaxIdData'Type'EnumStringMyItn
    | PostCustomersRequestBodyTaxIdData'Type'EnumStringMySst
    | PostCustomersRequestBodyTaxIdData'Type'EnumStringNoVat
    | PostCustomersRequestBodyTaxIdData'Type'EnumStringNzGst
    | PostCustomersRequestBodyTaxIdData'Type'EnumStringRuInn
    | PostCustomersRequestBodyTaxIdData'Type'EnumStringSgUen
    | PostCustomersRequestBodyTaxIdData'Type'EnumStringThVat
    | PostCustomersRequestBodyTaxIdData'Type'EnumStringTwVat
    | PostCustomersRequestBodyTaxIdData'Type'EnumStringUsEin
    | PostCustomersRequestBodyTaxIdData'Type'EnumStringZaVat
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersRequestBodyTaxIdData'Type'
    where toJSON (PostCustomersRequestBodyTaxIdData'Type'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersRequestBodyTaxIdData'Type'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersRequestBodyTaxIdData'Type'EnumStringAuAbn) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "au_abn"
          toJSON (PostCustomersRequestBodyTaxIdData'Type'EnumStringCaBn) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ca_bn"
          toJSON (PostCustomersRequestBodyTaxIdData'Type'EnumStringCaQst) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ca_qst"
          toJSON (PostCustomersRequestBodyTaxIdData'Type'EnumStringChVat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ch_vat"
          toJSON (PostCustomersRequestBodyTaxIdData'Type'EnumStringEsCif) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "es_cif"
          toJSON (PostCustomersRequestBodyTaxIdData'Type'EnumStringEuVat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "eu_vat"
          toJSON (PostCustomersRequestBodyTaxIdData'Type'EnumStringHkBr) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "hk_br"
          toJSON (PostCustomersRequestBodyTaxIdData'Type'EnumStringInGst) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "in_gst"
          toJSON (PostCustomersRequestBodyTaxIdData'Type'EnumStringJpCn) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "jp_cn"
          toJSON (PostCustomersRequestBodyTaxIdData'Type'EnumStringKrBrn) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "kr_brn"
          toJSON (PostCustomersRequestBodyTaxIdData'Type'EnumStringLiUid) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "li_uid"
          toJSON (PostCustomersRequestBodyTaxIdData'Type'EnumStringMxRfc) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "mx_rfc"
          toJSON (PostCustomersRequestBodyTaxIdData'Type'EnumStringMyItn) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "my_itn"
          toJSON (PostCustomersRequestBodyTaxIdData'Type'EnumStringMySst) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "my_sst"
          toJSON (PostCustomersRequestBodyTaxIdData'Type'EnumStringNoVat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "no_vat"
          toJSON (PostCustomersRequestBodyTaxIdData'Type'EnumStringNzGst) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "nz_gst"
          toJSON (PostCustomersRequestBodyTaxIdData'Type'EnumStringRuInn) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ru_inn"
          toJSON (PostCustomersRequestBodyTaxIdData'Type'EnumStringSgUen) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sg_uen"
          toJSON (PostCustomersRequestBodyTaxIdData'Type'EnumStringThVat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "th_vat"
          toJSON (PostCustomersRequestBodyTaxIdData'Type'EnumStringTwVat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tw_vat"
          toJSON (PostCustomersRequestBodyTaxIdData'Type'EnumStringUsEin) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "us_ein"
          toJSON (PostCustomersRequestBodyTaxIdData'Type'EnumStringZaVat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "za_vat"
instance Data.Aeson.FromJSON PostCustomersRequestBodyTaxIdData'Type'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "au_abn")
                                          then PostCustomersRequestBodyTaxIdData'Type'EnumStringAuAbn
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ca_bn")
                                                then PostCustomersRequestBodyTaxIdData'Type'EnumStringCaBn
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ca_qst")
                                                      then PostCustomersRequestBodyTaxIdData'Type'EnumStringCaQst
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ch_vat")
                                                            then PostCustomersRequestBodyTaxIdData'Type'EnumStringChVat
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "es_cif")
                                                                  then PostCustomersRequestBodyTaxIdData'Type'EnumStringEsCif
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "eu_vat")
                                                                        then PostCustomersRequestBodyTaxIdData'Type'EnumStringEuVat
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "hk_br")
                                                                              then PostCustomersRequestBodyTaxIdData'Type'EnumStringHkBr
                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "in_gst")
                                                                                    then PostCustomersRequestBodyTaxIdData'Type'EnumStringInGst
                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "jp_cn")
                                                                                          then PostCustomersRequestBodyTaxIdData'Type'EnumStringJpCn
                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "kr_brn")
                                                                                                then PostCustomersRequestBodyTaxIdData'Type'EnumStringKrBrn
                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "li_uid")
                                                                                                      then PostCustomersRequestBodyTaxIdData'Type'EnumStringLiUid
                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "mx_rfc")
                                                                                                            then PostCustomersRequestBodyTaxIdData'Type'EnumStringMxRfc
                                                                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "my_itn")
                                                                                                                  then PostCustomersRequestBodyTaxIdData'Type'EnumStringMyItn
                                                                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "my_sst")
                                                                                                                        then PostCustomersRequestBodyTaxIdData'Type'EnumStringMySst
                                                                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "no_vat")
                                                                                                                              then PostCustomersRequestBodyTaxIdData'Type'EnumStringNoVat
                                                                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "nz_gst")
                                                                                                                                    then PostCustomersRequestBodyTaxIdData'Type'EnumStringNzGst
                                                                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ru_inn")
                                                                                                                                          then PostCustomersRequestBodyTaxIdData'Type'EnumStringRuInn
                                                                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sg_uen")
                                                                                                                                                then PostCustomersRequestBodyTaxIdData'Type'EnumStringSgUen
                                                                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "th_vat")
                                                                                                                                                      then PostCustomersRequestBodyTaxIdData'Type'EnumStringThVat
                                                                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tw_vat")
                                                                                                                                                            then PostCustomersRequestBodyTaxIdData'Type'EnumStringTwVat
                                                                                                                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "us_ein")
                                                                                                                                                                  then PostCustomersRequestBodyTaxIdData'Type'EnumStringUsEin
                                                                                                                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "za_vat")
                                                                                                                                                                        then PostCustomersRequestBodyTaxIdData'Type'EnumStringZaVat
                                                                                                                                                                        else PostCustomersRequestBodyTaxIdData'Type'EnumOther val)
instance Data.Aeson.ToJSON PostCustomersRequestBodyTaxIdData'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "type" (postCustomersRequestBodyTaxIdData'Type obj) : (Data.Aeson..=) "value" (postCustomersRequestBodyTaxIdData'Value obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "type" (postCustomersRequestBodyTaxIdData'Type obj) GHC.Base.<> (Data.Aeson..=) "value" (postCustomersRequestBodyTaxIdData'Value obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersRequestBodyTaxIdData'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersRequestBodyTaxIdData'" (\obj -> (GHC.Base.pure PostCustomersRequestBodyTaxIdData' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "value"))
instance Data.Aeson.ToJSON PostCustomersRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postCustomersRequestBodyAddress obj) : (Data.Aeson..=) "balance" (postCustomersRequestBodyBalance obj) : (Data.Aeson..=) "coupon" (postCustomersRequestBodyCoupon obj) : (Data.Aeson..=) "description" (postCustomersRequestBodyDescription obj) : (Data.Aeson..=) "email" (postCustomersRequestBodyEmail obj) : (Data.Aeson..=) "expand" (postCustomersRequestBodyExpand obj) : (Data.Aeson..=) "invoice_prefix" (postCustomersRequestBodyInvoicePrefix obj) : (Data.Aeson..=) "invoice_settings" (postCustomersRequestBodyInvoiceSettings obj) : (Data.Aeson..=) "metadata" (postCustomersRequestBodyMetadata obj) : (Data.Aeson..=) "name" (postCustomersRequestBodyName obj) : (Data.Aeson..=) "next_invoice_sequence" (postCustomersRequestBodyNextInvoiceSequence obj) : (Data.Aeson..=) "payment_method" (postCustomersRequestBodyPaymentMethod obj) : (Data.Aeson..=) "phone" (postCustomersRequestBodyPhone obj) : (Data.Aeson..=) "preferred_locales" (postCustomersRequestBodyPreferredLocales obj) : (Data.Aeson..=) "shipping" (postCustomersRequestBodyShipping obj) : (Data.Aeson..=) "source" (postCustomersRequestBodySource obj) : (Data.Aeson..=) "tax_exempt" (postCustomersRequestBodyTaxExempt obj) : (Data.Aeson..=) "tax_id_data" (postCustomersRequestBodyTaxIdData obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postCustomersRequestBodyAddress obj) GHC.Base.<> ((Data.Aeson..=) "balance" (postCustomersRequestBodyBalance obj) GHC.Base.<> ((Data.Aeson..=) "coupon" (postCustomersRequestBodyCoupon obj) GHC.Base.<> ((Data.Aeson..=) "description" (postCustomersRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "email" (postCustomersRequestBodyEmail obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postCustomersRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "invoice_prefix" (postCustomersRequestBodyInvoicePrefix obj) GHC.Base.<> ((Data.Aeson..=) "invoice_settings" (postCustomersRequestBodyInvoiceSettings obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCustomersRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCustomersRequestBodyName obj) GHC.Base.<> ((Data.Aeson..=) "next_invoice_sequence" (postCustomersRequestBodyNextInvoiceSequence obj) GHC.Base.<> ((Data.Aeson..=) "payment_method" (postCustomersRequestBodyPaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postCustomersRequestBodyPhone obj) GHC.Base.<> ((Data.Aeson..=) "preferred_locales" (postCustomersRequestBodyPreferredLocales obj) GHC.Base.<> ((Data.Aeson..=) "shipping" (postCustomersRequestBodyShipping obj) GHC.Base.<> ((Data.Aeson..=) "source" (postCustomersRequestBodySource obj) GHC.Base.<> ((Data.Aeson..=) "tax_exempt" (postCustomersRequestBodyTaxExempt obj) GHC.Base.<> (Data.Aeson..=) "tax_id_data" (postCustomersRequestBodyTaxIdData obj))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersRequestBody" (\obj -> (((((((((((((((((GHC.Base.pure PostCustomersRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "balance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "coupon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoice_prefix")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoice_settings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "next_invoice_sequence")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "preferred_locales")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_exempt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_id_data"))

data PostCustomersResponse
    = PostCustomersResponseError GHC.Base.String
    | PostCustomersResponse200 Customer
    | PostCustomersResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
