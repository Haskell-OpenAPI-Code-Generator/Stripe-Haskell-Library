{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostAccountsAccount where

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
-- POST /v1/accounts/{account}
postAccountsAccount :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                     StripeAPI.Common.SecurityScheme s) =>
                       StripeAPI.Common.Configuration s ->
                       GHC.Base.String ->
                       PostAccountsAccountRequestBody ->
                       m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                             (Network.HTTP.Client.Types.Response PostAccountsAccountResponse))
postAccountsAccount config
                    account
                    body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountsAccountResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                           Account)
                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountsAccountRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          StripeAPI.Common.Configuration s ->
                          GHC.Base.String ->
                          PostAccountsAccountRequestBody ->
                          m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountsAccountRaw config
                       account
                       body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountsAccountM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        GHC.Base.String ->
                        PostAccountsAccountRequestBody ->
                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                           m
                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response PostAccountsAccountResponse))
postAccountsAccountM account
                     body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostAccountsAccountResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                            Account)
                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountsAccountRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                         StripeAPI.Common.SecurityScheme s) =>
                           GHC.Base.String ->
                           PostAccountsAccountRequestBody ->
                           Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                              m
                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountsAccountRawM account
                        body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostAccountsAccountRequestBody
    = PostAccountsAccountRequestBody {postAccountsAccountRequestBodyAccountToken :: (GHC.Maybe.Maybe GHC.Base.String),
                                      postAccountsAccountRequestBodyBankAccount :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyBankAccount'Variants),
                                      postAccountsAccountRequestBodyBusinessProfile :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyBusinessProfile'),
                                      postAccountsAccountRequestBodyBusinessType :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyBusinessType'),
                                      postAccountsAccountRequestBodyCompany :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyCompany'),
                                      postAccountsAccountRequestBodyDefaultCurrency :: (GHC.Maybe.Maybe GHC.Base.String),
                                      postAccountsAccountRequestBodyEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                                      postAccountsAccountRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                      postAccountsAccountRequestBodyExternalAccount :: (GHC.Maybe.Maybe GHC.Base.String),
                                      postAccountsAccountRequestBodyIndividual :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyIndividual'),
                                      postAccountsAccountRequestBodyMetadata :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyMetadata'),
                                      postAccountsAccountRequestBodyRequestedCapabilities :: (GHC.Maybe.Maybe ([] PostAccountsAccountRequestBodyRequestedCapabilities')),
                                      postAccountsAccountRequestBodySettings :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodySettings'),
                                      postAccountsAccountRequestBodyTosAcceptance :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyTosAcceptance')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsAccountRequestBodyBankAccount'OneOf2
    = PostAccountsAccountRequestBodyBankAccount'OneOf2 {postAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'),
                                                        postAccountsAccountRequestBodyBankAccount'OneOf2AccountNumber :: GHC.Base.String,
                                                        postAccountsAccountRequestBodyBankAccount'OneOf2Country :: GHC.Base.String,
                                                        postAccountsAccountRequestBodyBankAccount'OneOf2Currency :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postAccountsAccountRequestBodyBankAccount'OneOf2Object :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyBankAccount'OneOf2Object'),
                                                        postAccountsAccountRequestBodyBankAccount'OneOf2RoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'
    = PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumTyped GHC.Base.String
    | PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany
    | PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'
    where toJSON (PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company"
          toJSON (PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
instance Data.Aeson.FromJSON PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company")
                                          then PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                then PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual
                                                else PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther val)
data PostAccountsAccountRequestBodyBankAccount'OneOf2Object'
    = PostAccountsAccountRequestBodyBankAccount'OneOf2Object'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountRequestBodyBankAccount'OneOf2Object'EnumTyped GHC.Base.String
    | PostAccountsAccountRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyBankAccount'OneOf2Object'
    where toJSON (PostAccountsAccountRequestBodyBankAccount'OneOf2Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodyBankAccount'OneOf2Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account"
instance Data.Aeson.FromJSON PostAccountsAccountRequestBodyBankAccount'OneOf2Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account")
                                          then PostAccountsAccountRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount
                                          else PostAccountsAccountRequestBodyBankAccount'OneOf2Object'EnumOther val)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyBankAccount'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_holder_name" (postAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (postAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType obj) : (Data.Aeson..=) "account_number" (postAccountsAccountRequestBodyBankAccount'OneOf2AccountNumber obj) : (Data.Aeson..=) "country" (postAccountsAccountRequestBodyBankAccount'OneOf2Country obj) : (Data.Aeson..=) "currency" (postAccountsAccountRequestBodyBankAccount'OneOf2Currency obj) : (Data.Aeson..=) "object" (postAccountsAccountRequestBodyBankAccount'OneOf2Object obj) : (Data.Aeson..=) "routing_number" (postAccountsAccountRequestBodyBankAccount'OneOf2RoutingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_holder_name" (postAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (postAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "account_number" (postAccountsAccountRequestBodyBankAccount'OneOf2AccountNumber obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountRequestBodyBankAccount'OneOf2Country obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postAccountsAccountRequestBodyBankAccount'OneOf2Currency obj) GHC.Base.<> ((Data.Aeson..=) "object" (postAccountsAccountRequestBodyBankAccount'OneOf2Object obj) GHC.Base.<> (Data.Aeson..=) "routing_number" (postAccountsAccountRequestBodyBankAccount'OneOf2RoutingNumber obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyBankAccount'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyBankAccount'OneOf2" (\obj -> ((((((GHC.Base.pure PostAccountsAccountRequestBodyBankAccount'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number"))
data PostAccountsAccountRequestBodyBankAccount'Variants
    = PostAccountsAccountRequestBodyBankAccount'Variant1 GHC.Base.String
    | PostAccountsAccountRequestBodyBankAccount'Variant2 PostAccountsAccountRequestBodyBankAccount'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyBankAccount'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountsAccountRequestBodyBankAccount'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostAccountsAccountRequestBodyBusinessProfile'
    = PostAccountsAccountRequestBodyBusinessProfile' {postAccountsAccountRequestBodyBusinessProfile'Mcc :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountsAccountRequestBodyBusinessProfile'Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountsAccountRequestBodyBusinessProfile'ProductDescription :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountsAccountRequestBodyBusinessProfile'SupportEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountsAccountRequestBodyBusinessProfile'SupportPhone :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountsAccountRequestBodyBusinessProfile'SupportUrl :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountsAccountRequestBodyBusinessProfile'Url :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyBusinessProfile'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "mcc" (postAccountsAccountRequestBodyBusinessProfile'Mcc obj) : (Data.Aeson..=) "name" (postAccountsAccountRequestBodyBusinessProfile'Name obj) : (Data.Aeson..=) "product_description" (postAccountsAccountRequestBodyBusinessProfile'ProductDescription obj) : (Data.Aeson..=) "support_email" (postAccountsAccountRequestBodyBusinessProfile'SupportEmail obj) : (Data.Aeson..=) "support_phone" (postAccountsAccountRequestBodyBusinessProfile'SupportPhone obj) : (Data.Aeson..=) "support_url" (postAccountsAccountRequestBodyBusinessProfile'SupportUrl obj) : (Data.Aeson..=) "url" (postAccountsAccountRequestBodyBusinessProfile'Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "mcc" (postAccountsAccountRequestBodyBusinessProfile'Mcc obj) GHC.Base.<> ((Data.Aeson..=) "name" (postAccountsAccountRequestBodyBusinessProfile'Name obj) GHC.Base.<> ((Data.Aeson..=) "product_description" (postAccountsAccountRequestBodyBusinessProfile'ProductDescription obj) GHC.Base.<> ((Data.Aeson..=) "support_email" (postAccountsAccountRequestBodyBusinessProfile'SupportEmail obj) GHC.Base.<> ((Data.Aeson..=) "support_phone" (postAccountsAccountRequestBodyBusinessProfile'SupportPhone obj) GHC.Base.<> ((Data.Aeson..=) "support_url" (postAccountsAccountRequestBodyBusinessProfile'SupportUrl obj) GHC.Base.<> (Data.Aeson..=) "url" (postAccountsAccountRequestBodyBusinessProfile'Url obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyBusinessProfile'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyBusinessProfile'" (\obj -> ((((((GHC.Base.pure PostAccountsAccountRequestBodyBusinessProfile' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mcc")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "product_description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "support_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "support_phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "support_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "url"))
data PostAccountsAccountRequestBodyBusinessType'
    = PostAccountsAccountRequestBodyBusinessType'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountRequestBodyBusinessType'EnumTyped GHC.Base.String
    | PostAccountsAccountRequestBodyBusinessType'EnumStringCompany
    | PostAccountsAccountRequestBodyBusinessType'EnumStringGovernmentEntity
    | PostAccountsAccountRequestBodyBusinessType'EnumStringIndividual
    | PostAccountsAccountRequestBodyBusinessType'EnumStringNonProfit
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyBusinessType'
    where toJSON (PostAccountsAccountRequestBodyBusinessType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodyBusinessType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodyBusinessType'EnumStringCompany) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company"
          toJSON (PostAccountsAccountRequestBodyBusinessType'EnumStringGovernmentEntity) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "government_entity"
          toJSON (PostAccountsAccountRequestBodyBusinessType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
          toJSON (PostAccountsAccountRequestBodyBusinessType'EnumStringNonProfit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "non_profit"
instance Data.Aeson.FromJSON PostAccountsAccountRequestBodyBusinessType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company")
                                          then PostAccountsAccountRequestBodyBusinessType'EnumStringCompany
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "government_entity")
                                                then PostAccountsAccountRequestBodyBusinessType'EnumStringGovernmentEntity
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                      then PostAccountsAccountRequestBodyBusinessType'EnumStringIndividual
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "non_profit")
                                                            then PostAccountsAccountRequestBodyBusinessType'EnumStringNonProfit
                                                            else PostAccountsAccountRequestBodyBusinessType'EnumOther val)
data PostAccountsAccountRequestBodyCompany'
    = PostAccountsAccountRequestBodyCompany' {postAccountsAccountRequestBodyCompany'Address :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyCompany'Address'),
                                              postAccountsAccountRequestBodyCompany'AddressKana :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyCompany'AddressKana'),
                                              postAccountsAccountRequestBodyCompany'AddressKanji :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyCompany'AddressKanji'),
                                              postAccountsAccountRequestBodyCompany'DirectorsProvided :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                              postAccountsAccountRequestBodyCompany'ExecutivesProvided :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                              postAccountsAccountRequestBodyCompany'Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                              postAccountsAccountRequestBodyCompany'NameKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                              postAccountsAccountRequestBodyCompany'NameKanji :: (GHC.Maybe.Maybe GHC.Base.String),
                                              postAccountsAccountRequestBodyCompany'OwnersProvided :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                              postAccountsAccountRequestBodyCompany'Phone :: (GHC.Maybe.Maybe GHC.Base.String),
                                              postAccountsAccountRequestBodyCompany'Structure :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyCompany'Structure'),
                                              postAccountsAccountRequestBodyCompany'TaxId :: (GHC.Maybe.Maybe GHC.Base.String),
                                              postAccountsAccountRequestBodyCompany'TaxIdRegistrar :: (GHC.Maybe.Maybe GHC.Base.String),
                                              postAccountsAccountRequestBodyCompany'VatId :: (GHC.Maybe.Maybe GHC.Base.String),
                                              postAccountsAccountRequestBodyCompany'Verification :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyCompany'Verification')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsAccountRequestBodyCompany'Address'
    = PostAccountsAccountRequestBodyCompany'Address' {postAccountsAccountRequestBodyCompany'Address'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountsAccountRequestBodyCompany'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountsAccountRequestBodyCompany'Address'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountsAccountRequestBodyCompany'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountsAccountRequestBodyCompany'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountsAccountRequestBodyCompany'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyCompany'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountRequestBodyCompany'Address'City obj) : (Data.Aeson..=) "country" (postAccountsAccountRequestBodyCompany'Address'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountRequestBodyCompany'Address'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountRequestBodyCompany'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountRequestBodyCompany'Address'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountRequestBodyCompany'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountRequestBodyCompany'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountRequestBodyCompany'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountRequestBodyCompany'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountRequestBodyCompany'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountRequestBodyCompany'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postAccountsAccountRequestBodyCompany'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyCompany'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyCompany'Address'" (\obj -> (((((GHC.Base.pure PostAccountsAccountRequestBodyCompany'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
data PostAccountsAccountRequestBodyCompany'AddressKana'
    = PostAccountsAccountRequestBodyCompany'AddressKana' {postAccountsAccountRequestBodyCompany'AddressKana'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postAccountsAccountRequestBodyCompany'AddressKana'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postAccountsAccountRequestBodyCompany'AddressKana'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postAccountsAccountRequestBodyCompany'AddressKana'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postAccountsAccountRequestBodyCompany'AddressKana'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postAccountsAccountRequestBodyCompany'AddressKana'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postAccountsAccountRequestBodyCompany'AddressKana'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyCompany'AddressKana'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountRequestBodyCompany'AddressKana'City obj) : (Data.Aeson..=) "country" (postAccountsAccountRequestBodyCompany'AddressKana'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountRequestBodyCompany'AddressKana'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountRequestBodyCompany'AddressKana'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountRequestBodyCompany'AddressKana'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountRequestBodyCompany'AddressKana'State obj) : (Data.Aeson..=) "town" (postAccountsAccountRequestBodyCompany'AddressKana'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountRequestBodyCompany'AddressKana'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountRequestBodyCompany'AddressKana'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountRequestBodyCompany'AddressKana'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountRequestBodyCompany'AddressKana'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountRequestBodyCompany'AddressKana'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountsAccountRequestBodyCompany'AddressKana'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountsAccountRequestBodyCompany'AddressKana'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyCompany'AddressKana'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyCompany'AddressKana'" (\obj -> ((((((GHC.Base.pure PostAccountsAccountRequestBodyCompany'AddressKana' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostAccountsAccountRequestBodyCompany'AddressKanji'
    = PostAccountsAccountRequestBodyCompany'AddressKanji' {postAccountsAccountRequestBodyCompany'AddressKanji'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                           postAccountsAccountRequestBodyCompany'AddressKanji'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                           postAccountsAccountRequestBodyCompany'AddressKanji'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                           postAccountsAccountRequestBodyCompany'AddressKanji'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                           postAccountsAccountRequestBodyCompany'AddressKanji'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                           postAccountsAccountRequestBodyCompany'AddressKanji'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                           postAccountsAccountRequestBodyCompany'AddressKanji'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyCompany'AddressKanji'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountRequestBodyCompany'AddressKanji'City obj) : (Data.Aeson..=) "country" (postAccountsAccountRequestBodyCompany'AddressKanji'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountRequestBodyCompany'AddressKanji'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountRequestBodyCompany'AddressKanji'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountRequestBodyCompany'AddressKanji'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountRequestBodyCompany'AddressKanji'State obj) : (Data.Aeson..=) "town" (postAccountsAccountRequestBodyCompany'AddressKanji'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountRequestBodyCompany'AddressKanji'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountRequestBodyCompany'AddressKanji'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountRequestBodyCompany'AddressKanji'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountRequestBodyCompany'AddressKanji'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountRequestBodyCompany'AddressKanji'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountsAccountRequestBodyCompany'AddressKanji'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountsAccountRequestBodyCompany'AddressKanji'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyCompany'AddressKanji'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyCompany'AddressKanji'" (\obj -> ((((((GHC.Base.pure PostAccountsAccountRequestBodyCompany'AddressKanji' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostAccountsAccountRequestBodyCompany'Structure'
    = PostAccountsAccountRequestBodyCompany'Structure'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountRequestBodyCompany'Structure'EnumTyped GHC.Base.String
    | PostAccountsAccountRequestBodyCompany'Structure'EnumString_
    | PostAccountsAccountRequestBodyCompany'Structure'EnumStringGovernmentInstrumentality
    | PostAccountsAccountRequestBodyCompany'Structure'EnumStringGovernmentalUnit
    | PostAccountsAccountRequestBodyCompany'Structure'EnumStringIncorporatedNonProfit
    | PostAccountsAccountRequestBodyCompany'Structure'EnumStringMultiMemberLlc
    | PostAccountsAccountRequestBodyCompany'Structure'EnumStringPrivateCorporation
    | PostAccountsAccountRequestBodyCompany'Structure'EnumStringPrivatePartnership
    | PostAccountsAccountRequestBodyCompany'Structure'EnumStringPublicCorporation
    | PostAccountsAccountRequestBodyCompany'Structure'EnumStringPublicPartnership
    | PostAccountsAccountRequestBodyCompany'Structure'EnumStringTaxExemptGovernmentInstrumentality
    | PostAccountsAccountRequestBodyCompany'Structure'EnumStringUnincorporatedAssociation
    | PostAccountsAccountRequestBodyCompany'Structure'EnumStringUnincorporatedNonProfit
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyCompany'Structure'
    where toJSON (PostAccountsAccountRequestBodyCompany'Structure'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodyCompany'Structure'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodyCompany'Structure'EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
          toJSON (PostAccountsAccountRequestBodyCompany'Structure'EnumStringGovernmentInstrumentality) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "government_instrumentality"
          toJSON (PostAccountsAccountRequestBodyCompany'Structure'EnumStringGovernmentalUnit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "governmental_unit"
          toJSON (PostAccountsAccountRequestBodyCompany'Structure'EnumStringIncorporatedNonProfit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "incorporated_non_profit"
          toJSON (PostAccountsAccountRequestBodyCompany'Structure'EnumStringMultiMemberLlc) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "multi_member_llc"
          toJSON (PostAccountsAccountRequestBodyCompany'Structure'EnumStringPrivateCorporation) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "private_corporation"
          toJSON (PostAccountsAccountRequestBodyCompany'Structure'EnumStringPrivatePartnership) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "private_partnership"
          toJSON (PostAccountsAccountRequestBodyCompany'Structure'EnumStringPublicCorporation) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public_corporation"
          toJSON (PostAccountsAccountRequestBodyCompany'Structure'EnumStringPublicPartnership) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public_partnership"
          toJSON (PostAccountsAccountRequestBodyCompany'Structure'EnumStringTaxExemptGovernmentInstrumentality) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tax_exempt_government_instrumentality"
          toJSON (PostAccountsAccountRequestBodyCompany'Structure'EnumStringUnincorporatedAssociation) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unincorporated_association"
          toJSON (PostAccountsAccountRequestBodyCompany'Structure'EnumStringUnincorporatedNonProfit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unincorporated_non_profit"
instance Data.Aeson.FromJSON PostAccountsAccountRequestBodyCompany'Structure'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostAccountsAccountRequestBodyCompany'Structure'EnumString_
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "government_instrumentality")
                                                then PostAccountsAccountRequestBodyCompany'Structure'EnumStringGovernmentInstrumentality
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "governmental_unit")
                                                      then PostAccountsAccountRequestBodyCompany'Structure'EnumStringGovernmentalUnit
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "incorporated_non_profit")
                                                            then PostAccountsAccountRequestBodyCompany'Structure'EnumStringIncorporatedNonProfit
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "multi_member_llc")
                                                                  then PostAccountsAccountRequestBodyCompany'Structure'EnumStringMultiMemberLlc
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "private_corporation")
                                                                        then PostAccountsAccountRequestBodyCompany'Structure'EnumStringPrivateCorporation
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "private_partnership")
                                                                              then PostAccountsAccountRequestBodyCompany'Structure'EnumStringPrivatePartnership
                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public_corporation")
                                                                                    then PostAccountsAccountRequestBodyCompany'Structure'EnumStringPublicCorporation
                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public_partnership")
                                                                                          then PostAccountsAccountRequestBodyCompany'Structure'EnumStringPublicPartnership
                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tax_exempt_government_instrumentality")
                                                                                                then PostAccountsAccountRequestBodyCompany'Structure'EnumStringTaxExemptGovernmentInstrumentality
                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unincorporated_association")
                                                                                                      then PostAccountsAccountRequestBodyCompany'Structure'EnumStringUnincorporatedAssociation
                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unincorporated_non_profit")
                                                                                                            then PostAccountsAccountRequestBodyCompany'Structure'EnumStringUnincorporatedNonProfit
                                                                                                            else PostAccountsAccountRequestBodyCompany'Structure'EnumOther val)
data PostAccountsAccountRequestBodyCompany'Verification'
    = PostAccountsAccountRequestBodyCompany'Verification' {postAccountsAccountRequestBodyCompany'Verification'Document :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyCompany'Verification'Document')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsAccountRequestBodyCompany'Verification'Document'
    = PostAccountsAccountRequestBodyCompany'Verification'Document' {postAccountsAccountRequestBodyCompany'Verification'Document'Back :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                    postAccountsAccountRequestBodyCompany'Verification'Document'Front :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyCompany'Verification'Document'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountsAccountRequestBodyCompany'Verification'Document'Back obj) : (Data.Aeson..=) "front" (postAccountsAccountRequestBodyCompany'Verification'Document'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountsAccountRequestBodyCompany'Verification'Document'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountsAccountRequestBodyCompany'Verification'Document'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyCompany'Verification'Document'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyCompany'Verification'Document'" (\obj -> (GHC.Base.pure PostAccountsAccountRequestBodyCompany'Verification'Document' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyCompany'Verification'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "document" (postAccountsAccountRequestBodyCompany'Verification'Document obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "document" (postAccountsAccountRequestBodyCompany'Verification'Document obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyCompany'Verification'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyCompany'Verification'" (\obj -> GHC.Base.pure PostAccountsAccountRequestBodyCompany'Verification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document"))
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyCompany'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postAccountsAccountRequestBodyCompany'Address obj) : (Data.Aeson..=) "address_kana" (postAccountsAccountRequestBodyCompany'AddressKana obj) : (Data.Aeson..=) "address_kanji" (postAccountsAccountRequestBodyCompany'AddressKanji obj) : (Data.Aeson..=) "directors_provided" (postAccountsAccountRequestBodyCompany'DirectorsProvided obj) : (Data.Aeson..=) "executives_provided" (postAccountsAccountRequestBodyCompany'ExecutivesProvided obj) : (Data.Aeson..=) "name" (postAccountsAccountRequestBodyCompany'Name obj) : (Data.Aeson..=) "name_kana" (postAccountsAccountRequestBodyCompany'NameKana obj) : (Data.Aeson..=) "name_kanji" (postAccountsAccountRequestBodyCompany'NameKanji obj) : (Data.Aeson..=) "owners_provided" (postAccountsAccountRequestBodyCompany'OwnersProvided obj) : (Data.Aeson..=) "phone" (postAccountsAccountRequestBodyCompany'Phone obj) : (Data.Aeson..=) "structure" (postAccountsAccountRequestBodyCompany'Structure obj) : (Data.Aeson..=) "tax_id" (postAccountsAccountRequestBodyCompany'TaxId obj) : (Data.Aeson..=) "tax_id_registrar" (postAccountsAccountRequestBodyCompany'TaxIdRegistrar obj) : (Data.Aeson..=) "vat_id" (postAccountsAccountRequestBodyCompany'VatId obj) : (Data.Aeson..=) "verification" (postAccountsAccountRequestBodyCompany'Verification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postAccountsAccountRequestBodyCompany'Address obj) GHC.Base.<> ((Data.Aeson..=) "address_kana" (postAccountsAccountRequestBodyCompany'AddressKana obj) GHC.Base.<> ((Data.Aeson..=) "address_kanji" (postAccountsAccountRequestBodyCompany'AddressKanji obj) GHC.Base.<> ((Data.Aeson..=) "directors_provided" (postAccountsAccountRequestBodyCompany'DirectorsProvided obj) GHC.Base.<> ((Data.Aeson..=) "executives_provided" (postAccountsAccountRequestBodyCompany'ExecutivesProvided obj) GHC.Base.<> ((Data.Aeson..=) "name" (postAccountsAccountRequestBodyCompany'Name obj) GHC.Base.<> ((Data.Aeson..=) "name_kana" (postAccountsAccountRequestBodyCompany'NameKana obj) GHC.Base.<> ((Data.Aeson..=) "name_kanji" (postAccountsAccountRequestBodyCompany'NameKanji obj) GHC.Base.<> ((Data.Aeson..=) "owners_provided" (postAccountsAccountRequestBodyCompany'OwnersProvided obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postAccountsAccountRequestBodyCompany'Phone obj) GHC.Base.<> ((Data.Aeson..=) "structure" (postAccountsAccountRequestBodyCompany'Structure obj) GHC.Base.<> ((Data.Aeson..=) "tax_id" (postAccountsAccountRequestBodyCompany'TaxId obj) GHC.Base.<> ((Data.Aeson..=) "tax_id_registrar" (postAccountsAccountRequestBodyCompany'TaxIdRegistrar obj) GHC.Base.<> ((Data.Aeson..=) "vat_id" (postAccountsAccountRequestBodyCompany'VatId obj) GHC.Base.<> (Data.Aeson..=) "verification" (postAccountsAccountRequestBodyCompany'Verification obj)))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyCompany'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyCompany'" (\obj -> ((((((((((((((GHC.Base.pure PostAccountsAccountRequestBodyCompany' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "directors_provided")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "executives_provided")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owners_provided")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "structure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_id_registrar")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "vat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verification"))
data PostAccountsAccountRequestBodyIndividual'
    = PostAccountsAccountRequestBodyIndividual' {postAccountsAccountRequestBodyIndividual'Address :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyIndividual'Address'),
                                                 postAccountsAccountRequestBodyIndividual'AddressKana :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyIndividual'AddressKana'),
                                                 postAccountsAccountRequestBodyIndividual'AddressKanji :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyIndividual'AddressKanji'),
                                                 postAccountsAccountRequestBodyIndividual'Dob :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyIndividual'Dob'Variants),
                                                 postAccountsAccountRequestBodyIndividual'Email :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountsAccountRequestBodyIndividual'FirstName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountsAccountRequestBodyIndividual'FirstNameKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountsAccountRequestBodyIndividual'FirstNameKanji :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountsAccountRequestBodyIndividual'Gender :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountsAccountRequestBodyIndividual'IdNumber :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountsAccountRequestBodyIndividual'LastName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountsAccountRequestBodyIndividual'LastNameKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountsAccountRequestBodyIndividual'LastNameKanji :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountsAccountRequestBodyIndividual'MaidenName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountsAccountRequestBodyIndividual'Metadata :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyIndividual'Metadata'),
                                                 postAccountsAccountRequestBodyIndividual'Phone :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountsAccountRequestBodyIndividual'SsnLast_4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountsAccountRequestBodyIndividual'Verification :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyIndividual'Verification')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsAccountRequestBodyIndividual'Address'
    = PostAccountsAccountRequestBodyIndividual'Address' {postAccountsAccountRequestBodyIndividual'Address'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postAccountsAccountRequestBodyIndividual'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postAccountsAccountRequestBodyIndividual'Address'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postAccountsAccountRequestBodyIndividual'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postAccountsAccountRequestBodyIndividual'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postAccountsAccountRequestBodyIndividual'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyIndividual'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountRequestBodyIndividual'Address'City obj) : (Data.Aeson..=) "country" (postAccountsAccountRequestBodyIndividual'Address'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountRequestBodyIndividual'Address'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountRequestBodyIndividual'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountRequestBodyIndividual'Address'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountRequestBodyIndividual'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountRequestBodyIndividual'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountRequestBodyIndividual'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountRequestBodyIndividual'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountRequestBodyIndividual'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountRequestBodyIndividual'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postAccountsAccountRequestBodyIndividual'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyIndividual'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyIndividual'Address'" (\obj -> (((((GHC.Base.pure PostAccountsAccountRequestBodyIndividual'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
data PostAccountsAccountRequestBodyIndividual'AddressKana'
    = PostAccountsAccountRequestBodyIndividual'AddressKana' {postAccountsAccountRequestBodyIndividual'AddressKana'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                             postAccountsAccountRequestBodyIndividual'AddressKana'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                             postAccountsAccountRequestBodyIndividual'AddressKana'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                             postAccountsAccountRequestBodyIndividual'AddressKana'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                             postAccountsAccountRequestBodyIndividual'AddressKana'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                             postAccountsAccountRequestBodyIndividual'AddressKana'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                             postAccountsAccountRequestBodyIndividual'AddressKana'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyIndividual'AddressKana'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountRequestBodyIndividual'AddressKana'City obj) : (Data.Aeson..=) "country" (postAccountsAccountRequestBodyIndividual'AddressKana'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountRequestBodyIndividual'AddressKana'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountRequestBodyIndividual'AddressKana'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountRequestBodyIndividual'AddressKana'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountRequestBodyIndividual'AddressKana'State obj) : (Data.Aeson..=) "town" (postAccountsAccountRequestBodyIndividual'AddressKana'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountRequestBodyIndividual'AddressKana'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountRequestBodyIndividual'AddressKana'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountRequestBodyIndividual'AddressKana'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountRequestBodyIndividual'AddressKana'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountRequestBodyIndividual'AddressKana'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountsAccountRequestBodyIndividual'AddressKana'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountsAccountRequestBodyIndividual'AddressKana'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyIndividual'AddressKana'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyIndividual'AddressKana'" (\obj -> ((((((GHC.Base.pure PostAccountsAccountRequestBodyIndividual'AddressKana' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostAccountsAccountRequestBodyIndividual'AddressKanji'
    = PostAccountsAccountRequestBodyIndividual'AddressKanji' {postAccountsAccountRequestBodyIndividual'AddressKanji'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              postAccountsAccountRequestBodyIndividual'AddressKanji'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              postAccountsAccountRequestBodyIndividual'AddressKanji'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              postAccountsAccountRequestBodyIndividual'AddressKanji'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              postAccountsAccountRequestBodyIndividual'AddressKanji'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              postAccountsAccountRequestBodyIndividual'AddressKanji'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              postAccountsAccountRequestBodyIndividual'AddressKanji'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyIndividual'AddressKanji'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountRequestBodyIndividual'AddressKanji'City obj) : (Data.Aeson..=) "country" (postAccountsAccountRequestBodyIndividual'AddressKanji'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountRequestBodyIndividual'AddressKanji'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountRequestBodyIndividual'AddressKanji'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountRequestBodyIndividual'AddressKanji'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountRequestBodyIndividual'AddressKanji'State obj) : (Data.Aeson..=) "town" (postAccountsAccountRequestBodyIndividual'AddressKanji'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountRequestBodyIndividual'AddressKanji'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountRequestBodyIndividual'AddressKanji'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountRequestBodyIndividual'AddressKanji'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountRequestBodyIndividual'AddressKanji'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountRequestBodyIndividual'AddressKanji'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountsAccountRequestBodyIndividual'AddressKanji'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountsAccountRequestBodyIndividual'AddressKanji'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyIndividual'AddressKanji'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyIndividual'AddressKanji'" (\obj -> ((((((GHC.Base.pure PostAccountsAccountRequestBodyIndividual'AddressKanji' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostAccountsAccountRequestBodyIndividual'Dob'OneOf1
    = PostAccountsAccountRequestBodyIndividual'Dob'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountRequestBodyIndividual'Dob'OneOf1EnumTyped GHC.Base.String
    | PostAccountsAccountRequestBodyIndividual'Dob'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyIndividual'Dob'OneOf1
    where toJSON (PostAccountsAccountRequestBodyIndividual'Dob'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodyIndividual'Dob'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodyIndividual'Dob'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostAccountsAccountRequestBodyIndividual'Dob'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostAccountsAccountRequestBodyIndividual'Dob'OneOf1EnumString_
                                          else PostAccountsAccountRequestBodyIndividual'Dob'OneOf1EnumOther val)
data PostAccountsAccountRequestBodyIndividual'Dob'OneOf2
    = PostAccountsAccountRequestBodyIndividual'Dob'OneOf2 {postAccountsAccountRequestBodyIndividual'Dob'OneOf2Day :: GHC.Integer.Type.Integer,
                                                           postAccountsAccountRequestBodyIndividual'Dob'OneOf2Month :: GHC.Integer.Type.Integer,
                                                           postAccountsAccountRequestBodyIndividual'Dob'OneOf2Year :: GHC.Integer.Type.Integer}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyIndividual'Dob'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "day" (postAccountsAccountRequestBodyIndividual'Dob'OneOf2Day obj) : (Data.Aeson..=) "month" (postAccountsAccountRequestBodyIndividual'Dob'OneOf2Month obj) : (Data.Aeson..=) "year" (postAccountsAccountRequestBodyIndividual'Dob'OneOf2Year obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "day" (postAccountsAccountRequestBodyIndividual'Dob'OneOf2Day obj) GHC.Base.<> ((Data.Aeson..=) "month" (postAccountsAccountRequestBodyIndividual'Dob'OneOf2Month obj) GHC.Base.<> (Data.Aeson..=) "year" (postAccountsAccountRequestBodyIndividual'Dob'OneOf2Year obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyIndividual'Dob'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyIndividual'Dob'OneOf2" (\obj -> ((GHC.Base.pure PostAccountsAccountRequestBodyIndividual'Dob'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "year"))
data PostAccountsAccountRequestBodyIndividual'Dob'Variants
    = PostAccountsAccountRequestBodyIndividual'Dob'Variant1 PostAccountsAccountRequestBodyIndividual'Dob'OneOf1
    | PostAccountsAccountRequestBodyIndividual'Dob'Variant2 PostAccountsAccountRequestBodyIndividual'Dob'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyIndividual'Dob'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountsAccountRequestBodyIndividual'Dob'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostAccountsAccountRequestBodyIndividual'Metadata'
    = PostAccountsAccountRequestBodyIndividual'Metadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyIndividual'Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyIndividual'Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyIndividual'Metadata'" (\obj -> GHC.Base.pure PostAccountsAccountRequestBodyIndividual'Metadata')
data PostAccountsAccountRequestBodyIndividual'Verification'
    = PostAccountsAccountRequestBodyIndividual'Verification' {postAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument'),
                                                              postAccountsAccountRequestBodyIndividual'Verification'Document :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyIndividual'Verification'Document')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument'
    = PostAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument' {postAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument'Back :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                                 postAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument'Front :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument'Back obj) : (Data.Aeson..=) "front" (postAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument'" (\obj -> (GHC.Base.pure PostAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
data PostAccountsAccountRequestBodyIndividual'Verification'Document'
    = PostAccountsAccountRequestBodyIndividual'Verification'Document' {postAccountsAccountRequestBodyIndividual'Verification'Document'Back :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                       postAccountsAccountRequestBodyIndividual'Verification'Document'Front :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyIndividual'Verification'Document'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountsAccountRequestBodyIndividual'Verification'Document'Back obj) : (Data.Aeson..=) "front" (postAccountsAccountRequestBodyIndividual'Verification'Document'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountsAccountRequestBodyIndividual'Verification'Document'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountsAccountRequestBodyIndividual'Verification'Document'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyIndividual'Verification'Document'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyIndividual'Verification'Document'" (\obj -> (GHC.Base.pure PostAccountsAccountRequestBodyIndividual'Verification'Document' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyIndividual'Verification'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "additional_document" (postAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument obj) : (Data.Aeson..=) "document" (postAccountsAccountRequestBodyIndividual'Verification'Document obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "additional_document" (postAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument obj) GHC.Base.<> (Data.Aeson..=) "document" (postAccountsAccountRequestBodyIndividual'Verification'Document obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyIndividual'Verification'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyIndividual'Verification'" (\obj -> (GHC.Base.pure PostAccountsAccountRequestBodyIndividual'Verification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "additional_document")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document"))
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyIndividual'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postAccountsAccountRequestBodyIndividual'Address obj) : (Data.Aeson..=) "address_kana" (postAccountsAccountRequestBodyIndividual'AddressKana obj) : (Data.Aeson..=) "address_kanji" (postAccountsAccountRequestBodyIndividual'AddressKanji obj) : (Data.Aeson..=) "dob" (postAccountsAccountRequestBodyIndividual'Dob obj) : (Data.Aeson..=) "email" (postAccountsAccountRequestBodyIndividual'Email obj) : (Data.Aeson..=) "first_name" (postAccountsAccountRequestBodyIndividual'FirstName obj) : (Data.Aeson..=) "first_name_kana" (postAccountsAccountRequestBodyIndividual'FirstNameKana obj) : (Data.Aeson..=) "first_name_kanji" (postAccountsAccountRequestBodyIndividual'FirstNameKanji obj) : (Data.Aeson..=) "gender" (postAccountsAccountRequestBodyIndividual'Gender obj) : (Data.Aeson..=) "id_number" (postAccountsAccountRequestBodyIndividual'IdNumber obj) : (Data.Aeson..=) "last_name" (postAccountsAccountRequestBodyIndividual'LastName obj) : (Data.Aeson..=) "last_name_kana" (postAccountsAccountRequestBodyIndividual'LastNameKana obj) : (Data.Aeson..=) "last_name_kanji" (postAccountsAccountRequestBodyIndividual'LastNameKanji obj) : (Data.Aeson..=) "maiden_name" (postAccountsAccountRequestBodyIndividual'MaidenName obj) : (Data.Aeson..=) "metadata" (postAccountsAccountRequestBodyIndividual'Metadata obj) : (Data.Aeson..=) "phone" (postAccountsAccountRequestBodyIndividual'Phone obj) : (Data.Aeson..=) "ssn_last_4" (postAccountsAccountRequestBodyIndividual'SsnLast_4 obj) : (Data.Aeson..=) "verification" (postAccountsAccountRequestBodyIndividual'Verification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postAccountsAccountRequestBodyIndividual'Address obj) GHC.Base.<> ((Data.Aeson..=) "address_kana" (postAccountsAccountRequestBodyIndividual'AddressKana obj) GHC.Base.<> ((Data.Aeson..=) "address_kanji" (postAccountsAccountRequestBodyIndividual'AddressKanji obj) GHC.Base.<> ((Data.Aeson..=) "dob" (postAccountsAccountRequestBodyIndividual'Dob obj) GHC.Base.<> ((Data.Aeson..=) "email" (postAccountsAccountRequestBodyIndividual'Email obj) GHC.Base.<> ((Data.Aeson..=) "first_name" (postAccountsAccountRequestBodyIndividual'FirstName obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kana" (postAccountsAccountRequestBodyIndividual'FirstNameKana obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kanji" (postAccountsAccountRequestBodyIndividual'FirstNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "gender" (postAccountsAccountRequestBodyIndividual'Gender obj) GHC.Base.<> ((Data.Aeson..=) "id_number" (postAccountsAccountRequestBodyIndividual'IdNumber obj) GHC.Base.<> ((Data.Aeson..=) "last_name" (postAccountsAccountRequestBodyIndividual'LastName obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kana" (postAccountsAccountRequestBodyIndividual'LastNameKana obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kanji" (postAccountsAccountRequestBodyIndividual'LastNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "maiden_name" (postAccountsAccountRequestBodyIndividual'MaidenName obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postAccountsAccountRequestBodyIndividual'Metadata obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postAccountsAccountRequestBodyIndividual'Phone obj) GHC.Base.<> ((Data.Aeson..=) "ssn_last_4" (postAccountsAccountRequestBodyIndividual'SsnLast_4 obj) GHC.Base.<> (Data.Aeson..=) "verification" (postAccountsAccountRequestBodyIndividual'Verification obj))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyIndividual'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyIndividual'" (\obj -> (((((((((((((((((GHC.Base.pure PostAccountsAccountRequestBodyIndividual' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dob")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gender")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "maiden_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ssn_last_4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verification"))
data PostAccountsAccountRequestBodyMetadata'
    = PostAccountsAccountRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyMetadata'" (\obj -> GHC.Base.pure PostAccountsAccountRequestBodyMetadata')
data PostAccountsAccountRequestBodyRequestedCapabilities'
    = PostAccountsAccountRequestBodyRequestedCapabilities'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountRequestBodyRequestedCapabilities'EnumTyped GHC.Base.String
    | PostAccountsAccountRequestBodyRequestedCapabilities'EnumStringCardIssuing
    | PostAccountsAccountRequestBodyRequestedCapabilities'EnumStringCardPayments
    | PostAccountsAccountRequestBodyRequestedCapabilities'EnumStringLegacyPayments
    | PostAccountsAccountRequestBodyRequestedCapabilities'EnumStringTransfers
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyRequestedCapabilities'
    where toJSON (PostAccountsAccountRequestBodyRequestedCapabilities'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodyRequestedCapabilities'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodyRequestedCapabilities'EnumStringCardIssuing) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_issuing"
          toJSON (PostAccountsAccountRequestBodyRequestedCapabilities'EnumStringCardPayments) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_payments"
          toJSON (PostAccountsAccountRequestBodyRequestedCapabilities'EnumStringLegacyPayments) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "legacy_payments"
          toJSON (PostAccountsAccountRequestBodyRequestedCapabilities'EnumStringTransfers) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "transfers"
instance Data.Aeson.FromJSON PostAccountsAccountRequestBodyRequestedCapabilities'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_issuing")
                                          then PostAccountsAccountRequestBodyRequestedCapabilities'EnumStringCardIssuing
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_payments")
                                                then PostAccountsAccountRequestBodyRequestedCapabilities'EnumStringCardPayments
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "legacy_payments")
                                                      then PostAccountsAccountRequestBodyRequestedCapabilities'EnumStringLegacyPayments
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "transfers")
                                                            then PostAccountsAccountRequestBodyRequestedCapabilities'EnumStringTransfers
                                                            else PostAccountsAccountRequestBodyRequestedCapabilities'EnumOther val)
data PostAccountsAccountRequestBodySettings'
    = PostAccountsAccountRequestBodySettings' {postAccountsAccountRequestBodySettings'Branding :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodySettings'Branding'),
                                               postAccountsAccountRequestBodySettings'CardPayments :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodySettings'CardPayments'),
                                               postAccountsAccountRequestBodySettings'Payments :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodySettings'Payments'),
                                               postAccountsAccountRequestBodySettings'Payouts :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodySettings'Payouts')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsAccountRequestBodySettings'Branding'
    = PostAccountsAccountRequestBodySettings'Branding' {postAccountsAccountRequestBodySettings'Branding'Icon :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postAccountsAccountRequestBodySettings'Branding'Logo :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postAccountsAccountRequestBodySettings'Branding'PrimaryColor :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodySettings'Branding'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "icon" (postAccountsAccountRequestBodySettings'Branding'Icon obj) : (Data.Aeson..=) "logo" (postAccountsAccountRequestBodySettings'Branding'Logo obj) : (Data.Aeson..=) "primary_color" (postAccountsAccountRequestBodySettings'Branding'PrimaryColor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "icon" (postAccountsAccountRequestBodySettings'Branding'Icon obj) GHC.Base.<> ((Data.Aeson..=) "logo" (postAccountsAccountRequestBodySettings'Branding'Logo obj) GHC.Base.<> (Data.Aeson..=) "primary_color" (postAccountsAccountRequestBodySettings'Branding'PrimaryColor obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodySettings'Branding'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodySettings'Branding'" (\obj -> ((GHC.Base.pure PostAccountsAccountRequestBodySettings'Branding' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "icon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "logo")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "primary_color"))
data PostAccountsAccountRequestBodySettings'CardPayments'
    = PostAccountsAccountRequestBodySettings'CardPayments' {postAccountsAccountRequestBodySettings'CardPayments'DeclineOn :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodySettings'CardPayments'DeclineOn'),
                                                            postAccountsAccountRequestBodySettings'CardPayments'StatementDescriptorPrefix :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsAccountRequestBodySettings'CardPayments'DeclineOn'
    = PostAccountsAccountRequestBodySettings'CardPayments'DeclineOn' {postAccountsAccountRequestBodySettings'CardPayments'DeclineOn'AvsFailure :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                                      postAccountsAccountRequestBodySettings'CardPayments'DeclineOn'CvcFailure :: (GHC.Maybe.Maybe GHC.Types.Bool)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodySettings'CardPayments'DeclineOn'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "avs_failure" (postAccountsAccountRequestBodySettings'CardPayments'DeclineOn'AvsFailure obj) : (Data.Aeson..=) "cvc_failure" (postAccountsAccountRequestBodySettings'CardPayments'DeclineOn'CvcFailure obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "avs_failure" (postAccountsAccountRequestBodySettings'CardPayments'DeclineOn'AvsFailure obj) GHC.Base.<> (Data.Aeson..=) "cvc_failure" (postAccountsAccountRequestBodySettings'CardPayments'DeclineOn'CvcFailure obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodySettings'CardPayments'DeclineOn'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodySettings'CardPayments'DeclineOn'" (\obj -> (GHC.Base.pure PostAccountsAccountRequestBodySettings'CardPayments'DeclineOn' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "avs_failure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc_failure"))
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodySettings'CardPayments'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "decline_on" (postAccountsAccountRequestBodySettings'CardPayments'DeclineOn obj) : (Data.Aeson..=) "statement_descriptor_prefix" (postAccountsAccountRequestBodySettings'CardPayments'StatementDescriptorPrefix obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "decline_on" (postAccountsAccountRequestBodySettings'CardPayments'DeclineOn obj) GHC.Base.<> (Data.Aeson..=) "statement_descriptor_prefix" (postAccountsAccountRequestBodySettings'CardPayments'StatementDescriptorPrefix obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodySettings'CardPayments'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodySettings'CardPayments'" (\obj -> (GHC.Base.pure PostAccountsAccountRequestBodySettings'CardPayments' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "decline_on")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_prefix"))
data PostAccountsAccountRequestBodySettings'Payments'
    = PostAccountsAccountRequestBodySettings'Payments' {postAccountsAccountRequestBodySettings'Payments'StatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postAccountsAccountRequestBodySettings'Payments'StatementDescriptorKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postAccountsAccountRequestBodySettings'Payments'StatementDescriptorKanji :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodySettings'Payments'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "statement_descriptor" (postAccountsAccountRequestBodySettings'Payments'StatementDescriptor obj) : (Data.Aeson..=) "statement_descriptor_kana" (postAccountsAccountRequestBodySettings'Payments'StatementDescriptorKana obj) : (Data.Aeson..=) "statement_descriptor_kanji" (postAccountsAccountRequestBodySettings'Payments'StatementDescriptorKanji obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "statement_descriptor" (postAccountsAccountRequestBodySettings'Payments'StatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor_kana" (postAccountsAccountRequestBodySettings'Payments'StatementDescriptorKana obj) GHC.Base.<> (Data.Aeson..=) "statement_descriptor_kanji" (postAccountsAccountRequestBodySettings'Payments'StatementDescriptorKanji obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodySettings'Payments'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodySettings'Payments'" (\obj -> ((GHC.Base.pure PostAccountsAccountRequestBodySettings'Payments' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_kanji"))
data PostAccountsAccountRequestBodySettings'Payouts'
    = PostAccountsAccountRequestBodySettings'Payouts' {postAccountsAccountRequestBodySettings'Payouts'DebitNegativeBalances :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                       postAccountsAccountRequestBodySettings'Payouts'Schedule :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodySettings'Payouts'Schedule'),
                                                       postAccountsAccountRequestBodySettings'Payouts'StatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsAccountRequestBodySettings'Payouts'Schedule'
    = PostAccountsAccountRequestBodySettings'Payouts'Schedule' {postAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'Variants),
                                                                postAccountsAccountRequestBodySettings'Payouts'Schedule'Interval :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'),
                                                                postAccountsAccountRequestBodySettings'Payouts'Schedule'MonthlyAnchor :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                                postAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1
    = PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumTyped GHC.Base.String
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumStringMinimum
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1
    where toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumStringMinimum) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "minimum"
instance Data.Aeson.FromJSON PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "minimum")
                                          then PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumStringMinimum
                                          else PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumOther val)
data PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'Variants
    = PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'Variant1 PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'Variant2 GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'
    = PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumTyped GHC.Base.String
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringDaily
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringManual
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringMonthly
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringWeekly
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'
    where toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringDaily) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "daily"
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringManual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "manual"
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringMonthly) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "monthly"
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringWeekly) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "weekly"
instance Data.Aeson.FromJSON PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "daily")
                                          then PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringDaily
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "manual")
                                                then PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringManual
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "monthly")
                                                      then PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringMonthly
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "weekly")
                                                            then PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringWeekly
                                                            else PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumOther val)
data PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'
    = PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumTyped GHC.Base.String
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringFriday
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringMonday
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringSaturday
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringSunday
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringThursday
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringTuesday
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringWednesday
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'
    where toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringFriday) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "friday"
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringMonday) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "monday"
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringSaturday) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "saturday"
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringSunday) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sunday"
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringThursday) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "thursday"
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringTuesday) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tuesday"
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringWednesday) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "wednesday"
instance Data.Aeson.FromJSON PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "friday")
                                          then PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringFriday
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "monday")
                                                then PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringMonday
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "saturday")
                                                      then PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringSaturday
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sunday")
                                                            then PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringSunday
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "thursday")
                                                                  then PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringThursday
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tuesday")
                                                                        then PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringTuesday
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "wednesday")
                                                                              then PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringWednesday
                                                                              else PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumOther val)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodySettings'Payouts'Schedule'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "delay_days" (postAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays obj) : (Data.Aeson..=) "interval" (postAccountsAccountRequestBodySettings'Payouts'Schedule'Interval obj) : (Data.Aeson..=) "monthly_anchor" (postAccountsAccountRequestBodySettings'Payouts'Schedule'MonthlyAnchor obj) : (Data.Aeson..=) "weekly_anchor" (postAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "delay_days" (postAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays obj) GHC.Base.<> ((Data.Aeson..=) "interval" (postAccountsAccountRequestBodySettings'Payouts'Schedule'Interval obj) GHC.Base.<> ((Data.Aeson..=) "monthly_anchor" (postAccountsAccountRequestBodySettings'Payouts'Schedule'MonthlyAnchor obj) GHC.Base.<> (Data.Aeson..=) "weekly_anchor" (postAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodySettings'Payouts'Schedule'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodySettings'Payouts'Schedule'" (\obj -> (((GHC.Base.pure PostAccountsAccountRequestBodySettings'Payouts'Schedule' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "delay_days")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "monthly_anchor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "weekly_anchor"))
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodySettings'Payouts'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "debit_negative_balances" (postAccountsAccountRequestBodySettings'Payouts'DebitNegativeBalances obj) : (Data.Aeson..=) "schedule" (postAccountsAccountRequestBodySettings'Payouts'Schedule obj) : (Data.Aeson..=) "statement_descriptor" (postAccountsAccountRequestBodySettings'Payouts'StatementDescriptor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "debit_negative_balances" (postAccountsAccountRequestBodySettings'Payouts'DebitNegativeBalances obj) GHC.Base.<> ((Data.Aeson..=) "schedule" (postAccountsAccountRequestBodySettings'Payouts'Schedule obj) GHC.Base.<> (Data.Aeson..=) "statement_descriptor" (postAccountsAccountRequestBodySettings'Payouts'StatementDescriptor obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodySettings'Payouts'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodySettings'Payouts'" (\obj -> ((GHC.Base.pure PostAccountsAccountRequestBodySettings'Payouts' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "debit_negative_balances")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "schedule")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor"))
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodySettings'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "branding" (postAccountsAccountRequestBodySettings'Branding obj) : (Data.Aeson..=) "card_payments" (postAccountsAccountRequestBodySettings'CardPayments obj) : (Data.Aeson..=) "payments" (postAccountsAccountRequestBodySettings'Payments obj) : (Data.Aeson..=) "payouts" (postAccountsAccountRequestBodySettings'Payouts obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "branding" (postAccountsAccountRequestBodySettings'Branding obj) GHC.Base.<> ((Data.Aeson..=) "card_payments" (postAccountsAccountRequestBodySettings'CardPayments obj) GHC.Base.<> ((Data.Aeson..=) "payments" (postAccountsAccountRequestBodySettings'Payments obj) GHC.Base.<> (Data.Aeson..=) "payouts" (postAccountsAccountRequestBodySettings'Payouts obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodySettings'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodySettings'" (\obj -> (((GHC.Base.pure PostAccountsAccountRequestBodySettings' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "branding")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card_payments")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payments")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payouts"))
data PostAccountsAccountRequestBodyTosAcceptance'
    = PostAccountsAccountRequestBodyTosAcceptance' {postAccountsAccountRequestBodyTosAcceptance'Date :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                    postAccountsAccountRequestBodyTosAcceptance'Ip :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    postAccountsAccountRequestBodyTosAcceptance'UserAgent :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyTosAcceptance'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "date" (postAccountsAccountRequestBodyTosAcceptance'Date obj) : (Data.Aeson..=) "ip" (postAccountsAccountRequestBodyTosAcceptance'Ip obj) : (Data.Aeson..=) "user_agent" (postAccountsAccountRequestBodyTosAcceptance'UserAgent obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "date" (postAccountsAccountRequestBodyTosAcceptance'Date obj) GHC.Base.<> ((Data.Aeson..=) "ip" (postAccountsAccountRequestBodyTosAcceptance'Ip obj) GHC.Base.<> (Data.Aeson..=) "user_agent" (postAccountsAccountRequestBodyTosAcceptance'UserAgent obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyTosAcceptance'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyTosAcceptance'" (\obj -> ((GHC.Base.pure PostAccountsAccountRequestBodyTosAcceptance' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "user_agent"))
instance Data.Aeson.ToJSON PostAccountsAccountRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_token" (postAccountsAccountRequestBodyAccountToken obj) : (Data.Aeson..=) "bank_account" (postAccountsAccountRequestBodyBankAccount obj) : (Data.Aeson..=) "business_profile" (postAccountsAccountRequestBodyBusinessProfile obj) : (Data.Aeson..=) "business_type" (postAccountsAccountRequestBodyBusinessType obj) : (Data.Aeson..=) "company" (postAccountsAccountRequestBodyCompany obj) : (Data.Aeson..=) "default_currency" (postAccountsAccountRequestBodyDefaultCurrency obj) : (Data.Aeson..=) "email" (postAccountsAccountRequestBodyEmail obj) : (Data.Aeson..=) "expand" (postAccountsAccountRequestBodyExpand obj) : (Data.Aeson..=) "external_account" (postAccountsAccountRequestBodyExternalAccount obj) : (Data.Aeson..=) "individual" (postAccountsAccountRequestBodyIndividual obj) : (Data.Aeson..=) "metadata" (postAccountsAccountRequestBodyMetadata obj) : (Data.Aeson..=) "requested_capabilities" (postAccountsAccountRequestBodyRequestedCapabilities obj) : (Data.Aeson..=) "settings" (postAccountsAccountRequestBodySettings obj) : (Data.Aeson..=) "tos_acceptance" (postAccountsAccountRequestBodyTosAcceptance obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_token" (postAccountsAccountRequestBodyAccountToken obj) GHC.Base.<> ((Data.Aeson..=) "bank_account" (postAccountsAccountRequestBodyBankAccount obj) GHC.Base.<> ((Data.Aeson..=) "business_profile" (postAccountsAccountRequestBodyBusinessProfile obj) GHC.Base.<> ((Data.Aeson..=) "business_type" (postAccountsAccountRequestBodyBusinessType obj) GHC.Base.<> ((Data.Aeson..=) "company" (postAccountsAccountRequestBodyCompany obj) GHC.Base.<> ((Data.Aeson..=) "default_currency" (postAccountsAccountRequestBodyDefaultCurrency obj) GHC.Base.<> ((Data.Aeson..=) "email" (postAccountsAccountRequestBodyEmail obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postAccountsAccountRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "external_account" (postAccountsAccountRequestBodyExternalAccount obj) GHC.Base.<> ((Data.Aeson..=) "individual" (postAccountsAccountRequestBodyIndividual obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postAccountsAccountRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "requested_capabilities" (postAccountsAccountRequestBodyRequestedCapabilities obj) GHC.Base.<> ((Data.Aeson..=) "settings" (postAccountsAccountRequestBodySettings obj) GHC.Base.<> (Data.Aeson..=) "tos_acceptance" (postAccountsAccountRequestBodyTosAcceptance obj))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBody" (\obj -> (((((((((((((GHC.Base.pure PostAccountsAccountRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "business_profile")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "business_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "company")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "external_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "individual")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "requested_capabilities")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "settings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tos_acceptance"))

data PostAccountsAccountResponse
    = PostAccountsAccountResponseError GHC.Base.String
    | PostAccountsAccountResponse200 Account
    | PostAccountsAccountResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
