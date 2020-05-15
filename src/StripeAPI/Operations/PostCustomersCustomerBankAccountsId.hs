{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostCustomersCustomerBankAccountsId where

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
-- POST /v1/customers/{customer}/bank_accounts/{id}
postCustomersCustomerBankAccountsId :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                     StripeAPI.Common.SecurityScheme s) =>
                                       StripeAPI.Common.Configuration s ->
                                       GHC.Base.String ->
                                       GHC.Base.String ->
                                       PostCustomersCustomerBankAccountsIdRequestBody ->
                                       m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                             (Network.HTTP.Client.Types.Response PostCustomersCustomerBankAccountsIdResponse))
postCustomersCustomerBankAccountsId config
                                    customer
                                    id
                                    body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerBankAccountsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerBankAccountsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           PostCustomersCustomerBankAccountsIdResponseBody200)
                                                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerBankAccountsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/bank_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersCustomerBankAccountsIdRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                        StripeAPI.Common.SecurityScheme s) =>
                                          StripeAPI.Common.Configuration s ->
                                          GHC.Base.String ->
                                          GHC.Base.String ->
                                          PostCustomersCustomerBankAccountsIdRequestBody ->
                                          m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerBankAccountsIdRaw config
                                       customer
                                       id
                                       body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/bank_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersCustomerBankAccountsIdM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                      StripeAPI.Common.SecurityScheme s) =>
                                        GHC.Base.String ->
                                        GHC.Base.String ->
                                        PostCustomersCustomerBankAccountsIdRequestBody ->
                                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                           m
                                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                               (Network.HTTP.Client.Types.Response PostCustomersCustomerBankAccountsIdResponse))
