{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.GetAccountExternalAccounts where

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
-- GET /v1/account/external_accounts
getAccountExternalAccounts :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                            StripeAPI.Common.SecurityScheme s) =>
                              StripeAPI.Common.Configuration s ->
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GetAccountExternalAccountsRequestBody ->
                              m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                    (Network.HTTP.Client.Types.Response GetAccountExternalAccountsResponse))
getAccountExternalAccounts config
                           endingBefore
                           expand
                           limit
                           startingAfter
                           body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetAccountExternalAccountsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetAccountExternalAccountsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                GetAccountExternalAccountsResponseBody200)
                                                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetAccountExternalAccountsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/account/external_accounts") ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : [])))) body StripeAPI.Common.RequestBodyEncodingFormData)
getAccountExternalAccountsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                               StripeAPI.Common.SecurityScheme s) =>
                                 StripeAPI.Common.Configuration s ->
                                 GHC.Maybe.Maybe GHC.Base.String ->
                                 GHC.Maybe.Maybe GHC.Base.String ->
                                 GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                                 GHC.Maybe.Maybe GHC.Base.String ->
                                 GetAccountExternalAccountsRequestBody ->
                                 m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getAccountExternalAccountsRaw config
                              endingBefore
                              expand
                              limit
                              startingAfter
                              body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/account/external_accounts") ((Data.Text.pack "ending_before",
                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : [])))) body StripeAPI.Common.RequestBodyEncodingFormData)
getAccountExternalAccountsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                             StripeAPI.Common.SecurityScheme s) =>
                               GHC.Maybe.Maybe GHC.Base.String ->
                               GHC.Maybe.Maybe GHC.Base.String ->
                               GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                               GHC.Maybe.Maybe GHC.Base.String ->
                               GetAccountExternalAccountsRequestBody ->
                               Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                  m
                                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                      (Network.HTTP.Client.Types.Response GetAccountExternalAccountsResponse))
getAccountExternalAccountsM endingBefore
                            expand
                            limit
                            startingAfter
                            body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetAccountExternalAccountsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetAccountExternalAccountsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 GetAccountExternalAccountsResponseBody200)
                                                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetAccountExternalAccountsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/account/external_accounts") ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : [])))) body StripeAPI.Common.RequestBodyEncodingFormData)
getAccountExternalAccountsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                StripeAPI.Common.SecurityScheme s) =>
                                  GHC.Maybe.Maybe GHC.Base.String ->
                                  GHC.Maybe.Maybe GHC.Base.String ->
                                  GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                                  GHC.Maybe.Maybe GHC.Base.String ->
                                  GetAccountExternalAccountsRequestBody ->
                                  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                     m
                                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getAccountExternalAccountsRawM endingBefore
                               expand
                               limit
                               startingAfter
                               body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/account/external_accounts") ((Data.Text.pack "ending_before",
                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : [])))) body StripeAPI.Common.RequestBodyEncodingFormData)
