{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.GetRecipientsId where

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
-- GET /v1/recipients/{id}
getRecipientsId :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                 StripeAPI.Common.SecurityScheme s) =>
                   StripeAPI.Common.Configuration s ->
                   GHC.Maybe.Maybe GHC.Base.String ->
                   GHC.Base.String ->
                   GetRecipientsIdRequestBody ->
                   m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                         (Network.HTTP.Client.Types.Response GetRecipientsIdResponse))
getRecipientsId config
                expand
                id
                body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetRecipientsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetRecipientsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                               GetRecipientsIdResponseBody200)
                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetRecipientsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                 Error)
                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/recipients/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
getRecipientsIdRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                    StripeAPI.Common.SecurityScheme s) =>
                      StripeAPI.Common.Configuration s ->
                      GHC.Maybe.Maybe GHC.Base.String ->
                      GHC.Base.String ->
                      GetRecipientsIdRequestBody ->
                      m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getRecipientsIdRaw config
                   expand
                   id
                   body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/recipients/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
getRecipientsIdM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                  StripeAPI.Common.SecurityScheme s) =>
                    GHC.Maybe.Maybe GHC.Base.String ->
                    GHC.Base.String ->
                    GetRecipientsIdRequestBody ->
                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                       m
                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                           (Network.HTTP.Client.Types.Response GetRecipientsIdResponse))
getRecipientsIdM expand
                 id
                 body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetRecipientsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetRecipientsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                GetRecipientsIdResponseBody200)
                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetRecipientsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/recipients/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
getRecipientsIdRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                     StripeAPI.Common.SecurityScheme s) =>
                       GHC.Maybe.Maybe GHC.Base.String ->
                       GHC.Base.String ->
                       GetRecipientsIdRequestBody ->
                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                          m
                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getRecipientsIdRawM expand
                    id
                    body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/recipients/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