postCustomersCustomerBankAccountsIdM customer
                                     id
                                     body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerBankAccountsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerBankAccountsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            PostCustomersCustomerBankAccountsIdResponseBody200)
                                                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerBankAccountsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/bank_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersCustomerBankAccountsIdRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                         StripeAPI.Common.SecurityScheme s) =>
                                           GHC.Base.String ->
                                           GHC.Base.String ->
                                           PostCustomersCustomerBankAccountsIdRequestBody ->
                                           Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                              m
                                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerBankAccountsIdRawM customer
                                        id
                                        body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/bank_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostCustomersCustomerBankAccountsIdRequestBody
    = PostCustomersCustomerBankAccountsIdRequestBody {postCustomersCustomerBankAccountsIdRequestBodyAccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postCustomersCustomerBankAccountsIdRequestBodyAccountHolderType :: (GHC.Maybe.Maybe PostCustomersCustomerBankAccountsIdRequestBodyAccountHolderType'),
                                                      postCustomersCustomerBankAccountsIdRequestBodyAddressCity :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postCustomersCustomerBankAccountsIdRequestBodyAddressCountry :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postCustomersCustomerBankAccountsIdRequestBodyAddressLine1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postCustomersCustomerBankAccountsIdRequestBodyAddressLine2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postCustomersCustomerBankAccountsIdRequestBodyAddressState :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postCustomersCustomerBankAccountsIdRequestBodyAddressZip :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postCustomersCustomerBankAccountsIdRequestBodyExpMonth :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postCustomersCustomerBankAccountsIdRequestBodyExpYear :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postCustomersCustomerBankAccountsIdRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                                      postCustomersCustomerBankAccountsIdRequestBodyMetadata :: (GHC.Maybe.Maybe PostCustomersCustomerBankAccountsIdRequestBodyMetadata'),
                                                      postCustomersCustomerBankAccountsIdRequestBodyName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postCustomersCustomerBankAccountsIdRequestBodyOwner :: (GHC.Maybe.Maybe PostCustomersCustomerBankAccountsIdRequestBodyOwner')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerBankAccountsIdRequestBodyAccountHolderType'
    = PostCustomersCustomerBankAccountsIdRequestBodyAccountHolderType'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerBankAccountsIdRequestBodyAccountHolderType'EnumTyped GHC.Base.String
    | PostCustomersCustomerBankAccountsIdRequestBodyAccountHolderType'EnumStringCompany
    | PostCustomersCustomerBankAccountsIdRequestBodyAccountHolderType'EnumStringIndividual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerBankAccountsIdRequestBodyAccountHolderType'
    where toJSON (PostCustomersCustomerBankAccountsIdRequestBodyAccountHolderType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerBankAccountsIdRequestBodyAccountHolderType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerBankAccountsIdRequestBodyAccountHolderType'EnumStringCompany) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company"
          toJSON (PostCustomersCustomerBankAccountsIdRequestBodyAccountHolderType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
instance Data.Aeson.FromJSON PostCustomersCustomerBankAccountsIdRequestBodyAccountHolderType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company")
                                          then PostCustomersCustomerBankAccountsIdRequestBodyAccountHolderType'EnumStringCompany
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                then PostCustomersCustomerBankAccountsIdRequestBodyAccountHolderType'EnumStringIndividual
                                                else PostCustomersCustomerBankAccountsIdRequestBodyAccountHolderType'EnumOther val)
data PostCustomersCustomerBankAccountsIdRequestBodyMetadata'
    = PostCustomersCustomerBankAccountsIdRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerBankAccountsIdRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerBankAccountsIdRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerBankAccountsIdRequestBodyMetadata'" (\obj -> GHC.Base.pure PostCustomersCustomerBankAccountsIdRequestBodyMetadata')
data PostCustomersCustomerBankAccountsIdRequestBodyOwner'
    = PostCustomersCustomerBankAccountsIdRequestBodyOwner' {postCustomersCustomerBankAccountsIdRequestBodyOwner'Address :: (GHC.Maybe.Maybe PostCustomersCustomerBankAccountsIdRequestBodyOwner'Address'),
                                                            postCustomersCustomerBankAccountsIdRequestBodyOwner'Email :: (GHC.Maybe.Maybe GHC.Base.String),
                                                            postCustomersCustomerBankAccountsIdRequestBodyOwner'Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                                            postCustomersCustomerBankAccountsIdRequestBodyOwner'Phone :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerBankAccountsIdRequestBodyOwner'Address'
    = PostCustomersCustomerBankAccountsIdRequestBodyOwner'Address' {postCustomersCustomerBankAccountsIdRequestBodyOwner'Address'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                    postCustomersCustomerBankAccountsIdRequestBodyOwner'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                    postCustomersCustomerBankAccountsIdRequestBodyOwner'Address'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                    postCustomersCustomerBankAccountsIdRequestBodyOwner'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                    postCustomersCustomerBankAccountsIdRequestBodyOwner'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                    postCustomersCustomerBankAccountsIdRequestBodyOwner'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerBankAccountsIdRequestBodyOwner'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postCustomersCustomerBankAccountsIdRequestBodyOwner'Address'City obj) : (Data.Aeson..=) "country" (postCustomersCustomerBankAccountsIdRequestBodyOwner'Address'Country obj) : (Data.Aeson..=) "line1" (postCustomersCustomerBankAccountsIdRequestBodyOwner'Address'Line1 obj) : (Data.Aeson..=) "line2" (postCustomersCustomerBankAccountsIdRequestBodyOwner'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postCustomersCustomerBankAccountsIdRequestBodyOwner'Address'PostalCode obj) : (Data.Aeson..=) "state" (postCustomersCustomerBankAccountsIdRequestBodyOwner'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postCustomersCustomerBankAccountsIdRequestBodyOwner'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postCustomersCustomerBankAccountsIdRequestBodyOwner'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postCustomersCustomerBankAccountsIdRequestBodyOwner'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postCustomersCustomerBankAccountsIdRequestBodyOwner'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postCustomersCustomerBankAccountsIdRequestBodyOwner'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postCustomersCustomerBankAccountsIdRequestBodyOwner'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerBankAccountsIdRequestBodyOwner'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerBankAccountsIdRequestBodyOwner'Address'" (\obj -> (((((GHC.Base.pure PostCustomersCustomerBankAccountsIdRequestBodyOwner'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
instance Data.Aeson.ToJSON PostCustomersCustomerBankAccountsIdRequestBodyOwner'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postCustomersCustomerBankAccountsIdRequestBodyOwner'Address obj) : (Data.Aeson..=) "email" (postCustomersCustomerBankAccountsIdRequestBodyOwner'Email obj) : (Data.Aeson..=) "name" (postCustomersCustomerBankAccountsIdRequestBodyOwner'Name obj) : (Data.Aeson..=) "phone" (postCustomersCustomerBankAccountsIdRequestBodyOwner'Phone obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postCustomersCustomerBankAccountsIdRequestBodyOwner'Address obj) GHC.Base.<> ((Data.Aeson..=) "email" (postCustomersCustomerBankAccountsIdRequestBodyOwner'Email obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCustomersCustomerBankAccountsIdRequestBodyOwner'Name obj) GHC.Base.<> (Data.Aeson..=) "phone" (postCustomersCustomerBankAccountsIdRequestBodyOwner'Phone obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerBankAccountsIdRequestBodyOwner'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerBankAccountsIdRequestBodyOwner'" (\obj -> (((GHC.Base.pure PostCustomersCustomerBankAccountsIdRequestBodyOwner' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone"))
instance Data.Aeson.ToJSON PostCustomersCustomerBankAccountsIdRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_holder_name" (postCustomersCustomerBankAccountsIdRequestBodyAccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (postCustomersCustomerBankAccountsIdRequestBodyAccountHolderType obj) : (Data.Aeson..=) "address_city" (postCustomersCustomerBankAccountsIdRequestBodyAddressCity obj) : (Data.Aeson..=) "address_country" (postCustomersCustomerBankAccountsIdRequestBodyAddressCountry obj) : (Data.Aeson..=) "address_line1" (postCustomersCustomerBankAccountsIdRequestBodyAddressLine1 obj) : (Data.Aeson..=) "address_line2" (postCustomersCustomerBankAccountsIdRequestBodyAddressLine2 obj) : (Data.Aeson..=) "address_state" (postCustomersCustomerBankAccountsIdRequestBodyAddressState obj) : (Data.Aeson..=) "address_zip" (postCustomersCustomerBankAccountsIdRequestBodyAddressZip obj) : (Data.Aeson..=) "exp_month" (postCustomersCustomerBankAccountsIdRequestBodyExpMonth obj) : (Data.Aeson..=) "exp_year" (postCustomersCustomerBankAccountsIdRequestBodyExpYear obj) : (Data.Aeson..=) "expand" (postCustomersCustomerBankAccountsIdRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postCustomersCustomerBankAccountsIdRequestBodyMetadata obj) : (Data.Aeson..=) "name" (postCustomersCustomerBankAccountsIdRequestBodyName obj) : (Data.Aeson..=) "owner" (postCustomersCustomerBankAccountsIdRequestBodyOwner obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_holder_name" (postCustomersCustomerBankAccountsIdRequestBodyAccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (postCustomersCustomerBankAccountsIdRequestBodyAccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "address_city" (postCustomersCustomerBankAccountsIdRequestBodyAddressCity obj) GHC.Base.<> ((Data.Aeson..=) "address_country" (postCustomersCustomerBankAccountsIdRequestBodyAddressCountry obj) GHC.Base.<> ((Data.Aeson..=) "address_line1" (postCustomersCustomerBankAccountsIdRequestBodyAddressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "address_line2" (postCustomersCustomerBankAccountsIdRequestBodyAddressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "address_state" (postCustomersCustomerBankAccountsIdRequestBodyAddressState obj) GHC.Base.<> ((Data.Aeson..=) "address_zip" (postCustomersCustomerBankAccountsIdRequestBodyAddressZip obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (postCustomersCustomerBankAccountsIdRequestBodyExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (postCustomersCustomerBankAccountsIdRequestBodyExpYear obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postCustomersCustomerBankAccountsIdRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCustomersCustomerBankAccountsIdRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCustomersCustomerBankAccountsIdRequestBodyName obj) GHC.Base.<> (Data.Aeson..=) "owner" (postCustomersCustomerBankAccountsIdRequestBodyOwner obj))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerBankAccountsIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerBankAccountsIdRequestBody" (\obj -> (((((((((((((GHC.Base.pure PostCustomersCustomerBankAccountsIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owner"))

data PostCustomersCustomerBankAccountsIdResponse
    = PostCustomersCustomerBankAccountsIdResponseError GHC.Base.String
    | PostCustomersCustomerBankAccountsIdResponse200 PostCustomersCustomerBankAccountsIdResponseBody200
    | PostCustomersCustomerBankAccountsIdResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerBankAccountsIdResponseBody200
    = PostCustomersCustomerBankAccountsIdResponseBody200 {postCustomersCustomerBankAccountsIdResponseBody200Account :: (GHC.Maybe.Maybe PostCustomersCustomerBankAccountsIdResponseBody200Account'Variants),
                                                          postCustomersCustomerBankAccountsIdResponseBody200AccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerBankAccountsIdResponseBody200AccountHolderType :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerBankAccountsIdResponseBody200AchCreditTransfer :: (GHC.Maybe.Maybe SourceTypeAchCreditTransfer),
                                                          postCustomersCustomerBankAccountsIdResponseBody200AchDebit :: (GHC.Maybe.Maybe SourceTypeAchDebit),
                                                          postCustomersCustomerBankAccountsIdResponseBody200AddressCity :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerBankAccountsIdResponseBody200AddressCountry :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerBankAccountsIdResponseBody200AddressLine1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerBankAccountsIdResponseBody200AddressLine1Check :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerBankAccountsIdResponseBody200AddressLine2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerBankAccountsIdResponseBody200AddressState :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerBankAccountsIdResponseBody200AddressZip :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerBankAccountsIdResponseBody200AddressZipCheck :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Alipay :: (GHC.Maybe.Maybe SourceTypeAlipay),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Amount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                          postCustomersCustomerBankAccountsIdResponseBody200AvailablePayoutMethods :: (GHC.Maybe.Maybe ([] PostCustomersCustomerBankAccountsIdResponseBody200AvailablePayoutMethods')),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Bancontact :: (GHC.Maybe.Maybe SourceTypeBancontact),
                                                          postCustomersCustomerBankAccountsIdResponseBody200BankName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Brand :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Card :: (GHC.Maybe.Maybe SourceTypeCard),
                                                          postCustomersCustomerBankAccountsIdResponseBody200CardPresent :: (GHC.Maybe.Maybe SourceTypeCardPresent),
                                                          postCustomersCustomerBankAccountsIdResponseBody200ClientSecret :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerBankAccountsIdResponseBody200CodeVerification :: (GHC.Maybe.Maybe SourceCodeVerificationFlow),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Created :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Currency :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Customer :: (GHC.Maybe.Maybe PostCustomersCustomerBankAccountsIdResponseBody200Customer'Variants),
                                                          postCustomersCustomerBankAccountsIdResponseBody200CvcCheck :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerBankAccountsIdResponseBody200DefaultForCurrency :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                          postCustomersCustomerBankAccountsIdResponseBody200DynamicLast4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Eps :: (GHC.Maybe.Maybe SourceTypeEps),
                                                          postCustomersCustomerBankAccountsIdResponseBody200ExpMonth :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                          postCustomersCustomerBankAccountsIdResponseBody200ExpYear :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Fingerprint :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Flow :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Funding :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Giropay :: (GHC.Maybe.Maybe SourceTypeGiropay),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Id :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Ideal :: (GHC.Maybe.Maybe SourceTypeIdeal),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Klarna :: (GHC.Maybe.Maybe SourceTypeKlarna),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Last4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Livemode :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Metadata :: (GHC.Maybe.Maybe PostCustomersCustomerBankAccountsIdResponseBody200Metadata'),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Multibanco :: (GHC.Maybe.Maybe SourceTypeMultibanco),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Object :: (GHC.Maybe.Maybe PostCustomersCustomerBankAccountsIdResponseBody200Object'),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Owner :: (GHC.Maybe.Maybe PostCustomersCustomerBankAccountsIdResponseBody200Owner'),
                                                          postCustomersCustomerBankAccountsIdResponseBody200P24 :: (GHC.Maybe.Maybe SourceTypeP24),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Receiver :: (GHC.Maybe.Maybe SourceReceiverFlow),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Recipient :: (GHC.Maybe.Maybe PostCustomersCustomerBankAccountsIdResponseBody200Recipient'Variants),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Redirect :: (GHC.Maybe.Maybe SourceRedirectFlow),
                                                          postCustomersCustomerBankAccountsIdResponseBody200RoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerBankAccountsIdResponseBody200SepaDebit :: (GHC.Maybe.Maybe SourceTypeSepaDebit),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Sofort :: (GHC.Maybe.Maybe SourceTypeSofort),
                                                          postCustomersCustomerBankAccountsIdResponseBody200SourceOrder :: (GHC.Maybe.Maybe SourceOrder),
                                                          postCustomersCustomerBankAccountsIdResponseBody200StatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Status :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerBankAccountsIdResponseBody200ThreeDSecure :: (GHC.Maybe.Maybe SourceTypeThreeDSecure),
                                                          postCustomersCustomerBankAccountsIdResponseBody200TokenizationMethod :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Type :: (GHC.Maybe.Maybe PostCustomersCustomerBankAccountsIdResponseBody200Type'),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Usage :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerBankAccountsIdResponseBody200Wechat :: (GHC.Maybe.Maybe SourceTypeWechat)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerBankAccountsIdResponseBody200Account'Variants
    = PostCustomersCustomerBankAccountsIdResponseBody200Account'Variant1 Account
    | PostCustomersCustomerBankAccountsIdResponseBody200Account'Variant2 GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerBankAccountsIdResponseBody200Account'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerBankAccountsIdResponseBody200Account'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersCustomerBankAccountsIdResponseBody200AvailablePayoutMethods'
    = PostCustomersCustomerBankAccountsIdResponseBody200AvailablePayoutMethods'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerBankAccountsIdResponseBody200AvailablePayoutMethods'EnumTyped GHC.Base.String
    | PostCustomersCustomerBankAccountsIdResponseBody200AvailablePayoutMethods'EnumStringInstant
    | PostCustomersCustomerBankAccountsIdResponseBody200AvailablePayoutMethods'EnumStringStandard
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerBankAccountsIdResponseBody200AvailablePayoutMethods'
    where toJSON (PostCustomersCustomerBankAccountsIdResponseBody200AvailablePayoutMethods'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerBankAccountsIdResponseBody200AvailablePayoutMethods'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerBankAccountsIdResponseBody200AvailablePayoutMethods'EnumStringInstant) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "instant"
          toJSON (PostCustomersCustomerBankAccountsIdResponseBody200AvailablePayoutMethods'EnumStringStandard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard"
instance Data.Aeson.FromJSON PostCustomersCustomerBankAccountsIdResponseBody200AvailablePayoutMethods'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "instant")
                                          then PostCustomersCustomerBankAccountsIdResponseBody200AvailablePayoutMethods'EnumStringInstant
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard")
                                                then PostCustomersCustomerBankAccountsIdResponseBody200AvailablePayoutMethods'EnumStringStandard
                                                else PostCustomersCustomerBankAccountsIdResponseBody200AvailablePayoutMethods'EnumOther val)
data PostCustomersCustomerBankAccountsIdResponseBody200Customer'Variants
    = PostCustomersCustomerBankAccountsIdResponseBody200Customer'Variant1 Customer
    | PostCustomersCustomerBankAccountsIdResponseBody200Customer'Variant2 DeletedCustomer
    | PostCustomersCustomerBankAccountsIdResponseBody200Customer'Variant3 GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerBankAccountsIdResponseBody200Customer'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerBankAccountsIdResponseBody200Customer'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersCustomerBankAccountsIdResponseBody200Metadata'
    = PostCustomersCustomerBankAccountsIdResponseBody200Metadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerBankAccountsIdResponseBody200Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerBankAccountsIdResponseBody200Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerBankAccountsIdResponseBody200Metadata'" (\obj -> GHC.Base.pure PostCustomersCustomerBankAccountsIdResponseBody200Metadata')
data PostCustomersCustomerBankAccountsIdResponseBody200Object'
    = PostCustomersCustomerBankAccountsIdResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerBankAccountsIdResponseBody200Object'EnumTyped GHC.Base.String
    | PostCustomersCustomerBankAccountsIdResponseBody200Object'EnumStringBankAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerBankAccountsIdResponseBody200Object'
    where toJSON (PostCustomersCustomerBankAccountsIdResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerBankAccountsIdResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerBankAccountsIdResponseBody200Object'EnumStringBankAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account"
instance Data.Aeson.FromJSON PostCustomersCustomerBankAccountsIdResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account")
                                          then PostCustomersCustomerBankAccountsIdResponseBody200Object'EnumStringBankAccount
                                          else PostCustomersCustomerBankAccountsIdResponseBody200Object'EnumOther val)
data PostCustomersCustomerBankAccountsIdResponseBody200Owner'
    = PostCustomersCustomerBankAccountsIdResponseBody200Owner' {postCustomersCustomerBankAccountsIdResponseBody200Owner'Address :: (GHC.Maybe.Maybe PostCustomersCustomerBankAccountsIdResponseBody200Owner'Address'),
                                                                postCustomersCustomerBankAccountsIdResponseBody200Owner'Email :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                postCustomersCustomerBankAccountsIdResponseBody200Owner'Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                postCustomersCustomerBankAccountsIdResponseBody200Owner'Phone :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedAddress :: (GHC.Maybe.Maybe PostCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedAddress'),
                                                                postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedPhone :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerBankAccountsIdResponseBody200Owner'Address'
    = PostCustomersCustomerBankAccountsIdResponseBody200Owner'Address' {postCustomersCustomerBankAccountsIdResponseBody200Owner'Address'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                        postCustomersCustomerBankAccountsIdResponseBody200Owner'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                        postCustomersCustomerBankAccountsIdResponseBody200Owner'Address'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                        postCustomersCustomerBankAccountsIdResponseBody200Owner'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                        postCustomersCustomerBankAccountsIdResponseBody200Owner'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                        postCustomersCustomerBankAccountsIdResponseBody200Owner'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerBankAccountsIdResponseBody200Owner'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postCustomersCustomerBankAccountsIdResponseBody200Owner'Address'City obj) : (Data.Aeson..=) "country" (postCustomersCustomerBankAccountsIdResponseBody200Owner'Address'Country obj) : (Data.Aeson..=) "line1" (postCustomersCustomerBankAccountsIdResponseBody200Owner'Address'Line1 obj) : (Data.Aeson..=) "line2" (postCustomersCustomerBankAccountsIdResponseBody200Owner'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postCustomersCustomerBankAccountsIdResponseBody200Owner'Address'PostalCode obj) : (Data.Aeson..=) "state" (postCustomersCustomerBankAccountsIdResponseBody200Owner'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postCustomersCustomerBankAccountsIdResponseBody200Owner'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postCustomersCustomerBankAccountsIdResponseBody200Owner'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postCustomersCustomerBankAccountsIdResponseBody200Owner'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postCustomersCustomerBankAccountsIdResponseBody200Owner'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postCustomersCustomerBankAccountsIdResponseBody200Owner'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postCustomersCustomerBankAccountsIdResponseBody200Owner'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerBankAccountsIdResponseBody200Owner'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerBankAccountsIdResponseBody200Owner'Address'" (\obj -> (((((GHC.Base.pure PostCustomersCustomerBankAccountsIdResponseBody200Owner'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
data PostCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedAddress'
    = PostCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedAddress' {postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedAddress'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                                postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedAddress'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                                postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedAddress'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                                postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedAddress'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                                postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedAddress'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                                postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedAddress'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedAddress'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedAddress'City obj) : (Data.Aeson..=) "country" (postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedAddress'Country obj) : (Data.Aeson..=) "line1" (postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedAddress'Line1 obj) : (Data.Aeson..=) "line2" (postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedAddress'Line2 obj) : (Data.Aeson..=) "postal_code" (postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedAddress'PostalCode obj) : (Data.Aeson..=) "state" (postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedAddress'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedAddress'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedAddress'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedAddress'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedAddress'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedAddress'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedAddress'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedAddress'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedAddress'" (\obj -> (((((GHC.Base.pure PostCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
instance Data.Aeson.ToJSON PostCustomersCustomerBankAccountsIdResponseBody200Owner'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postCustomersCustomerBankAccountsIdResponseBody200Owner'Address obj) : (Data.Aeson..=) "email" (postCustomersCustomerBankAccountsIdResponseBody200Owner'Email obj) : (Data.Aeson..=) "name" (postCustomersCustomerBankAccountsIdResponseBody200Owner'Name obj) : (Data.Aeson..=) "phone" (postCustomersCustomerBankAccountsIdResponseBody200Owner'Phone obj) : (Data.Aeson..=) "verified_address" (postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedAddress obj) : (Data.Aeson..=) "verified_email" (postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedEmail obj) : (Data.Aeson..=) "verified_name" (postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedName obj) : (Data.Aeson..=) "verified_phone" (postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedPhone obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postCustomersCustomerBankAccountsIdResponseBody200Owner'Address obj) GHC.Base.<> ((Data.Aeson..=) "email" (postCustomersCustomerBankAccountsIdResponseBody200Owner'Email obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCustomersCustomerBankAccountsIdResponseBody200Owner'Name obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postCustomersCustomerBankAccountsIdResponseBody200Owner'Phone obj) GHC.Base.<> ((Data.Aeson..=) "verified_address" (postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedAddress obj) GHC.Base.<> ((Data.Aeson..=) "verified_email" (postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedEmail obj) GHC.Base.<> ((Data.Aeson..=) "verified_name" (postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedName obj) GHC.Base.<> (Data.Aeson..=) "verified_phone" (postCustomersCustomerBankAccountsIdResponseBody200Owner'VerifiedPhone obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerBankAccountsIdResponseBody200Owner'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerBankAccountsIdResponseBody200Owner'" (\obj -> (((((((GHC.Base.pure PostCustomersCustomerBankAccountsIdResponseBody200Owner' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_phone"))
data PostCustomersCustomerBankAccountsIdResponseBody200Recipient'Variants
    = PostCustomersCustomerBankAccountsIdResponseBody200Recipient'Variant1 Recipient
    | PostCustomersCustomerBankAccountsIdResponseBody200Recipient'Variant2 GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerBankAccountsIdResponseBody200Recipient'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerBankAccountsIdResponseBody200Recipient'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersCustomerBankAccountsIdResponseBody200Type'
    = PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumTyped GHC.Base.String
    | PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringAchCreditTransfer
    | PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringAchDebit
    | PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringAlipay
    | PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringBancontact
    | PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringCard
    | PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringCardPresent
    | PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringEps
    | PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringGiropay
    | PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringIdeal
    | PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringKlarna
    | PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringMultibanco
    | PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringP24
    | PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringSepaDebit
    | PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringSofort
    | PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringThreeDSecure
    | PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringWechat
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerBankAccountsIdResponseBody200Type'
    where toJSON (PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringAchCreditTransfer) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ach_credit_transfer"
          toJSON (PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringAchDebit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ach_debit"
          toJSON (PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringAlipay) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alipay"
          toJSON (PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringBancontact) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bancontact"
          toJSON (PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringCard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card"
          toJSON (PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringCardPresent) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_present"
          toJSON (PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringEps) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "eps"
          toJSON (PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringGiropay) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "giropay"
          toJSON (PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringIdeal) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ideal"
          toJSON (PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringKlarna) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "klarna"
          toJSON (PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringMultibanco) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "multibanco"
          toJSON (PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringP24) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "p24"
          toJSON (PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringSepaDebit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sepa_debit"
          toJSON (PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringSofort) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sofort"
          toJSON (PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringThreeDSecure) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "three_d_secure"
          toJSON (PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringWechat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "wechat"
instance Data.Aeson.FromJSON PostCustomersCustomerBankAccountsIdResponseBody200Type'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ach_credit_transfer")
                                          then PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringAchCreditTransfer
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ach_debit")
                                                then PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringAchDebit
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alipay")
                                                      then PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringAlipay
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bancontact")
                                                            then PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringBancontact
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card")
                                                                  then PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringCard
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_present")
                                                                        then PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringCardPresent
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "eps")
                                                                              then PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringEps
                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "giropay")
                                                                                    then PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringGiropay
                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ideal")
                                                                                          then PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringIdeal
                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "klarna")
                                                                                                then PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringKlarna
                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "multibanco")
                                                                                                      then PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringMultibanco
                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "p24")
                                                                                                            then PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringP24
                                                                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sepa_debit")
                                                                                                                  then PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringSepaDebit
                                                                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sofort")
                                                                                                                        then PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringSofort
                                                                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "three_d_secure")
                                                                                                                              then PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringThreeDSecure
                                                                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "wechat")
                                                                                                                                    then PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumStringWechat
                                                                                                                                    else PostCustomersCustomerBankAccountsIdResponseBody200Type'EnumOther val)
instance Data.Aeson.ToJSON PostCustomersCustomerBankAccountsIdResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account" (postCustomersCustomerBankAccountsIdResponseBody200Account obj) : (Data.Aeson..=) "account_holder_name" (postCustomersCustomerBankAccountsIdResponseBody200AccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (postCustomersCustomerBankAccountsIdResponseBody200AccountHolderType obj) : (Data.Aeson..=) "ach_credit_transfer" (postCustomersCustomerBankAccountsIdResponseBody200AchCreditTransfer obj) : (Data.Aeson..=) "ach_debit" (postCustomersCustomerBankAccountsIdResponseBody200AchDebit obj) : (Data.Aeson..=) "address_city" (postCustomersCustomerBankAccountsIdResponseBody200AddressCity obj) : (Data.Aeson..=) "address_country" (postCustomersCustomerBankAccountsIdResponseBody200AddressCountry obj) : (Data.Aeson..=) "address_line1" (postCustomersCustomerBankAccountsIdResponseBody200AddressLine1 obj) : (Data.Aeson..=) "address_line1_check" (postCustomersCustomerBankAccountsIdResponseBody200AddressLine1Check obj) : (Data.Aeson..=) "address_line2" (postCustomersCustomerBankAccountsIdResponseBody200AddressLine2 obj) : (Data.Aeson..=) "address_state" (postCustomersCustomerBankAccountsIdResponseBody200AddressState obj) : (Data.Aeson..=) "address_zip" (postCustomersCustomerBankAccountsIdResponseBody200AddressZip obj) : (Data.Aeson..=) "address_zip_check" (postCustomersCustomerBankAccountsIdResponseBody200AddressZipCheck obj) : (Data.Aeson..=) "alipay" (postCustomersCustomerBankAccountsIdResponseBody200Alipay obj) : (Data.Aeson..=) "amount" (postCustomersCustomerBankAccountsIdResponseBody200Amount obj) : (Data.Aeson..=) "available_payout_methods" (postCustomersCustomerBankAccountsIdResponseBody200AvailablePayoutMethods obj) : (Data.Aeson..=) "bancontact" (postCustomersCustomerBankAccountsIdResponseBody200Bancontact obj) : (Data.Aeson..=) "bank_name" (postCustomersCustomerBankAccountsIdResponseBody200BankName obj) : (Data.Aeson..=) "brand" (postCustomersCustomerBankAccountsIdResponseBody200Brand obj) : (Data.Aeson..=) "card" (postCustomersCustomerBankAccountsIdResponseBody200Card obj) : (Data.Aeson..=) "card_present" (postCustomersCustomerBankAccountsIdResponseBody200CardPresent obj) : (Data.Aeson..=) "client_secret" (postCustomersCustomerBankAccountsIdResponseBody200ClientSecret obj) : (Data.Aeson..=) "code_verification" (postCustomersCustomerBankAccountsIdResponseBody200CodeVerification obj) : (Data.Aeson..=) "country" (postCustomersCustomerBankAccountsIdResponseBody200Country obj) : (Data.Aeson..=) "created" (postCustomersCustomerBankAccountsIdResponseBody200Created obj) : (Data.Aeson..=) "currency" (postCustomersCustomerBankAccountsIdResponseBody200Currency obj) : (Data.Aeson..=) "customer" (postCustomersCustomerBankAccountsIdResponseBody200Customer obj) : (Data.Aeson..=) "cvc_check" (postCustomersCustomerBankAccountsIdResponseBody200CvcCheck obj) : (Data.Aeson..=) "default_for_currency" (postCustomersCustomerBankAccountsIdResponseBody200DefaultForCurrency obj) : (Data.Aeson..=) "dynamic_last4" (postCustomersCustomerBankAccountsIdResponseBody200DynamicLast4 obj) : (Data.Aeson..=) "eps" (postCustomersCustomerBankAccountsIdResponseBody200Eps obj) : (Data.Aeson..=) "exp_month" (postCustomersCustomerBankAccountsIdResponseBody200ExpMonth obj) : (Data.Aeson..=) "exp_year" (postCustomersCustomerBankAccountsIdResponseBody200ExpYear obj) : (Data.Aeson..=) "fingerprint" (postCustomersCustomerBankAccountsIdResponseBody200Fingerprint obj) : (Data.Aeson..=) "flow" (postCustomersCustomerBankAccountsIdResponseBody200Flow obj) : (Data.Aeson..=) "funding" (postCustomersCustomerBankAccountsIdResponseBody200Funding obj) : (Data.Aeson..=) "giropay" (postCustomersCustomerBankAccountsIdResponseBody200Giropay obj) : (Data.Aeson..=) "id" (postCustomersCustomerBankAccountsIdResponseBody200Id obj) : (Data.Aeson..=) "ideal" (postCustomersCustomerBankAccountsIdResponseBody200Ideal obj) : (Data.Aeson..=) "klarna" (postCustomersCustomerBankAccountsIdResponseBody200Klarna obj) : (Data.Aeson..=) "last4" (postCustomersCustomerBankAccountsIdResponseBody200Last4 obj) : (Data.Aeson..=) "livemode" (postCustomersCustomerBankAccountsIdResponseBody200Livemode obj) : (Data.Aeson..=) "metadata" (postCustomersCustomerBankAccountsIdResponseBody200Metadata obj) : (Data.Aeson..=) "multibanco" (postCustomersCustomerBankAccountsIdResponseBody200Multibanco obj) : (Data.Aeson..=) "name" (postCustomersCustomerBankAccountsIdResponseBody200Name obj) : (Data.Aeson..=) "object" (postCustomersCustomerBankAccountsIdResponseBody200Object obj) : (Data.Aeson..=) "owner" (postCustomersCustomerBankAccountsIdResponseBody200Owner obj) : (Data.Aeson..=) "p24" (postCustomersCustomerBankAccountsIdResponseBody200P24 obj) : (Data.Aeson..=) "receiver" (postCustomersCustomerBankAccountsIdResponseBody200Receiver obj) : (Data.Aeson..=) "recipient" (postCustomersCustomerBankAccountsIdResponseBody200Recipient obj) : (Data.Aeson..=) "redirect" (postCustomersCustomerBankAccountsIdResponseBody200Redirect obj) : (Data.Aeson..=) "routing_number" (postCustomersCustomerBankAccountsIdResponseBody200RoutingNumber obj) : (Data.Aeson..=) "sepa_debit" (postCustomersCustomerBankAccountsIdResponseBody200SepaDebit obj) : (Data.Aeson..=) "sofort" (postCustomersCustomerBankAccountsIdResponseBody200Sofort obj) : (Data.Aeson..=) "source_order" (postCustomersCustomerBankAccountsIdResponseBody200SourceOrder obj) : (Data.Aeson..=) "statement_descriptor" (postCustomersCustomerBankAccountsIdResponseBody200StatementDescriptor obj) : (Data.Aeson..=) "status" (postCustomersCustomerBankAccountsIdResponseBody200Status obj) : (Data.Aeson..=) "three_d_secure" (postCustomersCustomerBankAccountsIdResponseBody200ThreeDSecure obj) : (Data.Aeson..=) "tokenization_method" (postCustomersCustomerBankAccountsIdResponseBody200TokenizationMethod obj) : (Data.Aeson..=) "type" (postCustomersCustomerBankAccountsIdResponseBody200Type obj) : (Data.Aeson..=) "usage" (postCustomersCustomerBankAccountsIdResponseBody200Usage obj) : (Data.Aeson..=) "wechat" (postCustomersCustomerBankAccountsIdResponseBody200Wechat obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account" (postCustomersCustomerBankAccountsIdResponseBody200Account obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_name" (postCustomersCustomerBankAccountsIdResponseBody200AccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (postCustomersCustomerBankAccountsIdResponseBody200AccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "ach_credit_transfer" (postCustomersCustomerBankAccountsIdResponseBody200AchCreditTransfer obj) GHC.Base.<> ((Data.Aeson..=) "ach_debit" (postCustomersCustomerBankAccountsIdResponseBody200AchDebit obj) GHC.Base.<> ((Data.Aeson..=) "address_city" (postCustomersCustomerBankAccountsIdResponseBody200AddressCity obj) GHC.Base.<> ((Data.Aeson..=) "address_country" (postCustomersCustomerBankAccountsIdResponseBody200AddressCountry obj) GHC.Base.<> ((Data.Aeson..=) "address_line1" (postCustomersCustomerBankAccountsIdResponseBody200AddressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "address_line1_check" (postCustomersCustomerBankAccountsIdResponseBody200AddressLine1Check obj) GHC.Base.<> ((Data.Aeson..=) "address_line2" (postCustomersCustomerBankAccountsIdResponseBody200AddressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "address_state" (postCustomersCustomerBankAccountsIdResponseBody200AddressState obj) GHC.Base.<> ((Data.Aeson..=) "address_zip" (postCustomersCustomerBankAccountsIdResponseBody200AddressZip obj) GHC.Base.<> ((Data.Aeson..=) "address_zip_check" (postCustomersCustomerBankAccountsIdResponseBody200AddressZipCheck obj) GHC.Base.<> ((Data.Aeson..=) "alipay" (postCustomersCustomerBankAccountsIdResponseBody200Alipay obj) GHC.Base.<> ((Data.Aeson..=) "amount" (postCustomersCustomerBankAccountsIdResponseBody200Amount obj) GHC.Base.<> ((Data.Aeson..=) "available_payout_methods" (postCustomersCustomerBankAccountsIdResponseBody200AvailablePayoutMethods obj) GHC.Base.<> ((Data.Aeson..=) "bancontact" (postCustomersCustomerBankAccountsIdResponseBody200Bancontact obj) GHC.Base.<> ((Data.Aeson..=) "bank_name" (postCustomersCustomerBankAccountsIdResponseBody200BankName obj) GHC.Base.<> ((Data.Aeson..=) "brand" (postCustomersCustomerBankAccountsIdResponseBody200Brand obj) GHC.Base.<> ((Data.Aeson..=) "card" (postCustomersCustomerBankAccountsIdResponseBody200Card obj) GHC.Base.<> ((Data.Aeson..=) "card_present" (postCustomersCustomerBankAccountsIdResponseBody200CardPresent obj) GHC.Base.<> ((Data.Aeson..=) "client_secret" (postCustomersCustomerBankAccountsIdResponseBody200ClientSecret obj) GHC.Base.<> ((Data.Aeson..=) "code_verification" (postCustomersCustomerBankAccountsIdResponseBody200CodeVerification obj) GHC.Base.<> ((Data.Aeson..=) "country" (postCustomersCustomerBankAccountsIdResponseBody200Country obj) GHC.Base.<> ((Data.Aeson..=) "created" (postCustomersCustomerBankAccountsIdResponseBody200Created obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postCustomersCustomerBankAccountsIdResponseBody200Currency obj) GHC.Base.<> ((Data.Aeson..=) "customer" (postCustomersCustomerBankAccountsIdResponseBody200Customer obj) GHC.Base.<> ((Data.Aeson..=) "cvc_check" (postCustomersCustomerBankAccountsIdResponseBody200CvcCheck obj) GHC.Base.<> ((Data.Aeson..=) "default_for_currency" (postCustomersCustomerBankAccountsIdResponseBody200DefaultForCurrency obj) GHC.Base.<> ((Data.Aeson..=) "dynamic_last4" (postCustomersCustomerBankAccountsIdResponseBody200DynamicLast4 obj) GHC.Base.<> ((Data.Aeson..=) "eps" (postCustomersCustomerBankAccountsIdResponseBody200Eps obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (postCustomersCustomerBankAccountsIdResponseBody200ExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (postCustomersCustomerBankAccountsIdResponseBody200ExpYear obj) GHC.Base.<> ((Data.Aeson..=) "fingerprint" (postCustomersCustomerBankAccountsIdResponseBody200Fingerprint obj) GHC.Base.<> ((Data.Aeson..=) "flow" (postCustomersCustomerBankAccountsIdResponseBody200Flow obj) GHC.Base.<> ((Data.Aeson..=) "funding" (postCustomersCustomerBankAccountsIdResponseBody200Funding obj) GHC.Base.<> ((Data.Aeson..=) "giropay" (postCustomersCustomerBankAccountsIdResponseBody200Giropay obj) GHC.Base.<> ((Data.Aeson..=) "id" (postCustomersCustomerBankAccountsIdResponseBody200Id obj) GHC.Base.<> ((Data.Aeson..=) "ideal" (postCustomersCustomerBankAccountsIdResponseBody200Ideal obj) GHC.Base.<> ((Data.Aeson..=) "klarna" (postCustomersCustomerBankAccountsIdResponseBody200Klarna obj) GHC.Base.<> ((Data.Aeson..=) "last4" (postCustomersCustomerBankAccountsIdResponseBody200Last4 obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (postCustomersCustomerBankAccountsIdResponseBody200Livemode obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCustomersCustomerBankAccountsIdResponseBody200Metadata obj) GHC.Base.<> ((Data.Aeson..=) "multibanco" (postCustomersCustomerBankAccountsIdResponseBody200Multibanco obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCustomersCustomerBankAccountsIdResponseBody200Name obj) GHC.Base.<> ((Data.Aeson..=) "object" (postCustomersCustomerBankAccountsIdResponseBody200Object obj) GHC.Base.<> ((Data.Aeson..=) "owner" (postCustomersCustomerBankAccountsIdResponseBody200Owner obj) GHC.Base.<> ((Data.Aeson..=) "p24" (postCustomersCustomerBankAccountsIdResponseBody200P24 obj) GHC.Base.<> ((Data.Aeson..=) "receiver" (postCustomersCustomerBankAccountsIdResponseBody200Receiver obj) GHC.Base.<> ((Data.Aeson..=) "recipient" (postCustomersCustomerBankAccountsIdResponseBody200Recipient obj) GHC.Base.<> ((Data.Aeson..=) "redirect" (postCustomersCustomerBankAccountsIdResponseBody200Redirect obj) GHC.Base.<> ((Data.Aeson..=) "routing_number" (postCustomersCustomerBankAccountsIdResponseBody200RoutingNumber obj) GHC.Base.<> ((Data.Aeson..=) "sepa_debit" (postCustomersCustomerBankAccountsIdResponseBody200SepaDebit obj) GHC.Base.<> ((Data.Aeson..=) "sofort" (postCustomersCustomerBankAccountsIdResponseBody200Sofort obj) GHC.Base.<> ((Data.Aeson..=) "source_order" (postCustomersCustomerBankAccountsIdResponseBody200SourceOrder obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor" (postCustomersCustomerBankAccountsIdResponseBody200StatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "status" (postCustomersCustomerBankAccountsIdResponseBody200Status obj) GHC.Base.<> ((Data.Aeson..=) "three_d_secure" (postCustomersCustomerBankAccountsIdResponseBody200ThreeDSecure obj) GHC.Base.<> ((Data.Aeson..=) "tokenization_method" (postCustomersCustomerBankAccountsIdResponseBody200TokenizationMethod obj) GHC.Base.<> ((Data.Aeson..=) "type" (postCustomersCustomerBankAccountsIdResponseBody200Type obj) GHC.Base.<> ((Data.Aeson..=) "usage" (postCustomersCustomerBankAccountsIdResponseBody200Usage obj) GHC.Base.<> (Data.Aeson..=) "wechat" (postCustomersCustomerBankAccountsIdResponseBody200Wechat obj))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerBankAccountsIdResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerBankAccountsIdResponseBody200" (\obj -> (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((GHC.Base.pure PostCustomersCustomerBankAccountsIdResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ach_credit_transfer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ach_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "alipay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "available_payout_methods")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bancontact")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "brand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card_present")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "client_secret")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "code_verification")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_for_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dynamic_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "eps")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "funding")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "giropay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ideal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "klarna")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "multibanco")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owner")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "p24")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "receiver")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recipient")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "redirect")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sepa_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sofort")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source_order")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "three_d_secure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tokenization_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "usage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "wechat"))
