{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostAccountsAccountBankAccounts where

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
-- POST /v1/accounts/{account}/bank_accounts
postAccountsAccountBankAccounts :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                 StripeAPI.Common.SecurityScheme s) =>
                                   StripeAPI.Common.Configuration s ->
                                   GHC.Base.String ->
                                   PostAccountsAccountBankAccountsRequestBody ->
                                   m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                         (Network.HTTP.Client.Types.Response PostAccountsAccountBankAccountsResponse))
postAccountsAccountBankAccounts config
                                account
                                body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountsAccountBankAccountsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountBankAccountsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ExternalAccount)
                                                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountBankAccountsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                 Error)
                                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/bank_accounts"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountsAccountBankAccountsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                    StripeAPI.Common.SecurityScheme s) =>
                                      StripeAPI.Common.Configuration s ->
                                      GHC.Base.String ->
                                      PostAccountsAccountBankAccountsRequestBody ->
                                      m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountsAccountBankAccountsRaw config
                                   account
                                   body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/bank_accounts"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountsAccountBankAccountsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                  StripeAPI.Common.SecurityScheme s) =>
                                    GHC.Base.String ->
                                    PostAccountsAccountBankAccountsRequestBody ->
                                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                       m
                                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                           (Network.HTTP.Client.Types.Response PostAccountsAccountBankAccountsResponse))
postAccountsAccountBankAccountsM account
                                 body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostAccountsAccountBankAccountsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountBankAccountsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ExternalAccount)
                                                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountBankAccountsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/bank_accounts"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountsAccountBankAccountsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                     StripeAPI.Common.SecurityScheme s) =>
                                       GHC.Base.String ->
                                       PostAccountsAccountBankAccountsRequestBody ->
                                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                          m
                                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountsAccountBankAccountsRawM account
                                    body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/bank_accounts"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostAccountsAccountBankAccountsRequestBody
    = PostAccountsAccountBankAccountsRequestBody {postAccountsAccountBankAccountsRequestBodyBankAccount :: (GHC.Maybe.Maybe PostAccountsAccountBankAccountsRequestBodyBankAccount'Variants),
                                                  postAccountsAccountBankAccountsRequestBodyDefaultForCurrency :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                  postAccountsAccountBankAccountsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                                  postAccountsAccountBankAccountsRequestBodyExternalAccount :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountsAccountBankAccountsRequestBodyMetadata :: (GHC.Maybe.Maybe PostAccountsAccountBankAccountsRequestBodyMetadata')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2
    = PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2 {postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                    postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType :: (GHC.Maybe.Maybe PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'),
                                                                    postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2AccountNumber :: GHC.Base.String,
                                                                    postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2Country :: GHC.Base.String,
                                                                    postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2Currency :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                    postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2Object :: (GHC.Maybe.Maybe PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2Object'),
                                                                    postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2RoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'
    = PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumTyped GHC.Base.String
    | PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany
    | PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'
    where toJSON (PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company"
          toJSON (PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
instance Data.Aeson.FromJSON PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company")
                                          then PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                then PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual
                                                else PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther val)
data PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2Object'
    = PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2Object'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2Object'EnumTyped GHC.Base.String
    | PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2Object'
    where toJSON (PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account"
instance Data.Aeson.FromJSON PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account")
                                          then PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount
                                          else PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2Object'EnumOther val)
instance Data.Aeson.ToJSON PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_holder_name" (postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType obj) : (Data.Aeson..=) "account_number" (postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2AccountNumber obj) : (Data.Aeson..=) "country" (postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2Country obj) : (Data.Aeson..=) "currency" (postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2Currency obj) : (Data.Aeson..=) "object" (postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2Object obj) : (Data.Aeson..=) "routing_number" (postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2RoutingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_holder_name" (postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "account_number" (postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2AccountNumber obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2Country obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2Currency obj) GHC.Base.<> ((Data.Aeson..=) "object" (postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2Object obj) GHC.Base.<> (Data.Aeson..=) "routing_number" (postAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2RoutingNumber obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2" (\obj -> ((((((GHC.Base.pure PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number"))
data PostAccountsAccountBankAccountsRequestBodyBankAccount'Variants
    = PostAccountsAccountBankAccountsRequestBodyBankAccount'Variant1 GHC.Base.String
    | PostAccountsAccountBankAccountsRequestBodyBankAccount'Variant2 PostAccountsAccountBankAccountsRequestBodyBankAccount'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountsAccountBankAccountsRequestBodyBankAccount'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountsAccountBankAccountsRequestBodyBankAccount'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostAccountsAccountBankAccountsRequestBodyMetadata'
    = PostAccountsAccountBankAccountsRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountBankAccountsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountBankAccountsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountBankAccountsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostAccountsAccountBankAccountsRequestBodyMetadata')
instance Data.Aeson.ToJSON PostAccountsAccountBankAccountsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "bank_account" (postAccountsAccountBankAccountsRequestBodyBankAccount obj) : (Data.Aeson..=) "default_for_currency" (postAccountsAccountBankAccountsRequestBodyDefaultForCurrency obj) : (Data.Aeson..=) "expand" (postAccountsAccountBankAccountsRequestBodyExpand obj) : (Data.Aeson..=) "external_account" (postAccountsAccountBankAccountsRequestBodyExternalAccount obj) : (Data.Aeson..=) "metadata" (postAccountsAccountBankAccountsRequestBodyMetadata obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "bank_account" (postAccountsAccountBankAccountsRequestBodyBankAccount obj) GHC.Base.<> ((Data.Aeson..=) "default_for_currency" (postAccountsAccountBankAccountsRequestBodyDefaultForCurrency obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postAccountsAccountBankAccountsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "external_account" (postAccountsAccountBankAccountsRequestBodyExternalAccount obj) GHC.Base.<> (Data.Aeson..=) "metadata" (postAccountsAccountBankAccountsRequestBodyMetadata obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountBankAccountsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountBankAccountsRequestBody" (\obj -> ((((GHC.Base.pure PostAccountsAccountBankAccountsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_for_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "external_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata"))

data PostAccountsAccountBankAccountsResponse
    = PostAccountsAccountBankAccountsResponseError GHC.Base.String
    | PostAccountsAccountBankAccountsResponse200 ExternalAccount
    | PostAccountsAccountBankAccountsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
