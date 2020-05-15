{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostAccountsAccountBankAccountsId where

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
-- POST /v1/accounts/{account}/bank_accounts/{id}
postAccountsAccountBankAccountsId :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                   StripeAPI.Common.SecurityScheme s) =>
                                     StripeAPI.Common.Configuration s ->
                                     GHC.Base.String ->
                                     GHC.Base.String ->
                                     PostAccountsAccountBankAccountsIdRequestBody ->
                                     m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                           (Network.HTTP.Client.Types.Response PostAccountsAccountBankAccountsIdResponse))
postAccountsAccountBankAccountsId config
                                  account
                                  id
                                  body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountsAccountBankAccountsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountBankAccountsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ExternalAccount)
                                                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountBankAccountsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ("/bank_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountsAccountBankAccountsIdRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                      StripeAPI.Common.SecurityScheme s) =>
                                        StripeAPI.Common.Configuration s ->
                                        GHC.Base.String ->
                                        GHC.Base.String ->
                                        PostAccountsAccountBankAccountsIdRequestBody ->
                                        m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountsAccountBankAccountsIdRaw config
                                     account
                                     id
                                     body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ("/bank_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountsAccountBankAccountsIdM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                    StripeAPI.Common.SecurityScheme s) =>
                                      GHC.Base.String ->
                                      GHC.Base.String ->
                                      PostAccountsAccountBankAccountsIdRequestBody ->
                                      Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                         m
                                                                         (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                             (Network.HTTP.Client.Types.Response PostAccountsAccountBankAccountsIdResponse))
postAccountsAccountBankAccountsIdM account
                                   id
                                   body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostAccountsAccountBankAccountsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountBankAccountsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ExternalAccount)
                                                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountBankAccountsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ("/bank_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountsAccountBankAccountsIdRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                       StripeAPI.Common.SecurityScheme s) =>
                                         GHC.Base.String ->
                                         GHC.Base.String ->
                                         PostAccountsAccountBankAccountsIdRequestBody ->
                                         Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                            m
                                                                            (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountsAccountBankAccountsIdRawM account
                                      id
                                      body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ("/bank_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostAccountsAccountBankAccountsIdRequestBody
    = PostAccountsAccountBankAccountsIdRequestBody {postAccountsAccountBankAccountsIdRequestBodyAccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    postAccountsAccountBankAccountsIdRequestBodyAccountHolderType :: (GHC.Maybe.Maybe PostAccountsAccountBankAccountsIdRequestBodyAccountHolderType'),
                                                    postAccountsAccountBankAccountsIdRequestBodyAddressCity :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    postAccountsAccountBankAccountsIdRequestBodyAddressCountry :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    postAccountsAccountBankAccountsIdRequestBodyAddressLine1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    postAccountsAccountBankAccountsIdRequestBodyAddressLine2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    postAccountsAccountBankAccountsIdRequestBodyAddressState :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    postAccountsAccountBankAccountsIdRequestBodyAddressZip :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    postAccountsAccountBankAccountsIdRequestBodyDefaultForCurrency :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                    postAccountsAccountBankAccountsIdRequestBodyExpMonth :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    postAccountsAccountBankAccountsIdRequestBodyExpYear :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    postAccountsAccountBankAccountsIdRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                                    postAccountsAccountBankAccountsIdRequestBodyMetadata :: (GHC.Maybe.Maybe PostAccountsAccountBankAccountsIdRequestBodyMetadata'),
                                                    postAccountsAccountBankAccountsIdRequestBodyName :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsAccountBankAccountsIdRequestBodyAccountHolderType'
    = PostAccountsAccountBankAccountsIdRequestBodyAccountHolderType'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountBankAccountsIdRequestBodyAccountHolderType'EnumTyped GHC.Base.String
    | PostAccountsAccountBankAccountsIdRequestBodyAccountHolderType'EnumString_
    | PostAccountsAccountBankAccountsIdRequestBodyAccountHolderType'EnumStringCompany
    | PostAccountsAccountBankAccountsIdRequestBodyAccountHolderType'EnumStringIndividual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountBankAccountsIdRequestBodyAccountHolderType'
    where toJSON (PostAccountsAccountBankAccountsIdRequestBodyAccountHolderType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountBankAccountsIdRequestBodyAccountHolderType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountBankAccountsIdRequestBodyAccountHolderType'EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
          toJSON (PostAccountsAccountBankAccountsIdRequestBodyAccountHolderType'EnumStringCompany) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company"
          toJSON (PostAccountsAccountBankAccountsIdRequestBodyAccountHolderType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
instance Data.Aeson.FromJSON PostAccountsAccountBankAccountsIdRequestBodyAccountHolderType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostAccountsAccountBankAccountsIdRequestBodyAccountHolderType'EnumString_
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company")
                                                then PostAccountsAccountBankAccountsIdRequestBodyAccountHolderType'EnumStringCompany
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                      then PostAccountsAccountBankAccountsIdRequestBodyAccountHolderType'EnumStringIndividual
                                                      else PostAccountsAccountBankAccountsIdRequestBodyAccountHolderType'EnumOther val)
data PostAccountsAccountBankAccountsIdRequestBodyMetadata'
    = PostAccountsAccountBankAccountsIdRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountBankAccountsIdRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountBankAccountsIdRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountBankAccountsIdRequestBodyMetadata'" (\obj -> GHC.Base.pure PostAccountsAccountBankAccountsIdRequestBodyMetadata')
instance Data.Aeson.ToJSON PostAccountsAccountBankAccountsIdRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_holder_name" (postAccountsAccountBankAccountsIdRequestBodyAccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (postAccountsAccountBankAccountsIdRequestBodyAccountHolderType obj) : (Data.Aeson..=) "address_city" (postAccountsAccountBankAccountsIdRequestBodyAddressCity obj) : (Data.Aeson..=) "address_country" (postAccountsAccountBankAccountsIdRequestBodyAddressCountry obj) : (Data.Aeson..=) "address_line1" (postAccountsAccountBankAccountsIdRequestBodyAddressLine1 obj) : (Data.Aeson..=) "address_line2" (postAccountsAccountBankAccountsIdRequestBodyAddressLine2 obj) : (Data.Aeson..=) "address_state" (postAccountsAccountBankAccountsIdRequestBodyAddressState obj) : (Data.Aeson..=) "address_zip" (postAccountsAccountBankAccountsIdRequestBodyAddressZip obj) : (Data.Aeson..=) "default_for_currency" (postAccountsAccountBankAccountsIdRequestBodyDefaultForCurrency obj) : (Data.Aeson..=) "exp_month" (postAccountsAccountBankAccountsIdRequestBodyExpMonth obj) : (Data.Aeson..=) "exp_year" (postAccountsAccountBankAccountsIdRequestBodyExpYear obj) : (Data.Aeson..=) "expand" (postAccountsAccountBankAccountsIdRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postAccountsAccountBankAccountsIdRequestBodyMetadata obj) : (Data.Aeson..=) "name" (postAccountsAccountBankAccountsIdRequestBodyName obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_holder_name" (postAccountsAccountBankAccountsIdRequestBodyAccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (postAccountsAccountBankAccountsIdRequestBodyAccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "address_city" (postAccountsAccountBankAccountsIdRequestBodyAddressCity obj) GHC.Base.<> ((Data.Aeson..=) "address_country" (postAccountsAccountBankAccountsIdRequestBodyAddressCountry obj) GHC.Base.<> ((Data.Aeson..=) "address_line1" (postAccountsAccountBankAccountsIdRequestBodyAddressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "address_line2" (postAccountsAccountBankAccountsIdRequestBodyAddressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "address_state" (postAccountsAccountBankAccountsIdRequestBodyAddressState obj) GHC.Base.<> ((Data.Aeson..=) "address_zip" (postAccountsAccountBankAccountsIdRequestBodyAddressZip obj) GHC.Base.<> ((Data.Aeson..=) "default_for_currency" (postAccountsAccountBankAccountsIdRequestBodyDefaultForCurrency obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (postAccountsAccountBankAccountsIdRequestBodyExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (postAccountsAccountBankAccountsIdRequestBodyExpYear obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postAccountsAccountBankAccountsIdRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postAccountsAccountBankAccountsIdRequestBodyMetadata obj) GHC.Base.<> (Data.Aeson..=) "name" (postAccountsAccountBankAccountsIdRequestBodyName obj))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountBankAccountsIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountBankAccountsIdRequestBody" (\obj -> (((((((((((((GHC.Base.pure PostAccountsAccountBankAccountsIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_for_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name"))

data PostAccountsAccountBankAccountsIdResponse
    = PostAccountsAccountBankAccountsIdResponseError GHC.Base.String
    | PostAccountsAccountBankAccountsIdResponse200 ExternalAccount
    | PostAccountsAccountBankAccountsIdResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