data GetRecipientsIdRequestBody
    = GetRecipientsIdRequestBody {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetRecipientsIdRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetRecipientsIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetRecipientsIdRequestBody" (\obj -> GHC.Base.pure GetRecipientsIdRequestBody)

data GetRecipientsIdResponse
    = GetRecipientsIdResponseError GHC.Base.String
    | GetRecipientsIdResponse200 GetRecipientsIdResponseBody200
    | GetRecipientsIdResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetRecipientsIdResponseBody200
    = GetRecipientsIdResponseBody200 {getRecipientsIdResponseBody200ActiveAccount :: (GHC.Maybe.Maybe GetRecipientsIdResponseBody200ActiveAccount'),
                                      getRecipientsIdResponseBody200Cards :: (GHC.Maybe.Maybe GetRecipientsIdResponseBody200Cards'),
                                      getRecipientsIdResponseBody200Created :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                      getRecipientsIdResponseBody200DefaultCard :: (GHC.Maybe.Maybe GetRecipientsIdResponseBody200DefaultCard'Variants),
                                      getRecipientsIdResponseBody200Deleted :: (GHC.Maybe.Maybe GetRecipientsIdResponseBody200Deleted'),
                                      getRecipientsIdResponseBody200Description :: (GHC.Maybe.Maybe GHC.Base.String),
                                      getRecipientsIdResponseBody200Email :: (GHC.Maybe.Maybe GHC.Base.String),
                                      getRecipientsIdResponseBody200Id :: (GHC.Maybe.Maybe GHC.Base.String),
                                      getRecipientsIdResponseBody200Livemode :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                      getRecipientsIdResponseBody200Metadata :: (GHC.Maybe.Maybe GetRecipientsIdResponseBody200Metadata'),
                                      getRecipientsIdResponseBody200MigratedTo :: (GHC.Maybe.Maybe GetRecipientsIdResponseBody200MigratedTo'Variants),
                                      getRecipientsIdResponseBody200Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                      getRecipientsIdResponseBody200Object :: (GHC.Maybe.Maybe GetRecipientsIdResponseBody200Object'),
                                      getRecipientsIdResponseBody200RolledBackFrom :: (GHC.Maybe.Maybe GetRecipientsIdResponseBody200RolledBackFrom'Variants),
                                      getRecipientsIdResponseBody200Type :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetRecipientsIdResponseBody200ActiveAccount'
    = GetRecipientsIdResponseBody200ActiveAccount' {getRecipientsIdResponseBody200ActiveAccount'Account :: (GHC.Maybe.Maybe GetRecipientsIdResponseBody200ActiveAccount'Account'Variants),
                                                    getRecipientsIdResponseBody200ActiveAccount'AccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    getRecipientsIdResponseBody200ActiveAccount'AccountHolderType :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    getRecipientsIdResponseBody200ActiveAccount'BankName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    getRecipientsIdResponseBody200ActiveAccount'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    getRecipientsIdResponseBody200ActiveAccount'Currency :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    getRecipientsIdResponseBody200ActiveAccount'Customer :: (GHC.Maybe.Maybe GetRecipientsIdResponseBody200ActiveAccount'Customer'Variants),
                                                    getRecipientsIdResponseBody200ActiveAccount'DefaultForCurrency :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                    getRecipientsIdResponseBody200ActiveAccount'Fingerprint :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    getRecipientsIdResponseBody200ActiveAccount'Id :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    getRecipientsIdResponseBody200ActiveAccount'Last4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    getRecipientsIdResponseBody200ActiveAccount'Metadata :: (GHC.Maybe.Maybe GetRecipientsIdResponseBody200ActiveAccount'Metadata'),
                                                    getRecipientsIdResponseBody200ActiveAccount'Object :: (GHC.Maybe.Maybe GetRecipientsIdResponseBody200ActiveAccount'Object'),
                                                    getRecipientsIdResponseBody200ActiveAccount'RoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    getRecipientsIdResponseBody200ActiveAccount'Status :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetRecipientsIdResponseBody200ActiveAccount'Account'Variants
    = GetRecipientsIdResponseBody200ActiveAccount'Account'Variant1 Account
    | GetRecipientsIdResponseBody200ActiveAccount'Account'Variant2 GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON GetRecipientsIdResponseBody200ActiveAccount'Account'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON GetRecipientsIdResponseBody200ActiveAccount'Account'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data GetRecipientsIdResponseBody200ActiveAccount'Customer'Variants
    = GetRecipientsIdResponseBody200ActiveAccount'Customer'Variant1 Customer
    | GetRecipientsIdResponseBody200ActiveAccount'Customer'Variant2 DeletedCustomer
    | GetRecipientsIdResponseBody200ActiveAccount'Customer'Variant3 GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON GetRecipientsIdResponseBody200ActiveAccount'Customer'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON GetRecipientsIdResponseBody200ActiveAccount'Customer'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data GetRecipientsIdResponseBody200ActiveAccount'Metadata'
    = GetRecipientsIdResponseBody200ActiveAccount'Metadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetRecipientsIdResponseBody200ActiveAccount'Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetRecipientsIdResponseBody200ActiveAccount'Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetRecipientsIdResponseBody200ActiveAccount'Metadata'" (\obj -> GHC.Base.pure GetRecipientsIdResponseBody200ActiveAccount'Metadata')
data GetRecipientsIdResponseBody200ActiveAccount'Object'
    = GetRecipientsIdResponseBody200ActiveAccount'Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetRecipientsIdResponseBody200ActiveAccount'Object'EnumTyped GHC.Base.String
    | GetRecipientsIdResponseBody200ActiveAccount'Object'EnumStringBankAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetRecipientsIdResponseBody200ActiveAccount'Object'
    where toJSON (GetRecipientsIdResponseBody200ActiveAccount'Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetRecipientsIdResponseBody200ActiveAccount'Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetRecipientsIdResponseBody200ActiveAccount'Object'EnumStringBankAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account"
instance Data.Aeson.FromJSON GetRecipientsIdResponseBody200ActiveAccount'Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account")
                                          then GetRecipientsIdResponseBody200ActiveAccount'Object'EnumStringBankAccount
                                          else GetRecipientsIdResponseBody200ActiveAccount'Object'EnumOther val)
instance Data.Aeson.ToJSON GetRecipientsIdResponseBody200ActiveAccount'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account" (getRecipientsIdResponseBody200ActiveAccount'Account obj) : (Data.Aeson..=) "account_holder_name" (getRecipientsIdResponseBody200ActiveAccount'AccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (getRecipientsIdResponseBody200ActiveAccount'AccountHolderType obj) : (Data.Aeson..=) "bank_name" (getRecipientsIdResponseBody200ActiveAccount'BankName obj) : (Data.Aeson..=) "country" (getRecipientsIdResponseBody200ActiveAccount'Country obj) : (Data.Aeson..=) "currency" (getRecipientsIdResponseBody200ActiveAccount'Currency obj) : (Data.Aeson..=) "customer" (getRecipientsIdResponseBody200ActiveAccount'Customer obj) : (Data.Aeson..=) "default_for_currency" (getRecipientsIdResponseBody200ActiveAccount'DefaultForCurrency obj) : (Data.Aeson..=) "fingerprint" (getRecipientsIdResponseBody200ActiveAccount'Fingerprint obj) : (Data.Aeson..=) "id" (getRecipientsIdResponseBody200ActiveAccount'Id obj) : (Data.Aeson..=) "last4" (getRecipientsIdResponseBody200ActiveAccount'Last4 obj) : (Data.Aeson..=) "metadata" (getRecipientsIdResponseBody200ActiveAccount'Metadata obj) : (Data.Aeson..=) "object" (getRecipientsIdResponseBody200ActiveAccount'Object obj) : (Data.Aeson..=) "routing_number" (getRecipientsIdResponseBody200ActiveAccount'RoutingNumber obj) : (Data.Aeson..=) "status" (getRecipientsIdResponseBody200ActiveAccount'Status obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account" (getRecipientsIdResponseBody200ActiveAccount'Account obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_name" (getRecipientsIdResponseBody200ActiveAccount'AccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (getRecipientsIdResponseBody200ActiveAccount'AccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "bank_name" (getRecipientsIdResponseBody200ActiveAccount'BankName obj) GHC.Base.<> ((Data.Aeson..=) "country" (getRecipientsIdResponseBody200ActiveAccount'Country obj) GHC.Base.<> ((Data.Aeson..=) "currency" (getRecipientsIdResponseBody200ActiveAccount'Currency obj) GHC.Base.<> ((Data.Aeson..=) "customer" (getRecipientsIdResponseBody200ActiveAccount'Customer obj) GHC.Base.<> ((Data.Aeson..=) "default_for_currency" (getRecipientsIdResponseBody200ActiveAccount'DefaultForCurrency obj) GHC.Base.<> ((Data.Aeson..=) "fingerprint" (getRecipientsIdResponseBody200ActiveAccount'Fingerprint obj) GHC.Base.<> ((Data.Aeson..=) "id" (getRecipientsIdResponseBody200ActiveAccount'Id obj) GHC.Base.<> ((Data.Aeson..=) "last4" (getRecipientsIdResponseBody200ActiveAccount'Last4 obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (getRecipientsIdResponseBody200ActiveAccount'Metadata obj) GHC.Base.<> ((Data.Aeson..=) "object" (getRecipientsIdResponseBody200ActiveAccount'Object obj) GHC.Base.<> ((Data.Aeson..=) "routing_number" (getRecipientsIdResponseBody200ActiveAccount'RoutingNumber obj) GHC.Base.<> (Data.Aeson..=) "status" (getRecipientsIdResponseBody200ActiveAccount'Status obj)))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetRecipientsIdResponseBody200ActiveAccount'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetRecipientsIdResponseBody200ActiveAccount'" (\obj -> ((((((((((((((GHC.Base.pure GetRecipientsIdResponseBody200ActiveAccount' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_for_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "status"))
data GetRecipientsIdResponseBody200Cards'
    = GetRecipientsIdResponseBody200Cards' {getRecipientsIdResponseBody200Cards'Data :: ([] Card),
                                            getRecipientsIdResponseBody200Cards'HasMore :: GHC.Types.Bool,
                                            getRecipientsIdResponseBody200Cards'Object :: GetRecipientsIdResponseBody200Cards'Object',
                                            getRecipientsIdResponseBody200Cards'Url :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetRecipientsIdResponseBody200Cards'Object'
    = GetRecipientsIdResponseBody200Cards'Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetRecipientsIdResponseBody200Cards'Object'EnumTyped GHC.Base.String
    | GetRecipientsIdResponseBody200Cards'Object'EnumStringList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetRecipientsIdResponseBody200Cards'Object'
    where toJSON (GetRecipientsIdResponseBody200Cards'Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetRecipientsIdResponseBody200Cards'Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetRecipientsIdResponseBody200Cards'Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"
instance Data.Aeson.FromJSON GetRecipientsIdResponseBody200Cards'Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
                                          then GetRecipientsIdResponseBody200Cards'Object'EnumStringList
                                          else GetRecipientsIdResponseBody200Cards'Object'EnumOther val)
instance Data.Aeson.ToJSON GetRecipientsIdResponseBody200Cards'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getRecipientsIdResponseBody200Cards'Data obj) : (Data.Aeson..=) "has_more" (getRecipientsIdResponseBody200Cards'HasMore obj) : (Data.Aeson..=) "object" (getRecipientsIdResponseBody200Cards'Object obj) : (Data.Aeson..=) "url" (getRecipientsIdResponseBody200Cards'Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getRecipientsIdResponseBody200Cards'Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (getRecipientsIdResponseBody200Cards'HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (getRecipientsIdResponseBody200Cards'Object obj) GHC.Base.<> (Data.Aeson..=) "url" (getRecipientsIdResponseBody200Cards'Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetRecipientsIdResponseBody200Cards'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetRecipientsIdResponseBody200Cards'" (\obj -> (((GHC.Base.pure GetRecipientsIdResponseBody200Cards' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
data GetRecipientsIdResponseBody200DefaultCard'Variants
    = GetRecipientsIdResponseBody200DefaultCard'Variant1 Card
    | GetRecipientsIdResponseBody200DefaultCard'Variant2 GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON GetRecipientsIdResponseBody200DefaultCard'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON GetRecipientsIdResponseBody200DefaultCard'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data GetRecipientsIdResponseBody200Deleted'
    = GetRecipientsIdResponseBody200Deleted'EnumOther Data.Aeson.Types.Internal.Value
    | GetRecipientsIdResponseBody200Deleted'EnumTyped GHC.Types.Bool
    | GetRecipientsIdResponseBody200Deleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetRecipientsIdResponseBody200Deleted'
    where toJSON (GetRecipientsIdResponseBody200Deleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetRecipientsIdResponseBody200Deleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetRecipientsIdResponseBody200Deleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON GetRecipientsIdResponseBody200Deleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then GetRecipientsIdResponseBody200Deleted'EnumBoolTrue
                                          else GetRecipientsIdResponseBody200Deleted'EnumOther val)
data GetRecipientsIdResponseBody200Metadata'
    = GetRecipientsIdResponseBody200Metadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetRecipientsIdResponseBody200Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetRecipientsIdResponseBody200Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetRecipientsIdResponseBody200Metadata'" (\obj -> GHC.Base.pure GetRecipientsIdResponseBody200Metadata')
data GetRecipientsIdResponseBody200MigratedTo'Variants
    = GetRecipientsIdResponseBody200MigratedTo'Variant1 Account
    | GetRecipientsIdResponseBody200MigratedTo'Variant2 GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON GetRecipientsIdResponseBody200MigratedTo'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON GetRecipientsIdResponseBody200MigratedTo'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data GetRecipientsIdResponseBody200Object'
    = GetRecipientsIdResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetRecipientsIdResponseBody200Object'EnumTyped GHC.Base.String
    | GetRecipientsIdResponseBody200Object'EnumStringRecipient
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetRecipientsIdResponseBody200Object'
    where toJSON (GetRecipientsIdResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetRecipientsIdResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetRecipientsIdResponseBody200Object'EnumStringRecipient) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "recipient"
instance Data.Aeson.FromJSON GetRecipientsIdResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "recipient")
                                          then GetRecipientsIdResponseBody200Object'EnumStringRecipient
                                          else GetRecipientsIdResponseBody200Object'EnumOther val)
data GetRecipientsIdResponseBody200RolledBackFrom'Variants
    = GetRecipientsIdResponseBody200RolledBackFrom'Variant1 Account
    | GetRecipientsIdResponseBody200RolledBackFrom'Variant2 GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON GetRecipientsIdResponseBody200RolledBackFrom'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON GetRecipientsIdResponseBody200RolledBackFrom'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON GetRecipientsIdResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "active_account" (getRecipientsIdResponseBody200ActiveAccount obj) : (Data.Aeson..=) "cards" (getRecipientsIdResponseBody200Cards obj) : (Data.Aeson..=) "created" (getRecipientsIdResponseBody200Created obj) : (Data.Aeson..=) "default_card" (getRecipientsIdResponseBody200DefaultCard obj) : (Data.Aeson..=) "deleted" (getRecipientsIdResponseBody200Deleted obj) : (Data.Aeson..=) "description" (getRecipientsIdResponseBody200Description obj) : (Data.Aeson..=) "email" (getRecipientsIdResponseBody200Email obj) : (Data.Aeson..=) "id" (getRecipientsIdResponseBody200Id obj) : (Data.Aeson..=) "livemode" (getRecipientsIdResponseBody200Livemode obj) : (Data.Aeson..=) "metadata" (getRecipientsIdResponseBody200Metadata obj) : (Data.Aeson..=) "migrated_to" (getRecipientsIdResponseBody200MigratedTo obj) : (Data.Aeson..=) "name" (getRecipientsIdResponseBody200Name obj) : (Data.Aeson..=) "object" (getRecipientsIdResponseBody200Object obj) : (Data.Aeson..=) "rolled_back_from" (getRecipientsIdResponseBody200RolledBackFrom obj) : (Data.Aeson..=) "type" (getRecipientsIdResponseBody200Type obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "active_account" (getRecipientsIdResponseBody200ActiveAccount obj) GHC.Base.<> ((Data.Aeson..=) "cards" (getRecipientsIdResponseBody200Cards obj) GHC.Base.<> ((Data.Aeson..=) "created" (getRecipientsIdResponseBody200Created obj) GHC.Base.<> ((Data.Aeson..=) "default_card" (getRecipientsIdResponseBody200DefaultCard obj) GHC.Base.<> ((Data.Aeson..=) "deleted" (getRecipientsIdResponseBody200Deleted obj) GHC.Base.<> ((Data.Aeson..=) "description" (getRecipientsIdResponseBody200Description obj) GHC.Base.<> ((Data.Aeson..=) "email" (getRecipientsIdResponseBody200Email obj) GHC.Base.<> ((Data.Aeson..=) "id" (getRecipientsIdResponseBody200Id obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (getRecipientsIdResponseBody200Livemode obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (getRecipientsIdResponseBody200Metadata obj) GHC.Base.<> ((Data.Aeson..=) "migrated_to" (getRecipientsIdResponseBody200MigratedTo obj) GHC.Base.<> ((Data.Aeson..=) "name" (getRecipientsIdResponseBody200Name obj) GHC.Base.<> ((Data.Aeson..=) "object" (getRecipientsIdResponseBody200Object obj) GHC.Base.<> ((Data.Aeson..=) "rolled_back_from" (getRecipientsIdResponseBody200RolledBackFrom obj) GHC.Base.<> (Data.Aeson..=) "type" (getRecipientsIdResponseBody200Type obj)))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetRecipientsIdResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetRecipientsIdResponseBody200" (\obj -> ((((((((((((((GHC.Base.pure GetRecipientsIdResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "active_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cards")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "migrated_to")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "rolled_back_from")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type"))
