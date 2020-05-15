{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostCustomersCustomerSources where

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
-- POST /v1/customers/{customer}/sources
postCustomersCustomerSources :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                StripeAPI.Common.Configuration s ->
                                GHC.Base.String ->
                                PostCustomersCustomerSourcesRequestBody ->
                                m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                      (Network.HTTP.Client.Types.Response PostCustomersCustomerSourcesResponse))
postCustomersCustomerSources config
                             customer
                             body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerSourcesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerSourcesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      PaymentSource)
                                                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerSourcesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/sources"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersCustomerSourcesRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                 StripeAPI.Common.SecurityScheme s) =>
                                   StripeAPI.Common.Configuration s ->
                                   GHC.Base.String ->
                                   PostCustomersCustomerSourcesRequestBody ->
                                   m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerSourcesRaw config
                                customer
                                body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/sources"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersCustomerSourcesM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                               StripeAPI.Common.SecurityScheme s) =>
                                 GHC.Base.String ->
                                 PostCustomersCustomerSourcesRequestBody ->
                                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                    m
                                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                        (Network.HTTP.Client.Types.Response PostCustomersCustomerSourcesResponse))
postCustomersCustomerSourcesM customer
                              body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerSourcesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerSourcesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                       PaymentSource)
                                                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerSourcesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/sources"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersCustomerSourcesRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                  StripeAPI.Common.SecurityScheme s) =>
                                    GHC.Base.String ->
                                    PostCustomersCustomerSourcesRequestBody ->
                                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                       m
                                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerSourcesRawM customer
                                 body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/sources"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostCustomersCustomerSourcesRequestBody
    = PostCustomersCustomerSourcesRequestBody {postCustomersCustomerSourcesRequestBodyAlipayAccount :: (GHC.Maybe.Maybe GHC.Base.String),
                                               postCustomersCustomerSourcesRequestBodyBankAccount :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesRequestBodyBankAccount'Variants),
                                               postCustomersCustomerSourcesRequestBodyCard :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesRequestBodyCard'Variants),
                                               postCustomersCustomerSourcesRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                               postCustomersCustomerSourcesRequestBodyMetadata :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesRequestBodyMetadata'),
                                               postCustomersCustomerSourcesRequestBodySource :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2
    = PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2 {postCustomersCustomerSourcesRequestBodyBankAccount'OneOf2AccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                 postCustomersCustomerSourcesRequestBodyBankAccount'OneOf2AccountHolderType :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2AccountHolderType'),
                                                                 postCustomersCustomerSourcesRequestBodyBankAccount'OneOf2AccountNumber :: GHC.Base.String,
                                                                 postCustomersCustomerSourcesRequestBodyBankAccount'OneOf2Country :: GHC.Base.String,
                                                                 postCustomersCustomerSourcesRequestBodyBankAccount'OneOf2Currency :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                 postCustomersCustomerSourcesRequestBodyBankAccount'OneOf2Object :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2Object'),
                                                                 postCustomersCustomerSourcesRequestBodyBankAccount'OneOf2RoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2AccountHolderType'
    = PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2AccountHolderType'EnumTyped GHC.Base.String
    | PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany
    | PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2AccountHolderType'
    where toJSON (PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2AccountHolderType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company"
          toJSON (PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
instance Data.Aeson.FromJSON PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2AccountHolderType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company")
                                          then PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                then PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual
                                                else PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther val)
data PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2Object'
    = PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2Object'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2Object'EnumTyped GHC.Base.String
    | PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2Object'
    where toJSON (PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account"
instance Data.Aeson.FromJSON PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account")
                                          then PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount
                                          else PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2Object'EnumOther val)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_holder_name" (postCustomersCustomerSourcesRequestBodyBankAccount'OneOf2AccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (postCustomersCustomerSourcesRequestBodyBankAccount'OneOf2AccountHolderType obj) : (Data.Aeson..=) "account_number" (postCustomersCustomerSourcesRequestBodyBankAccount'OneOf2AccountNumber obj) : (Data.Aeson..=) "country" (postCustomersCustomerSourcesRequestBodyBankAccount'OneOf2Country obj) : (Data.Aeson..=) "currency" (postCustomersCustomerSourcesRequestBodyBankAccount'OneOf2Currency obj) : (Data.Aeson..=) "object" (postCustomersCustomerSourcesRequestBodyBankAccount'OneOf2Object obj) : (Data.Aeson..=) "routing_number" (postCustomersCustomerSourcesRequestBodyBankAccount'OneOf2RoutingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_holder_name" (postCustomersCustomerSourcesRequestBodyBankAccount'OneOf2AccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (postCustomersCustomerSourcesRequestBodyBankAccount'OneOf2AccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "account_number" (postCustomersCustomerSourcesRequestBodyBankAccount'OneOf2AccountNumber obj) GHC.Base.<> ((Data.Aeson..=) "country" (postCustomersCustomerSourcesRequestBodyBankAccount'OneOf2Country obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postCustomersCustomerSourcesRequestBodyBankAccount'OneOf2Currency obj) GHC.Base.<> ((Data.Aeson..=) "object" (postCustomersCustomerSourcesRequestBodyBankAccount'OneOf2Object obj) GHC.Base.<> (Data.Aeson..=) "routing_number" (postCustomersCustomerSourcesRequestBodyBankAccount'OneOf2RoutingNumber obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2" (\obj -> ((((((GHC.Base.pure PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number"))
data PostCustomersCustomerSourcesRequestBodyBankAccount'Variants
    = PostCustomersCustomerSourcesRequestBodyBankAccount'Variant1 GHC.Base.String
    | PostCustomersCustomerSourcesRequestBodyBankAccount'Variant2 PostCustomersCustomerSourcesRequestBodyBankAccount'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesRequestBodyBankAccount'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSourcesRequestBodyBankAccount'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersCustomerSourcesRequestBodyCard'OneOf2
    = PostCustomersCustomerSourcesRequestBodyCard'OneOf2 {postCustomersCustomerSourcesRequestBodyCard'OneOf2AddressCity :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerSourcesRequestBodyCard'OneOf2AddressCountry :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerSourcesRequestBodyCard'OneOf2AddressLine1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerSourcesRequestBodyCard'OneOf2AddressLine2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerSourcesRequestBodyCard'OneOf2AddressState :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerSourcesRequestBodyCard'OneOf2AddressZip :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerSourcesRequestBodyCard'OneOf2Cvc :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerSourcesRequestBodyCard'OneOf2ExpMonth :: GHC.Integer.Type.Integer,
                                                          postCustomersCustomerSourcesRequestBodyCard'OneOf2ExpYear :: GHC.Integer.Type.Integer,
                                                          postCustomersCustomerSourcesRequestBodyCard'OneOf2Metadata :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesRequestBodyCard'OneOf2Metadata'),
                                                          postCustomersCustomerSourcesRequestBodyCard'OneOf2Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerSourcesRequestBodyCard'OneOf2Number :: GHC.Base.String,
                                                          postCustomersCustomerSourcesRequestBodyCard'OneOf2Object :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesRequestBodyCard'OneOf2Object')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerSourcesRequestBodyCard'OneOf2Metadata'
    = PostCustomersCustomerSourcesRequestBodyCard'OneOf2Metadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesRequestBodyCard'OneOf2Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSourcesRequestBodyCard'OneOf2Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSourcesRequestBodyCard'OneOf2Metadata'" (\obj -> GHC.Base.pure PostCustomersCustomerSourcesRequestBodyCard'OneOf2Metadata')
data PostCustomersCustomerSourcesRequestBodyCard'OneOf2Object'
    = PostCustomersCustomerSourcesRequestBodyCard'OneOf2Object'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSourcesRequestBodyCard'OneOf2Object'EnumTyped GHC.Base.String
    | PostCustomersCustomerSourcesRequestBodyCard'OneOf2Object'EnumStringCard
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesRequestBodyCard'OneOf2Object'
    where toJSON (PostCustomersCustomerSourcesRequestBodyCard'OneOf2Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSourcesRequestBodyCard'OneOf2Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSourcesRequestBodyCard'OneOf2Object'EnumStringCard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card"
instance Data.Aeson.FromJSON PostCustomersCustomerSourcesRequestBodyCard'OneOf2Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card")
                                          then PostCustomersCustomerSourcesRequestBodyCard'OneOf2Object'EnumStringCard
                                          else PostCustomersCustomerSourcesRequestBodyCard'OneOf2Object'EnumOther val)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesRequestBodyCard'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address_city" (postCustomersCustomerSourcesRequestBodyCard'OneOf2AddressCity obj) : (Data.Aeson..=) "address_country" (postCustomersCustomerSourcesRequestBodyCard'OneOf2AddressCountry obj) : (Data.Aeson..=) "address_line1" (postCustomersCustomerSourcesRequestBodyCard'OneOf2AddressLine1 obj) : (Data.Aeson..=) "address_line2" (postCustomersCustomerSourcesRequestBodyCard'OneOf2AddressLine2 obj) : (Data.Aeson..=) "address_state" (postCustomersCustomerSourcesRequestBodyCard'OneOf2AddressState obj) : (Data.Aeson..=) "address_zip" (postCustomersCustomerSourcesRequestBodyCard'OneOf2AddressZip obj) : (Data.Aeson..=) "cvc" (postCustomersCustomerSourcesRequestBodyCard'OneOf2Cvc obj) : (Data.Aeson..=) "exp_month" (postCustomersCustomerSourcesRequestBodyCard'OneOf2ExpMonth obj) : (Data.Aeson..=) "exp_year" (postCustomersCustomerSourcesRequestBodyCard'OneOf2ExpYear obj) : (Data.Aeson..=) "metadata" (postCustomersCustomerSourcesRequestBodyCard'OneOf2Metadata obj) : (Data.Aeson..=) "name" (postCustomersCustomerSourcesRequestBodyCard'OneOf2Name obj) : (Data.Aeson..=) "number" (postCustomersCustomerSourcesRequestBodyCard'OneOf2Number obj) : (Data.Aeson..=) "object" (postCustomersCustomerSourcesRequestBodyCard'OneOf2Object obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address_city" (postCustomersCustomerSourcesRequestBodyCard'OneOf2AddressCity obj) GHC.Base.<> ((Data.Aeson..=) "address_country" (postCustomersCustomerSourcesRequestBodyCard'OneOf2AddressCountry obj) GHC.Base.<> ((Data.Aeson..=) "address_line1" (postCustomersCustomerSourcesRequestBodyCard'OneOf2AddressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "address_line2" (postCustomersCustomerSourcesRequestBodyCard'OneOf2AddressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "address_state" (postCustomersCustomerSourcesRequestBodyCard'OneOf2AddressState obj) GHC.Base.<> ((Data.Aeson..=) "address_zip" (postCustomersCustomerSourcesRequestBodyCard'OneOf2AddressZip obj) GHC.Base.<> ((Data.Aeson..=) "cvc" (postCustomersCustomerSourcesRequestBodyCard'OneOf2Cvc obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (postCustomersCustomerSourcesRequestBodyCard'OneOf2ExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (postCustomersCustomerSourcesRequestBodyCard'OneOf2ExpYear obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCustomersCustomerSourcesRequestBodyCard'OneOf2Metadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCustomersCustomerSourcesRequestBodyCard'OneOf2Name obj) GHC.Base.<> ((Data.Aeson..=) "number" (postCustomersCustomerSourcesRequestBodyCard'OneOf2Number obj) GHC.Base.<> (Data.Aeson..=) "object" (postCustomersCustomerSourcesRequestBodyCard'OneOf2Object obj)))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSourcesRequestBodyCard'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSourcesRequestBodyCard'OneOf2" (\obj -> ((((((((((((GHC.Base.pure PostCustomersCustomerSourcesRequestBodyCard'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object"))
data PostCustomersCustomerSourcesRequestBodyCard'Variants
    = PostCustomersCustomerSourcesRequestBodyCard'Variant1 GHC.Base.String
    | PostCustomersCustomerSourcesRequestBodyCard'Variant2 PostCustomersCustomerSourcesRequestBodyCard'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesRequestBodyCard'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSourcesRequestBodyCard'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersCustomerSourcesRequestBodyMetadata'
    = PostCustomersCustomerSourcesRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSourcesRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSourcesRequestBodyMetadata'" (\obj -> GHC.Base.pure PostCustomersCustomerSourcesRequestBodyMetadata')
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "alipay_account" (postCustomersCustomerSourcesRequestBodyAlipayAccount obj) : (Data.Aeson..=) "bank_account" (postCustomersCustomerSourcesRequestBodyBankAccount obj) : (Data.Aeson..=) "card" (postCustomersCustomerSourcesRequestBodyCard obj) : (Data.Aeson..=) "expand" (postCustomersCustomerSourcesRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postCustomersCustomerSourcesRequestBodyMetadata obj) : (Data.Aeson..=) "source" (postCustomersCustomerSourcesRequestBodySource obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "alipay_account" (postCustomersCustomerSourcesRequestBodyAlipayAccount obj) GHC.Base.<> ((Data.Aeson..=) "bank_account" (postCustomersCustomerSourcesRequestBodyBankAccount obj) GHC.Base.<> ((Data.Aeson..=) "card" (postCustomersCustomerSourcesRequestBodyCard obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postCustomersCustomerSourcesRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCustomersCustomerSourcesRequestBodyMetadata obj) GHC.Base.<> (Data.Aeson..=) "source" (postCustomersCustomerSourcesRequestBodySource obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSourcesRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSourcesRequestBody" (\obj -> (((((GHC.Base.pure PostCustomersCustomerSourcesRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "alipay_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source"))

data PostCustomersCustomerSourcesResponse
    = PostCustomersCustomerSourcesResponseError GHC.Base.String
    | PostCustomersCustomerSourcesResponse200 PaymentSource
    | PostCustomersCustomerSourcesResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
