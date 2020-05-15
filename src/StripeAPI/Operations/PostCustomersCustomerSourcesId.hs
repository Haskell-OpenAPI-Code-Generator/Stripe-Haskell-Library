{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostCustomersCustomerSourcesId where

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
-- POST /v1/customers/{customer}/sources/{id}
postCustomersCustomerSourcesId :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                StripeAPI.Common.SecurityScheme s) =>
                                  StripeAPI.Common.Configuration s ->
                                  GHC.Base.String ->
                                  GHC.Base.String ->
                                  PostCustomersCustomerSourcesIdRequestBody ->
                                  m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                        (Network.HTTP.Client.Types.Response PostCustomersCustomerSourcesIdResponse))
postCustomersCustomerSourcesId config
                               customer
                               id
                               body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerSourcesIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerSourcesIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            PostCustomersCustomerSourcesIdResponseBody200)
                                                                                                                                                                                                              | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerSourcesIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/sources/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersCustomerSourcesIdRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                   StripeAPI.Common.SecurityScheme s) =>
                                     StripeAPI.Common.Configuration s ->
                                     GHC.Base.String ->
                                     GHC.Base.String ->
                                     PostCustomersCustomerSourcesIdRequestBody ->
                                     m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerSourcesIdRaw config
                                  customer
                                  id
                                  body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/sources/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersCustomerSourcesIdM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                 StripeAPI.Common.SecurityScheme s) =>
                                   GHC.Base.String ->
                                   GHC.Base.String ->
                                   PostCustomersCustomerSourcesIdRequestBody ->
                                   Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                      m
                                                                      (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                          (Network.HTTP.Client.Types.Response PostCustomersCustomerSourcesIdResponse))
