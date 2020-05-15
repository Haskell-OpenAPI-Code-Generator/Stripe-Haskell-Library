{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostAccountsAccountExternalAccounts where

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
-- POST /v1/accounts/{account}/external_accounts
postAccountsAccountExternalAccounts :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                     StripeAPI.Common.SecurityScheme s) =>
                                       StripeAPI.Common.Configuration s ->
                                       GHC.Base.String ->
                                       PostAccountsAccountExternalAccountsRequestBody ->
                                       m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                             (Network.HTTP.Client.Types.Response PostAccountsAccountExternalAccountsResponse))
postAccountsAccountExternalAccounts config
                                    account
                                    body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountsAccountExternalAccountsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountExternalAccountsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ExternalAccount)
                                                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountExternalAccountsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/external_accounts"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountsAccountExternalAccountsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                        StripeAPI.Common.SecurityScheme s) =>
                                          StripeAPI.Common.Configuration s ->
                                          GHC.Base.String ->
                                          PostAccountsAccountExternalAccountsRequestBody ->
                                          m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountsAccountExternalAccountsRaw config
                                       account
                                       body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/external_accounts"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountsAccountExternalAccountsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                      StripeAPI.Common.SecurityScheme s) =>
                                        GHC.Base.String ->
                                        PostAccountsAccountExternalAccountsRequestBody ->
                                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                           m
                                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                               (Network.HTTP.Client.Types.Response PostAccountsAccountExternalAccountsResponse))
postAccountsAccountExternalAccountsM account
                                     body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostAccountsAccountExternalAccountsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountExternalAccountsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ExternalAccount)
                                                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountExternalAccountsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/external_accounts"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountsAccountExternalAccountsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                         StripeAPI.Common.SecurityScheme s) =>
                                           GHC.Base.String ->
                                           PostAccountsAccountExternalAccountsRequestBody ->
                                           Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                              m
                                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountsAccountExternalAccountsRawM account
                                        body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/external_accounts"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostAccountsAccountExternalAccountsRequestBody
    = PostAccountsAccountExternalAccountsRequestBody {postAccountsAccountExternalAccountsRequestBodyBankAccount :: (GHC.Maybe.Maybe PostAccountsAccountExternalAccountsRequestBodyBankAccount'Variants),
                                                      postAccountsAccountExternalAccountsRequestBodyDefaultForCurrency :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                      postAccountsAccountExternalAccountsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                                      postAccountsAccountExternalAccountsRequestBodyExternalAccount :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountsAccountExternalAccountsRequestBodyMetadata :: (GHC.Maybe.Maybe PostAccountsAccountExternalAccountsRequestBodyMetadata')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2
    = PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2 {postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                        postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType :: (GHC.Maybe.Maybe PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'),
                                                                        postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountNumber :: GHC.Base.String,
                                                                        postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2Country :: GHC.Base.String,
                                                                        postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2Currency :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                        postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2Object :: (GHC.Maybe.Maybe PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2Object'),
                                                                        postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2RoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'
    = PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumTyped GHC.Base.String
    | PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany
    | PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'
    where toJSON (PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company"
          toJSON (PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
instance Data.Aeson.FromJSON PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company")
                                          then PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                then PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual
                                                else PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther val)
data PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2Object'
    = PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2Object'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2Object'EnumTyped GHC.Base.String
    | PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2Object'
    where toJSON (PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account"
instance Data.Aeson.FromJSON PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account")
                                          then PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount
                                          else PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2Object'EnumOther val)
instance Data.Aeson.ToJSON PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_holder_name" (postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType obj) : (Data.Aeson..=) "account_number" (postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountNumber obj) : (Data.Aeson..=) "country" (postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2Country obj) : (Data.Aeson..=) "currency" (postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2Currency obj) : (Data.Aeson..=) "object" (postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2Object obj) : (Data.Aeson..=) "routing_number" (postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2RoutingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_holder_name" (postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "account_number" (postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountNumber obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2Country obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2Currency obj) GHC.Base.<> ((Data.Aeson..=) "object" (postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2Object obj) GHC.Base.<> (Data.Aeson..=) "routing_number" (postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2RoutingNumber obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2" (\obj -> ((((((GHC.Base.pure PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number"))
data PostAccountsAccountExternalAccountsRequestBodyBankAccount'Variants
    = PostAccountsAccountExternalAccountsRequestBodyBankAccount'Variant1 GHC.Base.String
    | PostAccountsAccountExternalAccountsRequestBodyBankAccount'Variant2 PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountsAccountExternalAccountsRequestBodyBankAccount'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountsAccountExternalAccountsRequestBodyBankAccount'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostAccountsAccountExternalAccountsRequestBodyMetadata'
    = PostAccountsAccountExternalAccountsRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountExternalAccountsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountExternalAccountsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountExternalAccountsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostAccountsAccountExternalAccountsRequestBodyMetadata')
instance Data.Aeson.ToJSON PostAccountsAccountExternalAccountsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "bank_account" (postAccountsAccountExternalAccountsRequestBodyBankAccount obj) : (Data.Aeson..=) "default_for_currency" (postAccountsAccountExternalAccountsRequestBodyDefaultForCurrency obj) : (Data.Aeson..=) "expand" (postAccountsAccountExternalAccountsRequestBodyExpand obj) : (Data.Aeson..=) "external_account" (postAccountsAccountExternalAccountsRequestBodyExternalAccount obj) : (Data.Aeson..=) "metadata" (postAccountsAccountExternalAccountsRequestBodyMetadata obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "bank_account" (postAccountsAccountExternalAccountsRequestBodyBankAccount obj) GHC.Base.<> ((Data.Aeson..=) "default_for_currency" (postAccountsAccountExternalAccountsRequestBodyDefaultForCurrency obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postAccountsAccountExternalAccountsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "external_account" (postAccountsAccountExternalAccountsRequestBodyExternalAccount obj) GHC.Base.<> (Data.Aeson..=) "metadata" (postAccountsAccountExternalAccountsRequestBodyMetadata obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountExternalAccountsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountExternalAccountsRequestBody" (\obj -> ((((GHC.Base.pure PostAccountsAccountExternalAccountsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_for_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "external_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata"))

data PostAccountsAccountExternalAccountsResponse
    = PostAccountsAccountExternalAccountsResponseError GHC.Base.String
    | PostAccountsAccountExternalAccountsResponse200 ExternalAccount
    | PostAccountsAccountExternalAccountsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
