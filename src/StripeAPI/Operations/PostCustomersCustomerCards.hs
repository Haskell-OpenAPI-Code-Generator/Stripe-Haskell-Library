{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostCustomersCustomerCards where

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
-- POST /v1/customers/{customer}/cards
postCustomersCustomerCards :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                            StripeAPI.Common.SecurityScheme s) =>
                              StripeAPI.Common.Configuration s ->
                              GHC.Base.String ->
                              PostCustomersCustomerCardsRequestBody ->
                              m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                    (Network.HTTP.Client.Types.Response PostCustomersCustomerCardsResponse))
postCustomersCustomerCards config
                           customer
                           body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerCardsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerCardsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                PaymentSource)
                                                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerCardsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/cards"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersCustomerCardsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                               StripeAPI.Common.SecurityScheme s) =>
                                 StripeAPI.Common.Configuration s ->
                                 GHC.Base.String ->
                                 PostCustomersCustomerCardsRequestBody ->
                                 m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerCardsRaw config
                              customer
                              body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/cards"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersCustomerCardsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                             StripeAPI.Common.SecurityScheme s) =>
                               GHC.Base.String ->
                               PostCustomersCustomerCardsRequestBody ->
                               Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                  m
                                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                      (Network.HTTP.Client.Types.Response PostCustomersCustomerCardsResponse))