data GetAccountExternalAccountsRequestBody
    = GetAccountExternalAccountsRequestBody {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetAccountExternalAccountsRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetAccountExternalAccountsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountExternalAccountsRequestBody" (\obj -> GHC.Base.pure GetAccountExternalAccountsRequestBody)

data GetAccountExternalAccountsResponse
    = GetAccountExternalAccountsResponseError GHC.Base.String
    | GetAccountExternalAccountsResponse200 GetAccountExternalAccountsResponseBody200
    | GetAccountExternalAccountsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetAccountExternalAccountsResponseBody200
    = GetAccountExternalAccountsResponseBody200 {getAccountExternalAccountsResponseBody200Data :: ([] GetAccountExternalAccountsResponseBody200Data'),
                                                 getAccountExternalAccountsResponseBody200HasMore :: GHC.Types.Bool,
                                                 getAccountExternalAccountsResponseBody200Object :: GetAccountExternalAccountsResponseBody200Object',
                                                 getAccountExternalAccountsResponseBody200Url :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetAccountExternalAccountsResponseBody200Data'
    = GetAccountExternalAccountsResponseBody200Data' {getAccountExternalAccountsResponseBody200Data'Account :: (GHC.Maybe.Maybe GetAccountExternalAccountsResponseBody200Data'Account'Variants),
                                                      getAccountExternalAccountsResponseBody200Data'AccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      getAccountExternalAccountsResponseBody200Data'AccountHolderType :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      getAccountExternalAccountsResponseBody200Data'AddressCity :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      getAccountExternalAccountsResponseBody200Data'AddressCountry :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      getAccountExternalAccountsResponseBody200Data'AddressLine1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      getAccountExternalAccountsResponseBody200Data'AddressLine1Check :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      getAccountExternalAccountsResponseBody200Data'AddressLine2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      getAccountExternalAccountsResponseBody200Data'AddressState :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      getAccountExternalAccountsResponseBody200Data'AddressZip :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      getAccountExternalAccountsResponseBody200Data'AddressZipCheck :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      getAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods :: (GHC.Maybe.Maybe ([] GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods')),
                                                      getAccountExternalAccountsResponseBody200Data'BankName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      getAccountExternalAccountsResponseBody200Data'Brand :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      getAccountExternalAccountsResponseBody200Data'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      getAccountExternalAccountsResponseBody200Data'Currency :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      getAccountExternalAccountsResponseBody200Data'Customer :: (GHC.Maybe.Maybe GetAccountExternalAccountsResponseBody200Data'Customer'Variants),
                                                      getAccountExternalAccountsResponseBody200Data'CvcCheck :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      getAccountExternalAccountsResponseBody200Data'DefaultForCurrency :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                      getAccountExternalAccountsResponseBody200Data'DynamicLast4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      getAccountExternalAccountsResponseBody200Data'ExpMonth :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                      getAccountExternalAccountsResponseBody200Data'ExpYear :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                      getAccountExternalAccountsResponseBody200Data'Fingerprint :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      getAccountExternalAccountsResponseBody200Data'Funding :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      getAccountExternalAccountsResponseBody200Data'Id :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      getAccountExternalAccountsResponseBody200Data'Last4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      getAccountExternalAccountsResponseBody200Data'Metadata :: (GHC.Maybe.Maybe GetAccountExternalAccountsResponseBody200Data'Metadata'),
                                                      getAccountExternalAccountsResponseBody200Data'Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      getAccountExternalAccountsResponseBody200Data'Object :: (GHC.Maybe.Maybe GetAccountExternalAccountsResponseBody200Data'Object'),
                                                      getAccountExternalAccountsResponseBody200Data'Recipient :: (GHC.Maybe.Maybe GetAccountExternalAccountsResponseBody200Data'Recipient'Variants),
                                                      getAccountExternalAccountsResponseBody200Data'RoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      getAccountExternalAccountsResponseBody200Data'Status :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      getAccountExternalAccountsResponseBody200Data'TokenizationMethod :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetAccountExternalAccountsResponseBody200Data'Account'Variants
    = GetAccountExternalAccountsResponseBody200Data'Account'Variant1 Account
    | GetAccountExternalAccountsResponseBody200Data'Account'Variant2 GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON GetAccountExternalAccountsResponseBody200Data'Account'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON GetAccountExternalAccountsResponseBody200Data'Account'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'
    = GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumOther Data.Aeson.Types.Internal.Value
    | GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumTyped GHC.Base.String
    | GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumStringInstant
    | GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumStringStandard
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'
    where toJSON (GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumStringInstant) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "instant"
          toJSON (GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumStringStandard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard"
instance Data.Aeson.FromJSON GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "instant")
                                          then GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumStringInstant
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard")
                                                then GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumStringStandard
                                                else GetAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods'EnumOther val)
data GetAccountExternalAccountsResponseBody200Data'Customer'Variants
    = GetAccountExternalAccountsResponseBody200Data'Customer'Variant1 Customer
    | GetAccountExternalAccountsResponseBody200Data'Customer'Variant2 DeletedCustomer
    | GetAccountExternalAccountsResponseBody200Data'Customer'Variant3 GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON GetAccountExternalAccountsResponseBody200Data'Customer'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON GetAccountExternalAccountsResponseBody200Data'Customer'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data GetAccountExternalAccountsResponseBody200Data'Metadata'
    = GetAccountExternalAccountsResponseBody200Data'Metadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetAccountExternalAccountsResponseBody200Data'Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetAccountExternalAccountsResponseBody200Data'Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountExternalAccountsResponseBody200Data'Metadata'" (\obj -> GHC.Base.pure GetAccountExternalAccountsResponseBody200Data'Metadata')
data GetAccountExternalAccountsResponseBody200Data'Object'
    = GetAccountExternalAccountsResponseBody200Data'Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetAccountExternalAccountsResponseBody200Data'Object'EnumTyped GHC.Base.String
    | GetAccountExternalAccountsResponseBody200Data'Object'EnumStringBankAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetAccountExternalAccountsResponseBody200Data'Object'
    where toJSON (GetAccountExternalAccountsResponseBody200Data'Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetAccountExternalAccountsResponseBody200Data'Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetAccountExternalAccountsResponseBody200Data'Object'EnumStringBankAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account"
instance Data.Aeson.FromJSON GetAccountExternalAccountsResponseBody200Data'Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account")
                                          then GetAccountExternalAccountsResponseBody200Data'Object'EnumStringBankAccount
                                          else GetAccountExternalAccountsResponseBody200Data'Object'EnumOther val)
data GetAccountExternalAccountsResponseBody200Data'Recipient'Variants
    = GetAccountExternalAccountsResponseBody200Data'Recipient'Variant1 Recipient
    | GetAccountExternalAccountsResponseBody200Data'Recipient'Variant2 GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON GetAccountExternalAccountsResponseBody200Data'Recipient'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON GetAccountExternalAccountsResponseBody200Data'Recipient'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON GetAccountExternalAccountsResponseBody200Data'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account" (getAccountExternalAccountsResponseBody200Data'Account obj) : (Data.Aeson..=) "account_holder_name" (getAccountExternalAccountsResponseBody200Data'AccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (getAccountExternalAccountsResponseBody200Data'AccountHolderType obj) : (Data.Aeson..=) "address_city" (getAccountExternalAccountsResponseBody200Data'AddressCity obj) : (Data.Aeson..=) "address_country" (getAccountExternalAccountsResponseBody200Data'AddressCountry obj) : (Data.Aeson..=) "address_line1" (getAccountExternalAccountsResponseBody200Data'AddressLine1 obj) : (Data.Aeson..=) "address_line1_check" (getAccountExternalAccountsResponseBody200Data'AddressLine1Check obj) : (Data.Aeson..=) "address_line2" (getAccountExternalAccountsResponseBody200Data'AddressLine2 obj) : (Data.Aeson..=) "address_state" (getAccountExternalAccountsResponseBody200Data'AddressState obj) : (Data.Aeson..=) "address_zip" (getAccountExternalAccountsResponseBody200Data'AddressZip obj) : (Data.Aeson..=) "address_zip_check" (getAccountExternalAccountsResponseBody200Data'AddressZipCheck obj) : (Data.Aeson..=) "available_payout_methods" (getAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods obj) : (Data.Aeson..=) "bank_name" (getAccountExternalAccountsResponseBody200Data'BankName obj) : (Data.Aeson..=) "brand" (getAccountExternalAccountsResponseBody200Data'Brand obj) : (Data.Aeson..=) "country" (getAccountExternalAccountsResponseBody200Data'Country obj) : (Data.Aeson..=) "currency" (getAccountExternalAccountsResponseBody200Data'Currency obj) : (Data.Aeson..=) "customer" (getAccountExternalAccountsResponseBody200Data'Customer obj) : (Data.Aeson..=) "cvc_check" (getAccountExternalAccountsResponseBody200Data'CvcCheck obj) : (Data.Aeson..=) "default_for_currency" (getAccountExternalAccountsResponseBody200Data'DefaultForCurrency obj) : (Data.Aeson..=) "dynamic_last4" (getAccountExternalAccountsResponseBody200Data'DynamicLast4 obj) : (Data.Aeson..=) "exp_month" (getAccountExternalAccountsResponseBody200Data'ExpMonth obj) : (Data.Aeson..=) "exp_year" (getAccountExternalAccountsResponseBody200Data'ExpYear obj) : (Data.Aeson..=) "fingerprint" (getAccountExternalAccountsResponseBody200Data'Fingerprint obj) : (Data.Aeson..=) "funding" (getAccountExternalAccountsResponseBody200Data'Funding obj) : (Data.Aeson..=) "id" (getAccountExternalAccountsResponseBody200Data'Id obj) : (Data.Aeson..=) "last4" (getAccountExternalAccountsResponseBody200Data'Last4 obj) : (Data.Aeson..=) "metadata" (getAccountExternalAccountsResponseBody200Data'Metadata obj) : (Data.Aeson..=) "name" (getAccountExternalAccountsResponseBody200Data'Name obj) : (Data.Aeson..=) "object" (getAccountExternalAccountsResponseBody200Data'Object obj) : (Data.Aeson..=) "recipient" (getAccountExternalAccountsResponseBody200Data'Recipient obj) : (Data.Aeson..=) "routing_number" (getAccountExternalAccountsResponseBody200Data'RoutingNumber obj) : (Data.Aeson..=) "status" (getAccountExternalAccountsResponseBody200Data'Status obj) : (Data.Aeson..=) "tokenization_method" (getAccountExternalAccountsResponseBody200Data'TokenizationMethod obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account" (getAccountExternalAccountsResponseBody200Data'Account obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_name" (getAccountExternalAccountsResponseBody200Data'AccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (getAccountExternalAccountsResponseBody200Data'AccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "address_city" (getAccountExternalAccountsResponseBody200Data'AddressCity obj) GHC.Base.<> ((Data.Aeson..=) "address_country" (getAccountExternalAccountsResponseBody200Data'AddressCountry obj) GHC.Base.<> ((Data.Aeson..=) "address_line1" (getAccountExternalAccountsResponseBody200Data'AddressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "address_line1_check" (getAccountExternalAccountsResponseBody200Data'AddressLine1Check obj) GHC.Base.<> ((Data.Aeson..=) "address_line2" (getAccountExternalAccountsResponseBody200Data'AddressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "address_state" (getAccountExternalAccountsResponseBody200Data'AddressState obj) GHC.Base.<> ((Data.Aeson..=) "address_zip" (getAccountExternalAccountsResponseBody200Data'AddressZip obj) GHC.Base.<> ((Data.Aeson..=) "address_zip_check" (getAccountExternalAccountsResponseBody200Data'AddressZipCheck obj) GHC.Base.<> ((Data.Aeson..=) "available_payout_methods" (getAccountExternalAccountsResponseBody200Data'AvailablePayoutMethods obj) GHC.Base.<> ((Data.Aeson..=) "bank_name" (getAccountExternalAccountsResponseBody200Data'BankName obj) GHC.Base.<> ((Data.Aeson..=) "brand" (getAccountExternalAccountsResponseBody200Data'Brand obj) GHC.Base.<> ((Data.Aeson..=) "country" (getAccountExternalAccountsResponseBody200Data'Country obj) GHC.Base.<> ((Data.Aeson..=) "currency" (getAccountExternalAccountsResponseBody200Data'Currency obj) GHC.Base.<> ((Data.Aeson..=) "customer" (getAccountExternalAccountsResponseBody200Data'Customer obj) GHC.Base.<> ((Data.Aeson..=) "cvc_check" (getAccountExternalAccountsResponseBody200Data'CvcCheck obj) GHC.Base.<> ((Data.Aeson..=) "default_for_currency" (getAccountExternalAccountsResponseBody200Data'DefaultForCurrency obj) GHC.Base.<> ((Data.Aeson..=) "dynamic_last4" (getAccountExternalAccountsResponseBody200Data'DynamicLast4 obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (getAccountExternalAccountsResponseBody200Data'ExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (getAccountExternalAccountsResponseBody200Data'ExpYear obj) GHC.Base.<> ((Data.Aeson..=) "fingerprint" (getAccountExternalAccountsResponseBody200Data'Fingerprint obj) GHC.Base.<> ((Data.Aeson..=) "funding" (getAccountExternalAccountsResponseBody200Data'Funding obj) GHC.Base.<> ((Data.Aeson..=) "id" (getAccountExternalAccountsResponseBody200Data'Id obj) GHC.Base.<> ((Data.Aeson..=) "last4" (getAccountExternalAccountsResponseBody200Data'Last4 obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (getAccountExternalAccountsResponseBody200Data'Metadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (getAccountExternalAccountsResponseBody200Data'Name obj) GHC.Base.<> ((Data.Aeson..=) "object" (getAccountExternalAccountsResponseBody200Data'Object obj) GHC.Base.<> ((Data.Aeson..=) "recipient" (getAccountExternalAccountsResponseBody200Data'Recipient obj) GHC.Base.<> ((Data.Aeson..=) "routing_number" (getAccountExternalAccountsResponseBody200Data'RoutingNumber obj) GHC.Base.<> ((Data.Aeson..=) "status" (getAccountExternalAccountsResponseBody200Data'Status obj) GHC.Base.<> (Data.Aeson..=) "tokenization_method" (getAccountExternalAccountsResponseBody200Data'TokenizationMethod obj)))))))))))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetAccountExternalAccountsResponseBody200Data'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountExternalAccountsResponseBody200Data'" (\obj -> ((((((((((((((((((((((((((((((((GHC.Base.pure GetAccountExternalAccountsResponseBody200Data' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "available_payout_methods")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "brand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_for_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dynamic_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "funding")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recipient")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tokenization_method"))
data GetAccountExternalAccountsResponseBody200Object'
    = GetAccountExternalAccountsResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetAccountExternalAccountsResponseBody200Object'EnumTyped GHC.Base.String
    | GetAccountExternalAccountsResponseBody200Object'EnumStringList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetAccountExternalAccountsResponseBody200Object'
    where toJSON (GetAccountExternalAccountsResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetAccountExternalAccountsResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetAccountExternalAccountsResponseBody200Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"
instance Data.Aeson.FromJSON GetAccountExternalAccountsResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
                                          then GetAccountExternalAccountsResponseBody200Object'EnumStringList
                                          else GetAccountExternalAccountsResponseBody200Object'EnumOther val)
instance Data.Aeson.ToJSON GetAccountExternalAccountsResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getAccountExternalAccountsResponseBody200Data obj) : (Data.Aeson..=) "has_more" (getAccountExternalAccountsResponseBody200HasMore obj) : (Data.Aeson..=) "object" (getAccountExternalAccountsResponseBody200Object obj) : (Data.Aeson..=) "url" (getAccountExternalAccountsResponseBody200Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getAccountExternalAccountsResponseBody200Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (getAccountExternalAccountsResponseBody200HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (getAccountExternalAccountsResponseBody200Object obj) GHC.Base.<> (Data.Aeson..=) "url" (getAccountExternalAccountsResponseBody200Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetAccountExternalAccountsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountExternalAccountsResponseBody200" (\obj -> (((GHC.Base.pure GetAccountExternalAccountsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
