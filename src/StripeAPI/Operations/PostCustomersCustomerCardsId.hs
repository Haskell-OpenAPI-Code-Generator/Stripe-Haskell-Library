{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostCustomersCustomerCardsId where

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
-- POST /v1/customers/{customer}/cards/{id}
postCustomersCustomerCardsId :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                StripeAPI.Common.Configuration s ->
                                GHC.Base.String ->
                                GHC.Base.String ->
                                PostCustomersCustomerCardsIdRequestBody ->
                                m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                      (Network.HTTP.Client.Types.Response PostCustomersCustomerCardsIdResponse))
postCustomersCustomerCardsId config
                             customer
                             id
                             body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerCardsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerCardsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      PostCustomersCustomerCardsIdResponseBody200)
                                                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerCardsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/cards/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersCustomerCardsIdRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                 StripeAPI.Common.SecurityScheme s) =>
                                   StripeAPI.Common.Configuration s ->
                                   GHC.Base.String ->
                                   GHC.Base.String ->
                                   PostCustomersCustomerCardsIdRequestBody ->
                                   m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerCardsIdRaw config
                                customer
                                id
                                body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/cards/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersCustomerCardsIdM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                               StripeAPI.Common.SecurityScheme s) =>
                                 GHC.Base.String ->
                                 GHC.Base.String ->
                                 PostCustomersCustomerCardsIdRequestBody ->
                                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                    m
                                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                        (Network.HTTP.Client.Types.Response PostCustomersCustomerCardsIdResponse))