postCustomersCustomerCardsM customer
                            body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerCardsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerCardsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 PaymentSource)
                                                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerCardsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/cards"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersCustomerCardsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                StripeAPI.Common.SecurityScheme s) =>
                                  GHC.Base.String ->
                                  PostCustomersCustomerCardsRequestBody ->
                                  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                     m
                                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerCardsRawM customer
                               body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/cards"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostCustomersCustomerCardsRequestBody
    = PostCustomersCustomerCardsRequestBody {postCustomersCustomerCardsRequestBodyAlipayAccount :: (GHC.Maybe.Maybe GHC.Base.String),
                                             postCustomersCustomerCardsRequestBodyBankAccount :: (GHC.Maybe.Maybe PostCustomersCustomerCardsRequestBodyBankAccount'Variants),
                                             postCustomersCustomerCardsRequestBodyCard :: (GHC.Maybe.Maybe PostCustomersCustomerCardsRequestBodyCard'Variants),
                                             postCustomersCustomerCardsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                             postCustomersCustomerCardsRequestBodyMetadata :: (GHC.Maybe.Maybe PostCustomersCustomerCardsRequestBodyMetadata'),
                                             postCustomersCustomerCardsRequestBodySource :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2
    = PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2 {postCustomersCustomerCardsRequestBodyBankAccount'OneOf2AccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                               postCustomersCustomerCardsRequestBodyBankAccount'OneOf2AccountHolderType :: (GHC.Maybe.Maybe PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2AccountHolderType'),
                                                               postCustomersCustomerCardsRequestBodyBankAccount'OneOf2AccountNumber :: GHC.Base.String,
                                                               postCustomersCustomerCardsRequestBodyBankAccount'OneOf2Country :: GHC.Base.String,
                                                               postCustomersCustomerCardsRequestBodyBankAccount'OneOf2Currency :: (GHC.Maybe.Maybe GHC.Base.String),
                                                               postCustomersCustomerCardsRequestBodyBankAccount'OneOf2Object :: (GHC.Maybe.Maybe PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2Object'),
                                                               postCustomersCustomerCardsRequestBodyBankAccount'OneOf2RoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2AccountHolderType'
    = PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2AccountHolderType'EnumTyped GHC.Base.String
    | PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany
    | PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2AccountHolderType'
    where toJSON (PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2AccountHolderType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company"
          toJSON (PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
instance Data.Aeson.FromJSON PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2AccountHolderType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company")
                                          then PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                then PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual
                                                else PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther val)
data PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2Object'
    = PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2Object'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2Object'EnumTyped GHC.Base.String
    | PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2Object'
    where toJSON (PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account"
instance Data.Aeson.FromJSON PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account")
                                          then PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount
                                          else PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2Object'EnumOther val)
instance Data.Aeson.ToJSON PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_holder_name" (postCustomersCustomerCardsRequestBodyBankAccount'OneOf2AccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (postCustomersCustomerCardsRequestBodyBankAccount'OneOf2AccountHolderType obj) : (Data.Aeson..=) "account_number" (postCustomersCustomerCardsRequestBodyBankAccount'OneOf2AccountNumber obj) : (Data.Aeson..=) "country" (postCustomersCustomerCardsRequestBodyBankAccount'OneOf2Country obj) : (Data.Aeson..=) "currency" (postCustomersCustomerCardsRequestBodyBankAccount'OneOf2Currency obj) : (Data.Aeson..=) "object" (postCustomersCustomerCardsRequestBodyBankAccount'OneOf2Object obj) : (Data.Aeson..=) "routing_number" (postCustomersCustomerCardsRequestBodyBankAccount'OneOf2RoutingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_holder_name" (postCustomersCustomerCardsRequestBodyBankAccount'OneOf2AccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (postCustomersCustomerCardsRequestBodyBankAccount'OneOf2AccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "account_number" (postCustomersCustomerCardsRequestBodyBankAccount'OneOf2AccountNumber obj) GHC.Base.<> ((Data.Aeson..=) "country" (postCustomersCustomerCardsRequestBodyBankAccount'OneOf2Country obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postCustomersCustomerCardsRequestBodyBankAccount'OneOf2Currency obj) GHC.Base.<> ((Data.Aeson..=) "object" (postCustomersCustomerCardsRequestBodyBankAccount'OneOf2Object obj) GHC.Base.<> (Data.Aeson..=) "routing_number" (postCustomersCustomerCardsRequestBodyBankAccount'OneOf2RoutingNumber obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2" (\obj -> ((((((GHC.Base.pure PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number"))
data PostCustomersCustomerCardsRequestBodyBankAccount'Variants
    = PostCustomersCustomerCardsRequestBodyBankAccount'Variant1 GHC.Base.String
    | PostCustomersCustomerCardsRequestBodyBankAccount'Variant2 PostCustomersCustomerCardsRequestBodyBankAccount'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerCardsRequestBodyBankAccount'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerCardsRequestBodyBankAccount'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersCustomerCardsRequestBodyCard'OneOf2
    = PostCustomersCustomerCardsRequestBodyCard'OneOf2 {postCustomersCustomerCardsRequestBodyCard'OneOf2AddressCity :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postCustomersCustomerCardsRequestBodyCard'OneOf2AddressCountry :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postCustomersCustomerCardsRequestBodyCard'OneOf2AddressLine1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postCustomersCustomerCardsRequestBodyCard'OneOf2AddressLine2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postCustomersCustomerCardsRequestBodyCard'OneOf2AddressState :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postCustomersCustomerCardsRequestBodyCard'OneOf2AddressZip :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postCustomersCustomerCardsRequestBodyCard'OneOf2Cvc :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postCustomersCustomerCardsRequestBodyCard'OneOf2ExpMonth :: GHC.Integer.Type.Integer,
                                                        postCustomersCustomerCardsRequestBodyCard'OneOf2ExpYear :: GHC.Integer.Type.Integer,
                                                        postCustomersCustomerCardsRequestBodyCard'OneOf2Metadata :: (GHC.Maybe.Maybe PostCustomersCustomerCardsRequestBodyCard'OneOf2Metadata'),
                                                        postCustomersCustomerCardsRequestBodyCard'OneOf2Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postCustomersCustomerCardsRequestBodyCard'OneOf2Number :: GHC.Base.String,
                                                        postCustomersCustomerCardsRequestBodyCard'OneOf2Object :: (GHC.Maybe.Maybe PostCustomersCustomerCardsRequestBodyCard'OneOf2Object')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerCardsRequestBodyCard'OneOf2Metadata'
    = PostCustomersCustomerCardsRequestBodyCard'OneOf2Metadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerCardsRequestBodyCard'OneOf2Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerCardsRequestBodyCard'OneOf2Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerCardsRequestBodyCard'OneOf2Metadata'" (\obj -> GHC.Base.pure PostCustomersCustomerCardsRequestBodyCard'OneOf2Metadata')
data PostCustomersCustomerCardsRequestBodyCard'OneOf2Object'
    = PostCustomersCustomerCardsRequestBodyCard'OneOf2Object'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerCardsRequestBodyCard'OneOf2Object'EnumTyped GHC.Base.String
    | PostCustomersCustomerCardsRequestBodyCard'OneOf2Object'EnumStringCard
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerCardsRequestBodyCard'OneOf2Object'
    where toJSON (PostCustomersCustomerCardsRequestBodyCard'OneOf2Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerCardsRequestBodyCard'OneOf2Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerCardsRequestBodyCard'OneOf2Object'EnumStringCard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card"
instance Data.Aeson.FromJSON PostCustomersCustomerCardsRequestBodyCard'OneOf2Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card")
                                          then PostCustomersCustomerCardsRequestBodyCard'OneOf2Object'EnumStringCard
                                          else PostCustomersCustomerCardsRequestBodyCard'OneOf2Object'EnumOther val)
instance Data.Aeson.ToJSON PostCustomersCustomerCardsRequestBodyCard'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address_city" (postCustomersCustomerCardsRequestBodyCard'OneOf2AddressCity obj) : (Data.Aeson..=) "address_country" (postCustomersCustomerCardsRequestBodyCard'OneOf2AddressCountry obj) : (Data.Aeson..=) "address_line1" (postCustomersCustomerCardsRequestBodyCard'OneOf2AddressLine1 obj) : (Data.Aeson..=) "address_line2" (postCustomersCustomerCardsRequestBodyCard'OneOf2AddressLine2 obj) : (Data.Aeson..=) "address_state" (postCustomersCustomerCardsRequestBodyCard'OneOf2AddressState obj) : (Data.Aeson..=) "address_zip" (postCustomersCustomerCardsRequestBodyCard'OneOf2AddressZip obj) : (Data.Aeson..=) "cvc" (postCustomersCustomerCardsRequestBodyCard'OneOf2Cvc obj) : (Data.Aeson..=) "exp_month" (postCustomersCustomerCardsRequestBodyCard'OneOf2ExpMonth obj) : (Data.Aeson..=) "exp_year" (postCustomersCustomerCardsRequestBodyCard'OneOf2ExpYear obj) : (Data.Aeson..=) "metadata" (postCustomersCustomerCardsRequestBodyCard'OneOf2Metadata obj) : (Data.Aeson..=) "name" (postCustomersCustomerCardsRequestBodyCard'OneOf2Name obj) : (Data.Aeson..=) "number" (postCustomersCustomerCardsRequestBodyCard'OneOf2Number obj) : (Data.Aeson..=) "object" (postCustomersCustomerCardsRequestBodyCard'OneOf2Object obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address_city" (postCustomersCustomerCardsRequestBodyCard'OneOf2AddressCity obj) GHC.Base.<> ((Data.Aeson..=) "address_country" (postCustomersCustomerCardsRequestBodyCard'OneOf2AddressCountry obj) GHC.Base.<> ((Data.Aeson..=) "address_line1" (postCustomersCustomerCardsRequestBodyCard'OneOf2AddressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "address_line2" (postCustomersCustomerCardsRequestBodyCard'OneOf2AddressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "address_state" (postCustomersCustomerCardsRequestBodyCard'OneOf2AddressState obj) GHC.Base.<> ((Data.Aeson..=) "address_zip" (postCustomersCustomerCardsRequestBodyCard'OneOf2AddressZip obj) GHC.Base.<> ((Data.Aeson..=) "cvc" (postCustomersCustomerCardsRequestBodyCard'OneOf2Cvc obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (postCustomersCustomerCardsRequestBodyCard'OneOf2ExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (postCustomersCustomerCardsRequestBodyCard'OneOf2ExpYear obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCustomersCustomerCardsRequestBodyCard'OneOf2Metadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCustomersCustomerCardsRequestBodyCard'OneOf2Name obj) GHC.Base.<> ((Data.Aeson..=) "number" (postCustomersCustomerCardsRequestBodyCard'OneOf2Number obj) GHC.Base.<> (Data.Aeson..=) "object" (postCustomersCustomerCardsRequestBodyCard'OneOf2Object obj)))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerCardsRequestBodyCard'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerCardsRequestBodyCard'OneOf2" (\obj -> ((((((((((((GHC.Base.pure PostCustomersCustomerCardsRequestBodyCard'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object"))
data PostCustomersCustomerCardsRequestBodyCard'Variants
    = PostCustomersCustomerCardsRequestBodyCard'Variant1 GHC.Base.String
    | PostCustomersCustomerCardsRequestBodyCard'Variant2 PostCustomersCustomerCardsRequestBodyCard'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerCardsRequestBodyCard'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerCardsRequestBodyCard'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersCustomerCardsRequestBodyMetadata'
    = PostCustomersCustomerCardsRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerCardsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerCardsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerCardsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostCustomersCustomerCardsRequestBodyMetadata')
instance Data.Aeson.ToJSON PostCustomersCustomerCardsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "alipay_account" (postCustomersCustomerCardsRequestBodyAlipayAccount obj) : (Data.Aeson..=) "bank_account" (postCustomersCustomerCardsRequestBodyBankAccount obj) : (Data.Aeson..=) "card" (postCustomersCustomerCardsRequestBodyCard obj) : (Data.Aeson..=) "expand" (postCustomersCustomerCardsRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postCustomersCustomerCardsRequestBodyMetadata obj) : (Data.Aeson..=) "source" (postCustomersCustomerCardsRequestBodySource obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "alipay_account" (postCustomersCustomerCardsRequestBodyAlipayAccount obj) GHC.Base.<> ((Data.Aeson..=) "bank_account" (postCustomersCustomerCardsRequestBodyBankAccount obj) GHC.Base.<> ((Data.Aeson..=) "card" (postCustomersCustomerCardsRequestBodyCard obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postCustomersCustomerCardsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCustomersCustomerCardsRequestBodyMetadata obj) GHC.Base.<> (Data.Aeson..=) "source" (postCustomersCustomerCardsRequestBodySource obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerCardsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerCardsRequestBody" (\obj -> (((((GHC.Base.pure PostCustomersCustomerCardsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "alipay_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source"))

data PostCustomersCustomerCardsResponse
    = PostCustomersCustomerCardsResponseError GHC.Base.String
    | PostCustomersCustomerCardsResponse200 PaymentSource
    | PostCustomersCustomerCardsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