postCustomersCustomerSourcesIdM customer
                                id
                                body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerSourcesIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerSourcesIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                             PostCustomersCustomerSourcesIdResponseBody200)
                                                                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerSourcesIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/sources/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersCustomerSourcesIdRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                    StripeAPI.Common.SecurityScheme s) =>
                                      GHC.Base.String ->
                                      GHC.Base.String ->
                                      PostCustomersCustomerSourcesIdRequestBody ->
                                      Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                         m
                                                                         (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                             (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerSourcesIdRawM customer
                                   id
                                   body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/sources/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostCustomersCustomerSourcesIdRequestBody
    = PostCustomersCustomerSourcesIdRequestBody {postCustomersCustomerSourcesIdRequestBodyAccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postCustomersCustomerSourcesIdRequestBodyAccountHolderType :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'),
                                                 postCustomersCustomerSourcesIdRequestBodyAddressCity :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postCustomersCustomerSourcesIdRequestBodyAddressCountry :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postCustomersCustomerSourcesIdRequestBodyAddressLine1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postCustomersCustomerSourcesIdRequestBodyAddressLine2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postCustomersCustomerSourcesIdRequestBodyAddressState :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postCustomersCustomerSourcesIdRequestBodyAddressZip :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postCustomersCustomerSourcesIdRequestBodyExpMonth :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postCustomersCustomerSourcesIdRequestBodyExpYear :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postCustomersCustomerSourcesIdRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                                 postCustomersCustomerSourcesIdRequestBodyMetadata :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesIdRequestBodyMetadata'),
                                                 postCustomersCustomerSourcesIdRequestBodyName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postCustomersCustomerSourcesIdRequestBodyOwner :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesIdRequestBodyOwner')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'
    = PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'EnumTyped GHC.Base.String
    | PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'EnumStringCompany
    | PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'EnumStringIndividual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'
    where toJSON (PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'EnumStringCompany) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company"
          toJSON (PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
instance Data.Aeson.FromJSON PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company")
                                          then PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'EnumStringCompany
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                then PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'EnumStringIndividual
                                                else PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'EnumOther val)
data PostCustomersCustomerSourcesIdRequestBodyMetadata'
    = PostCustomersCustomerSourcesIdRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSourcesIdRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSourcesIdRequestBodyMetadata'" (\obj -> GHC.Base.pure PostCustomersCustomerSourcesIdRequestBodyMetadata')
data PostCustomersCustomerSourcesIdRequestBodyOwner'
    = PostCustomersCustomerSourcesIdRequestBodyOwner' {postCustomersCustomerSourcesIdRequestBodyOwner'Address :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesIdRequestBodyOwner'Address'),
                                                       postCustomersCustomerSourcesIdRequestBodyOwner'Email :: (GHC.Maybe.Maybe GHC.Base.String),
                                                       postCustomersCustomerSourcesIdRequestBodyOwner'Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                                       postCustomersCustomerSourcesIdRequestBodyOwner'Phone :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerSourcesIdRequestBodyOwner'Address'
    = PostCustomersCustomerSourcesIdRequestBodyOwner'Address' {postCustomersCustomerSourcesIdRequestBodyOwner'Address'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                               postCustomersCustomerSourcesIdRequestBodyOwner'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                               postCustomersCustomerSourcesIdRequestBodyOwner'Address'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                               postCustomersCustomerSourcesIdRequestBodyOwner'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                               postCustomersCustomerSourcesIdRequestBodyOwner'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                               postCustomersCustomerSourcesIdRequestBodyOwner'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdRequestBodyOwner'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postCustomersCustomerSourcesIdRequestBodyOwner'Address'City obj) : (Data.Aeson..=) "country" (postCustomersCustomerSourcesIdRequestBodyOwner'Address'Country obj) : (Data.Aeson..=) "line1" (postCustomersCustomerSourcesIdRequestBodyOwner'Address'Line1 obj) : (Data.Aeson..=) "line2" (postCustomersCustomerSourcesIdRequestBodyOwner'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postCustomersCustomerSourcesIdRequestBodyOwner'Address'PostalCode obj) : (Data.Aeson..=) "state" (postCustomersCustomerSourcesIdRequestBodyOwner'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postCustomersCustomerSourcesIdRequestBodyOwner'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postCustomersCustomerSourcesIdRequestBodyOwner'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postCustomersCustomerSourcesIdRequestBodyOwner'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postCustomersCustomerSourcesIdRequestBodyOwner'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postCustomersCustomerSourcesIdRequestBodyOwner'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postCustomersCustomerSourcesIdRequestBodyOwner'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSourcesIdRequestBodyOwner'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSourcesIdRequestBodyOwner'Address'" (\obj -> (((((GHC.Base.pure PostCustomersCustomerSourcesIdRequestBodyOwner'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdRequestBodyOwner'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postCustomersCustomerSourcesIdRequestBodyOwner'Address obj) : (Data.Aeson..=) "email" (postCustomersCustomerSourcesIdRequestBodyOwner'Email obj) : (Data.Aeson..=) "name" (postCustomersCustomerSourcesIdRequestBodyOwner'Name obj) : (Data.Aeson..=) "phone" (postCustomersCustomerSourcesIdRequestBodyOwner'Phone obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postCustomersCustomerSourcesIdRequestBodyOwner'Address obj) GHC.Base.<> ((Data.Aeson..=) "email" (postCustomersCustomerSourcesIdRequestBodyOwner'Email obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCustomersCustomerSourcesIdRequestBodyOwner'Name obj) GHC.Base.<> (Data.Aeson..=) "phone" (postCustomersCustomerSourcesIdRequestBodyOwner'Phone obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSourcesIdRequestBodyOwner'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSourcesIdRequestBodyOwner'" (\obj -> (((GHC.Base.pure PostCustomersCustomerSourcesIdRequestBodyOwner' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone"))
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_holder_name" (postCustomersCustomerSourcesIdRequestBodyAccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (postCustomersCustomerSourcesIdRequestBodyAccountHolderType obj) : (Data.Aeson..=) "address_city" (postCustomersCustomerSourcesIdRequestBodyAddressCity obj) : (Data.Aeson..=) "address_country" (postCustomersCustomerSourcesIdRequestBodyAddressCountry obj) : (Data.Aeson..=) "address_line1" (postCustomersCustomerSourcesIdRequestBodyAddressLine1 obj) : (Data.Aeson..=) "address_line2" (postCustomersCustomerSourcesIdRequestBodyAddressLine2 obj) : (Data.Aeson..=) "address_state" (postCustomersCustomerSourcesIdRequestBodyAddressState obj) : (Data.Aeson..=) "address_zip" (postCustomersCustomerSourcesIdRequestBodyAddressZip obj) : (Data.Aeson..=) "exp_month" (postCustomersCustomerSourcesIdRequestBodyExpMonth obj) : (Data.Aeson..=) "exp_year" (postCustomersCustomerSourcesIdRequestBodyExpYear obj) : (Data.Aeson..=) "expand" (postCustomersCustomerSourcesIdRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postCustomersCustomerSourcesIdRequestBodyMetadata obj) : (Data.Aeson..=) "name" (postCustomersCustomerSourcesIdRequestBodyName obj) : (Data.Aeson..=) "owner" (postCustomersCustomerSourcesIdRequestBodyOwner obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_holder_name" (postCustomersCustomerSourcesIdRequestBodyAccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (postCustomersCustomerSourcesIdRequestBodyAccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "address_city" (postCustomersCustomerSourcesIdRequestBodyAddressCity obj) GHC.Base.<> ((Data.Aeson..=) "address_country" (postCustomersCustomerSourcesIdRequestBodyAddressCountry obj) GHC.Base.<> ((Data.Aeson..=) "address_line1" (postCustomersCustomerSourcesIdRequestBodyAddressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "address_line2" (postCustomersCustomerSourcesIdRequestBodyAddressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "address_state" (postCustomersCustomerSourcesIdRequestBodyAddressState obj) GHC.Base.<> ((Data.Aeson..=) "address_zip" (postCustomersCustomerSourcesIdRequestBodyAddressZip obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (postCustomersCustomerSourcesIdRequestBodyExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (postCustomersCustomerSourcesIdRequestBodyExpYear obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postCustomersCustomerSourcesIdRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCustomersCustomerSourcesIdRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCustomersCustomerSourcesIdRequestBodyName obj) GHC.Base.<> (Data.Aeson..=) "owner" (postCustomersCustomerSourcesIdRequestBodyOwner obj))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSourcesIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSourcesIdRequestBody" (\obj -> (((((((((((((GHC.Base.pure PostCustomersCustomerSourcesIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owner"))

data PostCustomersCustomerSourcesIdResponse
    = PostCustomersCustomerSourcesIdResponseError GHC.Base.String
    | PostCustomersCustomerSourcesIdResponse200 PostCustomersCustomerSourcesIdResponseBody200
    | PostCustomersCustomerSourcesIdResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerSourcesIdResponseBody200
    = PostCustomersCustomerSourcesIdResponseBody200 {postCustomersCustomerSourcesIdResponseBody200Account :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesIdResponseBody200Account'Variants),
                                                     postCustomersCustomerSourcesIdResponseBody200AccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSourcesIdResponseBody200AccountHolderType :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSourcesIdResponseBody200AchCreditTransfer :: (GHC.Maybe.Maybe SourceTypeAchCreditTransfer),
                                                     postCustomersCustomerSourcesIdResponseBody200AchDebit :: (GHC.Maybe.Maybe SourceTypeAchDebit),
                                                     postCustomersCustomerSourcesIdResponseBody200AddressCity :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSourcesIdResponseBody200AddressCountry :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSourcesIdResponseBody200AddressLine1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSourcesIdResponseBody200AddressLine1Check :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSourcesIdResponseBody200AddressLine2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSourcesIdResponseBody200AddressState :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSourcesIdResponseBody200AddressZip :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSourcesIdResponseBody200AddressZipCheck :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSourcesIdResponseBody200Alipay :: (GHC.Maybe.Maybe SourceTypeAlipay),
                                                     postCustomersCustomerSourcesIdResponseBody200Amount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                     postCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods :: (GHC.Maybe.Maybe ([] PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods')),
                                                     postCustomersCustomerSourcesIdResponseBody200Bancontact :: (GHC.Maybe.Maybe SourceTypeBancontact),
                                                     postCustomersCustomerSourcesIdResponseBody200BankName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSourcesIdResponseBody200Brand :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSourcesIdResponseBody200Card :: (GHC.Maybe.Maybe SourceTypeCard),
                                                     postCustomersCustomerSourcesIdResponseBody200CardPresent :: (GHC.Maybe.Maybe SourceTypeCardPresent),
                                                     postCustomersCustomerSourcesIdResponseBody200ClientSecret :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSourcesIdResponseBody200CodeVerification :: (GHC.Maybe.Maybe SourceCodeVerificationFlow),
                                                     postCustomersCustomerSourcesIdResponseBody200Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSourcesIdResponseBody200Created :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                     postCustomersCustomerSourcesIdResponseBody200Currency :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSourcesIdResponseBody200Customer :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesIdResponseBody200Customer'Variants),
                                                     postCustomersCustomerSourcesIdResponseBody200CvcCheck :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSourcesIdResponseBody200DefaultForCurrency :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                     postCustomersCustomerSourcesIdResponseBody200DynamicLast4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSourcesIdResponseBody200Eps :: (GHC.Maybe.Maybe SourceTypeEps),
                                                     postCustomersCustomerSourcesIdResponseBody200ExpMonth :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                     postCustomersCustomerSourcesIdResponseBody200ExpYear :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                     postCustomersCustomerSourcesIdResponseBody200Fingerprint :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSourcesIdResponseBody200Flow :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSourcesIdResponseBody200Funding :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSourcesIdResponseBody200Giropay :: (GHC.Maybe.Maybe SourceTypeGiropay),
                                                     postCustomersCustomerSourcesIdResponseBody200Id :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSourcesIdResponseBody200Ideal :: (GHC.Maybe.Maybe SourceTypeIdeal),
                                                     postCustomersCustomerSourcesIdResponseBody200Klarna :: (GHC.Maybe.Maybe SourceTypeKlarna),
                                                     postCustomersCustomerSourcesIdResponseBody200Last4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSourcesIdResponseBody200Livemode :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                     postCustomersCustomerSourcesIdResponseBody200Metadata :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesIdResponseBody200Metadata'),
                                                     postCustomersCustomerSourcesIdResponseBody200Multibanco :: (GHC.Maybe.Maybe SourceTypeMultibanco),
                                                     postCustomersCustomerSourcesIdResponseBody200Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSourcesIdResponseBody200Object :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesIdResponseBody200Object'),
                                                     postCustomersCustomerSourcesIdResponseBody200Owner :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesIdResponseBody200Owner'),
                                                     postCustomersCustomerSourcesIdResponseBody200P24 :: (GHC.Maybe.Maybe SourceTypeP24),
                                                     postCustomersCustomerSourcesIdResponseBody200Receiver :: (GHC.Maybe.Maybe SourceReceiverFlow),
                                                     postCustomersCustomerSourcesIdResponseBody200Recipient :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesIdResponseBody200Recipient'Variants),
                                                     postCustomersCustomerSourcesIdResponseBody200Redirect :: (GHC.Maybe.Maybe SourceRedirectFlow),
                                                     postCustomersCustomerSourcesIdResponseBody200RoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSourcesIdResponseBody200SepaDebit :: (GHC.Maybe.Maybe SourceTypeSepaDebit),
                                                     postCustomersCustomerSourcesIdResponseBody200Sofort :: (GHC.Maybe.Maybe SourceTypeSofort),
                                                     postCustomersCustomerSourcesIdResponseBody200SourceOrder :: (GHC.Maybe.Maybe SourceOrder),
                                                     postCustomersCustomerSourcesIdResponseBody200StatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSourcesIdResponseBody200Status :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSourcesIdResponseBody200ThreeDSecure :: (GHC.Maybe.Maybe SourceTypeThreeDSecure),
                                                     postCustomersCustomerSourcesIdResponseBody200TokenizationMethod :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSourcesIdResponseBody200Type :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesIdResponseBody200Type'),
                                                     postCustomersCustomerSourcesIdResponseBody200Usage :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerSourcesIdResponseBody200Wechat :: (GHC.Maybe.Maybe SourceTypeWechat)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerSourcesIdResponseBody200Account'Variants
    = PostCustomersCustomerSourcesIdResponseBody200Account'Variant1 Account
    | PostCustomersCustomerSourcesIdResponseBody200Account'Variant2 GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdResponseBody200Account'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSourcesIdResponseBody200Account'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'
    = PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'EnumTyped GHC.Base.String
    | PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'EnumStringInstant
    | PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'EnumStringStandard
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'
    where toJSON (PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'EnumStringInstant) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "instant"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'EnumStringStandard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard"
instance Data.Aeson.FromJSON PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "instant")
                                          then PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'EnumStringInstant
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard")
                                                then PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'EnumStringStandard
                                                else PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'EnumOther val)
data PostCustomersCustomerSourcesIdResponseBody200Customer'Variants
    = PostCustomersCustomerSourcesIdResponseBody200Customer'Variant1 Customer
    | PostCustomersCustomerSourcesIdResponseBody200Customer'Variant2 DeletedCustomer
    | PostCustomersCustomerSourcesIdResponseBody200Customer'Variant3 GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdResponseBody200Customer'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSourcesIdResponseBody200Customer'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersCustomerSourcesIdResponseBody200Metadata'
    = PostCustomersCustomerSourcesIdResponseBody200Metadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdResponseBody200Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSourcesIdResponseBody200Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSourcesIdResponseBody200Metadata'" (\obj -> GHC.Base.pure PostCustomersCustomerSourcesIdResponseBody200Metadata')
data PostCustomersCustomerSourcesIdResponseBody200Object'
    = PostCustomersCustomerSourcesIdResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSourcesIdResponseBody200Object'EnumTyped GHC.Base.String
    | PostCustomersCustomerSourcesIdResponseBody200Object'EnumStringBankAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdResponseBody200Object'
    where toJSON (PostCustomersCustomerSourcesIdResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Object'EnumStringBankAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account"
instance Data.Aeson.FromJSON PostCustomersCustomerSourcesIdResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account")
                                          then PostCustomersCustomerSourcesIdResponseBody200Object'EnumStringBankAccount
                                          else PostCustomersCustomerSourcesIdResponseBody200Object'EnumOther val)
data PostCustomersCustomerSourcesIdResponseBody200Owner'
    = PostCustomersCustomerSourcesIdResponseBody200Owner' {postCustomersCustomerSourcesIdResponseBody200Owner'Address :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesIdResponseBody200Owner'Address'),
                                                           postCustomersCustomerSourcesIdResponseBody200Owner'Email :: (GHC.Maybe.Maybe GHC.Base.String),
                                                           postCustomersCustomerSourcesIdResponseBody200Owner'Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                                           postCustomersCustomerSourcesIdResponseBody200Owner'Phone :: (GHC.Maybe.Maybe GHC.Base.String),
                                                           postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'),
                                                           postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                                                           postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                           postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedPhone :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerSourcesIdResponseBody200Owner'Address'
    = PostCustomersCustomerSourcesIdResponseBody200Owner'Address' {postCustomersCustomerSourcesIdResponseBody200Owner'Address'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                   postCustomersCustomerSourcesIdResponseBody200Owner'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                   postCustomersCustomerSourcesIdResponseBody200Owner'Address'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                   postCustomersCustomerSourcesIdResponseBody200Owner'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                   postCustomersCustomerSourcesIdResponseBody200Owner'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                   postCustomersCustomerSourcesIdResponseBody200Owner'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdResponseBody200Owner'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postCustomersCustomerSourcesIdResponseBody200Owner'Address'City obj) : (Data.Aeson..=) "country" (postCustomersCustomerSourcesIdResponseBody200Owner'Address'Country obj) : (Data.Aeson..=) "line1" (postCustomersCustomerSourcesIdResponseBody200Owner'Address'Line1 obj) : (Data.Aeson..=) "line2" (postCustomersCustomerSourcesIdResponseBody200Owner'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postCustomersCustomerSourcesIdResponseBody200Owner'Address'PostalCode obj) : (Data.Aeson..=) "state" (postCustomersCustomerSourcesIdResponseBody200Owner'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postCustomersCustomerSourcesIdResponseBody200Owner'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postCustomersCustomerSourcesIdResponseBody200Owner'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postCustomersCustomerSourcesIdResponseBody200Owner'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postCustomersCustomerSourcesIdResponseBody200Owner'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postCustomersCustomerSourcesIdResponseBody200Owner'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postCustomersCustomerSourcesIdResponseBody200Owner'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSourcesIdResponseBody200Owner'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSourcesIdResponseBody200Owner'Address'" (\obj -> (((((GHC.Base.pure PostCustomersCustomerSourcesIdResponseBody200Owner'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
data PostCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'
    = PostCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress' {postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                           postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                           postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                           postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                           postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                           postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'City obj) : (Data.Aeson..=) "country" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'Country obj) : (Data.Aeson..=) "line1" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'Line1 obj) : (Data.Aeson..=) "line2" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'Line2 obj) : (Data.Aeson..=) "postal_code" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'PostalCode obj) : (Data.Aeson..=) "state" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'" (\obj -> (((((GHC.Base.pure PostCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdResponseBody200Owner'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postCustomersCustomerSourcesIdResponseBody200Owner'Address obj) : (Data.Aeson..=) "email" (postCustomersCustomerSourcesIdResponseBody200Owner'Email obj) : (Data.Aeson..=) "name" (postCustomersCustomerSourcesIdResponseBody200Owner'Name obj) : (Data.Aeson..=) "phone" (postCustomersCustomerSourcesIdResponseBody200Owner'Phone obj) : (Data.Aeson..=) "verified_address" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress obj) : (Data.Aeson..=) "verified_email" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedEmail obj) : (Data.Aeson..=) "verified_name" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedName obj) : (Data.Aeson..=) "verified_phone" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedPhone obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postCustomersCustomerSourcesIdResponseBody200Owner'Address obj) GHC.Base.<> ((Data.Aeson..=) "email" (postCustomersCustomerSourcesIdResponseBody200Owner'Email obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCustomersCustomerSourcesIdResponseBody200Owner'Name obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postCustomersCustomerSourcesIdResponseBody200Owner'Phone obj) GHC.Base.<> ((Data.Aeson..=) "verified_address" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress obj) GHC.Base.<> ((Data.Aeson..=) "verified_email" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedEmail obj) GHC.Base.<> ((Data.Aeson..=) "verified_name" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedName obj) GHC.Base.<> (Data.Aeson..=) "verified_phone" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedPhone obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSourcesIdResponseBody200Owner'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSourcesIdResponseBody200Owner'" (\obj -> (((((((GHC.Base.pure PostCustomersCustomerSourcesIdResponseBody200Owner' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_phone"))
data PostCustomersCustomerSourcesIdResponseBody200Recipient'Variants
    = PostCustomersCustomerSourcesIdResponseBody200Recipient'Variant1 Recipient
    | PostCustomersCustomerSourcesIdResponseBody200Recipient'Variant2 GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdResponseBody200Recipient'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSourcesIdResponseBody200Recipient'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersCustomerSourcesIdResponseBody200Type'
    = PostCustomersCustomerSourcesIdResponseBody200Type'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumTyped GHC.Base.String
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringAchCreditTransfer
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringAchDebit
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringAlipay
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringBancontact
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringCard
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringCardPresent
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringEps
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringGiropay
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringIdeal
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringKlarna
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringMultibanco
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringP24
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringSepaDebit
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringSofort
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringThreeDSecure
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringWechat
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdResponseBody200Type'
    where toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringAchCreditTransfer) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ach_credit_transfer"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringAchDebit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ach_debit"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringAlipay) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alipay"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringBancontact) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bancontact"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringCard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringCardPresent) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_present"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringEps) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "eps"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringGiropay) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "giropay"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringIdeal) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ideal"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringKlarna) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "klarna"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringMultibanco) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "multibanco"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringP24) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "p24"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringSepaDebit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sepa_debit"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringSofort) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sofort"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringThreeDSecure) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "three_d_secure"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringWechat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "wechat"
