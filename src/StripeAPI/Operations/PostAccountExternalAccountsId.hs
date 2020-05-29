{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postAccountExternalAccountsId
module StripeAPI.Operations.PostAccountExternalAccountsId where

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
import qualified Data.Vector
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

-- | > POST /v1/account/external_accounts/{id}
-- 
-- \<p>Updates the metadata, account holder name, and account holder type of a bank account belonging to a \<a href=\"\/docs\/connect\/custom-accounts\">Custom account\<\/a>, and optionally sets it as the default for its currency. Other bank account details are not editable by design.\<\/p>
-- \<p>You can re-enable a disabled bank account by performing an update call without providing any arguments or changes.\<\/p>
postAccountExternalAccountsId :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                           -- ^ id
  -> GHC.Maybe.Maybe PostAccountExternalAccountsIdRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostAccountExternalAccountsIdResponse)) -- ^ Monad containing the result of the operation
postAccountExternalAccountsId config
                              id
                              body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountExternalAccountsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountExternalAccountsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ExternalAccount)
                                                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountExternalAccountsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/account/external_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/account/external_accounts/{id}
-- 
-- The same as 'postAccountExternalAccountsId' but returns the raw 'Data.ByteString.Char8.ByteString'
postAccountExternalAccountsIdRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                  StripeAPI.Common.SecurityScheme s) =>
                                    StripeAPI.Common.Configuration s ->
                                    GHC.Base.String ->
                                    GHC.Maybe.Maybe PostAccountExternalAccountsIdRequestBody ->
                                    m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountExternalAccountsIdRaw config
                                 id
                                 body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/account/external_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/account/external_accounts/{id}
-- 
-- Monadic version of 'postAccountExternalAccountsId' (use with 'StripeAPI.Common.runWithConfiguration')
postAccountExternalAccountsIdM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                StripeAPI.Common.SecurityScheme s) =>
                                  GHC.Base.String ->
                                  GHC.Maybe.Maybe PostAccountExternalAccountsIdRequestBody ->
                                  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                     m
                                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                         (Network.HTTP.Client.Types.Response PostAccountExternalAccountsIdResponse))
postAccountExternalAccountsIdM id
                               body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostAccountExternalAccountsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountExternalAccountsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ExternalAccount)
                                                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountExternalAccountsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/account/external_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/account/external_accounts/{id}
-- 
-- Monadic version of 'postAccountExternalAccountsIdRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postAccountExternalAccountsIdRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                   StripeAPI.Common.SecurityScheme s) =>
                                     GHC.Base.String ->
                                     GHC.Maybe.Maybe PostAccountExternalAccountsIdRequestBody ->
                                     Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                        m
                                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountExternalAccountsIdRawM id
                                  body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/account/external_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postAccountExternalAccountsIdRequestBody