postCustomersCustomerCardsIdM customer
                              id
                              body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerCardsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerCardsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                       PostCustomersCustomerCardsIdResponseBody200)
                                                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerCardsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/cards/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersCustomerCardsIdRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                  StripeAPI.Common.SecurityScheme s) =>
                                    GHC.Base.String ->
                                    GHC.Base.String ->
                                    PostCustomersCustomerCardsIdRequestBody ->
                                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                       m
                                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerCardsIdRawM customer
                                 id
                                 body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/cards/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostCustomersCustomerCardsIdRequestBody
    = PostCustomersCustomerCardsIdRequestBody {postCustomersCustomerCardsIdRequestBodyAccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postCustomersCustomerCardsIdRequestBodyAccountHolderType :: (GHC.Maybe.Maybe PostCustomersCustomerCardsIdRequestBodyAccountHolderType'),
                                               postCustomersCustomerCardsIdRequestBodyAddressCity :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postCustomersCustomerCardsIdRequestBodyAddressCountry :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postCustomersCustomerCardsIdRequestBodyAddressLine1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postCustomersCustomerCardsIdRequestBodyAddressLine2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postCustomersCustomerCardsIdRequestBodyAddressState :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postCustomersCustomerCardsIdRequestBodyAddressZip :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postCustomersCustomerCardsIdRequestBodyExpMonth :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postCustomersCustomerCardsIdRequestBodyExpYear :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postCustomersCustomerCardsIdRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                               postCustomersCustomerCardsIdRequestBodyMetadata :: (GHC.Maybe.Maybe PostCustomersCustomerCardsIdRequestBodyMetadata'),
                                               postCustomersCustomerCardsIdRequestBodyName :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postCustomersCustomerCardsIdRequestBodyOwner :: (GHC.Maybe.Maybe PostCustomersCustomerCardsIdRequestBodyOwner')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerCardsIdRequestBodyAccountHolderType'
    = PostCustomersCustomerCardsIdRequestBodyAccountHolderType'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerCardsIdRequestBodyAccountHolderType'EnumTyped GHC.Base.String
    | PostCustomersCustomerCardsIdRequestBodyAccountHolderType'EnumStringCompany
    | PostCustomersCustomerCardsIdRequestBodyAccountHolderType'EnumStringIndividual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerCardsIdRequestBodyAccountHolderType'
    where toJSON (PostCustomersCustomerCardsIdRequestBodyAccountHolderType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerCardsIdRequestBodyAccountHolderType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerCardsIdRequestBodyAccountHolderType'EnumStringCompany) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company"
          toJSON (PostCustomersCustomerCardsIdRequestBodyAccountHolderType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
instance Data.Aeson.FromJSON PostCustomersCustomerCardsIdRequestBodyAccountHolderType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company")
                                          then PostCustomersCustomerCardsIdRequestBodyAccountHolderType'EnumStringCompany
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                then PostCustomersCustomerCardsIdRequestBodyAccountHolderType'EnumStringIndividual
                                                else PostCustomersCustomerCardsIdRequestBodyAccountHolderType'EnumOther val)
data PostCustomersCustomerCardsIdRequestBodyMetadata'
    = PostCustomersCustomerCardsIdRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerCardsIdRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerCardsIdRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerCardsIdRequestBodyMetadata'" (\obj -> GHC.Base.pure PostCustomersCustomerCardsIdRequestBodyMetadata')
data PostCustomersCustomerCardsIdRequestBodyOwner'
    = PostCustomersCustomerCardsIdRequestBodyOwner' {postCustomersCustomerCardsIdRequestBodyOwner'Address :: (GHC.Maybe.Maybe PostCustomersCustomerCardsIdRequestBodyOwner'Address'),
                                                     postCustomersCustomerCardsIdRequestBodyOwner'Email :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerCardsIdRequestBodyOwner'Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postCustomersCustomerCardsIdRequestBodyOwner'Phone :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerCardsIdRequestBodyOwner'Address'
    = PostCustomersCustomerCardsIdRequestBodyOwner'Address' {postCustomersCustomerCardsIdRequestBodyOwner'Address'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                             postCustomersCustomerCardsIdRequestBodyOwner'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                             postCustomersCustomerCardsIdRequestBodyOwner'Address'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                             postCustomersCustomerCardsIdRequestBodyOwner'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                             postCustomersCustomerCardsIdRequestBodyOwner'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                             postCustomersCustomerCardsIdRequestBodyOwner'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerCardsIdRequestBodyOwner'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postCustomersCustomerCardsIdRequestBodyOwner'Address'City obj) : (Data.Aeson..=) "country" (postCustomersCustomerCardsIdRequestBodyOwner'Address'Country obj) : (Data.Aeson..=) "line1" (postCustomersCustomerCardsIdRequestBodyOwner'Address'Line1 obj) : (Data.Aeson..=) "line2" (postCustomersCustomerCardsIdRequestBodyOwner'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postCustomersCustomerCardsIdRequestBodyOwner'Address'PostalCode obj) : (Data.Aeson..=) "state" (postCustomersCustomerCardsIdRequestBodyOwner'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postCustomersCustomerCardsIdRequestBodyOwner'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postCustomersCustomerCardsIdRequestBodyOwner'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postCustomersCustomerCardsIdRequestBodyOwner'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postCustomersCustomerCardsIdRequestBodyOwner'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postCustomersCustomerCardsIdRequestBodyOwner'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postCustomersCustomerCardsIdRequestBodyOwner'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerCardsIdRequestBodyOwner'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerCardsIdRequestBodyOwner'Address'" (\obj -> (((((GHC.Base.pure PostCustomersCustomerCardsIdRequestBodyOwner'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
instance Data.Aeson.ToJSON PostCustomersCustomerCardsIdRequestBodyOwner'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postCustomersCustomerCardsIdRequestBodyOwner'Address obj) : (Data.Aeson..=) "email" (postCustomersCustomerCardsIdRequestBodyOwner'Email obj) : (Data.Aeson..=) "name" (postCustomersCustomerCardsIdRequestBodyOwner'Name obj) : (Data.Aeson..=) "phone" (postCustomersCustomerCardsIdRequestBodyOwner'Phone obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postCustomersCustomerCardsIdRequestBodyOwner'Address obj) GHC.Base.<> ((Data.Aeson..=) "email" (postCustomersCustomerCardsIdRequestBodyOwner'Email obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCustomersCustomerCardsIdRequestBodyOwner'Name obj) GHC.Base.<> (Data.Aeson..=) "phone" (postCustomersCustomerCardsIdRequestBodyOwner'Phone obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerCardsIdRequestBodyOwner'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerCardsIdRequestBodyOwner'" (\obj -> (((GHC.Base.pure PostCustomersCustomerCardsIdRequestBodyOwner' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone"))
instance Data.Aeson.ToJSON PostCustomersCustomerCardsIdRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_holder_name" (postCustomersCustomerCardsIdRequestBodyAccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (postCustomersCustomerCardsIdRequestBodyAccountHolderType obj) : (Data.Aeson..=) "address_city" (postCustomersCustomerCardsIdRequestBodyAddressCity obj) : (Data.Aeson..=) "address_country" (postCustomersCustomerCardsIdRequestBodyAddressCountry obj) : (Data.Aeson..=) "address_line1" (postCustomersCustomerCardsIdRequestBodyAddressLine1 obj) : (Data.Aeson..=) "address_line2" (postCustomersCustomerCardsIdRequestBodyAddressLine2 obj) : (Data.Aeson..=) "address_state" (postCustomersCustomerCardsIdRequestBodyAddressState obj) : (Data.Aeson..=) "address_zip" (postCustomersCustomerCardsIdRequestBodyAddressZip obj) : (Data.Aeson..=) "exp_month" (postCustomersCustomerCardsIdRequestBodyExpMonth obj) : (Data.Aeson..=) "exp_year" (postCustomersCustomerCardsIdRequestBodyExpYear obj) : (Data.Aeson..=) "expand" (postCustomersCustomerCardsIdRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postCustomersCustomerCardsIdRequestBodyMetadata obj) : (Data.Aeson..=) "name" (postCustomersCustomerCardsIdRequestBodyName obj) : (Data.Aeson..=) "owner" (postCustomersCustomerCardsIdRequestBodyOwner obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_holder_name" (postCustomersCustomerCardsIdRequestBodyAccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (postCustomersCustomerCardsIdRequestBodyAccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "address_city" (postCustomersCustomerCardsIdRequestBodyAddressCity obj) GHC.Base.<> ((Data.Aeson..=) "address_country" (postCustomersCustomerCardsIdRequestBodyAddressCountry obj) GHC.Base.<> ((Data.Aeson..=) "address_line1" (postCustomersCustomerCardsIdRequestBodyAddressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "address_line2" (postCustomersCustomerCardsIdRequestBodyAddressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "address_state" (postCustomersCustomerCardsIdRequestBodyAddressState obj) GHC.Base.<> ((Data.Aeson..=) "address_zip" (postCustomersCustomerCardsIdRequestBodyAddressZip obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (postCustomersCustomerCardsIdRequestBodyExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (postCustomersCustomerCardsIdRequestBodyExpYear obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postCustomersCustomerCardsIdRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCustomersCustomerCardsIdRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCustomersCustomerCardsIdRequestBodyName obj) GHC.Base.<> (Data.Aeson..=) "owner" (postCustomersCustomerCardsIdRequestBodyOwner obj))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerCardsIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerCardsIdRequestBody" (\obj -> (((((((((((((GHC.Base.pure PostCustomersCustomerCardsIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owner"))

data PostCustomersCustomerCardsIdResponse
    = PostCustomersCustomerCardsIdResponseError GHC.Base.String
    | PostCustomersCustomerCardsIdResponse200 PostCustomersCustomerCardsIdResponseBody200
    | PostCustomersCustomerCardsIdResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerCardsIdResponseBody200
    = PostCustomersCustomerCardsIdResponseBody200 {postCustomersCustomerCardsIdResponseBody200Account :: (GHC.Maybe.Maybe PostCustomersCustomerCardsIdResponseBody200Account'Variants),
                                                   postCustomersCustomerCardsIdResponseBody200AccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerCardsIdResponseBody200AccountHolderType :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerCardsIdResponseBody200AchCreditTransfer :: (GHC.Maybe.Maybe SourceTypeAchCreditTransfer),
                                                   postCustomersCustomerCardsIdResponseBody200AchDebit :: (GHC.Maybe.Maybe SourceTypeAchDebit),
                                                   postCustomersCustomerCardsIdResponseBody200AddressCity :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerCardsIdResponseBody200AddressCountry :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerCardsIdResponseBody200AddressLine1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerCardsIdResponseBody200AddressLine1Check :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerCardsIdResponseBody200AddressLine2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerCardsIdResponseBody200AddressState :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerCardsIdResponseBody200AddressZip :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerCardsIdResponseBody200AddressZipCheck :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerCardsIdResponseBody200Alipay :: (GHC.Maybe.Maybe SourceTypeAlipay),
                                                   postCustomersCustomerCardsIdResponseBody200Amount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                   postCustomersCustomerCardsIdResponseBody200AvailablePayoutMethods :: (GHC.Maybe.Maybe ([] PostCustomersCustomerCardsIdResponseBody200AvailablePayoutMethods')),
                                                   postCustomersCustomerCardsIdResponseBody200Bancontact :: (GHC.Maybe.Maybe SourceTypeBancontact),
                                                   postCustomersCustomerCardsIdResponseBody200BankName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerCardsIdResponseBody200Brand :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerCardsIdResponseBody200Card :: (GHC.Maybe.Maybe SourceTypeCard),
                                                   postCustomersCustomerCardsIdResponseBody200CardPresent :: (GHC.Maybe.Maybe SourceTypeCardPresent),
                                                   postCustomersCustomerCardsIdResponseBody200ClientSecret :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerCardsIdResponseBody200CodeVerification :: (GHC.Maybe.Maybe SourceCodeVerificationFlow),
                                                   postCustomersCustomerCardsIdResponseBody200Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerCardsIdResponseBody200Created :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                   postCustomersCustomerCardsIdResponseBody200Currency :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerCardsIdResponseBody200Customer :: (GHC.Maybe.Maybe PostCustomersCustomerCardsIdResponseBody200Customer'Variants),
                                                   postCustomersCustomerCardsIdResponseBody200CvcCheck :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerCardsIdResponseBody200DefaultForCurrency :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                   postCustomersCustomerCardsIdResponseBody200DynamicLast4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerCardsIdResponseBody200Eps :: (GHC.Maybe.Maybe SourceTypeEps),
                                                   postCustomersCustomerCardsIdResponseBody200ExpMonth :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                   postCustomersCustomerCardsIdResponseBody200ExpYear :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                   postCustomersCustomerCardsIdResponseBody200Fingerprint :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerCardsIdResponseBody200Flow :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerCardsIdResponseBody200Funding :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerCardsIdResponseBody200Giropay :: (GHC.Maybe.Maybe SourceTypeGiropay),
                                                   postCustomersCustomerCardsIdResponseBody200Id :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerCardsIdResponseBody200Ideal :: (GHC.Maybe.Maybe SourceTypeIdeal),
                                                   postCustomersCustomerCardsIdResponseBody200Klarna :: (GHC.Maybe.Maybe SourceTypeKlarna),
                                                   postCustomersCustomerCardsIdResponseBody200Last4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerCardsIdResponseBody200Livemode :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                   postCustomersCustomerCardsIdResponseBody200Metadata :: (GHC.Maybe.Maybe PostCustomersCustomerCardsIdResponseBody200Metadata'),
                                                   postCustomersCustomerCardsIdResponseBody200Multibanco :: (GHC.Maybe.Maybe SourceTypeMultibanco),
                                                   postCustomersCustomerCardsIdResponseBody200Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerCardsIdResponseBody200Object :: (GHC.Maybe.Maybe PostCustomersCustomerCardsIdResponseBody200Object'),
                                                   postCustomersCustomerCardsIdResponseBody200Owner :: (GHC.Maybe.Maybe PostCustomersCustomerCardsIdResponseBody200Owner'),
                                                   postCustomersCustomerCardsIdResponseBody200P24 :: (GHC.Maybe.Maybe SourceTypeP24),
                                                   postCustomersCustomerCardsIdResponseBody200Receiver :: (GHC.Maybe.Maybe SourceReceiverFlow),
                                                   postCustomersCustomerCardsIdResponseBody200Recipient :: (GHC.Maybe.Maybe PostCustomersCustomerCardsIdResponseBody200Recipient'Variants),
                                                   postCustomersCustomerCardsIdResponseBody200Redirect :: (GHC.Maybe.Maybe SourceRedirectFlow),
                                                   postCustomersCustomerCardsIdResponseBody200RoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerCardsIdResponseBody200SepaDebit :: (GHC.Maybe.Maybe SourceTypeSepaDebit),
                                                   postCustomersCustomerCardsIdResponseBody200Sofort :: (GHC.Maybe.Maybe SourceTypeSofort),
                                                   postCustomersCustomerCardsIdResponseBody200SourceOrder :: (GHC.Maybe.Maybe SourceOrder),
                                                   postCustomersCustomerCardsIdResponseBody200StatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerCardsIdResponseBody200Status :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerCardsIdResponseBody200ThreeDSecure :: (GHC.Maybe.Maybe SourceTypeThreeDSecure),
                                                   postCustomersCustomerCardsIdResponseBody200TokenizationMethod :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerCardsIdResponseBody200Type :: (GHC.Maybe.Maybe PostCustomersCustomerCardsIdResponseBody200Type'),
                                                   postCustomersCustomerCardsIdResponseBody200Usage :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerCardsIdResponseBody200Wechat :: (GHC.Maybe.Maybe SourceTypeWechat)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerCardsIdResponseBody200Account'Variants
    = PostCustomersCustomerCardsIdResponseBody200Account'Variant1 Account
    | PostCustomersCustomerCardsIdResponseBody200Account'Variant2 GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerCardsIdResponseBody200Account'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerCardsIdResponseBody200Account'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersCustomerCardsIdResponseBody200AvailablePayoutMethods'
    = PostCustomersCustomerCardsIdResponseBody200AvailablePayoutMethods'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerCardsIdResponseBody200AvailablePayoutMethods'EnumTyped GHC.Base.String
    | PostCustomersCustomerCardsIdResponseBody200AvailablePayoutMethods'EnumStringInstant
    | PostCustomersCustomerCardsIdResponseBody200AvailablePayoutMethods'EnumStringStandard
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerCardsIdResponseBody200AvailablePayoutMethods'
    where toJSON (PostCustomersCustomerCardsIdResponseBody200AvailablePayoutMethods'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerCardsIdResponseBody200AvailablePayoutMethods'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerCardsIdResponseBody200AvailablePayoutMethods'EnumStringInstant) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "instant"
          toJSON (PostCustomersCustomerCardsIdResponseBody200AvailablePayoutMethods'EnumStringStandard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard"
instance Data.Aeson.FromJSON PostCustomersCustomerCardsIdResponseBody200AvailablePayoutMethods'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "instant")
                                          then PostCustomersCustomerCardsIdResponseBody200AvailablePayoutMethods'EnumStringInstant
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard")
                                                then PostCustomersCustomerCardsIdResponseBody200AvailablePayoutMethods'EnumStringStandard
                                                else PostCustomersCustomerCardsIdResponseBody200AvailablePayoutMethods'EnumOther val)
data PostCustomersCustomerCardsIdResponseBody200Customer'Variants
    = PostCustomersCustomerCardsIdResponseBody200Customer'Variant1 Customer
    | PostCustomersCustomerCardsIdResponseBody200Customer'Variant2 DeletedCustomer
    | PostCustomersCustomerCardsIdResponseBody200Customer'Variant3 GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerCardsIdResponseBody200Customer'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerCardsIdResponseBody200Customer'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersCustomerCardsIdResponseBody200Metadata'
    = PostCustomersCustomerCardsIdResponseBody200Metadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerCardsIdResponseBody200Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerCardsIdResponseBody200Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerCardsIdResponseBody200Metadata'" (\obj -> GHC.Base.pure PostCustomersCustomerCardsIdResponseBody200Metadata')
data PostCustomersCustomerCardsIdResponseBody200Object'
    = PostCustomersCustomerCardsIdResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerCardsIdResponseBody200Object'EnumTyped GHC.Base.String
    | PostCustomersCustomerCardsIdResponseBody200Object'EnumStringBankAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerCardsIdResponseBody200Object'
    where toJSON (PostCustomersCustomerCardsIdResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerCardsIdResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerCardsIdResponseBody200Object'EnumStringBankAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account"
instance Data.Aeson.FromJSON PostCustomersCustomerCardsIdResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account")
                                          then PostCustomersCustomerCardsIdResponseBody200Object'EnumStringBankAccount
                                          else PostCustomersCustomerCardsIdResponseBody200Object'EnumOther val)
data PostCustomersCustomerCardsIdResponseBody200Owner'
    = PostCustomersCustomerCardsIdResponseBody200Owner' {postCustomersCustomerCardsIdResponseBody200Owner'Address :: (GHC.Maybe.Maybe PostCustomersCustomerCardsIdResponseBody200Owner'Address'),
                                                         postCustomersCustomerCardsIdResponseBody200Owner'Email :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postCustomersCustomerCardsIdResponseBody200Owner'Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postCustomersCustomerCardsIdResponseBody200Owner'Phone :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postCustomersCustomerCardsIdResponseBody200Owner'VerifiedAddress :: (GHC.Maybe.Maybe PostCustomersCustomerCardsIdResponseBody200Owner'VerifiedAddress'),
                                                         postCustomersCustomerCardsIdResponseBody200Owner'VerifiedEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postCustomersCustomerCardsIdResponseBody200Owner'VerifiedName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postCustomersCustomerCardsIdResponseBody200Owner'VerifiedPhone :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerCardsIdResponseBody200Owner'Address'
    = PostCustomersCustomerCardsIdResponseBody200Owner'Address' {postCustomersCustomerCardsIdResponseBody200Owner'Address'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                 postCustomersCustomerCardsIdResponseBody200Owner'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                 postCustomersCustomerCardsIdResponseBody200Owner'Address'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                 postCustomersCustomerCardsIdResponseBody200Owner'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                 postCustomersCustomerCardsIdResponseBody200Owner'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                 postCustomersCustomerCardsIdResponseBody200Owner'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerCardsIdResponseBody200Owner'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postCustomersCustomerCardsIdResponseBody200Owner'Address'City obj) : (Data.Aeson..=) "country" (postCustomersCustomerCardsIdResponseBody200Owner'Address'Country obj) : (Data.Aeson..=) "line1" (postCustomersCustomerCardsIdResponseBody200Owner'Address'Line1 obj) : (Data.Aeson..=) "line2" (postCustomersCustomerCardsIdResponseBody200Owner'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postCustomersCustomerCardsIdResponseBody200Owner'Address'PostalCode obj) : (Data.Aeson..=) "state" (postCustomersCustomerCardsIdResponseBody200Owner'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postCustomersCustomerCardsIdResponseBody200Owner'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postCustomersCustomerCardsIdResponseBody200Owner'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postCustomersCustomerCardsIdResponseBody200Owner'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postCustomersCustomerCardsIdResponseBody200Owner'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postCustomersCustomerCardsIdResponseBody200Owner'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postCustomersCustomerCardsIdResponseBody200Owner'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerCardsIdResponseBody200Owner'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerCardsIdResponseBody200Owner'Address'" (\obj -> (((((GHC.Base.pure PostCustomersCustomerCardsIdResponseBody200Owner'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
data PostCustomersCustomerCardsIdResponseBody200Owner'VerifiedAddress'
    = PostCustomersCustomerCardsIdResponseBody200Owner'VerifiedAddress' {postCustomersCustomerCardsIdResponseBody200Owner'VerifiedAddress'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                         postCustomersCustomerCardsIdResponseBody200Owner'VerifiedAddress'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                         postCustomersCustomerCardsIdResponseBody200Owner'VerifiedAddress'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                         postCustomersCustomerCardsIdResponseBody200Owner'VerifiedAddress'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                         postCustomersCustomerCardsIdResponseBody200Owner'VerifiedAddress'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                         postCustomersCustomerCardsIdResponseBody200Owner'VerifiedAddress'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerCardsIdResponseBody200Owner'VerifiedAddress'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postCustomersCustomerCardsIdResponseBody200Owner'VerifiedAddress'City obj) : (Data.Aeson..=) "country" (postCustomersCustomerCardsIdResponseBody200Owner'VerifiedAddress'Country obj) : (Data.Aeson..=) "line1" (postCustomersCustomerCardsIdResponseBody200Owner'VerifiedAddress'Line1 obj) : (Data.Aeson..=) "line2" (postCustomersCustomerCardsIdResponseBody200Owner'VerifiedAddress'Line2 obj) : (Data.Aeson..=) "postal_code" (postCustomersCustomerCardsIdResponseBody200Owner'VerifiedAddress'PostalCode obj) : (Data.Aeson..=) "state" (postCustomersCustomerCardsIdResponseBody200Owner'VerifiedAddress'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postCustomersCustomerCardsIdResponseBody200Owner'VerifiedAddress'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postCustomersCustomerCardsIdResponseBody200Owner'VerifiedAddress'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postCustomersCustomerCardsIdResponseBody200Owner'VerifiedAddress'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postCustomersCustomerCardsIdResponseBody200Owner'VerifiedAddress'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postCustomersCustomerCardsIdResponseBody200Owner'VerifiedAddress'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postCustomersCustomerCardsIdResponseBody200Owner'VerifiedAddress'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerCardsIdResponseBody200Owner'VerifiedAddress'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerCardsIdResponseBody200Owner'VerifiedAddress'" (\obj -> (((((GHC.Base.pure PostCustomersCustomerCardsIdResponseBody200Owner'VerifiedAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
instance Data.Aeson.ToJSON PostCustomersCustomerCardsIdResponseBody200Owner'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postCustomersCustomerCardsIdResponseBody200Owner'Address obj) : (Data.Aeson..=) "email" (postCustomersCustomerCardsIdResponseBody200Owner'Email obj) : (Data.Aeson..=) "name" (postCustomersCustomerCardsIdResponseBody200Owner'Name obj) : (Data.Aeson..=) "phone" (postCustomersCustomerCardsIdResponseBody200Owner'Phone obj) : (Data.Aeson..=) "verified_address" (postCustomersCustomerCardsIdResponseBody200Owner'VerifiedAddress obj) : (Data.Aeson..=) "verified_email" (postCustomersCustomerCardsIdResponseBody200Owner'VerifiedEmail obj) : (Data.Aeson..=) "verified_name" (postCustomersCustomerCardsIdResponseBody200Owner'VerifiedName obj) : (Data.Aeson..=) "verified_phone" (postCustomersCustomerCardsIdResponseBody200Owner'VerifiedPhone obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postCustomersCustomerCardsIdResponseBody200Owner'Address obj) GHC.Base.<> ((Data.Aeson..=) "email" (postCustomersCustomerCardsIdResponseBody200Owner'Email obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCustomersCustomerCardsIdResponseBody200Owner'Name obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postCustomersCustomerCardsIdResponseBody200Owner'Phone obj) GHC.Base.<> ((Data.Aeson..=) "verified_address" (postCustomersCustomerCardsIdResponseBody200Owner'VerifiedAddress obj) GHC.Base.<> ((Data.Aeson..=) "verified_email" (postCustomersCustomerCardsIdResponseBody200Owner'VerifiedEmail obj) GHC.Base.<> ((Data.Aeson..=) "verified_name" (postCustomersCustomerCardsIdResponseBody200Owner'VerifiedName obj) GHC.Base.<> (Data.Aeson..=) "verified_phone" (postCustomersCustomerCardsIdResponseBody200Owner'VerifiedPhone obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerCardsIdResponseBody200Owner'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerCardsIdResponseBody200Owner'" (\obj -> (((((((GHC.Base.pure PostCustomersCustomerCardsIdResponseBody200Owner' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_phone"))
data PostCustomersCustomerCardsIdResponseBody200Recipient'Variants
    = PostCustomersCustomerCardsIdResponseBody200Recipient'Variant1 Recipient
    | PostCustomersCustomerCardsIdResponseBody200Recipient'Variant2 GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerCardsIdResponseBody200Recipient'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerCardsIdResponseBody200Recipient'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersCustomerCardsIdResponseBody200Type'
    = PostCustomersCustomerCardsIdResponseBody200Type'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerCardsIdResponseBody200Type'EnumTyped GHC.Base.String
    | PostCustomersCustomerCardsIdResponseBody200Type'EnumStringAchCreditTransfer
    | PostCustomersCustomerCardsIdResponseBody200Type'EnumStringAchDebit
    | PostCustomersCustomerCardsIdResponseBody200Type'EnumStringAlipay
    | PostCustomersCustomerCardsIdResponseBody200Type'EnumStringBancontact
    | PostCustomersCustomerCardsIdResponseBody200Type'EnumStringCard
    | PostCustomersCustomerCardsIdResponseBody200Type'EnumStringCardPresent
    | PostCustomersCustomerCardsIdResponseBody200Type'EnumStringEps
    | PostCustomersCustomerCardsIdResponseBody200Type'EnumStringGiropay
    | PostCustomersCustomerCardsIdResponseBody200Type'EnumStringIdeal
    | PostCustomersCustomerCardsIdResponseBody200Type'EnumStringKlarna
    | PostCustomersCustomerCardsIdResponseBody200Type'EnumStringMultibanco
    | PostCustomersCustomerCardsIdResponseBody200Type'EnumStringP24
    | PostCustomersCustomerCardsIdResponseBody200Type'EnumStringSepaDebit
    | PostCustomersCustomerCardsIdResponseBody200Type'EnumStringSofort
    | PostCustomersCustomerCardsIdResponseBody200Type'EnumStringThreeDSecure
    | PostCustomersCustomerCardsIdResponseBody200Type'EnumStringWechat
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerCardsIdResponseBody200Type'
    where toJSON (PostCustomersCustomerCardsIdResponseBody200Type'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerCardsIdResponseBody200Type'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerCardsIdResponseBody200Type'EnumStringAchCreditTransfer) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ach_credit_transfer"
          toJSON (PostCustomersCustomerCardsIdResponseBody200Type'EnumStringAchDebit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ach_debit"
          toJSON (PostCustomersCustomerCardsIdResponseBody200Type'EnumStringAlipay) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alipay"
          toJSON (PostCustomersCustomerCardsIdResponseBody200Type'EnumStringBancontact) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bancontact"
          toJSON (PostCustomersCustomerCardsIdResponseBody200Type'EnumStringCard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card"
          toJSON (PostCustomersCustomerCardsIdResponseBody200Type'EnumStringCardPresent) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_present"
          toJSON (PostCustomersCustomerCardsIdResponseBody200Type'EnumStringEps) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "eps"
          toJSON (PostCustomersCustomerCardsIdResponseBody200Type'EnumStringGiropay) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "giropay"
          toJSON (PostCustomersCustomerCardsIdResponseBody200Type'EnumStringIdeal) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ideal"
          toJSON (PostCustomersCustomerCardsIdResponseBody200Type'EnumStringKlarna) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "klarna"
          toJSON (PostCustomersCustomerCardsIdResponseBody200Type'EnumStringMultibanco) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "multibanco"
          toJSON (PostCustomersCustomerCardsIdResponseBody200Type'EnumStringP24) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "p24"
          toJSON (PostCustomersCustomerCardsIdResponseBody200Type'EnumStringSepaDebit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sepa_debit"
          toJSON (PostCustomersCustomerCardsIdResponseBody200Type'EnumStringSofort) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sofort"
          toJSON (PostCustomersCustomerCardsIdResponseBody200Type'EnumStringThreeDSecure) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "three_d_secure"
          toJSON (PostCustomersCustomerCardsIdResponseBody200Type'EnumStringWechat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "wechat"
instance Data.Aeson.FromJSON PostCustomersCustomerCardsIdResponseBody200Type'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ach_credit_transfer")
                                          then PostCustomersCustomerCardsIdResponseBody200Type'EnumStringAchCreditTransfer
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ach_debit")
                                                then PostCustomersCustomerCardsIdResponseBody200Type'EnumStringAchDebit
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alipay")
                                                      then PostCustomersCustomerCardsIdResponseBody200Type'EnumStringAlipay
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bancontact")
                                                            then PostCustomersCustomerCardsIdResponseBody200Type'EnumStringBancontact
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card")
                                                                  then PostCustomersCustomerCardsIdResponseBody200Type'EnumStringCard
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_present")
                                                                        then PostCustomersCustomerCardsIdResponseBody200Type'EnumStringCardPresent
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "eps")
                                                                              then PostCustomersCustomerCardsIdResponseBody200Type'EnumStringEps
                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "giropay")
                                                                                    then PostCustomersCustomerCardsIdResponseBody200Type'EnumStringGiropay
                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ideal")
                                                                                          then PostCustomersCustomerCardsIdResponseBody200Type'EnumStringIdeal
                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "klarna")
                                                                                                then PostCustomersCustomerCardsIdResponseBody200Type'EnumStringKlarna
                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "multibanco")
                                                                                                      then PostCustomersCustomerCardsIdResponseBody200Type'EnumStringMultibanco
                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "p24")
                                                                                                            then PostCustomersCustomerCardsIdResponseBody200Type'EnumStringP24
                                                                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sepa_debit")
                                                                                                                  then PostCustomersCustomerCardsIdResponseBody200Type'EnumStringSepaDebit
                                                                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sofort")
                                                                                                                        then PostCustomersCustomerCardsIdResponseBody200Type'EnumStringSofort
                                                                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "three_d_secure")
                                                                                                                              then PostCustomersCustomerCardsIdResponseBody200Type'EnumStringThreeDSecure
                                                                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "wechat")
                                                                                                                                    then PostCustomersCustomerCardsIdResponseBody200Type'EnumStringWechat
                                                                                                                                    else PostCustomersCustomerCardsIdResponseBody200Type'EnumOther val)
instance Data.Aeson.ToJSON PostCustomersCustomerCardsIdResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account" (postCustomersCustomerCardsIdResponseBody200Account obj) : (Data.Aeson..=) "account_holder_name" (postCustomersCustomerCardsIdResponseBody200AccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (postCustomersCustomerCardsIdResponseBody200AccountHolderType obj) : (Data.Aeson..=) "ach_credit_transfer" (postCustomersCustomerCardsIdResponseBody200AchCreditTransfer obj) : (Data.Aeson..=) "ach_debit" (postCustomersCustomerCardsIdResponseBody200AchDebit obj) : (Data.Aeson..=) "address_city" (postCustomersCustomerCardsIdResponseBody200AddressCity obj) : (Data.Aeson..=) "address_country" (postCustomersCustomerCardsIdResponseBody200AddressCountry obj) : (Data.Aeson..=) "address_line1" (postCustomersCustomerCardsIdResponseBody200AddressLine1 obj) : (Data.Aeson..=) "address_line1_check" (postCustomersCustomerCardsIdResponseBody200AddressLine1Check obj) : (Data.Aeson..=) "address_line2" (postCustomersCustomerCardsIdResponseBody200AddressLine2 obj) : (Data.Aeson..=) "address_state" (postCustomersCustomerCardsIdResponseBody200AddressState obj) : (Data.Aeson..=) "address_zip" (postCustomersCustomerCardsIdResponseBody200AddressZip obj) : (Data.Aeson..=) "address_zip_check" (postCustomersCustomerCardsIdResponseBody200AddressZipCheck obj) : (Data.Aeson..=) "alipay" (postCustomersCustomerCardsIdResponseBody200Alipay obj) : (Data.Aeson..=) "amount" (postCustomersCustomerCardsIdResponseBody200Amount obj) : (Data.Aeson..=) "available_payout_methods" (postCustomersCustomerCardsIdResponseBody200AvailablePayoutMethods obj) : (Data.Aeson..=) "bancontact" (postCustomersCustomerCardsIdResponseBody200Bancontact obj) : (Data.Aeson..=) "bank_name" (postCustomersCustomerCardsIdResponseBody200BankName obj) : (Data.Aeson..=) "brand" (postCustomersCustomerCardsIdResponseBody200Brand obj) : (Data.Aeson..=) "card" (postCustomersCustomerCardsIdResponseBody200Card obj) : (Data.Aeson..=) "card_present" (postCustomersCustomerCardsIdResponseBody200CardPresent obj) : (Data.Aeson..=) "client_secret" (postCustomersCustomerCardsIdResponseBody200ClientSecret obj) : (Data.Aeson..=) "code_verification" (postCustomersCustomerCardsIdResponseBody200CodeVerification obj) : (Data.Aeson..=) "country" (postCustomersCustomerCardsIdResponseBody200Country obj) : (Data.Aeson..=) "created" (postCustomersCustomerCardsIdResponseBody200Created obj) : (Data.Aeson..=) "currency" (postCustomersCustomerCardsIdResponseBody200Currency obj) : (Data.Aeson..=) "customer" (postCustomersCustomerCardsIdResponseBody200Customer obj) : (Data.Aeson..=) "cvc_check" (postCustomersCustomerCardsIdResponseBody200CvcCheck obj) : (Data.Aeson..=) "default_for_currency" (postCustomersCustomerCardsIdResponseBody200DefaultForCurrency obj) : (Data.Aeson..=) "dynamic_last4" (postCustomersCustomerCardsIdResponseBody200DynamicLast4 obj) : (Data.Aeson..=) "eps" (postCustomersCustomerCardsIdResponseBody200Eps obj) : (Data.Aeson..=) "exp_month" (postCustomersCustomerCardsIdResponseBody200ExpMonth obj) : (Data.Aeson..=) "exp_year" (postCustomersCustomerCardsIdResponseBody200ExpYear obj) : (Data.Aeson..=) "fingerprint" (postCustomersCustomerCardsIdResponseBody200Fingerprint obj) : (Data.Aeson..=) "flow" (postCustomersCustomerCardsIdResponseBody200Flow obj) : (Data.Aeson..=) "funding" (postCustomersCustomerCardsIdResponseBody200Funding obj) : (Data.Aeson..=) "giropay" (postCustomersCustomerCardsIdResponseBody200Giropay obj) : (Data.Aeson..=) "id" (postCustomersCustomerCardsIdResponseBody200Id obj) : (Data.Aeson..=) "ideal" (postCustomersCustomerCardsIdResponseBody200Ideal obj) : (Data.Aeson..=) "klarna" (postCustomersCustomerCardsIdResponseBody200Klarna obj) : (Data.Aeson..=) "last4" (postCustomersCustomerCardsIdResponseBody200Last4 obj) : (Data.Aeson..=) "livemode" (postCustomersCustomerCardsIdResponseBody200Livemode obj) : (Data.Aeson..=) "metadata" (postCustomersCustomerCardsIdResponseBody200Metadata obj) : (Data.Aeson..=) "multibanco" (postCustomersCustomerCardsIdResponseBody200Multibanco obj) : (Data.Aeson..=) "name" (postCustomersCustomerCardsIdResponseBody200Name obj) : (Data.Aeson..=) "object" (postCustomersCustomerCardsIdResponseBody200Object obj) : (Data.Aeson..=) "owner" (postCustomersCustomerCardsIdResponseBody200Owner obj) : (Data.Aeson..=) "p24" (postCustomersCustomerCardsIdResponseBody200P24 obj) : (Data.Aeson..=) "receiver" (postCustomersCustomerCardsIdResponseBody200Receiver obj) : (Data.Aeson..=) "recipient" (postCustomersCustomerCardsIdResponseBody200Recipient obj) : (Data.Aeson..=) "redirect" (postCustomersCustomerCardsIdResponseBody200Redirect obj) : (Data.Aeson..=) "routing_number" (postCustomersCustomerCardsIdResponseBody200RoutingNumber obj) : (Data.Aeson..=) "sepa_debit" (postCustomersCustomerCardsIdResponseBody200SepaDebit obj) : (Data.Aeson..=) "sofort" (postCustomersCustomerCardsIdResponseBody200Sofort obj) : (Data.Aeson..=) "source_order" (postCustomersCustomerCardsIdResponseBody200SourceOrder obj) : (Data.Aeson..=) "statement_descriptor" (postCustomersCustomerCardsIdResponseBody200StatementDescriptor obj) : (Data.Aeson..=) "status" (postCustomersCustomerCardsIdResponseBody200Status obj) : (Data.Aeson..=) "three_d_secure" (postCustomersCustomerCardsIdResponseBody200ThreeDSecure obj) : (Data.Aeson..=) "tokenization_method" (postCustomersCustomerCardsIdResponseBody200TokenizationMethod obj) : (Data.Aeson..=) "type" (postCustomersCustomerCardsIdResponseBody200Type obj) : (Data.Aeson..=) "usage" (postCustomersCustomerCardsIdResponseBody200Usage obj) : (Data.Aeson..=) "wechat" (postCustomersCustomerCardsIdResponseBody200Wechat obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account" (postCustomersCustomerCardsIdResponseBody200Account obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_name" (postCustomersCustomerCardsIdResponseBody200AccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (postCustomersCustomerCardsIdResponseBody200AccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "ach_credit_transfer" (postCustomersCustomerCardsIdResponseBody200AchCreditTransfer obj) GHC.Base.<> ((Data.Aeson..=) "ach_debit" (postCustomersCustomerCardsIdResponseBody200AchDebit obj) GHC.Base.<> ((Data.Aeson..=) "address_city" (postCustomersCustomerCardsIdResponseBody200AddressCity obj) GHC.Base.<> ((Data.Aeson..=) "address_country" (postCustomersCustomerCardsIdResponseBody200AddressCountry obj) GHC.Base.<> ((Data.Aeson..=) "address_line1" (postCustomersCustomerCardsIdResponseBody200AddressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "address_line1_check" (postCustomersCustomerCardsIdResponseBody200AddressLine1Check obj) GHC.Base.<> ((Data.Aeson..=) "address_line2" (postCustomersCustomerCardsIdResponseBody200AddressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "address_state" (postCustomersCustomerCardsIdResponseBody200AddressState obj) GHC.Base.<> ((Data.Aeson..=) "address_zip" (postCustomersCustomerCardsIdResponseBody200AddressZip obj) GHC.Base.<> ((Data.Aeson..=) "address_zip_check" (postCustomersCustomerCardsIdResponseBody200AddressZipCheck obj) GHC.Base.<> ((Data.Aeson..=) "alipay" (postCustomersCustomerCardsIdResponseBody200Alipay obj) GHC.Base.<> ((Data.Aeson..=) "amount" (postCustomersCustomerCardsIdResponseBody200Amount obj) GHC.Base.<> ((Data.Aeson..=) "available_payout_methods" (postCustomersCustomerCardsIdResponseBody200AvailablePayoutMethods obj) GHC.Base.<> ((Data.Aeson..=) "bancontact" (postCustomersCustomerCardsIdResponseBody200Bancontact obj) GHC.Base.<> ((Data.Aeson..=) "bank_name" (postCustomersCustomerCardsIdResponseBody200BankName obj) GHC.Base.<> ((Data.Aeson..=) "brand" (postCustomersCustomerCardsIdResponseBody200Brand obj) GHC.Base.<> ((Data.Aeson..=) "card" (postCustomersCustomerCardsIdResponseBody200Card obj) GHC.Base.<> ((Data.Aeson..=) "card_present" (postCustomersCustomerCardsIdResponseBody200CardPresent obj) GHC.Base.<> ((Data.Aeson..=) "client_secret" (postCustomersCustomerCardsIdResponseBody200ClientSecret obj) GHC.Base.<> ((Data.Aeson..=) "code_verification" (postCustomersCustomerCardsIdResponseBody200CodeVerification obj) GHC.Base.<> ((Data.Aeson..=) "country" (postCustomersCustomerCardsIdResponseBody200Country obj) GHC.Base.<> ((Data.Aeson..=) "created" (postCustomersCustomerCardsIdResponseBody200Created obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postCustomersCustomerCardsIdResponseBody200Currency obj) GHC.Base.<> ((Data.Aeson..=) "customer" (postCustomersCustomerCardsIdResponseBody200Customer obj) GHC.Base.<> ((Data.Aeson..=) "cvc_check" (postCustomersCustomerCardsIdResponseBody200CvcCheck obj) GHC.Base.<> ((Data.Aeson..=) "default_for_currency" (postCustomersCustomerCardsIdResponseBody200DefaultForCurrency obj) GHC.Base.<> ((Data.Aeson..=) "dynamic_last4" (postCustomersCustomerCardsIdResponseBody200DynamicLast4 obj) GHC.Base.<> ((Data.Aeson..=) "eps" (postCustomersCustomerCardsIdResponseBody200Eps obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (postCustomersCustomerCardsIdResponseBody200ExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (postCustomersCustomerCardsIdResponseBody200ExpYear obj) GHC.Base.<> ((Data.Aeson..=) "fingerprint" (postCustomersCustomerCardsIdResponseBody200Fingerprint obj) GHC.Base.<> ((Data.Aeson..=) "flow" (postCustomersCustomerCardsIdResponseBody200Flow obj) GHC.Base.<> ((Data.Aeson..=) "funding" (postCustomersCustomerCardsIdResponseBody200Funding obj) GHC.Base.<> ((Data.Aeson..=) "giropay" (postCustomersCustomerCardsIdResponseBody200Giropay obj) GHC.Base.<> ((Data.Aeson..=) "id" (postCustomersCustomerCardsIdResponseBody200Id obj) GHC.Base.<> ((Data.Aeson..=) "ideal" (postCustomersCustomerCardsIdResponseBody200Ideal obj) GHC.Base.<> ((Data.Aeson..=) "klarna" (postCustomersCustomerCardsIdResponseBody200Klarna obj) GHC.Base.<> ((Data.Aeson..=) "last4" (postCustomersCustomerCardsIdResponseBody200Last4 obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (postCustomersCustomerCardsIdResponseBody200Livemode obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCustomersCustomerCardsIdResponseBody200Metadata obj) GHC.Base.<> ((Data.Aeson..=) "multibanco" (postCustomersCustomerCardsIdResponseBody200Multibanco obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCustomersCustomerCardsIdResponseBody200Name obj) GHC.Base.<> ((Data.Aeson..=) "object" (postCustomersCustomerCardsIdResponseBody200Object obj) GHC.Base.<> ((Data.Aeson..=) "owner" (postCustomersCustomerCardsIdResponseBody200Owner obj) GHC.Base.<> ((Data.Aeson..=) "p24" (postCustomersCustomerCardsIdResponseBody200P24 obj) GHC.Base.<> ((Data.Aeson..=) "receiver" (postCustomersCustomerCardsIdResponseBody200Receiver obj) GHC.Base.<> ((Data.Aeson..=) "recipient" (postCustomersCustomerCardsIdResponseBody200Recipient obj) GHC.Base.<> ((Data.Aeson..=) "redirect" (postCustomersCustomerCardsIdResponseBody200Redirect obj) GHC.Base.<> ((Data.Aeson..=) "routing_number" (postCustomersCustomerCardsIdResponseBody200RoutingNumber obj) GHC.Base.<> ((Data.Aeson..=) "sepa_debit" (postCustomersCustomerCardsIdResponseBody200SepaDebit obj) GHC.Base.<> ((Data.Aeson..=) "sofort" (postCustomersCustomerCardsIdResponseBody200Sofort obj) GHC.Base.<> ((Data.Aeson..=) "source_order" (postCustomersCustomerCardsIdResponseBody200SourceOrder obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor" (postCustomersCustomerCardsIdResponseBody200StatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "status" (postCustomersCustomerCardsIdResponseBody200Status obj) GHC.Base.<> ((Data.Aeson..=) "three_d_secure" (postCustomersCustomerCardsIdResponseBody200ThreeDSecure obj) GHC.Base.<> ((Data.Aeson..=) "tokenization_method" (postCustomersCustomerCardsIdResponseBody200TokenizationMethod obj) GHC.Base.<> ((Data.Aeson..=) "type" (postCustomersCustomerCardsIdResponseBody200Type obj) GHC.Base.<> ((Data.Aeson..=) "usage" (postCustomersCustomerCardsIdResponseBody200Usage obj) GHC.Base.<> (Data.Aeson..=) "wechat" (postCustomersCustomerCardsIdResponseBody200Wechat obj))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerCardsIdResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerCardsIdResponseBody200" (\obj -> (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((GHC.Base.pure PostCustomersCustomerCardsIdResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ach_credit_transfer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ach_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "alipay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "available_payout_methods")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bancontact")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "brand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card_present")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "client_secret")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "code_verification")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_for_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dynamic_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "eps")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "funding")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "giropay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ideal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "klarna")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "multibanco")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owner")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "p24")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "receiver")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recipient")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "redirect")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sepa_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sofort")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source_order")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "three_d_secure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tokenization_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "usage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "wechat"))
