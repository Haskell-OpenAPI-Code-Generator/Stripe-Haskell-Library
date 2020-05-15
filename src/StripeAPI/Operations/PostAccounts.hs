{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostAccounts where

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
-- POST /v1/accounts
postAccounts :: forall m s . (StripeAPI.Common.MonadHTTP m,
                              StripeAPI.Common.SecurityScheme s) =>
                StripeAPI.Common.Configuration s ->
                PostAccountsRequestBody ->
                m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                      (Network.HTTP.Client.Types.Response PostAccountsResponse))
postAccounts config
             body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      Account)
                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/accounts") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                 StripeAPI.Common.SecurityScheme s) =>
                   StripeAPI.Common.Configuration s ->
                   PostAccountsRequestBody ->
                   m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountsRaw config
                body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/accounts") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                               StripeAPI.Common.SecurityScheme s) =>
                 PostAccountsRequestBody ->
                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                    m
                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                        (Network.HTTP.Client.Types.Response PostAccountsResponse))
postAccountsM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostAccountsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                       Account)
                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/accounts") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                  StripeAPI.Common.SecurityScheme s) =>
                    PostAccountsRequestBody ->
                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                       m
                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/accounts") [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostAccountsRequestBody
    = PostAccountsRequestBody {postAccountsRequestBodyAccountToken :: (GHC.Maybe.Maybe GHC.Base.String),
                               postAccountsRequestBodyBankAccount :: (GHC.Maybe.Maybe PostAccountsRequestBodyBankAccount'Variants),
                               postAccountsRequestBodyBusinessProfile :: (GHC.Maybe.Maybe PostAccountsRequestBodyBusinessProfile'),
                               postAccountsRequestBodyBusinessType :: (GHC.Maybe.Maybe PostAccountsRequestBodyBusinessType'),
                               postAccountsRequestBodyCompany :: (GHC.Maybe.Maybe PostAccountsRequestBodyCompany'),
                               postAccountsRequestBodyCountry :: (GHC.Maybe.Maybe GHC.Base.String),
                               postAccountsRequestBodyDefaultCurrency :: (GHC.Maybe.Maybe GHC.Base.String),
                               postAccountsRequestBodyEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                               postAccountsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                               postAccountsRequestBodyExternalAccount :: (GHC.Maybe.Maybe GHC.Base.String),
                               postAccountsRequestBodyIndividual :: (GHC.Maybe.Maybe PostAccountsRequestBodyIndividual'),
                               postAccountsRequestBodyMetadata :: (GHC.Maybe.Maybe PostAccountsRequestBodyMetadata'),
                               postAccountsRequestBodyRequestedCapabilities :: (GHC.Maybe.Maybe ([] PostAccountsRequestBodyRequestedCapabilities')),
                               postAccountsRequestBodySettings :: (GHC.Maybe.Maybe PostAccountsRequestBodySettings'),
                               postAccountsRequestBodyTosAcceptance :: (GHC.Maybe.Maybe PostAccountsRequestBodyTosAcceptance'),
                               postAccountsRequestBodyType :: (GHC.Maybe.Maybe PostAccountsRequestBodyType')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsRequestBodyBankAccount'OneOf2
    = PostAccountsRequestBodyBankAccount'OneOf2 {postAccountsRequestBodyBankAccount'OneOf2AccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountsRequestBodyBankAccount'OneOf2AccountHolderType :: (GHC.Maybe.Maybe PostAccountsRequestBodyBankAccount'OneOf2AccountHolderType'),
                                                 postAccountsRequestBodyBankAccount'OneOf2AccountNumber :: GHC.Base.String,
                                                 postAccountsRequestBodyBankAccount'OneOf2Country :: GHC.Base.String,
                                                 postAccountsRequestBodyBankAccount'OneOf2Currency :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountsRequestBodyBankAccount'OneOf2Object :: (GHC.Maybe.Maybe PostAccountsRequestBodyBankAccount'OneOf2Object'),
                                                 postAccountsRequestBodyBankAccount'OneOf2RoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsRequestBodyBankAccount'OneOf2AccountHolderType'
    = PostAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumTyped GHC.Base.String
    | PostAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany
    | PostAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsRequestBodyBankAccount'OneOf2AccountHolderType'
    where toJSON (PostAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company"
          toJSON (PostAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
instance Data.Aeson.FromJSON PostAccountsRequestBodyBankAccount'OneOf2AccountHolderType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company")
                                          then PostAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                then PostAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual
                                                else PostAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther val)
data PostAccountsRequestBodyBankAccount'OneOf2Object'
    = PostAccountsRequestBodyBankAccount'OneOf2Object'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsRequestBodyBankAccount'OneOf2Object'EnumTyped GHC.Base.String
    | PostAccountsRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsRequestBodyBankAccount'OneOf2Object'
    where toJSON (PostAccountsRequestBodyBankAccount'OneOf2Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsRequestBodyBankAccount'OneOf2Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account"
instance Data.Aeson.FromJSON PostAccountsRequestBodyBankAccount'OneOf2Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account")
                                          then PostAccountsRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount
                                          else PostAccountsRequestBodyBankAccount'OneOf2Object'EnumOther val)
instance Data.Aeson.ToJSON PostAccountsRequestBodyBankAccount'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_holder_name" (postAccountsRequestBodyBankAccount'OneOf2AccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (postAccountsRequestBodyBankAccount'OneOf2AccountHolderType obj) : (Data.Aeson..=) "account_number" (postAccountsRequestBodyBankAccount'OneOf2AccountNumber obj) : (Data.Aeson..=) "country" (postAccountsRequestBodyBankAccount'OneOf2Country obj) : (Data.Aeson..=) "currency" (postAccountsRequestBodyBankAccount'OneOf2Currency obj) : (Data.Aeson..=) "object" (postAccountsRequestBodyBankAccount'OneOf2Object obj) : (Data.Aeson..=) "routing_number" (postAccountsRequestBodyBankAccount'OneOf2RoutingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_holder_name" (postAccountsRequestBodyBankAccount'OneOf2AccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (postAccountsRequestBodyBankAccount'OneOf2AccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "account_number" (postAccountsRequestBodyBankAccount'OneOf2AccountNumber obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsRequestBodyBankAccount'OneOf2Country obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postAccountsRequestBodyBankAccount'OneOf2Currency obj) GHC.Base.<> ((Data.Aeson..=) "object" (postAccountsRequestBodyBankAccount'OneOf2Object obj) GHC.Base.<> (Data.Aeson..=) "routing_number" (postAccountsRequestBodyBankAccount'OneOf2RoutingNumber obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsRequestBodyBankAccount'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsRequestBodyBankAccount'OneOf2" (\obj -> ((((((GHC.Base.pure PostAccountsRequestBodyBankAccount'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number"))
data PostAccountsRequestBodyBankAccount'Variants
    = PostAccountsRequestBodyBankAccount'Variant1 GHC.Base.String
    | PostAccountsRequestBodyBankAccount'Variant2 PostAccountsRequestBodyBankAccount'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountsRequestBodyBankAccount'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountsRequestBodyBankAccount'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostAccountsRequestBodyBusinessProfile'
    = PostAccountsRequestBodyBusinessProfile' {postAccountsRequestBodyBusinessProfile'Mcc :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postAccountsRequestBodyBusinessProfile'Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postAccountsRequestBodyBusinessProfile'ProductDescription :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postAccountsRequestBodyBusinessProfile'SupportEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postAccountsRequestBodyBusinessProfile'SupportPhone :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postAccountsRequestBodyBusinessProfile'SupportUrl :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postAccountsRequestBodyBusinessProfile'Url :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsRequestBodyBusinessProfile'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "mcc" (postAccountsRequestBodyBusinessProfile'Mcc obj) : (Data.Aeson..=) "name" (postAccountsRequestBodyBusinessProfile'Name obj) : (Data.Aeson..=) "product_description" (postAccountsRequestBodyBusinessProfile'ProductDescription obj) : (Data.Aeson..=) "support_email" (postAccountsRequestBodyBusinessProfile'SupportEmail obj) : (Data.Aeson..=) "support_phone" (postAccountsRequestBodyBusinessProfile'SupportPhone obj) : (Data.Aeson..=) "support_url" (postAccountsRequestBodyBusinessProfile'SupportUrl obj) : (Data.Aeson..=) "url" (postAccountsRequestBodyBusinessProfile'Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "mcc" (postAccountsRequestBodyBusinessProfile'Mcc obj) GHC.Base.<> ((Data.Aeson..=) "name" (postAccountsRequestBodyBusinessProfile'Name obj) GHC.Base.<> ((Data.Aeson..=) "product_description" (postAccountsRequestBodyBusinessProfile'ProductDescription obj) GHC.Base.<> ((Data.Aeson..=) "support_email" (postAccountsRequestBodyBusinessProfile'SupportEmail obj) GHC.Base.<> ((Data.Aeson..=) "support_phone" (postAccountsRequestBodyBusinessProfile'SupportPhone obj) GHC.Base.<> ((Data.Aeson..=) "support_url" (postAccountsRequestBodyBusinessProfile'SupportUrl obj) GHC.Base.<> (Data.Aeson..=) "url" (postAccountsRequestBodyBusinessProfile'Url obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsRequestBodyBusinessProfile'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsRequestBodyBusinessProfile'" (\obj -> ((((((GHC.Base.pure PostAccountsRequestBodyBusinessProfile' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mcc")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "product_description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "support_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "support_phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "support_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "url"))
data PostAccountsRequestBodyBusinessType'
    = PostAccountsRequestBodyBusinessType'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsRequestBodyBusinessType'EnumTyped GHC.Base.String
    | PostAccountsRequestBodyBusinessType'EnumStringCompany
    | PostAccountsRequestBodyBusinessType'EnumStringGovernmentEntity
    | PostAccountsRequestBodyBusinessType'EnumStringIndividual
    | PostAccountsRequestBodyBusinessType'EnumStringNonProfit
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsRequestBodyBusinessType'
    where toJSON (PostAccountsRequestBodyBusinessType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsRequestBodyBusinessType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsRequestBodyBusinessType'EnumStringCompany) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company"
          toJSON (PostAccountsRequestBodyBusinessType'EnumStringGovernmentEntity) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "government_entity"
          toJSON (PostAccountsRequestBodyBusinessType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
          toJSON (PostAccountsRequestBodyBusinessType'EnumStringNonProfit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "non_profit"
instance Data.Aeson.FromJSON PostAccountsRequestBodyBusinessType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company")
                                          then PostAccountsRequestBodyBusinessType'EnumStringCompany
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "government_entity")
                                                then PostAccountsRequestBodyBusinessType'EnumStringGovernmentEntity
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                      then PostAccountsRequestBodyBusinessType'EnumStringIndividual
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "non_profit")
                                                            then PostAccountsRequestBodyBusinessType'EnumStringNonProfit
                                                            else PostAccountsRequestBodyBusinessType'EnumOther val)
data PostAccountsRequestBodyCompany'
    = PostAccountsRequestBodyCompany' {postAccountsRequestBodyCompany'Address :: (GHC.Maybe.Maybe PostAccountsRequestBodyCompany'Address'),
                                       postAccountsRequestBodyCompany'AddressKana :: (GHC.Maybe.Maybe PostAccountsRequestBodyCompany'AddressKana'),
                                       postAccountsRequestBodyCompany'AddressKanji :: (GHC.Maybe.Maybe PostAccountsRequestBodyCompany'AddressKanji'),
                                       postAccountsRequestBodyCompany'DirectorsProvided :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                       postAccountsRequestBodyCompany'ExecutivesProvided :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                       postAccountsRequestBodyCompany'Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                       postAccountsRequestBodyCompany'NameKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                       postAccountsRequestBodyCompany'NameKanji :: (GHC.Maybe.Maybe GHC.Base.String),
                                       postAccountsRequestBodyCompany'OwnersProvided :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                       postAccountsRequestBodyCompany'Phone :: (GHC.Maybe.Maybe GHC.Base.String),
                                       postAccountsRequestBodyCompany'Structure :: (GHC.Maybe.Maybe PostAccountsRequestBodyCompany'Structure'),
                                       postAccountsRequestBodyCompany'TaxId :: (GHC.Maybe.Maybe GHC.Base.String),
                                       postAccountsRequestBodyCompany'TaxIdRegistrar :: (GHC.Maybe.Maybe GHC.Base.String),
                                       postAccountsRequestBodyCompany'VatId :: (GHC.Maybe.Maybe GHC.Base.String),
                                       postAccountsRequestBodyCompany'Verification :: (GHC.Maybe.Maybe PostAccountsRequestBodyCompany'Verification')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsRequestBodyCompany'Address'
    = PostAccountsRequestBodyCompany'Address' {postAccountsRequestBodyCompany'Address'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postAccountsRequestBodyCompany'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postAccountsRequestBodyCompany'Address'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postAccountsRequestBodyCompany'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postAccountsRequestBodyCompany'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postAccountsRequestBodyCompany'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsRequestBodyCompany'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsRequestBodyCompany'Address'City obj) : (Data.Aeson..=) "country" (postAccountsRequestBodyCompany'Address'Country obj) : (Data.Aeson..=) "line1" (postAccountsRequestBodyCompany'Address'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsRequestBodyCompany'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsRequestBodyCompany'Address'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsRequestBodyCompany'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsRequestBodyCompany'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsRequestBodyCompany'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsRequestBodyCompany'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsRequestBodyCompany'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsRequestBodyCompany'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postAccountsRequestBodyCompany'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsRequestBodyCompany'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsRequestBodyCompany'Address'" (\obj -> (((((GHC.Base.pure PostAccountsRequestBodyCompany'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
data PostAccountsRequestBodyCompany'AddressKana'
    = PostAccountsRequestBodyCompany'AddressKana' {postAccountsRequestBodyCompany'AddressKana'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountsRequestBodyCompany'AddressKana'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountsRequestBodyCompany'AddressKana'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountsRequestBodyCompany'AddressKana'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountsRequestBodyCompany'AddressKana'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountsRequestBodyCompany'AddressKana'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountsRequestBodyCompany'AddressKana'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsRequestBodyCompany'AddressKana'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsRequestBodyCompany'AddressKana'City obj) : (Data.Aeson..=) "country" (postAccountsRequestBodyCompany'AddressKana'Country obj) : (Data.Aeson..=) "line1" (postAccountsRequestBodyCompany'AddressKana'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsRequestBodyCompany'AddressKana'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsRequestBodyCompany'AddressKana'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsRequestBodyCompany'AddressKana'State obj) : (Data.Aeson..=) "town" (postAccountsRequestBodyCompany'AddressKana'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsRequestBodyCompany'AddressKana'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsRequestBodyCompany'AddressKana'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsRequestBodyCompany'AddressKana'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsRequestBodyCompany'AddressKana'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsRequestBodyCompany'AddressKana'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountsRequestBodyCompany'AddressKana'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountsRequestBodyCompany'AddressKana'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsRequestBodyCompany'AddressKana'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsRequestBodyCompany'AddressKana'" (\obj -> ((((((GHC.Base.pure PostAccountsRequestBodyCompany'AddressKana' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostAccountsRequestBodyCompany'AddressKanji'
    = PostAccountsRequestBodyCompany'AddressKanji' {postAccountsRequestBodyCompany'AddressKanji'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    postAccountsRequestBodyCompany'AddressKanji'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    postAccountsRequestBodyCompany'AddressKanji'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    postAccountsRequestBodyCompany'AddressKanji'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    postAccountsRequestBodyCompany'AddressKanji'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    postAccountsRequestBodyCompany'AddressKanji'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    postAccountsRequestBodyCompany'AddressKanji'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsRequestBodyCompany'AddressKanji'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsRequestBodyCompany'AddressKanji'City obj) : (Data.Aeson..=) "country" (postAccountsRequestBodyCompany'AddressKanji'Country obj) : (Data.Aeson..=) "line1" (postAccountsRequestBodyCompany'AddressKanji'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsRequestBodyCompany'AddressKanji'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsRequestBodyCompany'AddressKanji'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsRequestBodyCompany'AddressKanji'State obj) : (Data.Aeson..=) "town" (postAccountsRequestBodyCompany'AddressKanji'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsRequestBodyCompany'AddressKanji'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsRequestBodyCompany'AddressKanji'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsRequestBodyCompany'AddressKanji'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsRequestBodyCompany'AddressKanji'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsRequestBodyCompany'AddressKanji'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountsRequestBodyCompany'AddressKanji'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountsRequestBodyCompany'AddressKanji'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsRequestBodyCompany'AddressKanji'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsRequestBodyCompany'AddressKanji'" (\obj -> ((((((GHC.Base.pure PostAccountsRequestBodyCompany'AddressKanji' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostAccountsRequestBodyCompany'Structure'
    = PostAccountsRequestBodyCompany'Structure'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsRequestBodyCompany'Structure'EnumTyped GHC.Base.String
    | PostAccountsRequestBodyCompany'Structure'EnumString_
    | PostAccountsRequestBodyCompany'Structure'EnumStringGovernmentInstrumentality
    | PostAccountsRequestBodyCompany'Structure'EnumStringGovernmentalUnit
    | PostAccountsRequestBodyCompany'Structure'EnumStringIncorporatedNonProfit
    | PostAccountsRequestBodyCompany'Structure'EnumStringMultiMemberLlc
    | PostAccountsRequestBodyCompany'Structure'EnumStringPrivateCorporation
    | PostAccountsRequestBodyCompany'Structure'EnumStringPrivatePartnership
    | PostAccountsRequestBodyCompany'Structure'EnumStringPublicCorporation
    | PostAccountsRequestBodyCompany'Structure'EnumStringPublicPartnership
    | PostAccountsRequestBodyCompany'Structure'EnumStringTaxExemptGovernmentInstrumentality
    | PostAccountsRequestBodyCompany'Structure'EnumStringUnincorporatedAssociation
    | PostAccountsRequestBodyCompany'Structure'EnumStringUnincorporatedNonProfit
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsRequestBodyCompany'Structure'
    where toJSON (PostAccountsRequestBodyCompany'Structure'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsRequestBodyCompany'Structure'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsRequestBodyCompany'Structure'EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
          toJSON (PostAccountsRequestBodyCompany'Structure'EnumStringGovernmentInstrumentality) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "government_instrumentality"
          toJSON (PostAccountsRequestBodyCompany'Structure'EnumStringGovernmentalUnit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "governmental_unit"
          toJSON (PostAccountsRequestBodyCompany'Structure'EnumStringIncorporatedNonProfit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "incorporated_non_profit"
          toJSON (PostAccountsRequestBodyCompany'Structure'EnumStringMultiMemberLlc) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "multi_member_llc"
          toJSON (PostAccountsRequestBodyCompany'Structure'EnumStringPrivateCorporation) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "private_corporation"
          toJSON (PostAccountsRequestBodyCompany'Structure'EnumStringPrivatePartnership) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "private_partnership"
          toJSON (PostAccountsRequestBodyCompany'Structure'EnumStringPublicCorporation) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public_corporation"
          toJSON (PostAccountsRequestBodyCompany'Structure'EnumStringPublicPartnership) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public_partnership"
          toJSON (PostAccountsRequestBodyCompany'Structure'EnumStringTaxExemptGovernmentInstrumentality) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tax_exempt_government_instrumentality"
          toJSON (PostAccountsRequestBodyCompany'Structure'EnumStringUnincorporatedAssociation) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unincorporated_association"
          toJSON (PostAccountsRequestBodyCompany'Structure'EnumStringUnincorporatedNonProfit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unincorporated_non_profit"
instance Data.Aeson.FromJSON PostAccountsRequestBodyCompany'Structure'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostAccountsRequestBodyCompany'Structure'EnumString_
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "government_instrumentality")
                                                then PostAccountsRequestBodyCompany'Structure'EnumStringGovernmentInstrumentality
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "governmental_unit")
                                                      then PostAccountsRequestBodyCompany'Structure'EnumStringGovernmentalUnit
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "incorporated_non_profit")
                                                            then PostAccountsRequestBodyCompany'Structure'EnumStringIncorporatedNonProfit
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "multi_member_llc")
                                                                  then PostAccountsRequestBodyCompany'Structure'EnumStringMultiMemberLlc
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "private_corporation")
                                                                        then PostAccountsRequestBodyCompany'Structure'EnumStringPrivateCorporation
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "private_partnership")
                                                                              then PostAccountsRequestBodyCompany'Structure'EnumStringPrivatePartnership
                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public_corporation")
                                                                                    then PostAccountsRequestBodyCompany'Structure'EnumStringPublicCorporation
                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public_partnership")
                                                                                          then PostAccountsRequestBodyCompany'Structure'EnumStringPublicPartnership
                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tax_exempt_government_instrumentality")
                                                                                                then PostAccountsRequestBodyCompany'Structure'EnumStringTaxExemptGovernmentInstrumentality
                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unincorporated_association")
                                                                                                      then PostAccountsRequestBodyCompany'Structure'EnumStringUnincorporatedAssociation
                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unincorporated_non_profit")
                                                                                                            then PostAccountsRequestBodyCompany'Structure'EnumStringUnincorporatedNonProfit
                                                                                                            else PostAccountsRequestBodyCompany'Structure'EnumOther val)
data PostAccountsRequestBodyCompany'Verification'
    = PostAccountsRequestBodyCompany'Verification' {postAccountsRequestBodyCompany'Verification'Document :: (GHC.Maybe.Maybe PostAccountsRequestBodyCompany'Verification'Document')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsRequestBodyCompany'Verification'Document'
    = PostAccountsRequestBodyCompany'Verification'Document' {postAccountsRequestBodyCompany'Verification'Document'Back :: (GHC.Maybe.Maybe GHC.Base.String),
                                                             postAccountsRequestBodyCompany'Verification'Document'Front :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsRequestBodyCompany'Verification'Document'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountsRequestBodyCompany'Verification'Document'Back obj) : (Data.Aeson..=) "front" (postAccountsRequestBodyCompany'Verification'Document'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountsRequestBodyCompany'Verification'Document'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountsRequestBodyCompany'Verification'Document'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsRequestBodyCompany'Verification'Document'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsRequestBodyCompany'Verification'Document'" (\obj -> (GHC.Base.pure PostAccountsRequestBodyCompany'Verification'Document' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
instance Data.Aeson.ToJSON PostAccountsRequestBodyCompany'Verification'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "document" (postAccountsRequestBodyCompany'Verification'Document obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "document" (postAccountsRequestBodyCompany'Verification'Document obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsRequestBodyCompany'Verification'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsRequestBodyCompany'Verification'" (\obj -> GHC.Base.pure PostAccountsRequestBodyCompany'Verification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document"))
instance Data.Aeson.ToJSON PostAccountsRequestBodyCompany'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postAccountsRequestBodyCompany'Address obj) : (Data.Aeson..=) "address_kana" (postAccountsRequestBodyCompany'AddressKana obj) : (Data.Aeson..=) "address_kanji" (postAccountsRequestBodyCompany'AddressKanji obj) : (Data.Aeson..=) "directors_provided" (postAccountsRequestBodyCompany'DirectorsProvided obj) : (Data.Aeson..=) "executives_provided" (postAccountsRequestBodyCompany'ExecutivesProvided obj) : (Data.Aeson..=) "name" (postAccountsRequestBodyCompany'Name obj) : (Data.Aeson..=) "name_kana" (postAccountsRequestBodyCompany'NameKana obj) : (Data.Aeson..=) "name_kanji" (postAccountsRequestBodyCompany'NameKanji obj) : (Data.Aeson..=) "owners_provided" (postAccountsRequestBodyCompany'OwnersProvided obj) : (Data.Aeson..=) "phone" (postAccountsRequestBodyCompany'Phone obj) : (Data.Aeson..=) "structure" (postAccountsRequestBodyCompany'Structure obj) : (Data.Aeson..=) "tax_id" (postAccountsRequestBodyCompany'TaxId obj) : (Data.Aeson..=) "tax_id_registrar" (postAccountsRequestBodyCompany'TaxIdRegistrar obj) : (Data.Aeson..=) "vat_id" (postAccountsRequestBodyCompany'VatId obj) : (Data.Aeson..=) "verification" (postAccountsRequestBodyCompany'Verification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postAccountsRequestBodyCompany'Address obj) GHC.Base.<> ((Data.Aeson..=) "address_kana" (postAccountsRequestBodyCompany'AddressKana obj) GHC.Base.<> ((Data.Aeson..=) "address_kanji" (postAccountsRequestBodyCompany'AddressKanji obj) GHC.Base.<> ((Data.Aeson..=) "directors_provided" (postAccountsRequestBodyCompany'DirectorsProvided obj) GHC.Base.<> ((Data.Aeson..=) "executives_provided" (postAccountsRequestBodyCompany'ExecutivesProvided obj) GHC.Base.<> ((Data.Aeson..=) "name" (postAccountsRequestBodyCompany'Name obj) GHC.Base.<> ((Data.Aeson..=) "name_kana" (postAccountsRequestBodyCompany'NameKana obj) GHC.Base.<> ((Data.Aeson..=) "name_kanji" (postAccountsRequestBodyCompany'NameKanji obj) GHC.Base.<> ((Data.Aeson..=) "owners_provided" (postAccountsRequestBodyCompany'OwnersProvided obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postAccountsRequestBodyCompany'Phone obj) GHC.Base.<> ((Data.Aeson..=) "structure" (postAccountsRequestBodyCompany'Structure obj) GHC.Base.<> ((Data.Aeson..=) "tax_id" (postAccountsRequestBodyCompany'TaxId obj) GHC.Base.<> ((Data.Aeson..=) "tax_id_registrar" (postAccountsRequestBodyCompany'TaxIdRegistrar obj) GHC.Base.<> ((Data.Aeson..=) "vat_id" (postAccountsRequestBodyCompany'VatId obj) GHC.Base.<> (Data.Aeson..=) "verification" (postAccountsRequestBodyCompany'Verification obj)))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsRequestBodyCompany'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsRequestBodyCompany'" (\obj -> ((((((((((((((GHC.Base.pure PostAccountsRequestBodyCompany' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "directors_provided")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "executives_provided")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owners_provided")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "structure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_id_registrar")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "vat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verification"))
data PostAccountsRequestBodyIndividual'
    = PostAccountsRequestBodyIndividual' {postAccountsRequestBodyIndividual'Address :: (GHC.Maybe.Maybe PostAccountsRequestBodyIndividual'Address'),
                                          postAccountsRequestBodyIndividual'AddressKana :: (GHC.Maybe.Maybe PostAccountsRequestBodyIndividual'AddressKana'),
                                          postAccountsRequestBodyIndividual'AddressKanji :: (GHC.Maybe.Maybe PostAccountsRequestBodyIndividual'AddressKanji'),
                                          postAccountsRequestBodyIndividual'Dob :: (GHC.Maybe.Maybe PostAccountsRequestBodyIndividual'Dob'Variants),
                                          postAccountsRequestBodyIndividual'Email :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postAccountsRequestBodyIndividual'FirstName :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postAccountsRequestBodyIndividual'FirstNameKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postAccountsRequestBodyIndividual'FirstNameKanji :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postAccountsRequestBodyIndividual'Gender :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postAccountsRequestBodyIndividual'IdNumber :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postAccountsRequestBodyIndividual'LastName :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postAccountsRequestBodyIndividual'LastNameKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postAccountsRequestBodyIndividual'LastNameKanji :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postAccountsRequestBodyIndividual'MaidenName :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postAccountsRequestBodyIndividual'Metadata :: (GHC.Maybe.Maybe PostAccountsRequestBodyIndividual'Metadata'),
                                          postAccountsRequestBodyIndividual'Phone :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postAccountsRequestBodyIndividual'SsnLast_4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postAccountsRequestBodyIndividual'Verification :: (GHC.Maybe.Maybe PostAccountsRequestBodyIndividual'Verification')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsRequestBodyIndividual'Address'
    = PostAccountsRequestBodyIndividual'Address' {postAccountsRequestBodyIndividual'Address'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountsRequestBodyIndividual'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountsRequestBodyIndividual'Address'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountsRequestBodyIndividual'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountsRequestBodyIndividual'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountsRequestBodyIndividual'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsRequestBodyIndividual'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsRequestBodyIndividual'Address'City obj) : (Data.Aeson..=) "country" (postAccountsRequestBodyIndividual'Address'Country obj) : (Data.Aeson..=) "line1" (postAccountsRequestBodyIndividual'Address'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsRequestBodyIndividual'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsRequestBodyIndividual'Address'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsRequestBodyIndividual'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsRequestBodyIndividual'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsRequestBodyIndividual'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsRequestBodyIndividual'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsRequestBodyIndividual'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsRequestBodyIndividual'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postAccountsRequestBodyIndividual'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsRequestBodyIndividual'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsRequestBodyIndividual'Address'" (\obj -> (((((GHC.Base.pure PostAccountsRequestBodyIndividual'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
data PostAccountsRequestBodyIndividual'AddressKana'
    = PostAccountsRequestBodyIndividual'AddressKana' {postAccountsRequestBodyIndividual'AddressKana'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountsRequestBodyIndividual'AddressKana'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountsRequestBodyIndividual'AddressKana'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountsRequestBodyIndividual'AddressKana'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountsRequestBodyIndividual'AddressKana'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountsRequestBodyIndividual'AddressKana'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountsRequestBodyIndividual'AddressKana'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsRequestBodyIndividual'AddressKana'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsRequestBodyIndividual'AddressKana'City obj) : (Data.Aeson..=) "country" (postAccountsRequestBodyIndividual'AddressKana'Country obj) : (Data.Aeson..=) "line1" (postAccountsRequestBodyIndividual'AddressKana'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsRequestBodyIndividual'AddressKana'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsRequestBodyIndividual'AddressKana'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsRequestBodyIndividual'AddressKana'State obj) : (Data.Aeson..=) "town" (postAccountsRequestBodyIndividual'AddressKana'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsRequestBodyIndividual'AddressKana'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsRequestBodyIndividual'AddressKana'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsRequestBodyIndividual'AddressKana'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsRequestBodyIndividual'AddressKana'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsRequestBodyIndividual'AddressKana'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountsRequestBodyIndividual'AddressKana'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountsRequestBodyIndividual'AddressKana'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsRequestBodyIndividual'AddressKana'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsRequestBodyIndividual'AddressKana'" (\obj -> ((((((GHC.Base.pure PostAccountsRequestBodyIndividual'AddressKana' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostAccountsRequestBodyIndividual'AddressKanji'
    = PostAccountsRequestBodyIndividual'AddressKanji' {postAccountsRequestBodyIndividual'AddressKanji'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                       postAccountsRequestBodyIndividual'AddressKanji'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                       postAccountsRequestBodyIndividual'AddressKanji'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                       postAccountsRequestBodyIndividual'AddressKanji'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                       postAccountsRequestBodyIndividual'AddressKanji'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                       postAccountsRequestBodyIndividual'AddressKanji'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                       postAccountsRequestBodyIndividual'AddressKanji'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsRequestBodyIndividual'AddressKanji'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsRequestBodyIndividual'AddressKanji'City obj) : (Data.Aeson..=) "country" (postAccountsRequestBodyIndividual'AddressKanji'Country obj) : (Data.Aeson..=) "line1" (postAccountsRequestBodyIndividual'AddressKanji'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsRequestBodyIndividual'AddressKanji'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsRequestBodyIndividual'AddressKanji'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsRequestBodyIndividual'AddressKanji'State obj) : (Data.Aeson..=) "town" (postAccountsRequestBodyIndividual'AddressKanji'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsRequestBodyIndividual'AddressKanji'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsRequestBodyIndividual'AddressKanji'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsRequestBodyIndividual'AddressKanji'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsRequestBodyIndividual'AddressKanji'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsRequestBodyIndividual'AddressKanji'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountsRequestBodyIndividual'AddressKanji'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountsRequestBodyIndividual'AddressKanji'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsRequestBodyIndividual'AddressKanji'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsRequestBodyIndividual'AddressKanji'" (\obj -> ((((((GHC.Base.pure PostAccountsRequestBodyIndividual'AddressKanji' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostAccountsRequestBodyIndividual'Dob'OneOf1
    = PostAccountsRequestBodyIndividual'Dob'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsRequestBodyIndividual'Dob'OneOf1EnumTyped GHC.Base.String
    | PostAccountsRequestBodyIndividual'Dob'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsRequestBodyIndividual'Dob'OneOf1
    where toJSON (PostAccountsRequestBodyIndividual'Dob'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsRequestBodyIndividual'Dob'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsRequestBodyIndividual'Dob'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostAccountsRequestBodyIndividual'Dob'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostAccountsRequestBodyIndividual'Dob'OneOf1EnumString_
                                          else PostAccountsRequestBodyIndividual'Dob'OneOf1EnumOther val)
data PostAccountsRequestBodyIndividual'Dob'OneOf2
    = PostAccountsRequestBodyIndividual'Dob'OneOf2 {postAccountsRequestBodyIndividual'Dob'OneOf2Day :: GHC.Integer.Type.Integer,
                                                    postAccountsRequestBodyIndividual'Dob'OneOf2Month :: GHC.Integer.Type.Integer,
                                                    postAccountsRequestBodyIndividual'Dob'OneOf2Year :: GHC.Integer.Type.Integer}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsRequestBodyIndividual'Dob'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "day" (postAccountsRequestBodyIndividual'Dob'OneOf2Day obj) : (Data.Aeson..=) "month" (postAccountsRequestBodyIndividual'Dob'OneOf2Month obj) : (Data.Aeson..=) "year" (postAccountsRequestBodyIndividual'Dob'OneOf2Year obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "day" (postAccountsRequestBodyIndividual'Dob'OneOf2Day obj) GHC.Base.<> ((Data.Aeson..=) "month" (postAccountsRequestBodyIndividual'Dob'OneOf2Month obj) GHC.Base.<> (Data.Aeson..=) "year" (postAccountsRequestBodyIndividual'Dob'OneOf2Year obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsRequestBodyIndividual'Dob'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsRequestBodyIndividual'Dob'OneOf2" (\obj -> ((GHC.Base.pure PostAccountsRequestBodyIndividual'Dob'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "year"))
data PostAccountsRequestBodyIndividual'Dob'Variants
    = PostAccountsRequestBodyIndividual'Dob'Variant1 PostAccountsRequestBodyIndividual'Dob'OneOf1
    | PostAccountsRequestBodyIndividual'Dob'Variant2 PostAccountsRequestBodyIndividual'Dob'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountsRequestBodyIndividual'Dob'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountsRequestBodyIndividual'Dob'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostAccountsRequestBodyIndividual'Metadata'
    = PostAccountsRequestBodyIndividual'Metadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsRequestBodyIndividual'Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsRequestBodyIndividual'Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsRequestBodyIndividual'Metadata'" (\obj -> GHC.Base.pure PostAccountsRequestBodyIndividual'Metadata')
data PostAccountsRequestBodyIndividual'Verification'
    = PostAccountsRequestBodyIndividual'Verification' {postAccountsRequestBodyIndividual'Verification'AdditionalDocument :: (GHC.Maybe.Maybe PostAccountsRequestBodyIndividual'Verification'AdditionalDocument'),
                                                       postAccountsRequestBodyIndividual'Verification'Document :: (GHC.Maybe.Maybe PostAccountsRequestBodyIndividual'Verification'Document')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsRequestBodyIndividual'Verification'AdditionalDocument'
    = PostAccountsRequestBodyIndividual'Verification'AdditionalDocument' {postAccountsRequestBodyIndividual'Verification'AdditionalDocument'Back :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                          postAccountsRequestBodyIndividual'Verification'AdditionalDocument'Front :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsRequestBodyIndividual'Verification'AdditionalDocument'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountsRequestBodyIndividual'Verification'AdditionalDocument'Back obj) : (Data.Aeson..=) "front" (postAccountsRequestBodyIndividual'Verification'AdditionalDocument'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountsRequestBodyIndividual'Verification'AdditionalDocument'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountsRequestBodyIndividual'Verification'AdditionalDocument'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsRequestBodyIndividual'Verification'AdditionalDocument'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsRequestBodyIndividual'Verification'AdditionalDocument'" (\obj -> (GHC.Base.pure PostAccountsRequestBodyIndividual'Verification'AdditionalDocument' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
data PostAccountsRequestBodyIndividual'Verification'Document'
    = PostAccountsRequestBodyIndividual'Verification'Document' {postAccountsRequestBodyIndividual'Verification'Document'Back :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                postAccountsRequestBodyIndividual'Verification'Document'Front :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsRequestBodyIndividual'Verification'Document'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountsRequestBodyIndividual'Verification'Document'Back obj) : (Data.Aeson..=) "front" (postAccountsRequestBodyIndividual'Verification'Document'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountsRequestBodyIndividual'Verification'Document'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountsRequestBodyIndividual'Verification'Document'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsRequestBodyIndividual'Verification'Document'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsRequestBodyIndividual'Verification'Document'" (\obj -> (GHC.Base.pure PostAccountsRequestBodyIndividual'Verification'Document' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
instance Data.Aeson.ToJSON PostAccountsRequestBodyIndividual'Verification'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "additional_document" (postAccountsRequestBodyIndividual'Verification'AdditionalDocument obj) : (Data.Aeson..=) "document" (postAccountsRequestBodyIndividual'Verification'Document obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "additional_document" (postAccountsRequestBodyIndividual'Verification'AdditionalDocument obj) GHC.Base.<> (Data.Aeson..=) "document" (postAccountsRequestBodyIndividual'Verification'Document obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsRequestBodyIndividual'Verification'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsRequestBodyIndividual'Verification'" (\obj -> (GHC.Base.pure PostAccountsRequestBodyIndividual'Verification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "additional_document")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document"))
instance Data.Aeson.ToJSON PostAccountsRequestBodyIndividual'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postAccountsRequestBodyIndividual'Address obj) : (Data.Aeson..=) "address_kana" (postAccountsRequestBodyIndividual'AddressKana obj) : (Data.Aeson..=) "address_kanji" (postAccountsRequestBodyIndividual'AddressKanji obj) : (Data.Aeson..=) "dob" (postAccountsRequestBodyIndividual'Dob obj) : (Data.Aeson..=) "email" (postAccountsRequestBodyIndividual'Email obj) : (Data.Aeson..=) "first_name" (postAccountsRequestBodyIndividual'FirstName obj) : (Data.Aeson..=) "first_name_kana" (postAccountsRequestBodyIndividual'FirstNameKana obj) : (Data.Aeson..=) "first_name_kanji" (postAccountsRequestBodyIndividual'FirstNameKanji obj) : (Data.Aeson..=) "gender" (postAccountsRequestBodyIndividual'Gender obj) : (Data.Aeson..=) "id_number" (postAccountsRequestBodyIndividual'IdNumber obj) : (Data.Aeson..=) "last_name" (postAccountsRequestBodyIndividual'LastName obj) : (Data.Aeson..=) "last_name_kana" (postAccountsRequestBodyIndividual'LastNameKana obj) : (Data.Aeson..=) "last_name_kanji" (postAccountsRequestBodyIndividual'LastNameKanji obj) : (Data.Aeson..=) "maiden_name" (postAccountsRequestBodyIndividual'MaidenName obj) : (Data.Aeson..=) "metadata" (postAccountsRequestBodyIndividual'Metadata obj) : (Data.Aeson..=) "phone" (postAccountsRequestBodyIndividual'Phone obj) : (Data.Aeson..=) "ssn_last_4" (postAccountsRequestBodyIndividual'SsnLast_4 obj) : (Data.Aeson..=) "verification" (postAccountsRequestBodyIndividual'Verification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postAccountsRequestBodyIndividual'Address obj) GHC.Base.<> ((Data.Aeson..=) "address_kana" (postAccountsRequestBodyIndividual'AddressKana obj) GHC.Base.<> ((Data.Aeson..=) "address_kanji" (postAccountsRequestBodyIndividual'AddressKanji obj) GHC.Base.<> ((Data.Aeson..=) "dob" (postAccountsRequestBodyIndividual'Dob obj) GHC.Base.<> ((Data.Aeson..=) "email" (postAccountsRequestBodyIndividual'Email obj) GHC.Base.<> ((Data.Aeson..=) "first_name" (postAccountsRequestBodyIndividual'FirstName obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kana" (postAccountsRequestBodyIndividual'FirstNameKana obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kanji" (postAccountsRequestBodyIndividual'FirstNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "gender" (postAccountsRequestBodyIndividual'Gender obj) GHC.Base.<> ((Data.Aeson..=) "id_number" (postAccountsRequestBodyIndividual'IdNumber obj) GHC.Base.<> ((Data.Aeson..=) "last_name" (postAccountsRequestBodyIndividual'LastName obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kana" (postAccountsRequestBodyIndividual'LastNameKana obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kanji" (postAccountsRequestBodyIndividual'LastNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "maiden_name" (postAccountsRequestBodyIndividual'MaidenName obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postAccountsRequestBodyIndividual'Metadata obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postAccountsRequestBodyIndividual'Phone obj) GHC.Base.<> ((Data.Aeson..=) "ssn_last_4" (postAccountsRequestBodyIndividual'SsnLast_4 obj) GHC.Base.<> (Data.Aeson..=) "verification" (postAccountsRequestBodyIndividual'Verification obj))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsRequestBodyIndividual'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsRequestBodyIndividual'" (\obj -> (((((((((((((((((GHC.Base.pure PostAccountsRequestBodyIndividual' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dob")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gender")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "maiden_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ssn_last_4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verification"))
data PostAccountsRequestBodyMetadata'
    = PostAccountsRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostAccountsRequestBodyMetadata')
data PostAccountsRequestBodyRequestedCapabilities'
    = PostAccountsRequestBodyRequestedCapabilities'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsRequestBodyRequestedCapabilities'EnumTyped GHC.Base.String
    | PostAccountsRequestBodyRequestedCapabilities'EnumStringCardIssuing
    | PostAccountsRequestBodyRequestedCapabilities'EnumStringCardPayments
    | PostAccountsRequestBodyRequestedCapabilities'EnumStringLegacyPayments
    | PostAccountsRequestBodyRequestedCapabilities'EnumStringTransfers
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsRequestBodyRequestedCapabilities'
    where toJSON (PostAccountsRequestBodyRequestedCapabilities'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsRequestBodyRequestedCapabilities'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsRequestBodyRequestedCapabilities'EnumStringCardIssuing) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_issuing"
          toJSON (PostAccountsRequestBodyRequestedCapabilities'EnumStringCardPayments) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_payments"
          toJSON (PostAccountsRequestBodyRequestedCapabilities'EnumStringLegacyPayments) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "legacy_payments"
          toJSON (PostAccountsRequestBodyRequestedCapabilities'EnumStringTransfers) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "transfers"
instance Data.Aeson.FromJSON PostAccountsRequestBodyRequestedCapabilities'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_issuing")
                                          then PostAccountsRequestBodyRequestedCapabilities'EnumStringCardIssuing
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_payments")
                                                then PostAccountsRequestBodyRequestedCapabilities'EnumStringCardPayments
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "legacy_payments")
                                                      then PostAccountsRequestBodyRequestedCapabilities'EnumStringLegacyPayments
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "transfers")
                                                            then PostAccountsRequestBodyRequestedCapabilities'EnumStringTransfers
                                                            else PostAccountsRequestBodyRequestedCapabilities'EnumOther val)
data PostAccountsRequestBodySettings'
    = PostAccountsRequestBodySettings' {postAccountsRequestBodySettings'Branding :: (GHC.Maybe.Maybe PostAccountsRequestBodySettings'Branding'),
                                        postAccountsRequestBodySettings'CardPayments :: (GHC.Maybe.Maybe PostAccountsRequestBodySettings'CardPayments'),
                                        postAccountsRequestBodySettings'Payments :: (GHC.Maybe.Maybe PostAccountsRequestBodySettings'Payments'),
                                        postAccountsRequestBodySettings'Payouts :: (GHC.Maybe.Maybe PostAccountsRequestBodySettings'Payouts')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsRequestBodySettings'Branding'
    = PostAccountsRequestBodySettings'Branding' {postAccountsRequestBodySettings'Branding'Icon :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountsRequestBodySettings'Branding'Logo :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountsRequestBodySettings'Branding'PrimaryColor :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsRequestBodySettings'Branding'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "icon" (postAccountsRequestBodySettings'Branding'Icon obj) : (Data.Aeson..=) "logo" (postAccountsRequestBodySettings'Branding'Logo obj) : (Data.Aeson..=) "primary_color" (postAccountsRequestBodySettings'Branding'PrimaryColor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "icon" (postAccountsRequestBodySettings'Branding'Icon obj) GHC.Base.<> ((Data.Aeson..=) "logo" (postAccountsRequestBodySettings'Branding'Logo obj) GHC.Base.<> (Data.Aeson..=) "primary_color" (postAccountsRequestBodySettings'Branding'PrimaryColor obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsRequestBodySettings'Branding'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsRequestBodySettings'Branding'" (\obj -> ((GHC.Base.pure PostAccountsRequestBodySettings'Branding' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "icon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "logo")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "primary_color"))
data PostAccountsRequestBodySettings'CardPayments'
    = PostAccountsRequestBodySettings'CardPayments' {postAccountsRequestBodySettings'CardPayments'DeclineOn :: (GHC.Maybe.Maybe PostAccountsRequestBodySettings'CardPayments'DeclineOn'),
                                                     postAccountsRequestBodySettings'CardPayments'StatementDescriptorPrefix :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsRequestBodySettings'CardPayments'DeclineOn'
    = PostAccountsRequestBodySettings'CardPayments'DeclineOn' {postAccountsRequestBodySettings'CardPayments'DeclineOn'AvsFailure :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                               postAccountsRequestBodySettings'CardPayments'DeclineOn'CvcFailure :: (GHC.Maybe.Maybe GHC.Types.Bool)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsRequestBodySettings'CardPayments'DeclineOn'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "avs_failure" (postAccountsRequestBodySettings'CardPayments'DeclineOn'AvsFailure obj) : (Data.Aeson..=) "cvc_failure" (postAccountsRequestBodySettings'CardPayments'DeclineOn'CvcFailure obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "avs_failure" (postAccountsRequestBodySettings'CardPayments'DeclineOn'AvsFailure obj) GHC.Base.<> (Data.Aeson..=) "cvc_failure" (postAccountsRequestBodySettings'CardPayments'DeclineOn'CvcFailure obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsRequestBodySettings'CardPayments'DeclineOn'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsRequestBodySettings'CardPayments'DeclineOn'" (\obj -> (GHC.Base.pure PostAccountsRequestBodySettings'CardPayments'DeclineOn' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "avs_failure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc_failure"))
instance Data.Aeson.ToJSON PostAccountsRequestBodySettings'CardPayments'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "decline_on" (postAccountsRequestBodySettings'CardPayments'DeclineOn obj) : (Data.Aeson..=) "statement_descriptor_prefix" (postAccountsRequestBodySettings'CardPayments'StatementDescriptorPrefix obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "decline_on" (postAccountsRequestBodySettings'CardPayments'DeclineOn obj) GHC.Base.<> (Data.Aeson..=) "statement_descriptor_prefix" (postAccountsRequestBodySettings'CardPayments'StatementDescriptorPrefix obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsRequestBodySettings'CardPayments'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsRequestBodySettings'CardPayments'" (\obj -> (GHC.Base.pure PostAccountsRequestBodySettings'CardPayments' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "decline_on")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_prefix"))
data PostAccountsRequestBodySettings'Payments'
    = PostAccountsRequestBodySettings'Payments' {postAccountsRequestBodySettings'Payments'StatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountsRequestBodySettings'Payments'StatementDescriptorKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountsRequestBodySettings'Payments'StatementDescriptorKanji :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsRequestBodySettings'Payments'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "statement_descriptor" (postAccountsRequestBodySettings'Payments'StatementDescriptor obj) : (Data.Aeson..=) "statement_descriptor_kana" (postAccountsRequestBodySettings'Payments'StatementDescriptorKana obj) : (Data.Aeson..=) "statement_descriptor_kanji" (postAccountsRequestBodySettings'Payments'StatementDescriptorKanji obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "statement_descriptor" (postAccountsRequestBodySettings'Payments'StatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor_kana" (postAccountsRequestBodySettings'Payments'StatementDescriptorKana obj) GHC.Base.<> (Data.Aeson..=) "statement_descriptor_kanji" (postAccountsRequestBodySettings'Payments'StatementDescriptorKanji obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsRequestBodySettings'Payments'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsRequestBodySettings'Payments'" (\obj -> ((GHC.Base.pure PostAccountsRequestBodySettings'Payments' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_kanji"))
data PostAccountsRequestBodySettings'Payouts'
    = PostAccountsRequestBodySettings'Payouts' {postAccountsRequestBodySettings'Payouts'DebitNegativeBalances :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                postAccountsRequestBodySettings'Payouts'Schedule :: (GHC.Maybe.Maybe PostAccountsRequestBodySettings'Payouts'Schedule'),
                                                postAccountsRequestBodySettings'Payouts'StatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsRequestBodySettings'Payouts'Schedule'
    = PostAccountsRequestBodySettings'Payouts'Schedule' {postAccountsRequestBodySettings'Payouts'Schedule'DelayDays :: (GHC.Maybe.Maybe PostAccountsRequestBodySettings'Payouts'Schedule'DelayDays'Variants),
                                                         postAccountsRequestBodySettings'Payouts'Schedule'Interval :: (GHC.Maybe.Maybe PostAccountsRequestBodySettings'Payouts'Schedule'Interval'),
                                                         postAccountsRequestBodySettings'Payouts'Schedule'MonthlyAnchor :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                         postAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor :: (GHC.Maybe.Maybe PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1
    = PostAccountsRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumTyped GHC.Base.String
    | PostAccountsRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumStringMinimum
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1
    where toJSON (PostAccountsRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumStringMinimum) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "minimum"
instance Data.Aeson.FromJSON PostAccountsRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "minimum")
                                          then PostAccountsRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumStringMinimum
                                          else PostAccountsRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumOther val)
data PostAccountsRequestBodySettings'Payouts'Schedule'DelayDays'Variants
    = PostAccountsRequestBodySettings'Payouts'Schedule'DelayDays'Variant1 PostAccountsRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1
    | PostAccountsRequestBodySettings'Payouts'Schedule'DelayDays'Variant2 GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountsRequestBodySettings'Payouts'Schedule'DelayDays'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountsRequestBodySettings'Payouts'Schedule'DelayDays'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostAccountsRequestBodySettings'Payouts'Schedule'Interval'
    = PostAccountsRequestBodySettings'Payouts'Schedule'Interval'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsRequestBodySettings'Payouts'Schedule'Interval'EnumTyped GHC.Base.String
    | PostAccountsRequestBodySettings'Payouts'Schedule'Interval'EnumStringDaily
    | PostAccountsRequestBodySettings'Payouts'Schedule'Interval'EnumStringManual
    | PostAccountsRequestBodySettings'Payouts'Schedule'Interval'EnumStringMonthly
    | PostAccountsRequestBodySettings'Payouts'Schedule'Interval'EnumStringWeekly
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsRequestBodySettings'Payouts'Schedule'Interval'
    where toJSON (PostAccountsRequestBodySettings'Payouts'Schedule'Interval'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsRequestBodySettings'Payouts'Schedule'Interval'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsRequestBodySettings'Payouts'Schedule'Interval'EnumStringDaily) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "daily"
          toJSON (PostAccountsRequestBodySettings'Payouts'Schedule'Interval'EnumStringManual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "manual"
          toJSON (PostAccountsRequestBodySettings'Payouts'Schedule'Interval'EnumStringMonthly) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "monthly"
          toJSON (PostAccountsRequestBodySettings'Payouts'Schedule'Interval'EnumStringWeekly) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "weekly"
instance Data.Aeson.FromJSON PostAccountsRequestBodySettings'Payouts'Schedule'Interval'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "daily")
                                          then PostAccountsRequestBodySettings'Payouts'Schedule'Interval'EnumStringDaily
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "manual")
                                                then PostAccountsRequestBodySettings'Payouts'Schedule'Interval'EnumStringManual
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "monthly")
                                                      then PostAccountsRequestBodySettings'Payouts'Schedule'Interval'EnumStringMonthly
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "weekly")
                                                            then PostAccountsRequestBodySettings'Payouts'Schedule'Interval'EnumStringWeekly
                                                            else PostAccountsRequestBodySettings'Payouts'Schedule'Interval'EnumOther val)
data PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'
    = PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumTyped GHC.Base.String
    | PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringFriday
    | PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringMonday
    | PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringSaturday
    | PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringSunday
    | PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringThursday
    | PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringTuesday
    | PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringWednesday
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'
    where toJSON (PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringFriday) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "friday"
          toJSON (PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringMonday) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "monday"
          toJSON (PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringSaturday) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "saturday"
          toJSON (PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringSunday) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sunday"
          toJSON (PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringThursday) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "thursday"
          toJSON (PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringTuesday) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tuesday"
          toJSON (PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringWednesday) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "wednesday"
instance Data.Aeson.FromJSON PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "friday")
                                          then PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringFriday
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "monday")
                                                then PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringMonday
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "saturday")
                                                      then PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringSaturday
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sunday")
                                                            then PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringSunday
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "thursday")
                                                                  then PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringThursday
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tuesday")
                                                                        then PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringTuesday
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "wednesday")
                                                                              then PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringWednesday
                                                                              else PostAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumOther val)
instance Data.Aeson.ToJSON PostAccountsRequestBodySettings'Payouts'Schedule'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "delay_days" (postAccountsRequestBodySettings'Payouts'Schedule'DelayDays obj) : (Data.Aeson..=) "interval" (postAccountsRequestBodySettings'Payouts'Schedule'Interval obj) : (Data.Aeson..=) "monthly_anchor" (postAccountsRequestBodySettings'Payouts'Schedule'MonthlyAnchor obj) : (Data.Aeson..=) "weekly_anchor" (postAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "delay_days" (postAccountsRequestBodySettings'Payouts'Schedule'DelayDays obj) GHC.Base.<> ((Data.Aeson..=) "interval" (postAccountsRequestBodySettings'Payouts'Schedule'Interval obj) GHC.Base.<> ((Data.Aeson..=) "monthly_anchor" (postAccountsRequestBodySettings'Payouts'Schedule'MonthlyAnchor obj) GHC.Base.<> (Data.Aeson..=) "weekly_anchor" (postAccountsRequestBodySettings'Payouts'Schedule'WeeklyAnchor obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsRequestBodySettings'Payouts'Schedule'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsRequestBodySettings'Payouts'Schedule'" (\obj -> (((GHC.Base.pure PostAccountsRequestBodySettings'Payouts'Schedule' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "delay_days")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "monthly_anchor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "weekly_anchor"))
instance Data.Aeson.ToJSON PostAccountsRequestBodySettings'Payouts'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "debit_negative_balances" (postAccountsRequestBodySettings'Payouts'DebitNegativeBalances obj) : (Data.Aeson..=) "schedule" (postAccountsRequestBodySettings'Payouts'Schedule obj) : (Data.Aeson..=) "statement_descriptor" (postAccountsRequestBodySettings'Payouts'StatementDescriptor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "debit_negative_balances" (postAccountsRequestBodySettings'Payouts'DebitNegativeBalances obj) GHC.Base.<> ((Data.Aeson..=) "schedule" (postAccountsRequestBodySettings'Payouts'Schedule obj) GHC.Base.<> (Data.Aeson..=) "statement_descriptor" (postAccountsRequestBodySettings'Payouts'StatementDescriptor obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsRequestBodySettings'Payouts'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsRequestBodySettings'Payouts'" (\obj -> ((GHC.Base.pure PostAccountsRequestBodySettings'Payouts' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "debit_negative_balances")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "schedule")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor"))
instance Data.Aeson.ToJSON PostAccountsRequestBodySettings'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "branding" (postAccountsRequestBodySettings'Branding obj) : (Data.Aeson..=) "card_payments" (postAccountsRequestBodySettings'CardPayments obj) : (Data.Aeson..=) "payments" (postAccountsRequestBodySettings'Payments obj) : (Data.Aeson..=) "payouts" (postAccountsRequestBodySettings'Payouts obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "branding" (postAccountsRequestBodySettings'Branding obj) GHC.Base.<> ((Data.Aeson..=) "card_payments" (postAccountsRequestBodySettings'CardPayments obj) GHC.Base.<> ((Data.Aeson..=) "payments" (postAccountsRequestBodySettings'Payments obj) GHC.Base.<> (Data.Aeson..=) "payouts" (postAccountsRequestBodySettings'Payouts obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsRequestBodySettings'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsRequestBodySettings'" (\obj -> (((GHC.Base.pure PostAccountsRequestBodySettings' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "branding")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card_payments")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payments")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payouts"))
data PostAccountsRequestBodyTosAcceptance'
    = PostAccountsRequestBodyTosAcceptance' {postAccountsRequestBodyTosAcceptance'Date :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                             postAccountsRequestBodyTosAcceptance'Ip :: (GHC.Maybe.Maybe GHC.Base.String),
                                             postAccountsRequestBodyTosAcceptance'UserAgent :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsRequestBodyTosAcceptance'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "date" (postAccountsRequestBodyTosAcceptance'Date obj) : (Data.Aeson..=) "ip" (postAccountsRequestBodyTosAcceptance'Ip obj) : (Data.Aeson..=) "user_agent" (postAccountsRequestBodyTosAcceptance'UserAgent obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "date" (postAccountsRequestBodyTosAcceptance'Date obj) GHC.Base.<> ((Data.Aeson..=) "ip" (postAccountsRequestBodyTosAcceptance'Ip obj) GHC.Base.<> (Data.Aeson..=) "user_agent" (postAccountsRequestBodyTosAcceptance'UserAgent obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsRequestBodyTosAcceptance'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsRequestBodyTosAcceptance'" (\obj -> ((GHC.Base.pure PostAccountsRequestBodyTosAcceptance' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "user_agent"))
data PostAccountsRequestBodyType'
    = PostAccountsRequestBodyType'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsRequestBodyType'EnumTyped GHC.Base.String
    | PostAccountsRequestBodyType'EnumStringCustom
    | PostAccountsRequestBodyType'EnumStringExpress
    | PostAccountsRequestBodyType'EnumStringStandard
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsRequestBodyType'
    where toJSON (PostAccountsRequestBodyType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsRequestBodyType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsRequestBodyType'EnumStringCustom) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "custom"
          toJSON (PostAccountsRequestBodyType'EnumStringExpress) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "express"
          toJSON (PostAccountsRequestBodyType'EnumStringStandard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard"
instance Data.Aeson.FromJSON PostAccountsRequestBodyType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "custom")
                                          then PostAccountsRequestBodyType'EnumStringCustom
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "express")
                                                then PostAccountsRequestBodyType'EnumStringExpress
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard")
                                                      then PostAccountsRequestBodyType'EnumStringStandard
                                                      else PostAccountsRequestBodyType'EnumOther val)
instance Data.Aeson.ToJSON PostAccountsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_token" (postAccountsRequestBodyAccountToken obj) : (Data.Aeson..=) "bank_account" (postAccountsRequestBodyBankAccount obj) : (Data.Aeson..=) "business_profile" (postAccountsRequestBodyBusinessProfile obj) : (Data.Aeson..=) "business_type" (postAccountsRequestBodyBusinessType obj) : (Data.Aeson..=) "company" (postAccountsRequestBodyCompany obj) : (Data.Aeson..=) "country" (postAccountsRequestBodyCountry obj) : (Data.Aeson..=) "default_currency" (postAccountsRequestBodyDefaultCurrency obj) : (Data.Aeson..=) "email" (postAccountsRequestBodyEmail obj) : (Data.Aeson..=) "expand" (postAccountsRequestBodyExpand obj) : (Data.Aeson..=) "external_account" (postAccountsRequestBodyExternalAccount obj) : (Data.Aeson..=) "individual" (postAccountsRequestBodyIndividual obj) : (Data.Aeson..=) "metadata" (postAccountsRequestBodyMetadata obj) : (Data.Aeson..=) "requested_capabilities" (postAccountsRequestBodyRequestedCapabilities obj) : (Data.Aeson..=) "settings" (postAccountsRequestBodySettings obj) : (Data.Aeson..=) "tos_acceptance" (postAccountsRequestBodyTosAcceptance obj) : (Data.Aeson..=) "type" (postAccountsRequestBodyType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_token" (postAccountsRequestBodyAccountToken obj) GHC.Base.<> ((Data.Aeson..=) "bank_account" (postAccountsRequestBodyBankAccount obj) GHC.Base.<> ((Data.Aeson..=) "business_profile" (postAccountsRequestBodyBusinessProfile obj) GHC.Base.<> ((Data.Aeson..=) "business_type" (postAccountsRequestBodyBusinessType obj) GHC.Base.<> ((Data.Aeson..=) "company" (postAccountsRequestBodyCompany obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsRequestBodyCountry obj) GHC.Base.<> ((Data.Aeson..=) "default_currency" (postAccountsRequestBodyDefaultCurrency obj) GHC.Base.<> ((Data.Aeson..=) "email" (postAccountsRequestBodyEmail obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postAccountsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "external_account" (postAccountsRequestBodyExternalAccount obj) GHC.Base.<> ((Data.Aeson..=) "individual" (postAccountsRequestBodyIndividual obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postAccountsRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "requested_capabilities" (postAccountsRequestBodyRequestedCapabilities obj) GHC.Base.<> ((Data.Aeson..=) "settings" (postAccountsRequestBodySettings obj) GHC.Base.<> ((Data.Aeson..=) "tos_acceptance" (postAccountsRequestBodyTosAcceptance obj) GHC.Base.<> (Data.Aeson..=) "type" (postAccountsRequestBodyType obj))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsRequestBody" (\obj -> (((((((((((((((GHC.Base.pure PostAccountsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "business_profile")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "business_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "company")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "external_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "individual")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "requested_capabilities")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "settings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tos_acceptance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type"))

data PostAccountsResponse
    = PostAccountsResponseError GHC.Base.String
    | PostAccountsResponse200 Account
    | PostAccountsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)