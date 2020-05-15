{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostAccountExternalAccounts where

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
-- POST /v1/account/external_accounts
postAccountExternalAccounts :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                             StripeAPI.Common.SecurityScheme s) =>
                               StripeAPI.Common.Configuration s ->
                               PostAccountExternalAccountsRequestBody ->
                               m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                     (Network.HTTP.Client.Types.Response PostAccountExternalAccountsResponse))
postAccountExternalAccounts config
                            body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountExternalAccountsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountExternalAccountsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ExternalAccount)
                                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountExternalAccountsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/account/external_accounts") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountExternalAccountsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                StripeAPI.Common.SecurityScheme s) =>
                                  StripeAPI.Common.Configuration s ->
                                  PostAccountExternalAccountsRequestBody ->
                                  m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountExternalAccountsRaw config
                               body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/account/external_accounts") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountExternalAccountsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                PostAccountExternalAccountsRequestBody ->
                                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                   m
                                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                       (Network.HTTP.Client.Types.Response PostAccountExternalAccountsResponse))
postAccountExternalAccountsM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostAccountExternalAccountsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountExternalAccountsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ExternalAccount)
                                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountExternalAccountsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/account/external_accounts") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountExternalAccountsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                 StripeAPI.Common.SecurityScheme s) =>
                                   PostAccountExternalAccountsRequestBody ->
                                   Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                      m
                                                                      (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountExternalAccountsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/account/external_accounts") [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostAccountExternalAccountsRequestBody
    = PostAccountExternalAccountsRequestBody {postAccountExternalAccountsRequestBodyBankAccount :: (GHC.Maybe.Maybe PostAccountExternalAccountsRequestBodyBankAccount'Variants),
                                              postAccountExternalAccountsRequestBodyDefaultForCurrency :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                              postAccountExternalAccountsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                              postAccountExternalAccountsRequestBodyExternalAccount :: (GHC.Maybe.Maybe GHC.Base.String),
                                              postAccountExternalAccountsRequestBodyMetadata :: (GHC.Maybe.Maybe PostAccountExternalAccountsRequestBodyMetadata')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountExternalAccountsRequestBodyBankAccount'OneOf2
    = PostAccountExternalAccountsRequestBodyBankAccount'OneOf2 {postAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                postAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType :: (GHC.Maybe.Maybe PostAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'),
                                                                postAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountNumber :: GHC.Base.String,
                                                                postAccountExternalAccountsRequestBodyBankAccount'OneOf2Country :: GHC.Base.String,
                                                                postAccountExternalAccountsRequestBodyBankAccount'OneOf2Currency :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                postAccountExternalAccountsRequestBodyBankAccount'OneOf2Object :: (GHC.Maybe.Maybe PostAccountExternalAccountsRequestBodyBankAccount'OneOf2Object'),
                                                                postAccountExternalAccountsRequestBodyBankAccount'OneOf2RoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'
    = PostAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumTyped GHC.Base.String
    | PostAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany
    | PostAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'
    where toJSON (PostAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company"
          toJSON (PostAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
instance Data.Aeson.FromJSON PostAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company")
                                          then PostAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                then PostAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual
                                                else PostAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther val)
data PostAccountExternalAccountsRequestBodyBankAccount'OneOf2Object'
    = PostAccountExternalAccountsRequestBodyBankAccount'OneOf2Object'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountExternalAccountsRequestBodyBankAccount'OneOf2Object'EnumTyped GHC.Base.String
    | PostAccountExternalAccountsRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountExternalAccountsRequestBodyBankAccount'OneOf2Object'
    where toJSON (PostAccountExternalAccountsRequestBodyBankAccount'OneOf2Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountExternalAccountsRequestBodyBankAccount'OneOf2Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountExternalAccountsRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account"
instance Data.Aeson.FromJSON PostAccountExternalAccountsRequestBodyBankAccount'OneOf2Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account")
                                          then PostAccountExternalAccountsRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount
                                          else PostAccountExternalAccountsRequestBodyBankAccount'OneOf2Object'EnumOther val)
instance Data.Aeson.ToJSON PostAccountExternalAccountsRequestBodyBankAccount'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_holder_name" (postAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (postAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType obj) : (Data.Aeson..=) "account_number" (postAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountNumber obj) : (Data.Aeson..=) "country" (postAccountExternalAccountsRequestBodyBankAccount'OneOf2Country obj) : (Data.Aeson..=) "currency" (postAccountExternalAccountsRequestBodyBankAccount'OneOf2Currency obj) : (Data.Aeson..=) "object" (postAccountExternalAccountsRequestBodyBankAccount'OneOf2Object obj) : (Data.Aeson..=) "routing_number" (postAccountExternalAccountsRequestBodyBankAccount'OneOf2RoutingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_holder_name" (postAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (postAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "account_number" (postAccountExternalAccountsRequestBodyBankAccount'OneOf2AccountNumber obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountExternalAccountsRequestBodyBankAccount'OneOf2Country obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postAccountExternalAccountsRequestBodyBankAccount'OneOf2Currency obj) GHC.Base.<> ((Data.Aeson..=) "object" (postAccountExternalAccountsRequestBodyBankAccount'OneOf2Object obj) GHC.Base.<> (Data.Aeson..=) "routing_number" (postAccountExternalAccountsRequestBodyBankAccount'OneOf2RoutingNumber obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountExternalAccountsRequestBodyBankAccount'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountExternalAccountsRequestBodyBankAccount'OneOf2" (\obj -> ((((((GHC.Base.pure PostAccountExternalAccountsRequestBodyBankAccount'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number"))
data PostAccountExternalAccountsRequestBodyBankAccount'Variants
    = PostAccountExternalAccountsRequestBodyBankAccount'Variant1 GHC.Base.String
    | PostAccountExternalAccountsRequestBodyBankAccount'Variant2 PostAccountExternalAccountsRequestBodyBankAccount'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountExternalAccountsRequestBodyBankAccount'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountExternalAccountsRequestBodyBankAccount'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostAccountExternalAccountsRequestBodyMetadata'
    = PostAccountExternalAccountsRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountExternalAccountsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountExternalAccountsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountExternalAccountsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostAccountExternalAccountsRequestBodyMetadata')
instance Data.Aeson.ToJSON PostAccountExternalAccountsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "bank_account" (postAccountExternalAccountsRequestBodyBankAccount obj) : (Data.Aeson..=) "default_for_currency" (postAccountExternalAccountsRequestBodyDefaultForCurrency obj) : (Data.Aeson..=) "expand" (postAccountExternalAccountsRequestBodyExpand obj) : (Data.Aeson..=) "external_account" (postAccountExternalAccountsRequestBodyExternalAccount obj) : (Data.Aeson..=) "metadata" (postAccountExternalAccountsRequestBodyMetadata obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "bank_account" (postAccountExternalAccountsRequestBodyBankAccount obj) GHC.Base.<> ((Data.Aeson..=) "default_for_currency" (postAccountExternalAccountsRequestBodyDefaultForCurrency obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postAccountExternalAccountsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "external_account" (postAccountExternalAccountsRequestBodyExternalAccount obj) GHC.Base.<> (Data.Aeson..=) "metadata" (postAccountExternalAccountsRequestBodyMetadata obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountExternalAccountsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountExternalAccountsRequestBody" (\obj -> ((((GHC.Base.pure PostAccountExternalAccountsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_for_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "external_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata"))

data PostAccountExternalAccountsResponse
    = PostAccountExternalAccountsResponseError GHC.Base.String
    | PostAccountExternalAccountsResponse200 ExternalAccount
    | PostAccountExternalAccountsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
