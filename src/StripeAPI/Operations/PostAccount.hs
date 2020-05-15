{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostAccount where

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
-- POST /v1/account
postAccount :: forall m s . (StripeAPI.Common.MonadHTTP m,
                             StripeAPI.Common.SecurityScheme s) =>
               StripeAPI.Common.Configuration s ->
               PostAccountRequestBody ->
               m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                     (Network.HTTP.Client.Types.Response PostAccountResponse))
postAccount config
            body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                   Account)
                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/account") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                StripeAPI.Common.SecurityScheme s) =>
                  StripeAPI.Common.Configuration s ->
                  PostAccountRequestBody ->
                  m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountRaw config
               body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/account") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                              StripeAPI.Common.SecurityScheme s) =>
                PostAccountRequestBody ->
                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                   m
                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                       (Network.HTTP.Client.Types.Response PostAccountResponse))
postAccountM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostAccountResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                    Account)
                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/account") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                 StripeAPI.Common.SecurityScheme s) =>
                   PostAccountRequestBody ->
                   Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                      m
                                                      (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/account") [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostAccountRequestBody
    = PostAccountRequestBody {postAccountRequestBodyAccountToken :: (GHC.Maybe.Maybe GHC.Base.String),
                              postAccountRequestBodyBankAccount :: (GHC.Maybe.Maybe PostAccountRequestBodyBankAccount'Variants),
                              postAccountRequestBodyBusinessProfile :: (GHC.Maybe.Maybe PostAccountRequestBodyBusinessProfile'),
                              postAccountRequestBodyBusinessType :: (GHC.Maybe.Maybe PostAccountRequestBodyBusinessType'),
                              postAccountRequestBodyCompany :: (GHC.Maybe.Maybe PostAccountRequestBodyCompany'),
                              postAccountRequestBodyDefaultCurrency :: (GHC.Maybe.Maybe GHC.Base.String),
                              postAccountRequestBodyEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                              postAccountRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                              postAccountRequestBodyExternalAccount :: (GHC.Maybe.Maybe GHC.Base.String),
                              postAccountRequestBodyIndividual :: (GHC.Maybe.Maybe PostAccountRequestBodyIndividual'),
                              postAccountRequestBodyMetadata :: (GHC.Maybe.Maybe PostAccountRequestBodyMetadata'),
                              postAccountRequestBodyRequestedCapabilities :: (GHC.Maybe.Maybe ([] PostAccountRequestBodyRequestedCapabilities')),
                              postAccountRequestBodySettings :: (GHC.Maybe.Maybe PostAccountRequestBodySettings'),
                              postAccountRequestBodyTosAcceptance :: (GHC.Maybe.Maybe PostAccountRequestBodyTosAcceptance')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountRequestBodyBankAccount'OneOf2
    = PostAccountRequestBodyBankAccount'OneOf2 {postAccountRequestBodyBankAccount'OneOf2AccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postAccountRequestBodyBankAccount'OneOf2AccountHolderType :: (GHC.Maybe.Maybe PostAccountRequestBodyBankAccount'OneOf2AccountHolderType'),
                                                postAccountRequestBodyBankAccount'OneOf2AccountNumber :: GHC.Base.String,
                                                postAccountRequestBodyBankAccount'OneOf2Country :: GHC.Base.String,
                                                postAccountRequestBodyBankAccount'OneOf2Currency :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postAccountRequestBodyBankAccount'OneOf2Object :: (GHC.Maybe.Maybe PostAccountRequestBodyBankAccount'OneOf2Object'),
                                                postAccountRequestBodyBankAccount'OneOf2RoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountRequestBodyBankAccount'OneOf2AccountHolderType'
    = PostAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumTyped GHC.Base.String
    | PostAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany
    | PostAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyBankAccount'OneOf2AccountHolderType'
    where toJSON (PostAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company"
          toJSON (PostAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
instance Data.Aeson.FromJSON PostAccountRequestBodyBankAccount'OneOf2AccountHolderType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company")
                                          then PostAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                then PostAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual
                                                else PostAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther val)
data PostAccountRequestBodyBankAccount'OneOf2Object'
    = PostAccountRequestBodyBankAccount'OneOf2Object'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountRequestBodyBankAccount'OneOf2Object'EnumTyped GHC.Base.String
    | PostAccountRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyBankAccount'OneOf2Object'
    where toJSON (PostAccountRequestBodyBankAccount'OneOf2Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountRequestBodyBankAccount'OneOf2Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account"
instance Data.Aeson.FromJSON PostAccountRequestBodyBankAccount'OneOf2Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account")
                                          then PostAccountRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount
                                          else PostAccountRequestBodyBankAccount'OneOf2Object'EnumOther val)
instance Data.Aeson.ToJSON PostAccountRequestBodyBankAccount'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_holder_name" (postAccountRequestBodyBankAccount'OneOf2AccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (postAccountRequestBodyBankAccount'OneOf2AccountHolderType obj) : (Data.Aeson..=) "account_number" (postAccountRequestBodyBankAccount'OneOf2AccountNumber obj) : (Data.Aeson..=) "country" (postAccountRequestBodyBankAccount'OneOf2Country obj) : (Data.Aeson..=) "currency" (postAccountRequestBodyBankAccount'OneOf2Currency obj) : (Data.Aeson..=) "object" (postAccountRequestBodyBankAccount'OneOf2Object obj) : (Data.Aeson..=) "routing_number" (postAccountRequestBodyBankAccount'OneOf2RoutingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_holder_name" (postAccountRequestBodyBankAccount'OneOf2AccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (postAccountRequestBodyBankAccount'OneOf2AccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "account_number" (postAccountRequestBodyBankAccount'OneOf2AccountNumber obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountRequestBodyBankAccount'OneOf2Country obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postAccountRequestBodyBankAccount'OneOf2Currency obj) GHC.Base.<> ((Data.Aeson..=) "object" (postAccountRequestBodyBankAccount'OneOf2Object obj) GHC.Base.<> (Data.Aeson..=) "routing_number" (postAccountRequestBodyBankAccount'OneOf2RoutingNumber obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyBankAccount'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyBankAccount'OneOf2" (\obj -> ((((((GHC.Base.pure PostAccountRequestBodyBankAccount'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number"))
data PostAccountRequestBodyBankAccount'Variants
    = PostAccountRequestBodyBankAccount'Variant1 GHC.Base.String
    | PostAccountRequestBodyBankAccount'Variant2 PostAccountRequestBodyBankAccount'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountRequestBodyBankAccount'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountRequestBodyBankAccount'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostAccountRequestBodyBusinessProfile'
    = PostAccountRequestBodyBusinessProfile' {postAccountRequestBodyBusinessProfile'Mcc :: (GHC.Maybe.Maybe GHC.Base.String),
                                              postAccountRequestBodyBusinessProfile'Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                              postAccountRequestBodyBusinessProfile'ProductDescription :: (GHC.Maybe.Maybe GHC.Base.String),
                                              postAccountRequestBodyBusinessProfile'SupportEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                                              postAccountRequestBodyBusinessProfile'SupportPhone :: (GHC.Maybe.Maybe GHC.Base.String),
                                              postAccountRequestBodyBusinessProfile'SupportUrl :: (GHC.Maybe.Maybe GHC.Base.String),
                                              postAccountRequestBodyBusinessProfile'Url :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyBusinessProfile'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "mcc" (postAccountRequestBodyBusinessProfile'Mcc obj) : (Data.Aeson..=) "name" (postAccountRequestBodyBusinessProfile'Name obj) : (Data.Aeson..=) "product_description" (postAccountRequestBodyBusinessProfile'ProductDescription obj) : (Data.Aeson..=) "support_email" (postAccountRequestBodyBusinessProfile'SupportEmail obj) : (Data.Aeson..=) "support_phone" (postAccountRequestBodyBusinessProfile'SupportPhone obj) : (Data.Aeson..=) "support_url" (postAccountRequestBodyBusinessProfile'SupportUrl obj) : (Data.Aeson..=) "url" (postAccountRequestBodyBusinessProfile'Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "mcc" (postAccountRequestBodyBusinessProfile'Mcc obj) GHC.Base.<> ((Data.Aeson..=) "name" (postAccountRequestBodyBusinessProfile'Name obj) GHC.Base.<> ((Data.Aeson..=) "product_description" (postAccountRequestBodyBusinessProfile'ProductDescription obj) GHC.Base.<> ((Data.Aeson..=) "support_email" (postAccountRequestBodyBusinessProfile'SupportEmail obj) GHC.Base.<> ((Data.Aeson..=) "support_phone" (postAccountRequestBodyBusinessProfile'SupportPhone obj) GHC.Base.<> ((Data.Aeson..=) "support_url" (postAccountRequestBodyBusinessProfile'SupportUrl obj) GHC.Base.<> (Data.Aeson..=) "url" (postAccountRequestBodyBusinessProfile'Url obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyBusinessProfile'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyBusinessProfile'" (\obj -> ((((((GHC.Base.pure PostAccountRequestBodyBusinessProfile' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mcc")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "product_description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "support_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "support_phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "support_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "url"))
data PostAccountRequestBodyBusinessType'
    = PostAccountRequestBodyBusinessType'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountRequestBodyBusinessType'EnumTyped GHC.Base.String
    | PostAccountRequestBodyBusinessType'EnumStringCompany
    | PostAccountRequestBodyBusinessType'EnumStringGovernmentEntity
    | PostAccountRequestBodyBusinessType'EnumStringIndividual
    | PostAccountRequestBodyBusinessType'EnumStringNonProfit
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyBusinessType'
    where toJSON (PostAccountRequestBodyBusinessType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountRequestBodyBusinessType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountRequestBodyBusinessType'EnumStringCompany) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company"
          toJSON (PostAccountRequestBodyBusinessType'EnumStringGovernmentEntity) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "government_entity"
          toJSON (PostAccountRequestBodyBusinessType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
          toJSON (PostAccountRequestBodyBusinessType'EnumStringNonProfit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "non_profit"
instance Data.Aeson.FromJSON PostAccountRequestBodyBusinessType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company")
                                          then PostAccountRequestBodyBusinessType'EnumStringCompany
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "government_entity")
                                                then PostAccountRequestBodyBusinessType'EnumStringGovernmentEntity
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                      then PostAccountRequestBodyBusinessType'EnumStringIndividual
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "non_profit")
                                                            then PostAccountRequestBodyBusinessType'EnumStringNonProfit
                                                            else PostAccountRequestBodyBusinessType'EnumOther val)
data PostAccountRequestBodyCompany'
    = PostAccountRequestBodyCompany' {postAccountRequestBodyCompany'Address :: (GHC.Maybe.Maybe PostAccountRequestBodyCompany'Address'),
                                      postAccountRequestBodyCompany'AddressKana :: (GHC.Maybe.Maybe PostAccountRequestBodyCompany'AddressKana'),
                                      postAccountRequestBodyCompany'AddressKanji :: (GHC.Maybe.Maybe PostAccountRequestBodyCompany'AddressKanji'),
                                      postAccountRequestBodyCompany'DirectorsProvided :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                      postAccountRequestBodyCompany'ExecutivesProvided :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                      postAccountRequestBodyCompany'Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                      postAccountRequestBodyCompany'NameKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                      postAccountRequestBodyCompany'NameKanji :: (GHC.Maybe.Maybe GHC.Base.String),
                                      postAccountRequestBodyCompany'OwnersProvided :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                      postAccountRequestBodyCompany'Phone :: (GHC.Maybe.Maybe GHC.Base.String),
                                      postAccountRequestBodyCompany'Structure :: (GHC.Maybe.Maybe PostAccountRequestBodyCompany'Structure'),
                                      postAccountRequestBodyCompany'TaxId :: (GHC.Maybe.Maybe GHC.Base.String),
                                      postAccountRequestBodyCompany'TaxIdRegistrar :: (GHC.Maybe.Maybe GHC.Base.String),
                                      postAccountRequestBodyCompany'VatId :: (GHC.Maybe.Maybe GHC.Base.String),
                                      postAccountRequestBodyCompany'Verification :: (GHC.Maybe.Maybe PostAccountRequestBodyCompany'Verification')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountRequestBodyCompany'Address'
    = PostAccountRequestBodyCompany'Address' {postAccountRequestBodyCompany'Address'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                              postAccountRequestBodyCompany'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                              postAccountRequestBodyCompany'Address'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                              postAccountRequestBodyCompany'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                              postAccountRequestBodyCompany'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                              postAccountRequestBodyCompany'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyCompany'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountRequestBodyCompany'Address'City obj) : (Data.Aeson..=) "country" (postAccountRequestBodyCompany'Address'Country obj) : (Data.Aeson..=) "line1" (postAccountRequestBodyCompany'Address'Line1 obj) : (Data.Aeson..=) "line2" (postAccountRequestBodyCompany'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountRequestBodyCompany'Address'PostalCode obj) : (Data.Aeson..=) "state" (postAccountRequestBodyCompany'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountRequestBodyCompany'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountRequestBodyCompany'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountRequestBodyCompany'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountRequestBodyCompany'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountRequestBodyCompany'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postAccountRequestBodyCompany'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyCompany'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyCompany'Address'" (\obj -> (((((GHC.Base.pure PostAccountRequestBodyCompany'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
data PostAccountRequestBodyCompany'AddressKana'
    = PostAccountRequestBodyCompany'AddressKana' {postAccountRequestBodyCompany'AddressKana'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountRequestBodyCompany'AddressKana'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountRequestBodyCompany'AddressKana'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountRequestBodyCompany'AddressKana'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountRequestBodyCompany'AddressKana'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountRequestBodyCompany'AddressKana'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountRequestBodyCompany'AddressKana'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyCompany'AddressKana'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountRequestBodyCompany'AddressKana'City obj) : (Data.Aeson..=) "country" (postAccountRequestBodyCompany'AddressKana'Country obj) : (Data.Aeson..=) "line1" (postAccountRequestBodyCompany'AddressKana'Line1 obj) : (Data.Aeson..=) "line2" (postAccountRequestBodyCompany'AddressKana'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountRequestBodyCompany'AddressKana'PostalCode obj) : (Data.Aeson..=) "state" (postAccountRequestBodyCompany'AddressKana'State obj) : (Data.Aeson..=) "town" (postAccountRequestBodyCompany'AddressKana'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountRequestBodyCompany'AddressKana'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountRequestBodyCompany'AddressKana'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountRequestBodyCompany'AddressKana'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountRequestBodyCompany'AddressKana'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountRequestBodyCompany'AddressKana'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountRequestBodyCompany'AddressKana'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountRequestBodyCompany'AddressKana'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyCompany'AddressKana'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyCompany'AddressKana'" (\obj -> ((((((GHC.Base.pure PostAccountRequestBodyCompany'AddressKana' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostAccountRequestBodyCompany'AddressKanji'
    = PostAccountRequestBodyCompany'AddressKanji' {postAccountRequestBodyCompany'AddressKanji'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountRequestBodyCompany'AddressKanji'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountRequestBodyCompany'AddressKanji'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountRequestBodyCompany'AddressKanji'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountRequestBodyCompany'AddressKanji'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountRequestBodyCompany'AddressKanji'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountRequestBodyCompany'AddressKanji'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyCompany'AddressKanji'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountRequestBodyCompany'AddressKanji'City obj) : (Data.Aeson..=) "country" (postAccountRequestBodyCompany'AddressKanji'Country obj) : (Data.Aeson..=) "line1" (postAccountRequestBodyCompany'AddressKanji'Line1 obj) : (Data.Aeson..=) "line2" (postAccountRequestBodyCompany'AddressKanji'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountRequestBodyCompany'AddressKanji'PostalCode obj) : (Data.Aeson..=) "state" (postAccountRequestBodyCompany'AddressKanji'State obj) : (Data.Aeson..=) "town" (postAccountRequestBodyCompany'AddressKanji'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountRequestBodyCompany'AddressKanji'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountRequestBodyCompany'AddressKanji'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountRequestBodyCompany'AddressKanji'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountRequestBodyCompany'AddressKanji'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountRequestBodyCompany'AddressKanji'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountRequestBodyCompany'AddressKanji'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountRequestBodyCompany'AddressKanji'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyCompany'AddressKanji'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyCompany'AddressKanji'" (\obj -> ((((((GHC.Base.pure PostAccountRequestBodyCompany'AddressKanji' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostAccountRequestBodyCompany'Structure'
    = PostAccountRequestBodyCompany'Structure'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountRequestBodyCompany'Structure'EnumTyped GHC.Base.String
    | PostAccountRequestBodyCompany'Structure'EnumString_
    | PostAccountRequestBodyCompany'Structure'EnumStringGovernmentInstrumentality
    | PostAccountRequestBodyCompany'Structure'EnumStringGovernmentalUnit
    | PostAccountRequestBodyCompany'Structure'EnumStringIncorporatedNonProfit
    | PostAccountRequestBodyCompany'Structure'EnumStringMultiMemberLlc
    | PostAccountRequestBodyCompany'Structure'EnumStringPrivateCorporation
    | PostAccountRequestBodyCompany'Structure'EnumStringPrivatePartnership
    | PostAccountRequestBodyCompany'Structure'EnumStringPublicCorporation
    | PostAccountRequestBodyCompany'Structure'EnumStringPublicPartnership
    | PostAccountRequestBodyCompany'Structure'EnumStringTaxExemptGovernmentInstrumentality
    | PostAccountRequestBodyCompany'Structure'EnumStringUnincorporatedAssociation
    | PostAccountRequestBodyCompany'Structure'EnumStringUnincorporatedNonProfit
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyCompany'Structure'
    where toJSON (PostAccountRequestBodyCompany'Structure'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountRequestBodyCompany'Structure'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountRequestBodyCompany'Structure'EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
          toJSON (PostAccountRequestBodyCompany'Structure'EnumStringGovernmentInstrumentality) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "government_instrumentality"
          toJSON (PostAccountRequestBodyCompany'Structure'EnumStringGovernmentalUnit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "governmental_unit"
          toJSON (PostAccountRequestBodyCompany'Structure'EnumStringIncorporatedNonProfit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "incorporated_non_profit"
          toJSON (PostAccountRequestBodyCompany'Structure'EnumStringMultiMemberLlc) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "multi_member_llc"
          toJSON (PostAccountRequestBodyCompany'Structure'EnumStringPrivateCorporation) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "private_corporation"
          toJSON (PostAccountRequestBodyCompany'Structure'EnumStringPrivatePartnership) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "private_partnership"
          toJSON (PostAccountRequestBodyCompany'Structure'EnumStringPublicCorporation) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public_corporation"
          toJSON (PostAccountRequestBodyCompany'Structure'EnumStringPublicPartnership) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public_partnership"
          toJSON (PostAccountRequestBodyCompany'Structure'EnumStringTaxExemptGovernmentInstrumentality) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tax_exempt_government_instrumentality"
          toJSON (PostAccountRequestBodyCompany'Structure'EnumStringUnincorporatedAssociation) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unincorporated_association"
          toJSON (PostAccountRequestBodyCompany'Structure'EnumStringUnincorporatedNonProfit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unincorporated_non_profit"
instance Data.Aeson.FromJSON PostAccountRequestBodyCompany'Structure'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostAccountRequestBodyCompany'Structure'EnumString_
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "government_instrumentality")
                                                then PostAccountRequestBodyCompany'Structure'EnumStringGovernmentInstrumentality
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "governmental_unit")
                                                      then PostAccountRequestBodyCompany'Structure'EnumStringGovernmentalUnit
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "incorporated_non_profit")
                                                            then PostAccountRequestBodyCompany'Structure'EnumStringIncorporatedNonProfit
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "multi_member_llc")
                                                                  then PostAccountRequestBodyCompany'Structure'EnumStringMultiMemberLlc
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "private_corporation")
                                                                        then PostAccountRequestBodyCompany'Structure'EnumStringPrivateCorporation
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "private_partnership")
                                                                              then PostAccountRequestBodyCompany'Structure'EnumStringPrivatePartnership
                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public_corporation")
                                                                                    then PostAccountRequestBodyCompany'Structure'EnumStringPublicCorporation
                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public_partnership")
                                                                                          then PostAccountRequestBodyCompany'Structure'EnumStringPublicPartnership
                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tax_exempt_government_instrumentality")
                                                                                                then PostAccountRequestBodyCompany'Structure'EnumStringTaxExemptGovernmentInstrumentality
                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unincorporated_association")
                                                                                                      then PostAccountRequestBodyCompany'Structure'EnumStringUnincorporatedAssociation
                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unincorporated_non_profit")
                                                                                                            then PostAccountRequestBodyCompany'Structure'EnumStringUnincorporatedNonProfit
                                                                                                            else PostAccountRequestBodyCompany'Structure'EnumOther val)
data PostAccountRequestBodyCompany'Verification'
    = PostAccountRequestBodyCompany'Verification' {postAccountRequestBodyCompany'Verification'Document :: (GHC.Maybe.Maybe PostAccountRequestBodyCompany'Verification'Document')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountRequestBodyCompany'Verification'Document'
    = PostAccountRequestBodyCompany'Verification'Document' {postAccountRequestBodyCompany'Verification'Document'Back :: (GHC.Maybe.Maybe GHC.Base.String),
                                                            postAccountRequestBodyCompany'Verification'Document'Front :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyCompany'Verification'Document'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountRequestBodyCompany'Verification'Document'Back obj) : (Data.Aeson..=) "front" (postAccountRequestBodyCompany'Verification'Document'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountRequestBodyCompany'Verification'Document'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountRequestBodyCompany'Verification'Document'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyCompany'Verification'Document'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyCompany'Verification'Document'" (\obj -> (GHC.Base.pure PostAccountRequestBodyCompany'Verification'Document' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
instance Data.Aeson.ToJSON PostAccountRequestBodyCompany'Verification'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "document" (postAccountRequestBodyCompany'Verification'Document obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "document" (postAccountRequestBodyCompany'Verification'Document obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyCompany'Verification'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyCompany'Verification'" (\obj -> GHC.Base.pure PostAccountRequestBodyCompany'Verification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document"))
instance Data.Aeson.ToJSON PostAccountRequestBodyCompany'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postAccountRequestBodyCompany'Address obj) : (Data.Aeson..=) "address_kana" (postAccountRequestBodyCompany'AddressKana obj) : (Data.Aeson..=) "address_kanji" (postAccountRequestBodyCompany'AddressKanji obj) : (Data.Aeson..=) "directors_provided" (postAccountRequestBodyCompany'DirectorsProvided obj) : (Data.Aeson..=) "executives_provided" (postAccountRequestBodyCompany'ExecutivesProvided obj) : (Data.Aeson..=) "name" (postAccountRequestBodyCompany'Name obj) : (Data.Aeson..=) "name_kana" (postAccountRequestBodyCompany'NameKana obj) : (Data.Aeson..=) "name_kanji" (postAccountRequestBodyCompany'NameKanji obj) : (Data.Aeson..=) "owners_provided" (postAccountRequestBodyCompany'OwnersProvided obj) : (Data.Aeson..=) "phone" (postAccountRequestBodyCompany'Phone obj) : (Data.Aeson..=) "structure" (postAccountRequestBodyCompany'Structure obj) : (Data.Aeson..=) "tax_id" (postAccountRequestBodyCompany'TaxId obj) : (Data.Aeson..=) "tax_id_registrar" (postAccountRequestBodyCompany'TaxIdRegistrar obj) : (Data.Aeson..=) "vat_id" (postAccountRequestBodyCompany'VatId obj) : (Data.Aeson..=) "verification" (postAccountRequestBodyCompany'Verification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postAccountRequestBodyCompany'Address obj) GHC.Base.<> ((Data.Aeson..=) "address_kana" (postAccountRequestBodyCompany'AddressKana obj) GHC.Base.<> ((Data.Aeson..=) "address_kanji" (postAccountRequestBodyCompany'AddressKanji obj) GHC.Base.<> ((Data.Aeson..=) "directors_provided" (postAccountRequestBodyCompany'DirectorsProvided obj) GHC.Base.<> ((Data.Aeson..=) "executives_provided" (postAccountRequestBodyCompany'ExecutivesProvided obj) GHC.Base.<> ((Data.Aeson..=) "name" (postAccountRequestBodyCompany'Name obj) GHC.Base.<> ((Data.Aeson..=) "name_kana" (postAccountRequestBodyCompany'NameKana obj) GHC.Base.<> ((Data.Aeson..=) "name_kanji" (postAccountRequestBodyCompany'NameKanji obj) GHC.Base.<> ((Data.Aeson..=) "owners_provided" (postAccountRequestBodyCompany'OwnersProvided obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postAccountRequestBodyCompany'Phone obj) GHC.Base.<> ((Data.Aeson..=) "structure" (postAccountRequestBodyCompany'Structure obj) GHC.Base.<> ((Data.Aeson..=) "tax_id" (postAccountRequestBodyCompany'TaxId obj) GHC.Base.<> ((Data.Aeson..=) "tax_id_registrar" (postAccountRequestBodyCompany'TaxIdRegistrar obj) GHC.Base.<> ((Data.Aeson..=) "vat_id" (postAccountRequestBodyCompany'VatId obj) GHC.Base.<> (Data.Aeson..=) "verification" (postAccountRequestBodyCompany'Verification obj)))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyCompany'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyCompany'" (\obj -> ((((((((((((((GHC.Base.pure PostAccountRequestBodyCompany' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "directors_provided")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "executives_provided")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owners_provided")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "structure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_id_registrar")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "vat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verification"))
data PostAccountRequestBodyIndividual'
    = PostAccountRequestBodyIndividual' {postAccountRequestBodyIndividual'Address :: (GHC.Maybe.Maybe PostAccountRequestBodyIndividual'Address'),
                                         postAccountRequestBodyIndividual'AddressKana :: (GHC.Maybe.Maybe PostAccountRequestBodyIndividual'AddressKana'),
                                         postAccountRequestBodyIndividual'AddressKanji :: (GHC.Maybe.Maybe PostAccountRequestBodyIndividual'AddressKanji'),
                                         postAccountRequestBodyIndividual'Dob :: (GHC.Maybe.Maybe PostAccountRequestBodyIndividual'Dob'Variants),
                                         postAccountRequestBodyIndividual'Email :: (GHC.Maybe.Maybe GHC.Base.String),
                                         postAccountRequestBodyIndividual'FirstName :: (GHC.Maybe.Maybe GHC.Base.String),
                                         postAccountRequestBodyIndividual'FirstNameKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                         postAccountRequestBodyIndividual'FirstNameKanji :: (GHC.Maybe.Maybe GHC.Base.String),
                                         postAccountRequestBodyIndividual'Gender :: (GHC.Maybe.Maybe GHC.Base.String),
                                         postAccountRequestBodyIndividual'IdNumber :: (GHC.Maybe.Maybe GHC.Base.String),
                                         postAccountRequestBodyIndividual'LastName :: (GHC.Maybe.Maybe GHC.Base.String),
                                         postAccountRequestBodyIndividual'LastNameKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                         postAccountRequestBodyIndividual'LastNameKanji :: (GHC.Maybe.Maybe GHC.Base.String),
                                         postAccountRequestBodyIndividual'MaidenName :: (GHC.Maybe.Maybe GHC.Base.String),
                                         postAccountRequestBodyIndividual'Metadata :: (GHC.Maybe.Maybe PostAccountRequestBodyIndividual'Metadata'),
                                         postAccountRequestBodyIndividual'Phone :: (GHC.Maybe.Maybe GHC.Base.String),
                                         postAccountRequestBodyIndividual'SsnLast_4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                         postAccountRequestBodyIndividual'Verification :: (GHC.Maybe.Maybe PostAccountRequestBodyIndividual'Verification')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountRequestBodyIndividual'Address'
    = PostAccountRequestBodyIndividual'Address' {postAccountRequestBodyIndividual'Address'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountRequestBodyIndividual'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountRequestBodyIndividual'Address'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountRequestBodyIndividual'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountRequestBodyIndividual'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountRequestBodyIndividual'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyIndividual'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountRequestBodyIndividual'Address'City obj) : (Data.Aeson..=) "country" (postAccountRequestBodyIndividual'Address'Country obj) : (Data.Aeson..=) "line1" (postAccountRequestBodyIndividual'Address'Line1 obj) : (Data.Aeson..=) "line2" (postAccountRequestBodyIndividual'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountRequestBodyIndividual'Address'PostalCode obj) : (Data.Aeson..=) "state" (postAccountRequestBodyIndividual'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountRequestBodyIndividual'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountRequestBodyIndividual'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountRequestBodyIndividual'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountRequestBodyIndividual'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountRequestBodyIndividual'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postAccountRequestBodyIndividual'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyIndividual'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyIndividual'Address'" (\obj -> (((((GHC.Base.pure PostAccountRequestBodyIndividual'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
data PostAccountRequestBodyIndividual'AddressKana'
    = PostAccountRequestBodyIndividual'AddressKana' {postAccountRequestBodyIndividual'AddressKana'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postAccountRequestBodyIndividual'AddressKana'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postAccountRequestBodyIndividual'AddressKana'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postAccountRequestBodyIndividual'AddressKana'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postAccountRequestBodyIndividual'AddressKana'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postAccountRequestBodyIndividual'AddressKana'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postAccountRequestBodyIndividual'AddressKana'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyIndividual'AddressKana'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountRequestBodyIndividual'AddressKana'City obj) : (Data.Aeson..=) "country" (postAccountRequestBodyIndividual'AddressKana'Country obj) : (Data.Aeson..=) "line1" (postAccountRequestBodyIndividual'AddressKana'Line1 obj) : (Data.Aeson..=) "line2" (postAccountRequestBodyIndividual'AddressKana'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountRequestBodyIndividual'AddressKana'PostalCode obj) : (Data.Aeson..=) "state" (postAccountRequestBodyIndividual'AddressKana'State obj) : (Data.Aeson..=) "town" (postAccountRequestBodyIndividual'AddressKana'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountRequestBodyIndividual'AddressKana'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountRequestBodyIndividual'AddressKana'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountRequestBodyIndividual'AddressKana'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountRequestBodyIndividual'AddressKana'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountRequestBodyIndividual'AddressKana'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountRequestBodyIndividual'AddressKana'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountRequestBodyIndividual'AddressKana'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyIndividual'AddressKana'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyIndividual'AddressKana'" (\obj -> ((((((GHC.Base.pure PostAccountRequestBodyIndividual'AddressKana' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostAccountRequestBodyIndividual'AddressKanji'
    = PostAccountRequestBodyIndividual'AddressKanji' {postAccountRequestBodyIndividual'AddressKanji'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountRequestBodyIndividual'AddressKanji'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountRequestBodyIndividual'AddressKanji'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountRequestBodyIndividual'AddressKanji'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountRequestBodyIndividual'AddressKanji'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountRequestBodyIndividual'AddressKanji'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountRequestBodyIndividual'AddressKanji'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyIndividual'AddressKanji'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountRequestBodyIndividual'AddressKanji'City obj) : (Data.Aeson..=) "country" (postAccountRequestBodyIndividual'AddressKanji'Country obj) : (Data.Aeson..=) "line1" (postAccountRequestBodyIndividual'AddressKanji'Line1 obj) : (Data.Aeson..=) "line2" (postAccountRequestBodyIndividual'AddressKanji'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountRequestBodyIndividual'AddressKanji'PostalCode obj) : (Data.Aeson..=) "state" (postAccountRequestBodyIndividual'AddressKanji'State obj) : (Data.Aeson..=) "town" (postAccountRequestBodyIndividual'AddressKanji'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountRequestBodyIndividual'AddressKanji'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountRequestBodyIndividual'AddressKanji'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountRequestBodyIndividual'AddressKanji'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountRequestBodyIndividual'AddressKanji'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountRequestBodyIndividual'AddressKanji'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountRequestBodyIndividual'AddressKanji'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountRequestBodyIndividual'AddressKanji'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyIndividual'AddressKanji'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyIndividual'AddressKanji'" (\obj -> ((((((GHC.Base.pure PostAccountRequestBodyIndividual'AddressKanji' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostAccountRequestBodyIndividual'Dob'OneOf1
    = PostAccountRequestBodyIndividual'Dob'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountRequestBodyIndividual'Dob'OneOf1EnumTyped GHC.Base.String
    | PostAccountRequestBodyIndividual'Dob'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyIndividual'Dob'OneOf1
    where toJSON (PostAccountRequestBodyIndividual'Dob'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountRequestBodyIndividual'Dob'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountRequestBodyIndividual'Dob'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostAccountRequestBodyIndividual'Dob'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostAccountRequestBodyIndividual'Dob'OneOf1EnumString_
                                          else PostAccountRequestBodyIndividual'Dob'OneOf1EnumOther val)
data PostAccountRequestBodyIndividual'Dob'OneOf2
    = PostAccountRequestBodyIndividual'Dob'OneOf2 {postAccountRequestBodyIndividual'Dob'OneOf2Day :: GHC.Integer.Type.Integer,
                                                   postAccountRequestBodyIndividual'Dob'OneOf2Month :: GHC.Integer.Type.Integer,
                                                   postAccountRequestBodyIndividual'Dob'OneOf2Year :: GHC.Integer.Type.Integer}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyIndividual'Dob'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "day" (postAccountRequestBodyIndividual'Dob'OneOf2Day obj) : (Data.Aeson..=) "month" (postAccountRequestBodyIndividual'Dob'OneOf2Month obj) : (Data.Aeson..=) "year" (postAccountRequestBodyIndividual'Dob'OneOf2Year obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "day" (postAccountRequestBodyIndividual'Dob'OneOf2Day obj) GHC.Base.<> ((Data.Aeson..=) "month" (postAccountRequestBodyIndividual'Dob'OneOf2Month obj) GHC.Base.<> (Data.Aeson..=) "year" (postAccountRequestBodyIndividual'Dob'OneOf2Year obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyIndividual'Dob'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyIndividual'Dob'OneOf2" (\obj -> ((GHC.Base.pure PostAccountRequestBodyIndividual'Dob'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "year"))
data PostAccountRequestBodyIndividual'Dob'Variants
    = PostAccountRequestBodyIndividual'Dob'Variant1 PostAccountRequestBodyIndividual'Dob'OneOf1
    | PostAccountRequestBodyIndividual'Dob'Variant2 PostAccountRequestBodyIndividual'Dob'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountRequestBodyIndividual'Dob'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountRequestBodyIndividual'Dob'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostAccountRequestBodyIndividual'Metadata'
    = PostAccountRequestBodyIndividual'Metadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyIndividual'Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyIndividual'Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyIndividual'Metadata'" (\obj -> GHC.Base.pure PostAccountRequestBodyIndividual'Metadata')
data PostAccountRequestBodyIndividual'Verification'
    = PostAccountRequestBodyIndividual'Verification' {postAccountRequestBodyIndividual'Verification'AdditionalDocument :: (GHC.Maybe.Maybe PostAccountRequestBodyIndividual'Verification'AdditionalDocument'),
                                                      postAccountRequestBodyIndividual'Verification'Document :: (GHC.Maybe.Maybe PostAccountRequestBodyIndividual'Verification'Document')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountRequestBodyIndividual'Verification'AdditionalDocument'
    = PostAccountRequestBodyIndividual'Verification'AdditionalDocument' {postAccountRequestBodyIndividual'Verification'AdditionalDocument'Back :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                         postAccountRequestBodyIndividual'Verification'AdditionalDocument'Front :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyIndividual'Verification'AdditionalDocument'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountRequestBodyIndividual'Verification'AdditionalDocument'Back obj) : (Data.Aeson..=) "front" (postAccountRequestBodyIndividual'Verification'AdditionalDocument'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountRequestBodyIndividual'Verification'AdditionalDocument'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountRequestBodyIndividual'Verification'AdditionalDocument'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyIndividual'Verification'AdditionalDocument'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyIndividual'Verification'AdditionalDocument'" (\obj -> (GHC.Base.pure PostAccountRequestBodyIndividual'Verification'AdditionalDocument' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
data PostAccountRequestBodyIndividual'Verification'Document'
    = PostAccountRequestBodyIndividual'Verification'Document' {postAccountRequestBodyIndividual'Verification'Document'Back :: (GHC.Maybe.Maybe GHC.Base.String),
                                                               postAccountRequestBodyIndividual'Verification'Document'Front :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyIndividual'Verification'Document'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountRequestBodyIndividual'Verification'Document'Back obj) : (Data.Aeson..=) "front" (postAccountRequestBodyIndividual'Verification'Document'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountRequestBodyIndividual'Verification'Document'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountRequestBodyIndividual'Verification'Document'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyIndividual'Verification'Document'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyIndividual'Verification'Document'" (\obj -> (GHC.Base.pure PostAccountRequestBodyIndividual'Verification'Document' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
instance Data.Aeson.ToJSON PostAccountRequestBodyIndividual'Verification'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "additional_document" (postAccountRequestBodyIndividual'Verification'AdditionalDocument obj) : (Data.Aeson..=) "document" (postAccountRequestBodyIndividual'Verification'Document obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "additional_document" (postAccountRequestBodyIndividual'Verification'AdditionalDocument obj) GHC.Base.<> (Data.Aeson..=) "document" (postAccountRequestBodyIndividual'Verification'Document obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyIndividual'Verification'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyIndividual'Verification'" (\obj -> (GHC.Base.pure PostAccountRequestBodyIndividual'Verification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "additional_document")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document"))
instance Data.Aeson.ToJSON PostAccountRequestBodyIndividual'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postAccountRequestBodyIndividual'Address obj) : (Data.Aeson..=) "address_kana" (postAccountRequestBodyIndividual'AddressKana obj) : (Data.Aeson..=) "address_kanji" (postAccountRequestBodyIndividual'AddressKanji obj) : (Data.Aeson..=) "dob" (postAccountRequestBodyIndividual'Dob obj) : (Data.Aeson..=) "email" (postAccountRequestBodyIndividual'Email obj) : (Data.Aeson..=) "first_name" (postAccountRequestBodyIndividual'FirstName obj) : (Data.Aeson..=) "first_name_kana" (postAccountRequestBodyIndividual'FirstNameKana obj) : (Data.Aeson..=) "first_name_kanji" (postAccountRequestBodyIndividual'FirstNameKanji obj) : (Data.Aeson..=) "gender" (postAccountRequestBodyIndividual'Gender obj) : (Data.Aeson..=) "id_number" (postAccountRequestBodyIndividual'IdNumber obj) : (Data.Aeson..=) "last_name" (postAccountRequestBodyIndividual'LastName obj) : (Data.Aeson..=) "last_name_kana" (postAccountRequestBodyIndividual'LastNameKana obj) : (Data.Aeson..=) "last_name_kanji" (postAccountRequestBodyIndividual'LastNameKanji obj) : (Data.Aeson..=) "maiden_name" (postAccountRequestBodyIndividual'MaidenName obj) : (Data.Aeson..=) "metadata" (postAccountRequestBodyIndividual'Metadata obj) : (Data.Aeson..=) "phone" (postAccountRequestBodyIndividual'Phone obj) : (Data.Aeson..=) "ssn_last_4" (postAccountRequestBodyIndividual'SsnLast_4 obj) : (Data.Aeson..=) "verification" (postAccountRequestBodyIndividual'Verification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postAccountRequestBodyIndividual'Address obj) GHC.Base.<> ((Data.Aeson..=) "address_kana" (postAccountRequestBodyIndividual'AddressKana obj) GHC.Base.<> ((Data.Aeson..=) "address_kanji" (postAccountRequestBodyIndividual'AddressKanji obj) GHC.Base.<> ((Data.Aeson..=) "dob" (postAccountRequestBodyIndividual'Dob obj) GHC.Base.<> ((Data.Aeson..=) "email" (postAccountRequestBodyIndividual'Email obj) GHC.Base.<> ((Data.Aeson..=) "first_name" (postAccountRequestBodyIndividual'FirstName obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kana" (postAccountRequestBodyIndividual'FirstNameKana obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kanji" (postAccountRequestBodyIndividual'FirstNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "gender" (postAccountRequestBodyIndividual'Gender obj) GHC.Base.<> ((Data.Aeson..=) "id_number" (postAccountRequestBodyIndividual'IdNumber obj) GHC.Base.<> ((Data.Aeson..=) "last_name" (postAccountRequestBodyIndividual'LastName obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kana" (postAccountRequestBodyIndividual'LastNameKana obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kanji" (postAccountRequestBodyIndividual'LastNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "maiden_name" (postAccountRequestBodyIndividual'MaidenName obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postAccountRequestBodyIndividual'Metadata obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postAccountRequestBodyIndividual'Phone obj) GHC.Base.<> ((Data.Aeson..=) "ssn_last_4" (postAccountRequestBodyIndividual'SsnLast_4 obj) GHC.Base.<> (Data.Aeson..=) "verification" (postAccountRequestBodyIndividual'Verification obj))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyIndividual'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyIndividual'" (\obj -> (((((((((((((((((GHC.Base.pure PostAccountRequestBodyIndividual' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dob")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gender")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "maiden_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ssn_last_4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verification"))
data PostAccountRequestBodyMetadata'
    = PostAccountRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyMetadata'" (\obj -> GHC.Base.pure PostAccountRequestBodyMetadata')
data PostAccountRequestBodyRequestedCapabilities'
    = PostAccountRequestBodyRequestedCapabilities'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountRequestBodyRequestedCapabilities'EnumTyped GHC.Base.String
    | PostAccountRequestBodyRequestedCapabilities'EnumStringCardIssuing
    | PostAccountRequestBodyRequestedCapabilities'EnumStringCardPayments
    | PostAccountRequestBodyRequestedCapabilities'EnumStringLegacyPayments
    | PostAccountRequestBodyRequestedCapabilities'EnumStringTransfers
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyRequestedCapabilities'
    where toJSON (PostAccountRequestBodyRequestedCapabilities'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountRequestBodyRequestedCapabilities'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountRequestBodyRequestedCapabilities'EnumStringCardIssuing) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_issuing"
          toJSON (PostAccountRequestBodyRequestedCapabilities'EnumStringCardPayments) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_payments"
          toJSON (PostAccountRequestBodyRequestedCapabilities'EnumStringLegacyPayments) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "legacy_payments"
          toJSON (PostAccountRequestBodyRequestedCapabilities'EnumStringTransfers) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "transfers"
instance Data.Aeson.FromJSON PostAccountRequestBodyRequestedCapabilities'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_issuing")
                                          then PostAccountRequestBodyRequestedCapabilities'EnumStringCardIssuing
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_payments")
                                                then PostAccountRequestBodyRequestedCapabilities'EnumStringCardPayments
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "legacy_payments")
                                                      then PostAccountRequestBodyRequestedCapabilities'EnumStringLegacyPayments
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "transfers")
                                                            then PostAccountRequestBodyRequestedCapabilities'EnumStringTransfers
                                                            else PostAccountRequestBodyRequestedCapabilities'EnumOther val)
data PostAccountRequestBodySettings'
    = PostAccountRequestBodySettings' {postAccountRequestBodySettings'Branding :: (GHC.Maybe.Maybe PostAccountRequestBodySettings'Branding'),
                                       postAccountRequestBodySettings'CardPayments :: (GHC.Maybe.Maybe PostAccountRequestBodySettings'CardPayments'),
                                       postAccountRequestBodySettings'Payments :: (GHC.Maybe.Maybe PostAccountRequestBodySettings'Payments'),
                                       postAccountRequestBodySettings'Payouts :: (GHC.Maybe.Maybe PostAccountRequestBodySettings'Payouts')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountRequestBodySettings'Branding'
    = PostAccountRequestBodySettings'Branding' {postAccountRequestBodySettings'Branding'Icon :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postAccountRequestBodySettings'Branding'Logo :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postAccountRequestBodySettings'Branding'PrimaryColor :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodySettings'Branding'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "icon" (postAccountRequestBodySettings'Branding'Icon obj) : (Data.Aeson..=) "logo" (postAccountRequestBodySettings'Branding'Logo obj) : (Data.Aeson..=) "primary_color" (postAccountRequestBodySettings'Branding'PrimaryColor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "icon" (postAccountRequestBodySettings'Branding'Icon obj) GHC.Base.<> ((Data.Aeson..=) "logo" (postAccountRequestBodySettings'Branding'Logo obj) GHC.Base.<> (Data.Aeson..=) "primary_color" (postAccountRequestBodySettings'Branding'PrimaryColor obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodySettings'Branding'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodySettings'Branding'" (\obj -> ((GHC.Base.pure PostAccountRequestBodySettings'Branding' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "icon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "logo")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "primary_color"))
data PostAccountRequestBodySettings'CardPayments'
    = PostAccountRequestBodySettings'CardPayments' {postAccountRequestBodySettings'CardPayments'DeclineOn :: (GHC.Maybe.Maybe PostAccountRequestBodySettings'CardPayments'DeclineOn'),
                                                    postAccountRequestBodySettings'CardPayments'StatementDescriptorPrefix :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountRequestBodySettings'CardPayments'DeclineOn'
    = PostAccountRequestBodySettings'CardPayments'DeclineOn' {postAccountRequestBodySettings'CardPayments'DeclineOn'AvsFailure :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                              postAccountRequestBodySettings'CardPayments'DeclineOn'CvcFailure :: (GHC.Maybe.Maybe GHC.Types.Bool)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodySettings'CardPayments'DeclineOn'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "avs_failure" (postAccountRequestBodySettings'CardPayments'DeclineOn'AvsFailure obj) : (Data.Aeson..=) "cvc_failure" (postAccountRequestBodySettings'CardPayments'DeclineOn'CvcFailure obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "avs_failure" (postAccountRequestBodySettings'CardPayments'DeclineOn'AvsFailure obj) GHC.Base.<> (Data.Aeson..=) "cvc_failure" (postAccountRequestBodySettings'CardPayments'DeclineOn'CvcFailure obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodySettings'CardPayments'DeclineOn'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodySettings'CardPayments'DeclineOn'" (\obj -> (GHC.Base.pure PostAccountRequestBodySettings'CardPayments'DeclineOn' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "avs_failure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc_failure"))
instance Data.Aeson.ToJSON PostAccountRequestBodySettings'CardPayments'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "decline_on" (postAccountRequestBodySettings'CardPayments'DeclineOn obj) : (Data.Aeson..=) "statement_descriptor_prefix" (postAccountRequestBodySettings'CardPayments'StatementDescriptorPrefix obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "decline_on" (postAccountRequestBodySettings'CardPayments'DeclineOn obj) GHC.Base.<> (Data.Aeson..=) "statement_descriptor_prefix" (postAccountRequestBodySettings'CardPayments'StatementDescriptorPrefix obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodySettings'CardPayments'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodySettings'CardPayments'" (\obj -> (GHC.Base.pure PostAccountRequestBodySettings'CardPayments' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "decline_on")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_prefix"))
data PostAccountRequestBodySettings'Payments'
    = PostAccountRequestBodySettings'Payments' {postAccountRequestBodySettings'Payments'StatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postAccountRequestBodySettings'Payments'StatementDescriptorKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postAccountRequestBodySettings'Payments'StatementDescriptorKanji :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodySettings'Payments'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "statement_descriptor" (postAccountRequestBodySettings'Payments'StatementDescriptor obj) : (Data.Aeson..=) "statement_descriptor_kana" (postAccountRequestBodySettings'Payments'StatementDescriptorKana obj) : (Data.Aeson..=) "statement_descriptor_kanji" (postAccountRequestBodySettings'Payments'StatementDescriptorKanji obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "statement_descriptor" (postAccountRequestBodySettings'Payments'StatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor_kana" (postAccountRequestBodySettings'Payments'StatementDescriptorKana obj) GHC.Base.<> (Data.Aeson..=) "statement_descriptor_kanji" (postAccountRequestBodySettings'Payments'StatementDescriptorKanji obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodySettings'Payments'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodySettings'Payments'" (\obj -> ((GHC.Base.pure PostAccountRequestBodySettings'Payments' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_kanji"))
data PostAccountRequestBodySettings'Payouts'
    = PostAccountRequestBodySettings'Payouts' {postAccountRequestBodySettings'Payouts'DebitNegativeBalances :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                               postAccountRequestBodySettings'Payouts'Schedule :: (GHC.Maybe.Maybe PostAccountRequestBodySettings'Payouts'Schedule'),
                                               postAccountRequestBodySettings'Payouts'StatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountRequestBodySettings'Payouts'Schedule'
    = PostAccountRequestBodySettings'Payouts'Schedule' {postAccountRequestBodySettings'Payouts'Schedule'DelayDays :: (GHC.Maybe.Maybe PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'Variants),
                                                        postAccountRequestBodySettings'Payouts'Schedule'Interval :: (GHC.Maybe.Maybe PostAccountRequestBodySettings'Payouts'Schedule'Interval'),
                                                        postAccountRequestBodySettings'Payouts'Schedule'MonthlyAnchor :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                        postAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor :: (GHC.Maybe.Maybe PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1
    = PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumTyped GHC.Base.String
    | PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumStringMinimum
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1
    where toJSON (PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumStringMinimum) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "minimum"
instance Data.Aeson.FromJSON PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "minimum")
                                          then PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumStringMinimum
                                          else PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumOther val)
data PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'Variants
    = PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'Variant1 PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1
    | PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'Variant2 GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostAccountRequestBodySettings'Payouts'Schedule'Interval'
    = PostAccountRequestBodySettings'Payouts'Schedule'Interval'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountRequestBodySettings'Payouts'Schedule'Interval'EnumTyped GHC.Base.String
    | PostAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringDaily
    | PostAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringManual
    | PostAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringMonthly
    | PostAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringWeekly
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodySettings'Payouts'Schedule'Interval'
    where toJSON (PostAccountRequestBodySettings'Payouts'Schedule'Interval'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountRequestBodySettings'Payouts'Schedule'Interval'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringDaily) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "daily"
          toJSON (PostAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringManual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "manual"
          toJSON (PostAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringMonthly) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "monthly"
          toJSON (PostAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringWeekly) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "weekly"
instance Data.Aeson.FromJSON PostAccountRequestBodySettings'Payouts'Schedule'Interval'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "daily")
                                          then PostAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringDaily
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "manual")
                                                then PostAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringManual
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "monthly")
                                                      then PostAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringMonthly
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "weekly")
                                                            then PostAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringWeekly
                                                            else PostAccountRequestBodySettings'Payouts'Schedule'Interval'EnumOther val)
data PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'
    = PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumTyped GHC.Base.String
    | PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringFriday
    | PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringMonday
    | PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringSaturday
    | PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringSunday
    | PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringThursday
    | PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringTuesday
    | PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringWednesday
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'
    where toJSON (PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringFriday) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "friday"
          toJSON (PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringMonday) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "monday"
          toJSON (PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringSaturday) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "saturday"
          toJSON (PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringSunday) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sunday"
          toJSON (PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringThursday) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "thursday"
          toJSON (PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringTuesday) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tuesday"
          toJSON (PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringWednesday) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "wednesday"
instance Data.Aeson.FromJSON PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "friday")
                                          then PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringFriday
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "monday")
                                                then PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringMonday
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "saturday")
                                                      then PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringSaturday
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sunday")
                                                            then PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringSunday
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "thursday")
                                                                  then PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringThursday
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tuesday")
                                                                        then PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringTuesday
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "wednesday")
                                                                              then PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringWednesday
                                                                              else PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumOther val)
instance Data.Aeson.ToJSON PostAccountRequestBodySettings'Payouts'Schedule'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "delay_days" (postAccountRequestBodySettings'Payouts'Schedule'DelayDays obj) : (Data.Aeson..=) "interval" (postAccountRequestBodySettings'Payouts'Schedule'Interval obj) : (Data.Aeson..=) "monthly_anchor" (postAccountRequestBodySettings'Payouts'Schedule'MonthlyAnchor obj) : (Data.Aeson..=) "weekly_anchor" (postAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "delay_days" (postAccountRequestBodySettings'Payouts'Schedule'DelayDays obj) GHC.Base.<> ((Data.Aeson..=) "interval" (postAccountRequestBodySettings'Payouts'Schedule'Interval obj) GHC.Base.<> ((Data.Aeson..=) "monthly_anchor" (postAccountRequestBodySettings'Payouts'Schedule'MonthlyAnchor obj) GHC.Base.<> (Data.Aeson..=) "weekly_anchor" (postAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodySettings'Payouts'Schedule'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodySettings'Payouts'Schedule'" (\obj -> (((GHC.Base.pure PostAccountRequestBodySettings'Payouts'Schedule' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "delay_days")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "monthly_anchor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "weekly_anchor"))
instance Data.Aeson.ToJSON PostAccountRequestBodySettings'Payouts'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "debit_negative_balances" (postAccountRequestBodySettings'Payouts'DebitNegativeBalances obj) : (Data.Aeson..=) "schedule" (postAccountRequestBodySettings'Payouts'Schedule obj) : (Data.Aeson..=) "statement_descriptor" (postAccountRequestBodySettings'Payouts'StatementDescriptor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "debit_negative_balances" (postAccountRequestBodySettings'Payouts'DebitNegativeBalances obj) GHC.Base.<> ((Data.Aeson..=) "schedule" (postAccountRequestBodySettings'Payouts'Schedule obj) GHC.Base.<> (Data.Aeson..=) "statement_descriptor" (postAccountRequestBodySettings'Payouts'StatementDescriptor obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodySettings'Payouts'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodySettings'Payouts'" (\obj -> ((GHC.Base.pure PostAccountRequestBodySettings'Payouts' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "debit_negative_balances")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "schedule")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor"))
instance Data.Aeson.ToJSON PostAccountRequestBodySettings'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "branding" (postAccountRequestBodySettings'Branding obj) : (Data.Aeson..=) "card_payments" (postAccountRequestBodySettings'CardPayments obj) : (Data.Aeson..=) "payments" (postAccountRequestBodySettings'Payments obj) : (Data.Aeson..=) "payouts" (postAccountRequestBodySettings'Payouts obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "branding" (postAccountRequestBodySettings'Branding obj) GHC.Base.<> ((Data.Aeson..=) "card_payments" (postAccountRequestBodySettings'CardPayments obj) GHC.Base.<> ((Data.Aeson..=) "payments" (postAccountRequestBodySettings'Payments obj) GHC.Base.<> (Data.Aeson..=) "payouts" (postAccountRequestBodySettings'Payouts obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodySettings'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodySettings'" (\obj -> (((GHC.Base.pure PostAccountRequestBodySettings' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "branding")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card_payments")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payments")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payouts"))
data PostAccountRequestBodyTosAcceptance'
    = PostAccountRequestBodyTosAcceptance' {postAccountRequestBodyTosAcceptance'Date :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                            postAccountRequestBodyTosAcceptance'Ip :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postAccountRequestBodyTosAcceptance'UserAgent :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyTosAcceptance'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "date" (postAccountRequestBodyTosAcceptance'Date obj) : (Data.Aeson..=) "ip" (postAccountRequestBodyTosAcceptance'Ip obj) : (Data.Aeson..=) "user_agent" (postAccountRequestBodyTosAcceptance'UserAgent obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "date" (postAccountRequestBodyTosAcceptance'Date obj) GHC.Base.<> ((Data.Aeson..=) "ip" (postAccountRequestBodyTosAcceptance'Ip obj) GHC.Base.<> (Data.Aeson..=) "user_agent" (postAccountRequestBodyTosAcceptance'UserAgent obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyTosAcceptance'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyTosAcceptance'" (\obj -> ((GHC.Base.pure PostAccountRequestBodyTosAcceptance' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "user_agent"))
instance Data.Aeson.ToJSON PostAccountRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_token" (postAccountRequestBodyAccountToken obj) : (Data.Aeson..=) "bank_account" (postAccountRequestBodyBankAccount obj) : (Data.Aeson..=) "business_profile" (postAccountRequestBodyBusinessProfile obj) : (Data.Aeson..=) "business_type" (postAccountRequestBodyBusinessType obj) : (Data.Aeson..=) "company" (postAccountRequestBodyCompany obj) : (Data.Aeson..=) "default_currency" (postAccountRequestBodyDefaultCurrency obj) : (Data.Aeson..=) "email" (postAccountRequestBodyEmail obj) : (Data.Aeson..=) "expand" (postAccountRequestBodyExpand obj) : (Data.Aeson..=) "external_account" (postAccountRequestBodyExternalAccount obj) : (Data.Aeson..=) "individual" (postAccountRequestBodyIndividual obj) : (Data.Aeson..=) "metadata" (postAccountRequestBodyMetadata obj) : (Data.Aeson..=) "requested_capabilities" (postAccountRequestBodyRequestedCapabilities obj) : (Data.Aeson..=) "settings" (postAccountRequestBodySettings obj) : (Data.Aeson..=) "tos_acceptance" (postAccountRequestBodyTosAcceptance obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_token" (postAccountRequestBodyAccountToken obj) GHC.Base.<> ((Data.Aeson..=) "bank_account" (postAccountRequestBodyBankAccount obj) GHC.Base.<> ((Data.Aeson..=) "business_profile" (postAccountRequestBodyBusinessProfile obj) GHC.Base.<> ((Data.Aeson..=) "business_type" (postAccountRequestBodyBusinessType obj) GHC.Base.<> ((Data.Aeson..=) "company" (postAccountRequestBodyCompany obj) GHC.Base.<> ((Data.Aeson..=) "default_currency" (postAccountRequestBodyDefaultCurrency obj) GHC.Base.<> ((Data.Aeson..=) "email" (postAccountRequestBodyEmail obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postAccountRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "external_account" (postAccountRequestBodyExternalAccount obj) GHC.Base.<> ((Data.Aeson..=) "individual" (postAccountRequestBodyIndividual obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postAccountRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "requested_capabilities" (postAccountRequestBodyRequestedCapabilities obj) GHC.Base.<> ((Data.Aeson..=) "settings" (postAccountRequestBodySettings obj) GHC.Base.<> (Data.Aeson..=) "tos_acceptance" (postAccountRequestBodyTosAcceptance obj))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBody" (\obj -> (((((((((((((GHC.Base.pure PostAccountRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "business_profile")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "business_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "company")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "external_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "individual")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "requested_capabilities")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "settings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tos_acceptance"))

data PostAccountResponse
    = PostAccountResponseError GHC.Base.String
    | PostAccountResponse200 Account
    | PostAccountResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
