{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostAccountBankAccountsId where

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
-- POST /v1/account/bank_accounts/{id}
postAccountBankAccountsId :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             StripeAPI.Common.Configuration s ->
                             GHC.Base.String ->
                             PostAccountBankAccountsIdRequestBody ->
                             m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                   (Network.HTTP.Client.Types.Response PostAccountBankAccountsIdResponse))
postAccountBankAccountsId config
                          id
                          body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountBankAccountsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountBankAccountsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                             ExternalAccount)
                                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountBankAccountsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/account/bank_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountBankAccountsIdRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                StripeAPI.Common.Configuration s ->
                                GHC.Base.String ->
                                PostAccountBankAccountsIdRequestBody ->
                                m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountBankAccountsIdRaw config
                             id
                             body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/account/bank_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountBankAccountsIdM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                            StripeAPI.Common.SecurityScheme s) =>
                              GHC.Base.String ->
                              PostAccountBankAccountsIdRequestBody ->
                              Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                 m
                                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                     (Network.HTTP.Client.Types.Response PostAccountBankAccountsIdResponse))
postAccountBankAccountsIdM id
                           body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostAccountBankAccountsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountBankAccountsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                              ExternalAccount)
                                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountBankAccountsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                Error)
                                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/account/bank_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountBankAccountsIdRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                               StripeAPI.Common.SecurityScheme s) =>
                                 GHC.Base.String ->
                                 PostAccountBankAccountsIdRequestBody ->
                                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                    m
                                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountBankAccountsIdRawM id
                              body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/account/bank_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostAccountBankAccountsIdRequestBody
    = PostAccountBankAccountsIdRequestBody {postAccountBankAccountsIdRequestBodyAccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postAccountBankAccountsIdRequestBodyAccountHolderType :: (GHC.Maybe.Maybe PostAccountBankAccountsIdRequestBodyAccountHolderType'),
                                            postAccountBankAccountsIdRequestBodyAddressCity :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postAccountBankAccountsIdRequestBodyAddressCountry :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postAccountBankAccountsIdRequestBodyAddressLine1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postAccountBankAccountsIdRequestBodyAddressLine2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postAccountBankAccountsIdRequestBodyAddressState :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postAccountBankAccountsIdRequestBodyAddressZip :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postAccountBankAccountsIdRequestBodyDefaultForCurrency :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                            postAccountBankAccountsIdRequestBodyExpMonth :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postAccountBankAccountsIdRequestBodyExpYear :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postAccountBankAccountsIdRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                            postAccountBankAccountsIdRequestBodyMetadata :: (GHC.Maybe.Maybe PostAccountBankAccountsIdRequestBodyMetadata'),
                                            postAccountBankAccountsIdRequestBodyName :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountBankAccountsIdRequestBodyAccountHolderType'
    = PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumTyped GHC.Base.String
    | PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumString_
    | PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumStringCompany
    | PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumStringIndividual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountBankAccountsIdRequestBodyAccountHolderType'
    where toJSON (PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
          toJSON (PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumStringCompany) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company"
          toJSON (PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
instance Data.Aeson.FromJSON PostAccountBankAccountsIdRequestBodyAccountHolderType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumString_
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company")
                                                then PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumStringCompany
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                      then PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumStringIndividual
                                                      else PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumOther val)
data PostAccountBankAccountsIdRequestBodyMetadata'
    = PostAccountBankAccountsIdRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountBankAccountsIdRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountBankAccountsIdRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountBankAccountsIdRequestBodyMetadata'" (\obj -> GHC.Base.pure PostAccountBankAccountsIdRequestBodyMetadata')
instance Data.Aeson.ToJSON PostAccountBankAccountsIdRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_holder_name" (postAccountBankAccountsIdRequestBodyAccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (postAccountBankAccountsIdRequestBodyAccountHolderType obj) : (Data.Aeson..=) "address_city" (postAccountBankAccountsIdRequestBodyAddressCity obj) : (Data.Aeson..=) "address_country" (postAccountBankAccountsIdRequestBodyAddressCountry obj) : (Data.Aeson..=) "address_line1" (postAccountBankAccountsIdRequestBodyAddressLine1 obj) : (Data.Aeson..=) "address_line2" (postAccountBankAccountsIdRequestBodyAddressLine2 obj) : (Data.Aeson..=) "address_state" (postAccountBankAccountsIdRequestBodyAddressState obj) : (Data.Aeson..=) "address_zip" (postAccountBankAccountsIdRequestBodyAddressZip obj) : (Data.Aeson..=) "default_for_currency" (postAccountBankAccountsIdRequestBodyDefaultForCurrency obj) : (Data.Aeson..=) "exp_month" (postAccountBankAccountsIdRequestBodyExpMonth obj) : (Data.Aeson..=) "exp_year" (postAccountBankAccountsIdRequestBodyExpYear obj) : (Data.Aeson..=) "expand" (postAccountBankAccountsIdRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postAccountBankAccountsIdRequestBodyMetadata obj) : (Data.Aeson..=) "name" (postAccountBankAccountsIdRequestBodyName obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_holder_name" (postAccountBankAccountsIdRequestBodyAccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (postAccountBankAccountsIdRequestBodyAccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "address_city" (postAccountBankAccountsIdRequestBodyAddressCity obj) GHC.Base.<> ((Data.Aeson..=) "address_country" (postAccountBankAccountsIdRequestBodyAddressCountry obj) GHC.Base.<> ((Data.Aeson..=) "address_line1" (postAccountBankAccountsIdRequestBodyAddressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "address_line2" (postAccountBankAccountsIdRequestBodyAddressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "address_state" (postAccountBankAccountsIdRequestBodyAddressState obj) GHC.Base.<> ((Data.Aeson..=) "address_zip" (postAccountBankAccountsIdRequestBodyAddressZip obj) GHC.Base.<> ((Data.Aeson..=) "default_for_currency" (postAccountBankAccountsIdRequestBodyDefaultForCurrency obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (postAccountBankAccountsIdRequestBodyExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (postAccountBankAccountsIdRequestBodyExpYear obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postAccountBankAccountsIdRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postAccountBankAccountsIdRequestBodyMetadata obj) GHC.Base.<> (Data.Aeson..=) "name" (postAccountBankAccountsIdRequestBodyName obj))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountBankAccountsIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountBankAccountsIdRequestBody" (\obj -> (((((((((((((GHC.Base.pure PostAccountBankAccountsIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_for_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name"))

data PostAccountBankAccountsIdResponse
    = PostAccountBankAccountsIdResponseError GHC.Base.String
    | PostAccountBankAccountsIdResponse200 ExternalAccount
    | PostAccountBankAccountsIdResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