instance Data.Aeson.FromJSON PostCustomersCustomerSourcesIdResponseBody200Type'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ach_credit_transfer")
                                          then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringAchCreditTransfer
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ach_debit")
                                                then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringAchDebit
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alipay")
                                                      then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringAlipay
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bancontact")
                                                            then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringBancontact
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card")
                                                                  then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringCard
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_present")
                                                                        then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringCardPresent
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "eps")
                                                                              then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringEps
                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "giropay")
                                                                                    then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringGiropay
                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ideal")
                                                                                          then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringIdeal
                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "klarna")
                                                                                                then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringKlarna
                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "multibanco")
                                                                                                      then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringMultibanco
                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "p24")
                                                                                                            then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringP24
                                                                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sepa_debit")
                                                                                                                  then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringSepaDebit
                                                                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sofort")
                                                                                                                        then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringSofort
                                                                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "three_d_secure")
                                                                                                                              then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringThreeDSecure
                                                                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "wechat")
                                                                                                                                    then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringWechat
                                                                                                                                    else PostCustomersCustomerSourcesIdResponseBody200Type'EnumOther val)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account" (postCustomersCustomerSourcesIdResponseBody200Account obj) : (Data.Aeson..=) "account_holder_name" (postCustomersCustomerSourcesIdResponseBody200AccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (postCustomersCustomerSourcesIdResponseBody200AccountHolderType obj) : (Data.Aeson..=) "ach_credit_transfer" (postCustomersCustomerSourcesIdResponseBody200AchCreditTransfer obj) : (Data.Aeson..=) "ach_debit" (postCustomersCustomerSourcesIdResponseBody200AchDebit obj) : (Data.Aeson..=) "address_city" (postCustomersCustomerSourcesIdResponseBody200AddressCity obj) : (Data.Aeson..=) "address_country" (postCustomersCustomerSourcesIdResponseBody200AddressCountry obj) : (Data.Aeson..=) "address_line1" (postCustomersCustomerSourcesIdResponseBody200AddressLine1 obj) : (Data.Aeson..=) "address_line1_check" (postCustomersCustomerSourcesIdResponseBody200AddressLine1Check obj) : (Data.Aeson..=) "address_line2" (postCustomersCustomerSourcesIdResponseBody200AddressLine2 obj) : (Data.Aeson..=) "address_state" (postCustomersCustomerSourcesIdResponseBody200AddressState obj) : (Data.Aeson..=) "address_zip" (postCustomersCustomerSourcesIdResponseBody200AddressZip obj) : (Data.Aeson..=) "address_zip_check" (postCustomersCustomerSourcesIdResponseBody200AddressZipCheck obj) : (Data.Aeson..=) "alipay" (postCustomersCustomerSourcesIdResponseBody200Alipay obj) : (Data.Aeson..=) "amount" (postCustomersCustomerSourcesIdResponseBody200Amount obj) : (Data.Aeson..=) "available_payout_methods" (postCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods obj) : (Data.Aeson..=) "bancontact" (postCustomersCustomerSourcesIdResponseBody200Bancontact obj) : (Data.Aeson..=) "bank_name" (postCustomersCustomerSourcesIdResponseBody200BankName obj) : (Data.Aeson..=) "brand" (postCustomersCustomerSourcesIdResponseBody200Brand obj) : (Data.Aeson..=) "card" (postCustomersCustomerSourcesIdResponseBody200Card obj) : (Data.Aeson..=) "card_present" (postCustomersCustomerSourcesIdResponseBody200CardPresent obj) : (Data.Aeson..=) "client_secret" (postCustomersCustomerSourcesIdResponseBody200ClientSecret obj) : (Data.Aeson..=) "code_verification" (postCustomersCustomerSourcesIdResponseBody200CodeVerification obj) : (Data.Aeson..=) "country" (postCustomersCustomerSourcesIdResponseBody200Country obj) : (Data.Aeson..=) "created" (postCustomersCustomerSourcesIdResponseBody200Created obj) : (Data.Aeson..=) "currency" (postCustomersCustomerSourcesIdResponseBody200Currency obj) : (Data.Aeson..=) "customer" (postCustomersCustomerSourcesIdResponseBody200Customer obj) : (Data.Aeson..=) "cvc_check" (postCustomersCustomerSourcesIdResponseBody200CvcCheck obj) : (Data.Aeson..=) "default_for_currency" (postCustomersCustomerSourcesIdResponseBody200DefaultForCurrency obj) : (Data.Aeson..=) "dynamic_last4" (postCustomersCustomerSourcesIdResponseBody200DynamicLast4 obj) : (Data.Aeson..=) "eps" (postCustomersCustomerSourcesIdResponseBody200Eps obj) : (Data.Aeson..=) "exp_month" (postCustomersCustomerSourcesIdResponseBody200ExpMonth obj) : (Data.Aeson..=) "exp_year" (postCustomersCustomerSourcesIdResponseBody200ExpYear obj) : (Data.Aeson..=) "fingerprint" (postCustomersCustomerSourcesIdResponseBody200Fingerprint obj) : (Data.Aeson..=) "flow" (postCustomersCustomerSourcesIdResponseBody200Flow obj) : (Data.Aeson..=) "funding" (postCustomersCustomerSourcesIdResponseBody200Funding obj) : (Data.Aeson..=) "giropay" (postCustomersCustomerSourcesIdResponseBody200Giropay obj) : (Data.Aeson..=) "id" (postCustomersCustomerSourcesIdResponseBody200Id obj) : (Data.Aeson..=) "ideal" (postCustomersCustomerSourcesIdResponseBody200Ideal obj) : (Data.Aeson..=) "klarna" (postCustomersCustomerSourcesIdResponseBody200Klarna obj) : (Data.Aeson..=) "last4" (postCustomersCustomerSourcesIdResponseBody200Last4 obj) : (Data.Aeson..=) "livemode" (postCustomersCustomerSourcesIdResponseBody200Livemode obj) : (Data.Aeson..=) "metadata" (postCustomersCustomerSourcesIdResponseBody200Metadata obj) : (Data.Aeson..=) "multibanco" (postCustomersCustomerSourcesIdResponseBody200Multibanco obj) : (Data.Aeson..=) "name" (postCustomersCustomerSourcesIdResponseBody200Name obj) : (Data.Aeson..=) "object" (postCustomersCustomerSourcesIdResponseBody200Object obj) : (Data.Aeson..=) "owner" (postCustomersCustomerSourcesIdResponseBody200Owner obj) : (Data.Aeson..=) "p24" (postCustomersCustomerSourcesIdResponseBody200P24 obj) : (Data.Aeson..=) "receiver" (postCustomersCustomerSourcesIdResponseBody200Receiver obj) : (Data.Aeson..=) "recipient" (postCustomersCustomerSourcesIdResponseBody200Recipient obj) : (Data.Aeson..=) "redirect" (postCustomersCustomerSourcesIdResponseBody200Redirect obj) : (Data.Aeson..=) "routing_number" (postCustomersCustomerSourcesIdResponseBody200RoutingNumber obj) : (Data.Aeson..=) "sepa_debit" (postCustomersCustomerSourcesIdResponseBody200SepaDebit obj) : (Data.Aeson..=) "sofort" (postCustomersCustomerSourcesIdResponseBody200Sofort obj) : (Data.Aeson..=) "source_order" (postCustomersCustomerSourcesIdResponseBody200SourceOrder obj) : (Data.Aeson..=) "statement_descriptor" (postCustomersCustomerSourcesIdResponseBody200StatementDescriptor obj) : (Data.Aeson..=) "status" (postCustomersCustomerSourcesIdResponseBody200Status obj) : (Data.Aeson..=) "three_d_secure" (postCustomersCustomerSourcesIdResponseBody200ThreeDSecure obj) : (Data.Aeson..=) "tokenization_method" (postCustomersCustomerSourcesIdResponseBody200TokenizationMethod obj) : (Data.Aeson..=) "type" (postCustomersCustomerSourcesIdResponseBody200Type obj) : (Data.Aeson..=) "usage" (postCustomersCustomerSourcesIdResponseBody200Usage obj) : (Data.Aeson..=) "wechat" (postCustomersCustomerSourcesIdResponseBody200Wechat obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account" (postCustomersCustomerSourcesIdResponseBody200Account obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_name" (postCustomersCustomerSourcesIdResponseBody200AccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (postCustomersCustomerSourcesIdResponseBody200AccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "ach_credit_transfer" (postCustomersCustomerSourcesIdResponseBody200AchCreditTransfer obj) GHC.Base.<> ((Data.Aeson..=) "ach_debit" (postCustomersCustomerSourcesIdResponseBody200AchDebit obj) GHC.Base.<> ((Data.Aeson..=) "address_city" (postCustomersCustomerSourcesIdResponseBody200AddressCity obj) GHC.Base.<> ((Data.Aeson..=) "address_country" (postCustomersCustomerSourcesIdResponseBody200AddressCountry obj) GHC.Base.<> ((Data.Aeson..=) "address_line1" (postCustomersCustomerSourcesIdResponseBody200AddressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "address_line1_check" (postCustomersCustomerSourcesIdResponseBody200AddressLine1Check obj) GHC.Base.<> ((Data.Aeson..=) "address_line2" (postCustomersCustomerSourcesIdResponseBody200AddressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "address_state" (postCustomersCustomerSourcesIdResponseBody200AddressState obj) GHC.Base.<> ((Data.Aeson..=) "address_zip" (postCustomersCustomerSourcesIdResponseBody200AddressZip obj) GHC.Base.<> ((Data.Aeson..=) "address_zip_check" (postCustomersCustomerSourcesIdResponseBody200AddressZipCheck obj) GHC.Base.<> ((Data.Aeson..=) "alipay" (postCustomersCustomerSourcesIdResponseBody200Alipay obj) GHC.Base.<> ((Data.Aeson..=) "amount" (postCustomersCustomerSourcesIdResponseBody200Amount obj) GHC.Base.<> ((Data.Aeson..=) "available_payout_methods" (postCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods obj) GHC.Base.<> ((Data.Aeson..=) "bancontact" (postCustomersCustomerSourcesIdResponseBody200Bancontact obj) GHC.Base.<> ((Data.Aeson..=) "bank_name" (postCustomersCustomerSourcesIdResponseBody200BankName obj) GHC.Base.<> ((Data.Aeson..=) "brand" (postCustomersCustomerSourcesIdResponseBody200Brand obj) GHC.Base.<> ((Data.Aeson..=) "card" (postCustomersCustomerSourcesIdResponseBody200Card obj) GHC.Base.<> ((Data.Aeson..=) "card_present" (postCustomersCustomerSourcesIdResponseBody200CardPresent obj) GHC.Base.<> ((Data.Aeson..=) "client_secret" (postCustomersCustomerSourcesIdResponseBody200ClientSecret obj) GHC.Base.<> ((Data.Aeson..=) "code_verification" (postCustomersCustomerSourcesIdResponseBody200CodeVerification obj) GHC.Base.<> ((Data.Aeson..=) "country" (postCustomersCustomerSourcesIdResponseBody200Country obj) GHC.Base.<> ((Data.Aeson..=) "created" (postCustomersCustomerSourcesIdResponseBody200Created obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postCustomersCustomerSourcesIdResponseBody200Currency obj) GHC.Base.<> ((Data.Aeson..=) "customer" (postCustomersCustomerSourcesIdResponseBody200Customer obj) GHC.Base.<> ((Data.Aeson..=) "cvc_check" (postCustomersCustomerSourcesIdResponseBody200CvcCheck obj) GHC.Base.<> ((Data.Aeson..=) "default_for_currency" (postCustomersCustomerSourcesIdResponseBody200DefaultForCurrency obj) GHC.Base.<> ((Data.Aeson..=) "dynamic_last4" (postCustomersCustomerSourcesIdResponseBody200DynamicLast4 obj) GHC.Base.<> ((Data.Aeson..=) "eps" (postCustomersCustomerSourcesIdResponseBody200Eps obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (postCustomersCustomerSourcesIdResponseBody200ExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (postCustomersCustomerSourcesIdResponseBody200ExpYear obj) GHC.Base.<> ((Data.Aeson..=) "fingerprint" (postCustomersCustomerSourcesIdResponseBody200Fingerprint obj) GHC.Base.<> ((Data.Aeson..=) "flow" (postCustomersCustomerSourcesIdResponseBody200Flow obj) GHC.Base.<> ((Data.Aeson..=) "funding" (postCustomersCustomerSourcesIdResponseBody200Funding obj) GHC.Base.<> ((Data.Aeson..=) "giropay" (postCustomersCustomerSourcesIdResponseBody200Giropay obj) GHC.Base.<> ((Data.Aeson..=) "id" (postCustomersCustomerSourcesIdResponseBody200Id obj) GHC.Base.<> ((Data.Aeson..=) "ideal" (postCustomersCustomerSourcesIdResponseBody200Ideal obj) GHC.Base.<> ((Data.Aeson..=) "klarna" (postCustomersCustomerSourcesIdResponseBody200Klarna obj) GHC.Base.<> ((Data.Aeson..=) "last4" (postCustomersCustomerSourcesIdResponseBody200Last4 obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (postCustomersCustomerSourcesIdResponseBody200Livemode obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCustomersCustomerSourcesIdResponseBody200Metadata obj) GHC.Base.<> ((Data.Aeson..=) "multibanco" (postCustomersCustomerSourcesIdResponseBody200Multibanco obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCustomersCustomerSourcesIdResponseBody200Name obj) GHC.Base.<> ((Data.Aeson..=) "object" (postCustomersCustomerSourcesIdResponseBody200Object obj) GHC.Base.<> ((Data.Aeson..=) "owner" (postCustomersCustomerSourcesIdResponseBody200Owner obj) GHC.Base.<> ((Data.Aeson..=) "p24" (postCustomersCustomerSourcesIdResponseBody200P24 obj) GHC.Base.<> ((Data.Aeson..=) "receiver" (postCustomersCustomerSourcesIdResponseBody200Receiver obj) GHC.Base.<> ((Data.Aeson..=) "recipient" (postCustomersCustomerSourcesIdResponseBody200Recipient obj) GHC.Base.<> ((Data.Aeson..=) "redirect" (postCustomersCustomerSourcesIdResponseBody200Redirect obj) GHC.Base.<> ((Data.Aeson..=) "routing_number" (postCustomersCustomerSourcesIdResponseBody200RoutingNumber obj) GHC.Base.<> ((Data.Aeson..=) "sepa_debit" (postCustomersCustomerSourcesIdResponseBody200SepaDebit obj) GHC.Base.<> ((Data.Aeson..=) "sofort" (postCustomersCustomerSourcesIdResponseBody200Sofort obj) GHC.Base.<> ((Data.Aeson..=) "source_order" (postCustomersCustomerSourcesIdResponseBody200SourceOrder obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor" (postCustomersCustomerSourcesIdResponseBody200StatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "status" (postCustomersCustomerSourcesIdResponseBody200Status obj) GHC.Base.<> ((Data.Aeson..=) "three_d_secure" (postCustomersCustomerSourcesIdResponseBody200ThreeDSecure obj) GHC.Base.<> ((Data.Aeson..=) "tokenization_method" (postCustomersCustomerSourcesIdResponseBody200TokenizationMethod obj) GHC.Base.<> ((Data.Aeson..=) "type" (postCustomersCustomerSourcesIdResponseBody200Type obj) GHC.Base.<> ((Data.Aeson..=) "usage" (postCustomersCustomerSourcesIdResponseBody200Usage obj) GHC.Base.<> (Data.Aeson..=) "wechat" (postCustomersCustomerSourcesIdResponseBody200Wechat obj))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSourcesIdResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSourcesIdResponseBody200" (\obj -> (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((GHC.Base.pure PostCustomersCustomerSourcesIdResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ach_credit_transfer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ach_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "alipay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "available_payout_methods")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bancontact")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "brand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card_present")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "client_secret")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "code_verification")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_for_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dynamic_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "eps")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "funding")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "giropay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ideal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "klarna")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "multibanco")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owner")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "p24")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "receiver")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recipient")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "redirect")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sepa_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sofort")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source_order")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "three_d_secure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tokenization_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "usage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "wechat"))
