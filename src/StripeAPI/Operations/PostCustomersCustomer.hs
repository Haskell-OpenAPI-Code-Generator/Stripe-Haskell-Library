{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostCustomersCustomer where

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
-- POST /v1/customers/{customer}
postCustomersCustomer :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                       StripeAPI.Common.SecurityScheme s) =>
                         StripeAPI.Common.Configuration s ->
                         GHC.Base.String ->
                         PostCustomersCustomerRequestBody ->
                         m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                               (Network.HTTP.Client.Types.Response PostCustomersCustomerResponse))
postCustomersCustomer config
                      customer
                      body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                 Customer)
                                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersCustomerRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                          StripeAPI.Common.SecurityScheme s) =>
                            StripeAPI.Common.Configuration s ->
                            GHC.Base.String ->
                            PostCustomersCustomerRequestBody ->
                            m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerRaw config
                         customer
                         body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersCustomerM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          GHC.Base.String ->
                          PostCustomersCustomerRequestBody ->
                          Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                             m
                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                 (Network.HTTP.Client.Types.Response PostCustomersCustomerResponse))
postCustomersCustomerM customer
                       body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                  Customer)
                                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersCustomerRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             GHC.Base.String ->
                             PostCustomersCustomerRequestBody ->
                             Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                m
                                                                (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                    (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerRawM customer
                          body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostCustomersCustomerRequestBody
    = PostCustomersCustomerRequestBody {postCustomersCustomerRequestBodyAddress :: (GHC.Maybe.Maybe PostCustomersCustomerRequestBodyAddress'Variants),
                                        postCustomersCustomerRequestBodyBalance :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                        postCustomersCustomerRequestBodyBankAccount :: (GHC.Maybe.Maybe PostCustomersCustomerRequestBodyBankAccount'Variants),
                                        postCustomersCustomerRequestBodyCard :: (GHC.Maybe.Maybe PostCustomersCustomerRequestBodyCard'Variants),
                                        postCustomersCustomerRequestBodyCoupon :: (GHC.Maybe.Maybe GHC.Base.String),
                                        postCustomersCustomerRequestBodyDefaultAlipayAccount :: (GHC.Maybe.Maybe GHC.Base.String),
                                        postCustomersCustomerRequestBodyDefaultBankAccount :: (GHC.Maybe.Maybe GHC.Base.String),
                                        postCustomersCustomerRequestBodyDefaultCard :: (GHC.Maybe.Maybe GHC.Base.String),
                                        postCustomersCustomerRequestBodyDefaultSource :: (GHC.Maybe.Maybe GHC.Base.String),
                                        postCustomersCustomerRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String),
                                        postCustomersCustomerRequestBodyEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                                        postCustomersCustomerRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                        postCustomersCustomerRequestBodyInvoicePrefix :: (GHC.Maybe.Maybe GHC.Base.String),
                                        postCustomersCustomerRequestBodyInvoiceSettings :: (GHC.Maybe.Maybe PostCustomersCustomerRequestBodyInvoiceSettings'),
                                        postCustomersCustomerRequestBodyMetadata :: (GHC.Maybe.Maybe PostCustomersCustomerRequestBodyMetadata'),
                                        postCustomersCustomerRequestBodyName :: (GHC.Maybe.Maybe GHC.Base.String),
                                        postCustomersCustomerRequestBodyNextInvoiceSequence :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                        postCustomersCustomerRequestBodyPhone :: (GHC.Maybe.Maybe GHC.Base.String),
                                        postCustomersCustomerRequestBodyPreferredLocales :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                        postCustomersCustomerRequestBodyShipping :: (GHC.Maybe.Maybe PostCustomersCustomerRequestBodyShipping'Variants),
                                        postCustomersCustomerRequestBodySource :: (GHC.Maybe.Maybe GHC.Base.String),
                                        postCustomersCustomerRequestBodyTaxExempt :: (GHC.Maybe.Maybe PostCustomersCustomerRequestBodyTaxExempt'),
                                        postCustomersCustomerRequestBodyTrialEnd :: (GHC.Maybe.Maybe PostCustomersCustomerRequestBodyTrialEnd'Variants)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerRequestBodyAddress'OneOf1
    = PostCustomersCustomerRequestBodyAddress'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerRequestBodyAddress'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerRequestBodyAddress'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyAddress'OneOf1
    where toJSON (PostCustomersCustomerRequestBodyAddress'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyAddress'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyAddress'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerRequestBodyAddress'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerRequestBodyAddress'OneOf1EnumString_
                                          else PostCustomersCustomerRequestBodyAddress'OneOf1EnumOther val)
data PostCustomersCustomerRequestBodyAddress'OneOf2
    = PostCustomersCustomerRequestBodyAddress'OneOf2 {postCustomersCustomerRequestBodyAddress'OneOf2City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postCustomersCustomerRequestBodyAddress'OneOf2Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postCustomersCustomerRequestBodyAddress'OneOf2Line1 :: GHC.Base.String,
                                                      postCustomersCustomerRequestBodyAddress'OneOf2Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postCustomersCustomerRequestBodyAddress'OneOf2PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postCustomersCustomerRequestBodyAddress'OneOf2State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyAddress'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postCustomersCustomerRequestBodyAddress'OneOf2City obj) : (Data.Aeson..=) "country" (postCustomersCustomerRequestBodyAddress'OneOf2Country obj) : (Data.Aeson..=) "line1" (postCustomersCustomerRequestBodyAddress'OneOf2Line1 obj) : (Data.Aeson..=) "line2" (postCustomersCustomerRequestBodyAddress'OneOf2Line2 obj) : (Data.Aeson..=) "postal_code" (postCustomersCustomerRequestBodyAddress'OneOf2PostalCode obj) : (Data.Aeson..=) "state" (postCustomersCustomerRequestBodyAddress'OneOf2State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postCustomersCustomerRequestBodyAddress'OneOf2City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postCustomersCustomerRequestBodyAddress'OneOf2Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postCustomersCustomerRequestBodyAddress'OneOf2Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postCustomersCustomerRequestBodyAddress'OneOf2Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postCustomersCustomerRequestBodyAddress'OneOf2PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postCustomersCustomerRequestBodyAddress'OneOf2State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerRequestBodyAddress'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerRequestBodyAddress'OneOf2" (\obj -> (((((GHC.Base.pure PostCustomersCustomerRequestBodyAddress'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
data PostCustomersCustomerRequestBodyAddress'Variants
    = PostCustomersCustomerRequestBodyAddress'Variant1 PostCustomersCustomerRequestBodyAddress'OneOf1
    | PostCustomersCustomerRequestBodyAddress'Variant2 PostCustomersCustomerRequestBodyAddress'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyAddress'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerRequestBodyAddress'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersCustomerRequestBodyBankAccount'OneOf2
    = PostCustomersCustomerRequestBodyBankAccount'OneOf2 {postCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType :: (GHC.Maybe.Maybe PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'),
                                                          postCustomersCustomerRequestBodyBankAccount'OneOf2AccountNumber :: GHC.Base.String,
                                                          postCustomersCustomerRequestBodyBankAccount'OneOf2Country :: GHC.Base.String,
                                                          postCustomersCustomerRequestBodyBankAccount'OneOf2Currency :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postCustomersCustomerRequestBodyBankAccount'OneOf2Object :: (GHC.Maybe.Maybe PostCustomersCustomerRequestBodyBankAccount'OneOf2Object'),
                                                          postCustomersCustomerRequestBodyBankAccount'OneOf2RoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'
    = PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'EnumTyped GHC.Base.String
    | PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany
    | PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'
    where toJSON (PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company"
          toJSON (PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
instance Data.Aeson.FromJSON PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company")
                                          then PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                then PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual
                                                else PostCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther val)
data PostCustomersCustomerRequestBodyBankAccount'OneOf2Object'
    = PostCustomersCustomerRequestBodyBankAccount'OneOf2Object'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerRequestBodyBankAccount'OneOf2Object'EnumTyped GHC.Base.String
    | PostCustomersCustomerRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyBankAccount'OneOf2Object'
    where toJSON (PostCustomersCustomerRequestBodyBankAccount'OneOf2Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyBankAccount'OneOf2Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account"
instance Data.Aeson.FromJSON PostCustomersCustomerRequestBodyBankAccount'OneOf2Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account")
                                          then PostCustomersCustomerRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount
                                          else PostCustomersCustomerRequestBodyBankAccount'OneOf2Object'EnumOther val)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyBankAccount'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_holder_name" (postCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (postCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType obj) : (Data.Aeson..=) "account_number" (postCustomersCustomerRequestBodyBankAccount'OneOf2AccountNumber obj) : (Data.Aeson..=) "country" (postCustomersCustomerRequestBodyBankAccount'OneOf2Country obj) : (Data.Aeson..=) "currency" (postCustomersCustomerRequestBodyBankAccount'OneOf2Currency obj) : (Data.Aeson..=) "object" (postCustomersCustomerRequestBodyBankAccount'OneOf2Object obj) : (Data.Aeson..=) "routing_number" (postCustomersCustomerRequestBodyBankAccount'OneOf2RoutingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_holder_name" (postCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (postCustomersCustomerRequestBodyBankAccount'OneOf2AccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "account_number" (postCustomersCustomerRequestBodyBankAccount'OneOf2AccountNumber obj) GHC.Base.<> ((Data.Aeson..=) "country" (postCustomersCustomerRequestBodyBankAccount'OneOf2Country obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postCustomersCustomerRequestBodyBankAccount'OneOf2Currency obj) GHC.Base.<> ((Data.Aeson..=) "object" (postCustomersCustomerRequestBodyBankAccount'OneOf2Object obj) GHC.Base.<> (Data.Aeson..=) "routing_number" (postCustomersCustomerRequestBodyBankAccount'OneOf2RoutingNumber obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerRequestBodyBankAccount'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerRequestBodyBankAccount'OneOf2" (\obj -> ((((((GHC.Base.pure PostCustomersCustomerRequestBodyBankAccount'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number"))
data PostCustomersCustomerRequestBodyBankAccount'Variants
    = PostCustomersCustomerRequestBodyBankAccount'Variant1 GHC.Base.String
    | PostCustomersCustomerRequestBodyBankAccount'Variant2 PostCustomersCustomerRequestBodyBankAccount'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyBankAccount'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerRequestBodyBankAccount'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersCustomerRequestBodyCard'OneOf2
    = PostCustomersCustomerRequestBodyCard'OneOf2 {postCustomersCustomerRequestBodyCard'OneOf2AddressCity :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerRequestBodyCard'OneOf2AddressCountry :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerRequestBodyCard'OneOf2AddressLine1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerRequestBodyCard'OneOf2AddressLine2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerRequestBodyCard'OneOf2AddressState :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerRequestBodyCard'OneOf2AddressZip :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerRequestBodyCard'OneOf2Cvc :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerRequestBodyCard'OneOf2ExpMonth :: GHC.Integer.Type.Integer,
                                                   postCustomersCustomerRequestBodyCard'OneOf2ExpYear :: GHC.Integer.Type.Integer,
                                                   postCustomersCustomerRequestBodyCard'OneOf2Metadata :: (GHC.Maybe.Maybe PostCustomersCustomerRequestBodyCard'OneOf2Metadata'),
                                                   postCustomersCustomerRequestBodyCard'OneOf2Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postCustomersCustomerRequestBodyCard'OneOf2Number :: GHC.Base.String,
                                                   postCustomersCustomerRequestBodyCard'OneOf2Object :: (GHC.Maybe.Maybe PostCustomersCustomerRequestBodyCard'OneOf2Object')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerRequestBodyCard'OneOf2Metadata'
    = PostCustomersCustomerRequestBodyCard'OneOf2Metadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyCard'OneOf2Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerRequestBodyCard'OneOf2Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerRequestBodyCard'OneOf2Metadata'" (\obj -> GHC.Base.pure PostCustomersCustomerRequestBodyCard'OneOf2Metadata')
data PostCustomersCustomerRequestBodyCard'OneOf2Object'
    = PostCustomersCustomerRequestBodyCard'OneOf2Object'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerRequestBodyCard'OneOf2Object'EnumTyped GHC.Base.String
    | PostCustomersCustomerRequestBodyCard'OneOf2Object'EnumStringCard
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyCard'OneOf2Object'
    where toJSON (PostCustomersCustomerRequestBodyCard'OneOf2Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyCard'OneOf2Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyCard'OneOf2Object'EnumStringCard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card"
instance Data.Aeson.FromJSON PostCustomersCustomerRequestBodyCard'OneOf2Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card")
                                          then PostCustomersCustomerRequestBodyCard'OneOf2Object'EnumStringCard
                                          else PostCustomersCustomerRequestBodyCard'OneOf2Object'EnumOther val)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyCard'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address_city" (postCustomersCustomerRequestBodyCard'OneOf2AddressCity obj) : (Data.Aeson..=) "address_country" (postCustomersCustomerRequestBodyCard'OneOf2AddressCountry obj) : (Data.Aeson..=) "address_line1" (postCustomersCustomerRequestBodyCard'OneOf2AddressLine1 obj) : (Data.Aeson..=) "address_line2" (postCustomersCustomerRequestBodyCard'OneOf2AddressLine2 obj) : (Data.Aeson..=) "address_state" (postCustomersCustomerRequestBodyCard'OneOf2AddressState obj) : (Data.Aeson..=) "address_zip" (postCustomersCustomerRequestBodyCard'OneOf2AddressZip obj) : (Data.Aeson..=) "cvc" (postCustomersCustomerRequestBodyCard'OneOf2Cvc obj) : (Data.Aeson..=) "exp_month" (postCustomersCustomerRequestBodyCard'OneOf2ExpMonth obj) : (Data.Aeson..=) "exp_year" (postCustomersCustomerRequestBodyCard'OneOf2ExpYear obj) : (Data.Aeson..=) "metadata" (postCustomersCustomerRequestBodyCard'OneOf2Metadata obj) : (Data.Aeson..=) "name" (postCustomersCustomerRequestBodyCard'OneOf2Name obj) : (Data.Aeson..=) "number" (postCustomersCustomerRequestBodyCard'OneOf2Number obj) : (Data.Aeson..=) "object" (postCustomersCustomerRequestBodyCard'OneOf2Object obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address_city" (postCustomersCustomerRequestBodyCard'OneOf2AddressCity obj) GHC.Base.<> ((Data.Aeson..=) "address_country" (postCustomersCustomerRequestBodyCard'OneOf2AddressCountry obj) GHC.Base.<> ((Data.Aeson..=) "address_line1" (postCustomersCustomerRequestBodyCard'OneOf2AddressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "address_line2" (postCustomersCustomerRequestBodyCard'OneOf2AddressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "address_state" (postCustomersCustomerRequestBodyCard'OneOf2AddressState obj) GHC.Base.<> ((Data.Aeson..=) "address_zip" (postCustomersCustomerRequestBodyCard'OneOf2AddressZip obj) GHC.Base.<> ((Data.Aeson..=) "cvc" (postCustomersCustomerRequestBodyCard'OneOf2Cvc obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (postCustomersCustomerRequestBodyCard'OneOf2ExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (postCustomersCustomerRequestBodyCard'OneOf2ExpYear obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCustomersCustomerRequestBodyCard'OneOf2Metadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCustomersCustomerRequestBodyCard'OneOf2Name obj) GHC.Base.<> ((Data.Aeson..=) "number" (postCustomersCustomerRequestBodyCard'OneOf2Number obj) GHC.Base.<> (Data.Aeson..=) "object" (postCustomersCustomerRequestBodyCard'OneOf2Object obj)))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerRequestBodyCard'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerRequestBodyCard'OneOf2" (\obj -> ((((((((((((GHC.Base.pure PostCustomersCustomerRequestBodyCard'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object"))
data PostCustomersCustomerRequestBodyCard'Variants
    = PostCustomersCustomerRequestBodyCard'Variant1 GHC.Base.String
    | PostCustomersCustomerRequestBodyCard'Variant2 PostCustomersCustomerRequestBodyCard'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyCard'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerRequestBodyCard'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersCustomerRequestBodyInvoiceSettings'
    = PostCustomersCustomerRequestBodyInvoiceSettings' {postCustomersCustomerRequestBodyInvoiceSettings'CustomFields :: (GHC.Maybe.Maybe PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'Variants),
                                                        postCustomersCustomerRequestBodyInvoiceSettings'DefaultPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postCustomersCustomerRequestBodyInvoiceSettings'Footer :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf1
    = PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf1
    where toJSON (PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf1EnumString_
                                          else PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf1EnumOther val)
data PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf2
    = PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf2 {postCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf2Name :: GHC.Base.String,
                                                                           postCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf2Value :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "name" (postCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf2Name obj) : (Data.Aeson..=) "value" (postCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf2Value obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "name" (postCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf2Name obj) GHC.Base.<> (Data.Aeson..=) "value" (postCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf2Value obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf2" (\obj -> (GHC.Base.pure PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "value"))
data PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'Variants
    = PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'Variant1 PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf1
    | PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'Variant2 ([] PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'OneOf2)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerRequestBodyInvoiceSettings'CustomFields'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyInvoiceSettings'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "custom_fields" (postCustomersCustomerRequestBodyInvoiceSettings'CustomFields obj) : (Data.Aeson..=) "default_payment_method" (postCustomersCustomerRequestBodyInvoiceSettings'DefaultPaymentMethod obj) : (Data.Aeson..=) "footer" (postCustomersCustomerRequestBodyInvoiceSettings'Footer obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "custom_fields" (postCustomersCustomerRequestBodyInvoiceSettings'CustomFields obj) GHC.Base.<> ((Data.Aeson..=) "default_payment_method" (postCustomersCustomerRequestBodyInvoiceSettings'DefaultPaymentMethod obj) GHC.Base.<> (Data.Aeson..=) "footer" (postCustomersCustomerRequestBodyInvoiceSettings'Footer obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerRequestBodyInvoiceSettings'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerRequestBodyInvoiceSettings'" (\obj -> ((GHC.Base.pure PostCustomersCustomerRequestBodyInvoiceSettings' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "custom_fields")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "footer"))
data PostCustomersCustomerRequestBodyMetadata'
    = PostCustomersCustomerRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerRequestBodyMetadata'" (\obj -> GHC.Base.pure PostCustomersCustomerRequestBodyMetadata')
data PostCustomersCustomerRequestBodyShipping'OneOf1
    = PostCustomersCustomerRequestBodyShipping'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerRequestBodyShipping'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerRequestBodyShipping'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyShipping'OneOf1
    where toJSON (PostCustomersCustomerRequestBodyShipping'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyShipping'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyShipping'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerRequestBodyShipping'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerRequestBodyShipping'OneOf1EnumString_
                                          else PostCustomersCustomerRequestBodyShipping'OneOf1EnumOther val)
data PostCustomersCustomerRequestBodyShipping'OneOf2
    = PostCustomersCustomerRequestBodyShipping'OneOf2 {postCustomersCustomerRequestBodyShipping'OneOf2Address :: PostCustomersCustomerRequestBodyShipping'OneOf2Address',
                                                       postCustomersCustomerRequestBodyShipping'OneOf2Name :: GHC.Base.String,
                                                       postCustomersCustomerRequestBodyShipping'OneOf2Phone :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerRequestBodyShipping'OneOf2Address'
    = PostCustomersCustomerRequestBodyShipping'OneOf2Address' {postCustomersCustomerRequestBodyShipping'OneOf2Address'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                               postCustomersCustomerRequestBodyShipping'OneOf2Address'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                               postCustomersCustomerRequestBodyShipping'OneOf2Address'Line1 :: GHC.Base.String,
                                                               postCustomersCustomerRequestBodyShipping'OneOf2Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                               postCustomersCustomerRequestBodyShipping'OneOf2Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                               postCustomersCustomerRequestBodyShipping'OneOf2Address'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyShipping'OneOf2Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postCustomersCustomerRequestBodyShipping'OneOf2Address'City obj) : (Data.Aeson..=) "country" (postCustomersCustomerRequestBodyShipping'OneOf2Address'Country obj) : (Data.Aeson..=) "line1" (postCustomersCustomerRequestBodyShipping'OneOf2Address'Line1 obj) : (Data.Aeson..=) "line2" (postCustomersCustomerRequestBodyShipping'OneOf2Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postCustomersCustomerRequestBodyShipping'OneOf2Address'PostalCode obj) : (Data.Aeson..=) "state" (postCustomersCustomerRequestBodyShipping'OneOf2Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postCustomersCustomerRequestBodyShipping'OneOf2Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postCustomersCustomerRequestBodyShipping'OneOf2Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postCustomersCustomerRequestBodyShipping'OneOf2Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postCustomersCustomerRequestBodyShipping'OneOf2Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postCustomersCustomerRequestBodyShipping'OneOf2Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postCustomersCustomerRequestBodyShipping'OneOf2Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerRequestBodyShipping'OneOf2Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerRequestBodyShipping'OneOf2Address'" (\obj -> (((((GHC.Base.pure PostCustomersCustomerRequestBodyShipping'OneOf2Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyShipping'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postCustomersCustomerRequestBodyShipping'OneOf2Address obj) : (Data.Aeson..=) "name" (postCustomersCustomerRequestBodyShipping'OneOf2Name obj) : (Data.Aeson..=) "phone" (postCustomersCustomerRequestBodyShipping'OneOf2Phone obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postCustomersCustomerRequestBodyShipping'OneOf2Address obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCustomersCustomerRequestBodyShipping'OneOf2Name obj) GHC.Base.<> (Data.Aeson..=) "phone" (postCustomersCustomerRequestBodyShipping'OneOf2Phone obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerRequestBodyShipping'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerRequestBodyShipping'OneOf2" (\obj -> ((GHC.Base.pure PostCustomersCustomerRequestBodyShipping'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone"))
data PostCustomersCustomerRequestBodyShipping'Variants
    = PostCustomersCustomerRequestBodyShipping'Variant1 PostCustomersCustomerRequestBodyShipping'OneOf1
    | PostCustomersCustomerRequestBodyShipping'Variant2 PostCustomersCustomerRequestBodyShipping'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyShipping'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerRequestBodyShipping'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostCustomersCustomerRequestBodyTaxExempt'
    = PostCustomersCustomerRequestBodyTaxExempt'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerRequestBodyTaxExempt'EnumTyped GHC.Base.String
    | PostCustomersCustomerRequestBodyTaxExempt'EnumString_
    | PostCustomersCustomerRequestBodyTaxExempt'EnumStringExempt
    | PostCustomersCustomerRequestBodyTaxExempt'EnumStringNone
    | PostCustomersCustomerRequestBodyTaxExempt'EnumStringReverse
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyTaxExempt'
    where toJSON (PostCustomersCustomerRequestBodyTaxExempt'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyTaxExempt'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyTaxExempt'EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
          toJSON (PostCustomersCustomerRequestBodyTaxExempt'EnumStringExempt) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "exempt"
          toJSON (PostCustomersCustomerRequestBodyTaxExempt'EnumStringNone) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none"
          toJSON (PostCustomersCustomerRequestBodyTaxExempt'EnumStringReverse) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "reverse"
instance Data.Aeson.FromJSON PostCustomersCustomerRequestBodyTaxExempt'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerRequestBodyTaxExempt'EnumString_
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "exempt")
                                                then PostCustomersCustomerRequestBodyTaxExempt'EnumStringExempt
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none")
                                                      then PostCustomersCustomerRequestBodyTaxExempt'EnumStringNone
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "reverse")
                                                            then PostCustomersCustomerRequestBodyTaxExempt'EnumStringReverse
                                                            else PostCustomersCustomerRequestBodyTaxExempt'EnumOther val)
data PostCustomersCustomerRequestBodyTrialEnd'OneOf1
    = PostCustomersCustomerRequestBodyTrialEnd'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerRequestBodyTrialEnd'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerRequestBodyTrialEnd'OneOf1EnumStringNow
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyTrialEnd'OneOf1
    where toJSON (PostCustomersCustomerRequestBodyTrialEnd'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyTrialEnd'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerRequestBodyTrialEnd'OneOf1EnumStringNow) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now"
instance Data.Aeson.FromJSON PostCustomersCustomerRequestBodyTrialEnd'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now")
                                          then PostCustomersCustomerRequestBodyTrialEnd'OneOf1EnumStringNow
                                          else PostCustomersCustomerRequestBodyTrialEnd'OneOf1EnumOther val)
data PostCustomersCustomerRequestBodyTrialEnd'Variants
    = PostCustomersCustomerRequestBodyTrialEnd'Variant1 PostCustomersCustomerRequestBodyTrialEnd'OneOf1
    | PostCustomersCustomerRequestBodyTrialEnd'Variant2 GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBodyTrialEnd'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerRequestBodyTrialEnd'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostCustomersCustomerRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postCustomersCustomerRequestBodyAddress obj) : (Data.Aeson..=) "balance" (postCustomersCustomerRequestBodyBalance obj) : (Data.Aeson..=) "bank_account" (postCustomersCustomerRequestBodyBankAccount obj) : (Data.Aeson..=) "card" (postCustomersCustomerRequestBodyCard obj) : (Data.Aeson..=) "coupon" (postCustomersCustomerRequestBodyCoupon obj) : (Data.Aeson..=) "default_alipay_account" (postCustomersCustomerRequestBodyDefaultAlipayAccount obj) : (Data.Aeson..=) "default_bank_account" (postCustomersCustomerRequestBodyDefaultBankAccount obj) : (Data.Aeson..=) "default_card" (postCustomersCustomerRequestBodyDefaultCard obj) : (Data.Aeson..=) "default_source" (postCustomersCustomerRequestBodyDefaultSource obj) : (Data.Aeson..=) "description" (postCustomersCustomerRequestBodyDescription obj) : (Data.Aeson..=) "email" (postCustomersCustomerRequestBodyEmail obj) : (Data.Aeson..=) "expand" (postCustomersCustomerRequestBodyExpand obj) : (Data.Aeson..=) "invoice_prefix" (postCustomersCustomerRequestBodyInvoicePrefix obj) : (Data.Aeson..=) "invoice_settings" (postCustomersCustomerRequestBodyInvoiceSettings obj) : (Data.Aeson..=) "metadata" (postCustomersCustomerRequestBodyMetadata obj) : (Data.Aeson..=) "name" (postCustomersCustomerRequestBodyName obj) : (Data.Aeson..=) "next_invoice_sequence" (postCustomersCustomerRequestBodyNextInvoiceSequence obj) : (Data.Aeson..=) "phone" (postCustomersCustomerRequestBodyPhone obj) : (Data.Aeson..=) "preferred_locales" (postCustomersCustomerRequestBodyPreferredLocales obj) : (Data.Aeson..=) "shipping" (postCustomersCustomerRequestBodyShipping obj) : (Data.Aeson..=) "source" (postCustomersCustomerRequestBodySource obj) : (Data.Aeson..=) "tax_exempt" (postCustomersCustomerRequestBodyTaxExempt obj) : (Data.Aeson..=) "trial_end" (postCustomersCustomerRequestBodyTrialEnd obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postCustomersCustomerRequestBodyAddress obj) GHC.Base.<> ((Data.Aeson..=) "balance" (postCustomersCustomerRequestBodyBalance obj) GHC.Base.<> ((Data.Aeson..=) "bank_account" (postCustomersCustomerRequestBodyBankAccount obj) GHC.Base.<> ((Data.Aeson..=) "card" (postCustomersCustomerRequestBodyCard obj) GHC.Base.<> ((Data.Aeson..=) "coupon" (postCustomersCustomerRequestBodyCoupon obj) GHC.Base.<> ((Data.Aeson..=) "default_alipay_account" (postCustomersCustomerRequestBodyDefaultAlipayAccount obj) GHC.Base.<> ((Data.Aeson..=) "default_bank_account" (postCustomersCustomerRequestBodyDefaultBankAccount obj) GHC.Base.<> ((Data.Aeson..=) "default_card" (postCustomersCustomerRequestBodyDefaultCard obj) GHC.Base.<> ((Data.Aeson..=) "default_source" (postCustomersCustomerRequestBodyDefaultSource obj) GHC.Base.<> ((Data.Aeson..=) "description" (postCustomersCustomerRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "email" (postCustomersCustomerRequestBodyEmail obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postCustomersCustomerRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "invoice_prefix" (postCustomersCustomerRequestBodyInvoicePrefix obj) GHC.Base.<> ((Data.Aeson..=) "invoice_settings" (postCustomersCustomerRequestBodyInvoiceSettings obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCustomersCustomerRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCustomersCustomerRequestBodyName obj) GHC.Base.<> ((Data.Aeson..=) "next_invoice_sequence" (postCustomersCustomerRequestBodyNextInvoiceSequence obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postCustomersCustomerRequestBodyPhone obj) GHC.Base.<> ((Data.Aeson..=) "preferred_locales" (postCustomersCustomerRequestBodyPreferredLocales obj) GHC.Base.<> ((Data.Aeson..=) "shipping" (postCustomersCustomerRequestBodyShipping obj) GHC.Base.<> ((Data.Aeson..=) "source" (postCustomersCustomerRequestBodySource obj) GHC.Base.<> ((Data.Aeson..=) "tax_exempt" (postCustomersCustomerRequestBodyTaxExempt obj) GHC.Base.<> (Data.Aeson..=) "trial_end" (postCustomersCustomerRequestBodyTrialEnd obj)))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerRequestBody" (\obj -> ((((((((((((((((((((((GHC.Base.pure PostCustomersCustomerRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "balance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "coupon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_alipay_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_bank_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoice_prefix")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoice_settings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "next_invoice_sequence")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "preferred_locales")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_exempt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_end"))

data PostCustomersCustomerResponse
    = PostCustomersCustomerResponseError GHC.Base.String
    | PostCustomersCustomerResponse200 Customer
    | PostCustomersCustomerResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