-- 
-- 
data PostAccountExternalAccountsIdRequestBody = PostAccountExternalAccountsIdRequestBody {
  -- | account_holder_name: The name of the person or business that owns the bank account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountExternalAccountsIdRequestBodyAccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | account_holder_type: The type of entity that holds the account. This can be either \`individual\` or \`company\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountExternalAccountsIdRequestBodyAccountHolderType :: (GHC.Maybe.Maybe PostAccountExternalAccountsIdRequestBodyAccountHolderType')
  -- | address_city: City\/District\/Suburb\/Town\/Village.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountExternalAccountsIdRequestBodyAddressCity :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_country: Billing address country, if provided when creating card.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountExternalAccountsIdRequestBodyAddressCountry :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_line1: Address line 1 (Street address\/PO Box\/Company name).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountExternalAccountsIdRequestBodyAddressLine1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_line2: Address line 2 (Apartment\/Suite\/Unit\/Building).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountExternalAccountsIdRequestBodyAddressLine2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_state: State\/County\/Province\/Region.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountExternalAccountsIdRequestBodyAddressState :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_zip: ZIP or postal code.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountExternalAccountsIdRequestBodyAddressZip :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | default_for_currency: When set to true, this becomes the default external account for its currency.
  , postAccountExternalAccountsIdRequestBodyDefaultForCurrency :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | exp_month: Two digit number representing the card’s expiration month.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountExternalAccountsIdRequestBodyExpMonth :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | exp_year: Four digit number representing the card’s expiration year.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountExternalAccountsIdRequestBodyExpYear :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | expand: Specifies which fields in the response should be expanded.
  , postAccountExternalAccountsIdRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postAccountExternalAccountsIdRequestBodyMetadata :: (GHC.Maybe.Maybe PostAccountExternalAccountsIdRequestBodyMetadata')
  -- | name: Cardholder name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountExternalAccountsIdRequestBodyName :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountExternalAccountsIdRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_holder_name" (postAccountExternalAccountsIdRequestBodyAccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (postAccountExternalAccountsIdRequestBodyAccountHolderType obj) : (Data.Aeson..=) "address_city" (postAccountExternalAccountsIdRequestBodyAddressCity obj) : (Data.Aeson..=) "address_country" (postAccountExternalAccountsIdRequestBodyAddressCountry obj) : (Data.Aeson..=) "address_line1" (postAccountExternalAccountsIdRequestBodyAddressLine1 obj) : (Data.Aeson..=) "address_line2" (postAccountExternalAccountsIdRequestBodyAddressLine2 obj) : (Data.Aeson..=) "address_state" (postAccountExternalAccountsIdRequestBodyAddressState obj) : (Data.Aeson..=) "address_zip" (postAccountExternalAccountsIdRequestBodyAddressZip obj) : (Data.Aeson..=) "default_for_currency" (postAccountExternalAccountsIdRequestBodyDefaultForCurrency obj) : (Data.Aeson..=) "exp_month" (postAccountExternalAccountsIdRequestBodyExpMonth obj) : (Data.Aeson..=) "exp_year" (postAccountExternalAccountsIdRequestBodyExpYear obj) : (Data.Aeson..=) "expand" (postAccountExternalAccountsIdRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postAccountExternalAccountsIdRequestBodyMetadata obj) : (Data.Aeson..=) "name" (postAccountExternalAccountsIdRequestBodyName obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_holder_name" (postAccountExternalAccountsIdRequestBodyAccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (postAccountExternalAccountsIdRequestBodyAccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "address_city" (postAccountExternalAccountsIdRequestBodyAddressCity obj) GHC.Base.<> ((Data.Aeson..=) "address_country" (postAccountExternalAccountsIdRequestBodyAddressCountry obj) GHC.Base.<> ((Data.Aeson..=) "address_line1" (postAccountExternalAccountsIdRequestBodyAddressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "address_line2" (postAccountExternalAccountsIdRequestBodyAddressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "address_state" (postAccountExternalAccountsIdRequestBodyAddressState obj) GHC.Base.<> ((Data.Aeson..=) "address_zip" (postAccountExternalAccountsIdRequestBodyAddressZip obj) GHC.Base.<> ((Data.Aeson..=) "default_for_currency" (postAccountExternalAccountsIdRequestBodyDefaultForCurrency obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (postAccountExternalAccountsIdRequestBodyExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (postAccountExternalAccountsIdRequestBodyExpYear obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postAccountExternalAccountsIdRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postAccountExternalAccountsIdRequestBodyMetadata obj) GHC.Base.<> (Data.Aeson..=) "name" (postAccountExternalAccountsIdRequestBodyName obj))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountExternalAccountsIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountExternalAccountsIdRequestBody" (\obj -> (((((((((((((GHC.Base.pure PostAccountExternalAccountsIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_for_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name"))
-- | Defines the enum schema postAccountExternalAccountsIdRequestBodyAccount_holder_type\'
-- 
-- The type of entity that holds the account. This can be either \`individual\` or \`company\`.
data PostAccountExternalAccountsIdRequestBodyAccountHolderType'
    = PostAccountExternalAccountsIdRequestBodyAccountHolderType'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountExternalAccountsIdRequestBodyAccountHolderType'EnumTyped GHC.Base.String
    | PostAccountExternalAccountsIdRequestBodyAccountHolderType'EnumString_
    | PostAccountExternalAccountsIdRequestBodyAccountHolderType'EnumStringCompany
    | PostAccountExternalAccountsIdRequestBodyAccountHolderType'EnumStringIndividual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountExternalAccountsIdRequestBodyAccountHolderType'
    where toJSON (PostAccountExternalAccountsIdRequestBodyAccountHolderType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountExternalAccountsIdRequestBodyAccountHolderType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountExternalAccountsIdRequestBodyAccountHolderType'EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
          toJSON (PostAccountExternalAccountsIdRequestBodyAccountHolderType'EnumStringCompany) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company"
          toJSON (PostAccountExternalAccountsIdRequestBodyAccountHolderType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
instance Data.Aeson.FromJSON PostAccountExternalAccountsIdRequestBodyAccountHolderType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostAccountExternalAccountsIdRequestBodyAccountHolderType'EnumString_
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company")
                                                then PostAccountExternalAccountsIdRequestBodyAccountHolderType'EnumStringCompany
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                      then PostAccountExternalAccountsIdRequestBodyAccountHolderType'EnumStringIndividual
                                                      else PostAccountExternalAccountsIdRequestBodyAccountHolderType'EnumOther val)
-- | Defines the data type for the schema postAccountExternalAccountsIdRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostAccountExternalAccountsIdRequestBodyMetadata' = PostAccountExternalAccountsIdRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountExternalAccountsIdRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountExternalAccountsIdRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountExternalAccountsIdRequestBodyMetadata'" (\obj -> GHC.Base.pure PostAccountExternalAccountsIdRequestBodyMetadata')
-- | Represents a response of the operation 'postAccountExternalAccountsId'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostAccountExternalAccountsIdResponseError' is used.
data PostAccountExternalAccountsIdResponse =                   
   PostAccountExternalAccountsIdResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostAccountExternalAccountsIdResponse200 ExternalAccount   -- ^ Successful response.
  | PostAccountExternalAccountsIdResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
