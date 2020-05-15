{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.GetAccountsAccountExternalAccounts where

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
-- GET /v1/accounts/{account}/external_accounts
getAccountsAccountExternalAccounts :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                    StripeAPI.Common.SecurityScheme s) =>
                                      StripeAPI.Common.Configuration s ->
                                      GHC.Base.String ->
                                      GHC.Maybe.Maybe GHC.Base.String ->
                                      GHC.Maybe.Maybe GHC.Base.String ->
                                      GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                                      GHC.Maybe.Maybe GHC.Base.String ->
                                      GetAccountsAccountExternalAccountsRequestBody ->
                                      m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                            (Network.HTTP.Client.Types.Response GetAccountsAccountExternalAccountsResponse))
getAccountsAccountExternalAccounts config
                                   account
                                   endingBefore
                                   expand
                                   limit
                                   startingAfter
                                   body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetAccountsAccountExternalAccountsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetAccountsAccountExternalAccountsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        GetAccountsAccountExternalAccountsResponseBody200)
                                                                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetAccountsAccountExternalAccountsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/external_accounts"))) ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : [])))) body StripeAPI.Common.RequestBodyEncodingFormData)
getAccountsAccountExternalAccountsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                       StripeAPI.Common.SecurityScheme s) =>
                                         StripeAPI.Common.Configuration s ->
                                         GHC.Base.String ->
                                         GHC.Maybe.Maybe GHC.Base.String ->
                                         GHC.Maybe.Maybe GHC.Base.String ->
                                         GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                                         GHC.Maybe.Maybe GHC.Base.String ->
                                         GetAccountsAccountExternalAccountsRequestBody ->
                                         m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getAccountsAccountExternalAccountsRaw config
                                      account
                                      endingBefore
                                      expand
                                      limit
                                      startingAfter
                                      body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/external_accounts"))) ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : [])))) body StripeAPI.Common.RequestBodyEncodingFormData)
getAccountsAccountExternalAccountsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                     StripeAPI.Common.SecurityScheme s) =>
                                       GHC.Base.String ->
                                       GHC.Maybe.Maybe GHC.Base.String ->
                                       GHC.Maybe.Maybe GHC.Base.String ->
                                       GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                                       GHC.Maybe.Maybe GHC.Base.String ->
                                       GetAccountsAccountExternalAccountsRequestBody ->
                                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                          m
                                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                              (Network.HTTP.Client.Types.Response GetAccountsAccountExternalAccountsResponse))
getAccountsAccountExternalAccountsM account
                                    endingBefore
                                    expand
                                    limit
                                    startingAfter
                                    body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetAccountsAccountExternalAccountsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetAccountsAccountExternalAccountsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         GetAccountsAccountExternalAccountsResponseBody200)
                                                                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetAccountsAccountExternalAccountsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/external_accounts"))) ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : [])))) body StripeAPI.Common.RequestBodyEncodingFormData)
getAccountsAccountExternalAccountsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                        StripeAPI.Common.SecurityScheme s) =>
                                          GHC.Base.String ->
                                          GHC.Maybe.Maybe GHC.Base.String ->
                                          GHC.Maybe.Maybe GHC.Base.String ->
                                          GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                                          GHC.Maybe.Maybe GHC.Base.String ->
                                          GetAccountsAccountExternalAccountsRequestBody ->
                                          Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                             m
                                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                 (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getAccountsAccountExternalAccountsRawM account
                                       endingBefore
                                       expand
                                       limit
                                       startingAfter
                                       body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/external_accounts"))) ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : [])))) body StripeAPI.Common.RequestBodyEncodingFormData)
data GetAccountsAccountExternalAccountsRequestBody
    = GetAccountsAccountExternalAccountsRequestBody {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetAccountsAccountExternalAccountsRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetAccountsAccountExternalAccountsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountsAccountExternalAccountsRequestBody" (\obj -> GHC.Base.pure GetAccountsAccountExternalAccountsRequestBody)

data GetAccountsAccountExternalAccountsResponse
    = GetAccountsAccountExternalAccountsResponseError GHC.Base.String
    | GetAccountsAccountExternalAccountsResponse200 GetAccountsAccountExternalAccountsResponseBody200
    | GetAccountsAccountExternalAccountsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetAccountsAccountExternalAccountsResponseBody200
    = GetAccountsAccountExternalAccountsResponseBody200 {getAccountsAccountExternalAccountsResponseBody200Data :: ([] GetAccountsAccountExternalAccountsResponseBody200Data'),
                                                         getAccountsAccountExternalAccountsResponseBody200HasMore :: GHC.Types.Bool,
                                                         getAccountsAccountExternalAccountsResponseBody200Object :: GetAccountsAccountExternalAccountsResponseBody200Object',
                                                         getAccountsAccountExternalAccountsResponseBody200Url :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetAccountsAccountExternalAccountsResponseBody200Data'
    = GetAccountsAccountExternalAccountsResponseBody200Data' {getAccountsAccountExternalAccountsResponseBody200Data'Account :: (GHC.Maybe.Maybe GetAccountsAccountExternalAccountsResponseBody200Data'Account'Variants),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'AccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'AccountHolderType :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'AddressCity :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'AddressCountry :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'AddressLine1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'AddressLine1Check :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'AddressLine2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'AddressState :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'AddressZip :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'AddressZipCheck :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods :: (GHC.Maybe.Maybe ([] GetAccountsAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods')),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'BankName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'Brand :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'Currency :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'Customer :: (GHC.Maybe.Maybe GetAccountsAccountExternalAccountsResponseBody200Data'Customer'Variants),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'CvcCheck :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'DefaultForCurrency :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'DynamicLast4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'ExpMonth :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'ExpYear :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'Fingerprint :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'Funding :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'Id :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'Last4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'Metadata :: (GHC.Maybe.Maybe GetAccountsAccountExternalAccountsResponseBody200Data'Metadata'),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'Object :: (GHC.Maybe.Maybe GetAccountsAccountExternalAccountsResponseBody200Data'Object'),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'Recipient :: (GHC.Maybe.Maybe GetAccountsAccountExternalAccountsResponseBody200Data'Recipient'Variants),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'RoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'Status :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              getAccountsAccountExternalAccountsResponseBody200Data'TokenizationMethod :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetAccountsAccountExternalAccountsResponseBody200Data'Account'Variants
    = GetAccountsAccountExternalAccountsResponseBody200Data'Account'Variant1 Account
    | GetAccountsAccountExternalAccountsResponseBody200Data'Account'Variant2 GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON GetAccountsAccountExternalAccountsResponseBody200Data'Account'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON GetAccountsAccountExternalAccountsResponseBody200Data'Account'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data GetAccountsAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'
    = GetAccountsAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumOther Data.Aeson.Types.Internal.Value
    | GetAccountsAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumTyped GHC.Base.String
    | GetAccountsAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumStringInstant
    | GetAccountsAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumStringStandard
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetAccountsAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'
    where toJSON (GetAccountsAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetAccountsAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetAccountsAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumStringInstant) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "instant"
          toJSON (GetAccountsAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumStringStandard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard"
instance Data.Aeson.FromJSON GetAccountsAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "instant")
                                          then GetAccountsAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumStringInstant
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard")
                                                then GetAccountsAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumStringStandard
                                                else GetAccountsAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumOther val)
data GetAccountsAccountExternalAccountsResponseBody200Data'Customer'Variants
    = GetAccountsAccountExternalAccountsResponseBody200Data'Customer'Variant1 Customer
    | GetAccountsAccountExternalAccountsResponseBody200Data'Customer'Variant2 DeletedCustomer
    | GetAccountsAccountExternalAccountsResponseBody200Data'Customer'Variant3 GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON GetAccountsAccountExternalAccountsResponseBody200Data'Customer'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON GetAccountsAccountExternalAccountsResponseBody200Data'Customer'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data GetAccountsAccountExternalAccountsResponseBody200Data'Metadata'
    = GetAccountsAccountExternalAccountsResponseBody200Data'Metadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetAccountsAccountExternalAccountsResponseBody200Data'Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetAccountsAccountExternalAccountsResponseBody200Data'Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountsAccountExternalAccountsResponseBody200Data'Metadata'" (\obj -> GHC.Base.pure GetAccountsAccountExternalAccountsResponseBody200Data'Metadata')
data GetAccountsAccountExternalAccountsResponseBody200Data'Object'
    = GetAccountsAccountExternalAccountsResponseBody200Data'Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetAccountsAccountExternalAccountsResponseBody200Data'Object'EnumTyped GHC.Base.String
    | GetAccountsAccountExternalAccountsResponseBody200Data'Object'EnumStringBankAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetAccountsAccountExternalAccountsResponseBody200Data'Object'
    where toJSON (GetAccountsAccountExternalAccountsResponseBody200Data'Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetAccountsAccountExternalAccountsResponseBody200Data'Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetAccountsAccountExternalAccountsResponseBody200Data'Object'EnumStringBankAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account"
instance Data.Aeson.FromJSON GetAccountsAccountExternalAccountsResponseBody200Data'Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account")
                                          then GetAccountsAccountExternalAccountsResponseBody200Data'Object'EnumStringBankAccount
                                          else GetAccountsAccountExternalAccountsResponseBody200Data'Object'EnumOther val)
data GetAccountsAccountExternalAccountsResponseBody200Data'Recipient'Variants
    = GetAccountsAccountExternalAccountsResponseBody200Data'Recipient'Variant1 Recipient
    | GetAccountsAccountExternalAccountsResponseBody200Data'Recipient'Variant2 GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON GetAccountsAccountExternalAccountsResponseBody200Data'Recipient'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON GetAccountsAccountExternalAccountsResponseBody200Data'Recipient'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON GetAccountsAccountExternalAccountsResponseBody200Data'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account" (getAccountsAccountExternalAccountsResponseBody200Data'Account obj) : (Data.Aeson..=) "account_holder_name" (getAccountsAccountExternalAccountsResponseBody200Data'AccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (getAccountsAccountExternalAccountsResponseBody200Data'AccountHolderType obj) : (Data.Aeson..=) "address_city" (getAccountsAccountExternalAccountsResponseBody200Data'AddressCity obj) : (Data.Aeson..=) "address_country" (getAccountsAccountExternalAccountsResponseBody200Data'AddressCountry obj) : (Data.Aeson..=) "address_line1" (getAccountsAccountExternalAccountsResponseBody200Data'AddressLine1 obj) : (Data.Aeson..=) "address_line1_check" (getAccountsAccountExternalAccountsResponseBody200Data'AddressLine1Check obj) : (Data.Aeson..=) "address_line2" (getAccountsAccountExternalAccountsResponseBody200Data'AddressLine2 obj) : (Data.Aeson..=) "address_state" (getAccountsAccountExternalAccountsResponseBody200Data'AddressState obj) : (Data.Aeson..=) "address_zip" (getAccountsAccountExternalAccountsResponseBody200Data'AddressZip obj) : (Data.Aeson..=) "address_zip_check" (getAccountsAccountExternalAccountsResponseBody200Data'AddressZipCheck obj) : (Data.Aeson..=) "available_payout_methods" (getAccountsAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods obj) : (Data.Aeson..=) "bank_name" (getAccountsAccountExternalAccountsResponseBody200Data'BankName obj) : (Data.Aeson..=) "brand" (getAccountsAccountExternalAccountsResponseBody200Data'Brand obj) : (Data.Aeson..=) "country" (getAccountsAccountExternalAccountsResponseBody200Data'Country obj) : (Data.Aeson..=) "currency" (getAccountsAccountExternalAccountsResponseBody200Data'Currency obj) : (Data.Aeson..=) "customer" (getAccountsAccountExternalAccountsResponseBody200Data'Customer obj) : (Data.Aeson..=) "cvc_check" (getAccountsAccountExternalAccountsResponseBody200Data'CvcCheck obj) : (Data.Aeson..=) "default_for_currency" (getAccountsAccountExternalAccountsResponseBody200Data'DefaultForCurrency obj) : (Data.Aeson..=) "dynamic_last4" (getAccountsAccountExternalAccountsResponseBody200Data'DynamicLast4 obj) : (Data.Aeson..=) "exp_month" (getAccountsAccountExternalAccountsResponseBody200Data'ExpMonth obj) : (Data.Aeson..=) "exp_year" (getAccountsAccountExternalAccountsResponseBody200Data'ExpYear obj) : (Data.Aeson..=) "fingerprint" (getAccountsAccountExternalAccountsResponseBody200Data'Fingerprint obj) : (Data.Aeson..=) "funding" (getAccountsAccountExternalAccountsResponseBody200Data'Funding obj) : (Data.Aeson..=) "id" (getAccountsAccountExternalAccountsResponseBody200Data'Id obj) : (Data.Aeson..=) "last4" (getAccountsAccountExternalAccountsResponseBody200Data'Last4 obj) : (Data.Aeson..=) "metadata" (getAccountsAccountExternalAccountsResponseBody200Data'Metadata obj) : (Data.Aeson..=) "name" (getAccountsAccountExternalAccountsResponseBody200Data'Name obj) : (Data.Aeson..=) "object" (getAccountsAccountExternalAccountsResponseBody200Data'Object obj) : (Data.Aeson..=) "recipient" (getAccountsAccountExternalAccountsResponseBody200Data'Recipient obj) : (Data.Aeson..=) "routing_number" (getAccountsAccountExternalAccountsResponseBody200Data'RoutingNumber obj) : (Data.Aeson..=) "status" (getAccountsAccountExternalAccountsResponseBody200Data'Status obj) : (Data.Aeson..=) "tokenization_method" (getAccountsAccountExternalAccountsResponseBody200Data'TokenizationMethod obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account" (getAccountsAccountExternalAccountsResponseBody200Data'Account obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_name" (getAccountsAccountExternalAccountsResponseBody200Data'AccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (getAccountsAccountExternalAccountsResponseBody200Data'AccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "address_city" (getAccountsAccountExternalAccountsResponseBody200Data'AddressCity obj) GHC.Base.<> ((Data.Aeson..=) "address_country" (getAccountsAccountExternalAccountsResponseBody200Data'AddressCountry obj) GHC.Base.<> ((Data.Aeson..=) "address_line1" (getAccountsAccountExternalAccountsResponseBody200Data'AddressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "address_line1_check" (getAccountsAccountExternalAccountsResponseBody200Data'AddressLine1Check obj) GHC.Base.<> ((Data.Aeson..=) "address_line2" (getAccountsAccountExternalAccountsResponseBody200Data'AddressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "address_state" (getAccountsAccountExternalAccountsResponseBody200Data'AddressState obj) GHC.Base.<> ((Data.Aeson..=) "address_zip" (getAccountsAccountExternalAccountsResponseBody200Data'AddressZip obj) GHC.Base.<> ((Data.Aeson..=) "address_zip_check" (getAccountsAccountExternalAccountsResponseBody200Data'AddressZipCheck obj) GHC.Base.<> ((Data.Aeson..=) "available_payout_methods" (getAccountsAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods obj) GHC.Base.<> ((Data.Aeson..=) "bank_name" (getAccountsAccountExternalAccountsResponseBody200Data'BankName obj) GHC.Base.<> ((Data.Aeson..=) "brand" (getAccountsAccountExternalAccountsResponseBody200Data'Brand obj) GHC.Base.<> ((Data.Aeson..=) "country" (getAccountsAccountExternalAccountsResponseBody200Data'Country obj) GHC.Base.<> ((Data.Aeson..=) "currency" (getAccountsAccountExternalAccountsResponseBody200Data'Currency obj) GHC.Base.<> ((Data.Aeson..=) "customer" (getAccountsAccountExternalAccountsResponseBody200Data'Customer obj) GHC.Base.<> ((Data.Aeson..=) "cvc_check" (getAccountsAccountExternalAccountsResponseBody200Data'CvcCheck obj) GHC.Base.<> ((Data.Aeson..=) "default_for_currency" (getAccountsAccountExternalAccountsResponseBody200Data'DefaultForCurrency obj) GHC.Base.<> ((Data.Aeson..=) "dynamic_last4" (getAccountsAccountExternalAccountsResponseBody200Data'DynamicLast4 obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (getAccountsAccountExternalAccountsResponseBody200Data'ExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (getAccountsAccountExternalAccountsResponseBody200Data'ExpYear obj) GHC.Base.<> ((Data.Aeson..=) "fingerprint" (getAccountsAccountExternalAccountsResponseBody200Data'Fingerprint obj) GHC.Base.<> ((Data.Aeson..=) "funding" (getAccountsAccountExternalAccountsResponseBody200Data'Funding obj) GHC.Base.<> ((Data.Aeson..=) "id" (getAccountsAccountExternalAccountsResponseBody200Data'Id obj) GHC.Base.<> ((Data.Aeson..=) "last4" (getAccountsAccountExternalAccountsResponseBody200Data'Last4 obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (getAccountsAccountExternalAccountsResponseBody200Data'Metadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (getAccountsAccountExternalAccountsResponseBody200Data'Name obj) GHC.Base.<> ((Data.Aeson..=) "object" (getAccountsAccountExternalAccountsResponseBody200Data'Object obj) GHC.Base.<> ((Data.Aeson..=) "recipient" (getAccountsAccountExternalAccountsResponseBody200Data'Recipient obj) GHC.Base.<> ((Data.Aeson..=) "routing_number" (getAccountsAccountExternalAccountsResponseBody200Data'RoutingNumber obj) GHC.Base.<> ((Data.Aeson..=) "status" (getAccountsAccountExternalAccountsResponseBody200Data'Status obj) GHC.Base.<> (Data.Aeson..=) "tokenization_method" (getAccountsAccountExternalAccountsResponseBody200Data'TokenizationMethod obj)))))))))))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetAccountsAccountExternalAccountsResponseBody200Data'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountsAccountExternalAccountsResponseBody200Data'" (\obj -> ((((((((((((((((((((((((((((((((GHC.Base.pure GetAccountsAccountExternalAccountsResponseBody200Data' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "available_payout_methods")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "brand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_for_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dynamic_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "funding")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recipient")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tokenization_method"))
data GetAccountsAccountExternalAccountsResponseBody200Object'
    = GetAccountsAccountExternalAccountsResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetAccountsAccountExternalAccountsResponseBody200Object'EnumTyped GHC.Base.String
    | GetAccountsAccountExternalAccountsResponseBody200Object'EnumStringList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetAccountsAccountExternalAccountsResponseBody200Object'
    where toJSON (GetAccountsAccountExternalAccountsResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetAccountsAccountExternalAccountsResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetAccountsAccountExternalAccountsResponseBody200Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"
instance Data.Aeson.FromJSON GetAccountsAccountExternalAccountsResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
                                          then GetAccountsAccountExternalAccountsResponseBody200Object'EnumStringList
                                          else GetAccountsAccountExternalAccountsResponseBody200Object'EnumOther val)
instance Data.Aeson.ToJSON GetAccountsAccountExternalAccountsResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getAccountsAccountExternalAccountsResponseBody200Data obj) : (Data.Aeson..=) "has_more" (getAccountsAccountExternalAccountsResponseBody200HasMore obj) : (Data.Aeson..=) "object" (getAccountsAccountExternalAccountsResponseBody200Object obj) : (Data.Aeson..=) "url" (getAccountsAccountExternalAccountsResponseBody200Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getAccountsAccountExternalAccountsResponseBody200Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (getAccountsAccountExternalAccountsResponseBody200HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (getAccountsAccountExternalAccountsResponseBody200Object obj) GHC.Base.<> (Data.Aeson..=) "url" (getAccountsAccountExternalAccountsResponseBody200Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetAccountsAccountExternalAccountsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountsAccountExternalAccountsResponseBody200" (\obj -> (((GHC.Base.pure GetAccountsAccountExternalAccountsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
