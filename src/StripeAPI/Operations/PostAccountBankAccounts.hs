{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostAccountBankAccounts where

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
-- POST /v1/account/bank_accounts
postAccountBankAccounts :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                         StripeAPI.Common.SecurityScheme s) =>
                           StripeAPI.Common.Configuration s ->
                           PostAccountBankAccountsRequestBody ->
                           m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                 (Network.HTTP.Client.Types.Response PostAccountBankAccountsResponse))
postAccountBankAccounts config
                        body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountBankAccountsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountBankAccountsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                       ExternalAccount)
                                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountBankAccountsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/account/bank_accounts") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountBankAccountsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                            StripeAPI.Common.SecurityScheme s) =>
                              StripeAPI.Common.Configuration s ->
                              PostAccountBankAccountsRequestBody ->
                              m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                    (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountBankAccountsRaw config
                           body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/account/bank_accounts") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountBankAccountsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                          StripeAPI.Common.SecurityScheme s) =>
                            PostAccountBankAccountsRequestBody ->
                            Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                               m
                                                               (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                   (Network.HTTP.Client.Types.Response PostAccountBankAccountsResponse))
postAccountBankAccountsM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostAccountBankAccountsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountBankAccountsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                        ExternalAccount)
                                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountBankAccountsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/account/bank_accounts") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountBankAccountsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                             StripeAPI.Common.SecurityScheme s) =>
                               PostAccountBankAccountsRequestBody ->
                               Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                  m
                                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountBankAccountsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/account/bank_accounts") [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostAccountBankAccountsRequestBody
    = PostAccountBankAccountsRequestBody {postAccountBankAccountsRequestBodyBankAccount :: (GHC.Maybe.Maybe PostAccountBankAccountsRequestBodyBankAccount'Variants),
                                          postAccountBankAccountsRequestBodyDefaultForCurrency :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                          postAccountBankAccountsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                          postAccountBankAccountsRequestBodyExternalAccount :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postAccountBankAccountsRequestBodyMetadata :: (GHC.Maybe.Maybe PostAccountBankAccountsRequestBodyMetadata')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountBankAccountsRequestBodyBankAccount'OneOf2
    = PostAccountBankAccountsRequestBodyBankAccount'OneOf2 {postAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                            postAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType :: (GHC.Maybe.Maybe PostAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'),
                                                            postAccountBankAccountsRequestBodyBankAccount'OneOf2AccountNumber :: GHC.Base.String,
                                                            postAccountBankAccountsRequestBodyBankAccount'OneOf2Country :: GHC.Base.String,
                                                            postAccountBankAccountsRequestBodyBankAccount'OneOf2Currency :: (GHC.Maybe.Maybe GHC.Base.String),
                                                            postAccountBankAccountsRequestBodyBankAccount'OneOf2Object :: (GHC.Maybe.Maybe PostAccountBankAccountsRequestBodyBankAccount'OneOf2Object'),
                                                            postAccountBankAccountsRequestBodyBankAccount'OneOf2RoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'
    = PostAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumTyped GHC.Base.String
    | PostAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany
    | PostAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'
    where toJSON (PostAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company"
          toJSON (PostAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
instance Data.Aeson.FromJSON PostAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company")
                                          then PostAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                then PostAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual
                                                else PostAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther val)
data PostAccountBankAccountsRequestBodyBankAccount'OneOf2Object'
    = PostAccountBankAccountsRequestBodyBankAccount'OneOf2Object'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountBankAccountsRequestBodyBankAccount'OneOf2Object'EnumTyped GHC.Base.String
    | PostAccountBankAccountsRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountBankAccountsRequestBodyBankAccount'OneOf2Object'
    where toJSON (PostAccountBankAccountsRequestBodyBankAccount'OneOf2Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountBankAccountsRequestBodyBankAccount'OneOf2Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountBankAccountsRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account"
instance Data.Aeson.FromJSON PostAccountBankAccountsRequestBodyBankAccount'OneOf2Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account")
                                          then PostAccountBankAccountsRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount
                                          else PostAccountBankAccountsRequestBodyBankAccount'OneOf2Object'EnumOther val)
instance Data.Aeson.ToJSON PostAccountBankAccountsRequestBodyBankAccount'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_holder_name" (postAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (postAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType obj) : (Data.Aeson..=) "account_number" (postAccountBankAccountsRequestBodyBankAccount'OneOf2AccountNumber obj) : (Data.Aeson..=) "country" (postAccountBankAccountsRequestBodyBankAccount'OneOf2Country obj) : (Data.Aeson..=) "currency" (postAccountBankAccountsRequestBodyBankAccount'OneOf2Currency obj) : (Data.Aeson..=) "object" (postAccountBankAccountsRequestBodyBankAccount'OneOf2Object obj) : (Data.Aeson..=) "routing_number" (postAccountBankAccountsRequestBodyBankAccount'OneOf2RoutingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_holder_name" (postAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (postAccountBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "account_number" (postAccountBankAccountsRequestBodyBankAccount'OneOf2AccountNumber obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountBankAccountsRequestBodyBankAccount'OneOf2Country obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postAccountBankAccountsRequestBodyBankAccount'OneOf2Currency obj) GHC.Base.<> ((Data.Aeson..=) "object" (postAccountBankAccountsRequestBodyBankAccount'OneOf2Object obj) GHC.Base.<> (Data.Aeson..=) "routing_number" (postAccountBankAccountsRequestBodyBankAccount'OneOf2RoutingNumber obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountBankAccountsRequestBodyBankAccount'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountBankAccountsRequestBodyBankAccount'OneOf2" (\obj -> ((((((GHC.Base.pure PostAccountBankAccountsRequestBodyBankAccount'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number"))
data PostAccountBankAccountsRequestBodyBankAccount'Variants
    = PostAccountBankAccountsRequestBodyBankAccount'Variant1 GHC.Base.String
    | PostAccountBankAccountsRequestBodyBankAccount'Variant2 PostAccountBankAccountsRequestBodyBankAccount'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountBankAccountsRequestBodyBankAccount'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountBankAccountsRequestBodyBankAccount'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostAccountBankAccountsRequestBodyMetadata'
    = PostAccountBankAccountsRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountBankAccountsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountBankAccountsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountBankAccountsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostAccountBankAccountsRequestBodyMetadata')
instance Data.Aeson.ToJSON PostAccountBankAccountsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "bank_account" (postAccountBankAccountsRequestBodyBankAccount obj) : (Data.Aeson..=) "default_for_currency" (postAccountBankAccountsRequestBodyDefaultForCurrency obj) : (Data.Aeson..=) "expand" (postAccountBankAccountsRequestBodyExpand obj) : (Data.Aeson..=) "external_account" (postAccountBankAccountsRequestBodyExternalAccount obj) : (Data.Aeson..=) "metadata" (postAccountBankAccountsRequestBodyMetadata obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "bank_account" (postAccountBankAccountsRequestBodyBankAccount obj) GHC.Base.<> ((Data.Aeson..=) "default_for_currency" (postAccountBankAccountsRequestBodyDefaultForCurrency obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postAccountBankAccountsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "external_account" (postAccountBankAccountsRequestBodyExternalAccount obj) GHC.Base.<> (Data.Aeson..=) "metadata" (postAccountBankAccountsRequestBodyMetadata obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountBankAccountsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountBankAccountsRequestBody" (\obj -> ((((GHC.Base.pure PostAccountBankAccountsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_for_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "external_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata"))

data PostAccountBankAccountsResponse
    = PostAccountBankAccountsResponseError GHC.Base.String
    | PostAccountBankAccountsResponse200 ExternalAccount
    | PostAccountBankAccountsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
