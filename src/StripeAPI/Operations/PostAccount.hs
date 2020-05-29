{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postAccount
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

-- | > POST /v1/account
-- 
-- \<p>Updates a connected \<a href=\"\/docs\/connect\/accounts\">Express or Custom account\<\/a> by setting the values of the parameters passed. Any parameters not provided are left unchanged. Most parameters can be changed only for Custom accounts. (These are marked \<strong>Custom Only\<\/strong> below.) Parameters marked \<strong>Custom and Express\<\/strong> are supported by both account types.\<\/p>
-- 
-- \<p>To update your own account, use the \<a href=\"https:\/\/dashboard.stripe.com\/account\">Dashboard\<\/a>. Refer to our \<a href=\"\/docs\/connect\/updating-accounts\">Connect\<\/a> documentation to learn more about updating accounts.\<\/p>
postAccount :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Maybe.Maybe PostAccountRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostAccountResponse)) -- ^ Monad containing the result of the operation
postAccount config
            body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                   Account)
                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/account") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/account
-- 
-- The same as 'postAccount' but returns the raw 'Data.ByteString.Char8.ByteString'
postAccountRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                StripeAPI.Common.SecurityScheme s) =>
                  StripeAPI.Common.Configuration s ->
                  GHC.Maybe.Maybe PostAccountRequestBody ->
                  m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountRaw config
               body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/account") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/account
-- 
-- Monadic version of 'postAccount' (use with 'StripeAPI.Common.runWithConfiguration')
postAccountM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                              StripeAPI.Common.SecurityScheme s) =>
                GHC.Maybe.Maybe PostAccountRequestBody ->
                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                   m
                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                       (Network.HTTP.Client.Types.Response PostAccountResponse))
postAccountM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostAccountResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                    Account)
                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/account") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/account
-- 
-- Monadic version of 'postAccountRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postAccountRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                 StripeAPI.Common.SecurityScheme s) =>
                   GHC.Maybe.Maybe PostAccountRequestBody ->
                   Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                      m
                                                      (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/account") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postAccountRequestBody
-- 
-- 
data PostAccountRequestBody = PostAccountRequestBody {
  -- | account_token: An [account token](https:\/\/stripe.com\/docs\/api\#create_account_token), used to securely provide details to the account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountRequestBodyAccountToken :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | bank_account: Either a token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/stripe.js), or a dictionary containing a user\'s bank account details.
  , postAccountRequestBodyBankAccount :: (GHC.Maybe.Maybe PostAccountRequestBodyBankAccount'Variants)
  -- | business_profile: Business information about the account.
  , postAccountRequestBodyBusinessProfile :: (GHC.Maybe.Maybe PostAccountRequestBodyBusinessProfile')
  -- | business_type: The business type.
  , postAccountRequestBodyBusinessType :: (GHC.Maybe.Maybe PostAccountRequestBodyBusinessType')
  -- | company: Information about the company or business. This field is null unless \`business_type\` is set to \`company\`, \`government_entity\`, or \`non_profit\`.
  , postAccountRequestBodyCompany :: (GHC.Maybe.Maybe PostAccountRequestBodyCompany')
  -- | default_currency: Three-letter ISO currency code representing the default currency for the account. This must be a currency that [Stripe supports in the account\'s country](https:\/\/stripe.com\/docs\/payouts).
  , postAccountRequestBodyDefaultCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | email: Email address of the account representative. For Standard accounts, this is used to ask them to claim their Stripe account. For Custom accounts, this only makes the account easier to identify to platforms; Stripe does not email the account representative.
  , postAccountRequestBodyEmail :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | expand: Specifies which fields in the response should be expanded.
  , postAccountRequestBodyExpand :: (GHC.Maybe.Maybe ([] Data.Text.Internal.Text))
  -- | external_account: A card or bank account to attach to the account. You can provide either a token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/stripe.js), or a dictionary, as documented in the \`external_account\` parameter for [bank account](https:\/\/stripe.com\/docs\/api\#account_create_bank_account) creation. \<br>\<br>By default, providing an external account sets it as the new default external account for its currency, and deletes the old default if one exists. To add additional external accounts without replacing the existing default for the currency, use the bank account or card creation API.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyExternalAccount :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | individual: Information about the person represented by the account. This field is null unless \`business_type\` is set to \`individual\`.
  , postAccountRequestBodyIndividual :: (GHC.Maybe.Maybe PostAccountRequestBodyIndividual')
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postAccountRequestBodyMetadata :: (GHC.Maybe.Maybe PostAccountRequestBodyMetadata')
  -- | requested_capabilities: The set of capabilities you want to unlock for this account. Each capability will be inactive until you have provided its specific requirements and Stripe has verified them. An account may have some of its requested capabilities be active and some be inactive.
  , postAccountRequestBodyRequestedCapabilities :: (GHC.Maybe.Maybe ([] PostAccountRequestBodyRequestedCapabilities'))
  -- | settings: Options for customizing how the account functions within Stripe.
  , postAccountRequestBodySettings :: (GHC.Maybe.Maybe PostAccountRequestBodySettings')
  -- | tos_acceptance: Details on the account\'s acceptance of the [Stripe Services Agreement](https:\/\/stripe.com\/docs\/connect\/updating-accounts\#tos-acceptance).
  , postAccountRequestBodyTosAcceptance :: (GHC.Maybe.Maybe PostAccountRequestBodyTosAcceptance')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_token" (postAccountRequestBodyAccountToken obj) : (Data.Aeson..=) "bank_account" (postAccountRequestBodyBankAccount obj) : (Data.Aeson..=) "business_profile" (postAccountRequestBodyBusinessProfile obj) : (Data.Aeson..=) "business_type" (postAccountRequestBodyBusinessType obj) : (Data.Aeson..=) "company" (postAccountRequestBodyCompany obj) : (Data.Aeson..=) "default_currency" (postAccountRequestBodyDefaultCurrency obj) : (Data.Aeson..=) "email" (postAccountRequestBodyEmail obj) : (Data.Aeson..=) "expand" (postAccountRequestBodyExpand obj) : (Data.Aeson..=) "external_account" (postAccountRequestBodyExternalAccount obj) : (Data.Aeson..=) "individual" (postAccountRequestBodyIndividual obj) : (Data.Aeson..=) "metadata" (postAccountRequestBodyMetadata obj) : (Data.Aeson..=) "requested_capabilities" (postAccountRequestBodyRequestedCapabilities obj) : (Data.Aeson..=) "settings" (postAccountRequestBodySettings obj) : (Data.Aeson..=) "tos_acceptance" (postAccountRequestBodyTosAcceptance obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_token" (postAccountRequestBodyAccountToken obj) GHC.Base.<> ((Data.Aeson..=) "bank_account" (postAccountRequestBodyBankAccount obj) GHC.Base.<> ((Data.Aeson..=) "business_profile" (postAccountRequestBodyBusinessProfile obj) GHC.Base.<> ((Data.Aeson..=) "business_type" (postAccountRequestBodyBusinessType obj) GHC.Base.<> ((Data.Aeson..=) "company" (postAccountRequestBodyCompany obj) GHC.Base.<> ((Data.Aeson..=) "default_currency" (postAccountRequestBodyDefaultCurrency obj) GHC.Base.<> ((Data.Aeson..=) "email" (postAccountRequestBodyEmail obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postAccountRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "external_account" (postAccountRequestBodyExternalAccount obj) GHC.Base.<> ((Data.Aeson..=) "individual" (postAccountRequestBodyIndividual obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postAccountRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "requested_capabilities" (postAccountRequestBodyRequestedCapabilities obj) GHC.Base.<> ((Data.Aeson..=) "settings" (postAccountRequestBodySettings obj) GHC.Base.<> (Data.Aeson..=) "tos_acceptance" (postAccountRequestBodyTosAcceptance obj))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBody" (\obj -> (((((((((((((GHC.Base.pure PostAccountRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "business_profile")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "business_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "company")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "external_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "individual")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "requested_capabilities")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "settings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tos_acceptance"))
-- | Defines the data type for the schema postAccountRequestBodyBank_account\'OneOf2
-- 
-- 
data PostAccountRequestBodyBankAccount'OneOf2 = PostAccountRequestBodyBankAccount'OneOf2 {
  -- | account_holder_name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountRequestBodyBankAccount'OneOf2AccountHolderName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | account_holder_type
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyBankAccount'OneOf2AccountHolderType :: (GHC.Maybe.Maybe PostAccountRequestBodyBankAccount'OneOf2AccountHolderType')
  -- | account_number
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyBankAccount'OneOf2AccountNumber :: Data.Text.Internal.Text
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyBankAccount'OneOf2Country :: Data.Text.Internal.Text
  -- | currency
  , postAccountRequestBodyBankAccount'OneOf2Currency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | object
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyBankAccount'OneOf2Object :: (GHC.Maybe.Maybe PostAccountRequestBodyBankAccount'OneOf2Object')
  -- | routing_number
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyBankAccount'OneOf2RoutingNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyBankAccount'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_holder_name" (postAccountRequestBodyBankAccount'OneOf2AccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (postAccountRequestBodyBankAccount'OneOf2AccountHolderType obj) : (Data.Aeson..=) "account_number" (postAccountRequestBodyBankAccount'OneOf2AccountNumber obj) : (Data.Aeson..=) "country" (postAccountRequestBodyBankAccount'OneOf2Country obj) : (Data.Aeson..=) "currency" (postAccountRequestBodyBankAccount'OneOf2Currency obj) : (Data.Aeson..=) "object" (postAccountRequestBodyBankAccount'OneOf2Object obj) : (Data.Aeson..=) "routing_number" (postAccountRequestBodyBankAccount'OneOf2RoutingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_holder_name" (postAccountRequestBodyBankAccount'OneOf2AccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (postAccountRequestBodyBankAccount'OneOf2AccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "account_number" (postAccountRequestBodyBankAccount'OneOf2AccountNumber obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountRequestBodyBankAccount'OneOf2Country obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postAccountRequestBodyBankAccount'OneOf2Currency obj) GHC.Base.<> ((Data.Aeson..=) "object" (postAccountRequestBodyBankAccount'OneOf2Object obj) GHC.Base.<> (Data.Aeson..=) "routing_number" (postAccountRequestBodyBankAccount'OneOf2RoutingNumber obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyBankAccount'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyBankAccount'OneOf2" (\obj -> ((((((GHC.Base.pure PostAccountRequestBodyBankAccount'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number"))
-- | Defines the enum schema postAccountRequestBodyBank_account\'OneOf2Account_holder_type\'
-- 
-- 
data PostAccountRequestBodyBankAccount'OneOf2AccountHolderType'
    = PostAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumTyped Data.Text.Internal.Text
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
-- | Defines the enum schema postAccountRequestBodyBank_account\'OneOf2Object\'
-- 
-- 
data PostAccountRequestBodyBankAccount'OneOf2Object'
    = PostAccountRequestBodyBankAccount'OneOf2Object'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountRequestBodyBankAccount'OneOf2Object'EnumTyped Data.Text.Internal.Text
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
-- | Define the one-of schema postAccountRequestBodyBank_account\'
-- 
-- Either a token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/stripe.js), or a dictionary containing a user\'s bank account details.
data PostAccountRequestBodyBankAccount'Variants
    = PostAccountRequestBodyBankAccount'Text Data.Text.Internal.Text
    | PostAccountRequestBodyBankAccount'PostAccountRequestBodyBankAccount'OneOf2 PostAccountRequestBodyBankAccount'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountRequestBodyBankAccount'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountRequestBodyBankAccount'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postAccountRequestBodyBusiness_profile\'
-- 
-- Business information about the account.
data PostAccountRequestBodyBusinessProfile' = PostAccountRequestBodyBusinessProfile' {
  -- | mcc
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 4
  postAccountRequestBodyBusinessProfile'Mcc :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyBusinessProfile'Name :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | product_description
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 40000
  , postAccountRequestBodyBusinessProfile'ProductDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | support_email
  , postAccountRequestBodyBusinessProfile'SupportEmail :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | support_phone
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyBusinessProfile'SupportPhone :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | support_url
  , postAccountRequestBodyBusinessProfile'SupportUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | url
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyBusinessProfile'Url :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyBusinessProfile'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "mcc" (postAccountRequestBodyBusinessProfile'Mcc obj) : (Data.Aeson..=) "name" (postAccountRequestBodyBusinessProfile'Name obj) : (Data.Aeson..=) "product_description" (postAccountRequestBodyBusinessProfile'ProductDescription obj) : (Data.Aeson..=) "support_email" (postAccountRequestBodyBusinessProfile'SupportEmail obj) : (Data.Aeson..=) "support_phone" (postAccountRequestBodyBusinessProfile'SupportPhone obj) : (Data.Aeson..=) "support_url" (postAccountRequestBodyBusinessProfile'SupportUrl obj) : (Data.Aeson..=) "url" (postAccountRequestBodyBusinessProfile'Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "mcc" (postAccountRequestBodyBusinessProfile'Mcc obj) GHC.Base.<> ((Data.Aeson..=) "name" (postAccountRequestBodyBusinessProfile'Name obj) GHC.Base.<> ((Data.Aeson..=) "product_description" (postAccountRequestBodyBusinessProfile'ProductDescription obj) GHC.Base.<> ((Data.Aeson..=) "support_email" (postAccountRequestBodyBusinessProfile'SupportEmail obj) GHC.Base.<> ((Data.Aeson..=) "support_phone" (postAccountRequestBodyBusinessProfile'SupportPhone obj) GHC.Base.<> ((Data.Aeson..=) "support_url" (postAccountRequestBodyBusinessProfile'SupportUrl obj) GHC.Base.<> (Data.Aeson..=) "url" (postAccountRequestBodyBusinessProfile'Url obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyBusinessProfile'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyBusinessProfile'" (\obj -> ((((((GHC.Base.pure PostAccountRequestBodyBusinessProfile' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mcc")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "product_description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "support_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "support_phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "support_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "url"))
-- | Defines the enum schema postAccountRequestBodyBusiness_type\'
-- 
-- The business type.
data PostAccountRequestBodyBusinessType'
    = PostAccountRequestBodyBusinessType'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountRequestBodyBusinessType'EnumTyped Data.Text.Internal.Text
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
-- | Defines the data type for the schema postAccountRequestBodyCompany\'
-- 
-- Information about the company or business. This field is null unless \`business_type\` is set to \`company\`, \`government_entity\`, or \`non_profit\`.
data PostAccountRequestBodyCompany' = PostAccountRequestBodyCompany' {
  -- | address
  postAccountRequestBodyCompany'Address :: (GHC.Maybe.Maybe PostAccountRequestBodyCompany'Address')
  -- | address_kana
  , postAccountRequestBodyCompany'AddressKana :: (GHC.Maybe.Maybe PostAccountRequestBodyCompany'AddressKana')
  -- | address_kanji
  , postAccountRequestBodyCompany'AddressKanji :: (GHC.Maybe.Maybe PostAccountRequestBodyCompany'AddressKanji')
  -- | directors_provided
  , postAccountRequestBodyCompany'DirectorsProvided :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | executives_provided
  , postAccountRequestBodyCompany'ExecutivesProvided :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 100
  , postAccountRequestBodyCompany'Name :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | name_kana
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 100
  , postAccountRequestBodyCompany'NameKana :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | name_kanji
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 100
  , postAccountRequestBodyCompany'NameKanji :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | owners_provided
  , postAccountRequestBodyCompany'OwnersProvided :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | phone
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyCompany'Phone :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | structure
  , postAccountRequestBodyCompany'Structure :: (GHC.Maybe.Maybe PostAccountRequestBodyCompany'Structure')
  -- | tax_id
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyCompany'TaxId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | tax_id_registrar
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyCompany'TaxIdRegistrar :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | vat_id
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyCompany'VatId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | verification
  , postAccountRequestBodyCompany'Verification :: (GHC.Maybe.Maybe PostAccountRequestBodyCompany'Verification')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyCompany'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postAccountRequestBodyCompany'Address obj) : (Data.Aeson..=) "address_kana" (postAccountRequestBodyCompany'AddressKana obj) : (Data.Aeson..=) "address_kanji" (postAccountRequestBodyCompany'AddressKanji obj) : (Data.Aeson..=) "directors_provided" (postAccountRequestBodyCompany'DirectorsProvided obj) : (Data.Aeson..=) "executives_provided" (postAccountRequestBodyCompany'ExecutivesProvided obj) : (Data.Aeson..=) "name" (postAccountRequestBodyCompany'Name obj) : (Data.Aeson..=) "name_kana" (postAccountRequestBodyCompany'NameKana obj) : (Data.Aeson..=) "name_kanji" (postAccountRequestBodyCompany'NameKanji obj) : (Data.Aeson..=) "owners_provided" (postAccountRequestBodyCompany'OwnersProvided obj) : (Data.Aeson..=) "phone" (postAccountRequestBodyCompany'Phone obj) : (Data.Aeson..=) "structure" (postAccountRequestBodyCompany'Structure obj) : (Data.Aeson..=) "tax_id" (postAccountRequestBodyCompany'TaxId obj) : (Data.Aeson..=) "tax_id_registrar" (postAccountRequestBodyCompany'TaxIdRegistrar obj) : (Data.Aeson..=) "vat_id" (postAccountRequestBodyCompany'VatId obj) : (Data.Aeson..=) "verification" (postAccountRequestBodyCompany'Verification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postAccountRequestBodyCompany'Address obj) GHC.Base.<> ((Data.Aeson..=) "address_kana" (postAccountRequestBodyCompany'AddressKana obj) GHC.Base.<> ((Data.Aeson..=) "address_kanji" (postAccountRequestBodyCompany'AddressKanji obj) GHC.Base.<> ((Data.Aeson..=) "directors_provided" (postAccountRequestBodyCompany'DirectorsProvided obj) GHC.Base.<> ((Data.Aeson..=) "executives_provided" (postAccountRequestBodyCompany'ExecutivesProvided obj) GHC.Base.<> ((Data.Aeson..=) "name" (postAccountRequestBodyCompany'Name obj) GHC.Base.<> ((Data.Aeson..=) "name_kana" (postAccountRequestBodyCompany'NameKana obj) GHC.Base.<> ((Data.Aeson..=) "name_kanji" (postAccountRequestBodyCompany'NameKanji obj) GHC.Base.<> ((Data.Aeson..=) "owners_provided" (postAccountRequestBodyCompany'OwnersProvided obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postAccountRequestBodyCompany'Phone obj) GHC.Base.<> ((Data.Aeson..=) "structure" (postAccountRequestBodyCompany'Structure obj) GHC.Base.<> ((Data.Aeson..=) "tax_id" (postAccountRequestBodyCompany'TaxId obj) GHC.Base.<> ((Data.Aeson..=) "tax_id_registrar" (postAccountRequestBodyCompany'TaxIdRegistrar obj) GHC.Base.<> ((Data.Aeson..=) "vat_id" (postAccountRequestBodyCompany'VatId obj) GHC.Base.<> (Data.Aeson..=) "verification" (postAccountRequestBodyCompany'Verification obj)))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyCompany'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyCompany'" (\obj -> ((((((((((((((GHC.Base.pure PostAccountRequestBodyCompany' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "directors_provided")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "executives_provided")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owners_provided")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "structure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_id_registrar")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "vat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verification"))
-- | Defines the data type for the schema postAccountRequestBodyCompany\'Address\'
-- 
-- 
data PostAccountRequestBodyCompany'Address' = PostAccountRequestBodyCompany'Address' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 100
  postAccountRequestBodyCompany'Address'City :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyCompany'Address'Country :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 200
  , postAccountRequestBodyCompany'Address'Line1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 200
  , postAccountRequestBodyCompany'Address'Line2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyCompany'Address'PostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyCompany'Address'State :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyCompany'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountRequestBodyCompany'Address'City obj) : (Data.Aeson..=) "country" (postAccountRequestBodyCompany'Address'Country obj) : (Data.Aeson..=) "line1" (postAccountRequestBodyCompany'Address'Line1 obj) : (Data.Aeson..=) "line2" (postAccountRequestBodyCompany'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountRequestBodyCompany'Address'PostalCode obj) : (Data.Aeson..=) "state" (postAccountRequestBodyCompany'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountRequestBodyCompany'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountRequestBodyCompany'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountRequestBodyCompany'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountRequestBodyCompany'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountRequestBodyCompany'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postAccountRequestBodyCompany'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyCompany'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyCompany'Address'" (\obj -> (((((GHC.Base.pure PostAccountRequestBodyCompany'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
-- | Defines the data type for the schema postAccountRequestBodyCompany\'Address_kana\'
-- 
-- 
data PostAccountRequestBodyCompany'AddressKana' = PostAccountRequestBodyCompany'AddressKana' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountRequestBodyCompany'AddressKana'City :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyCompany'AddressKana'Country :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyCompany'AddressKana'Line1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyCompany'AddressKana'Line2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyCompany'AddressKana'PostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyCompany'AddressKana'State :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | town
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyCompany'AddressKana'Town :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyCompany'AddressKana'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountRequestBodyCompany'AddressKana'City obj) : (Data.Aeson..=) "country" (postAccountRequestBodyCompany'AddressKana'Country obj) : (Data.Aeson..=) "line1" (postAccountRequestBodyCompany'AddressKana'Line1 obj) : (Data.Aeson..=) "line2" (postAccountRequestBodyCompany'AddressKana'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountRequestBodyCompany'AddressKana'PostalCode obj) : (Data.Aeson..=) "state" (postAccountRequestBodyCompany'AddressKana'State obj) : (Data.Aeson..=) "town" (postAccountRequestBodyCompany'AddressKana'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountRequestBodyCompany'AddressKana'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountRequestBodyCompany'AddressKana'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountRequestBodyCompany'AddressKana'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountRequestBodyCompany'AddressKana'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountRequestBodyCompany'AddressKana'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountRequestBodyCompany'AddressKana'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountRequestBodyCompany'AddressKana'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyCompany'AddressKana'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyCompany'AddressKana'" (\obj -> ((((((GHC.Base.pure PostAccountRequestBodyCompany'AddressKana' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
-- | Defines the data type for the schema postAccountRequestBodyCompany\'Address_kanji\'
-- 
-- 
data PostAccountRequestBodyCompany'AddressKanji' = PostAccountRequestBodyCompany'AddressKanji' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountRequestBodyCompany'AddressKanji'City :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyCompany'AddressKanji'Country :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyCompany'AddressKanji'Line1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyCompany'AddressKanji'Line2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyCompany'AddressKanji'PostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyCompany'AddressKanji'State :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | town
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyCompany'AddressKanji'Town :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyCompany'AddressKanji'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountRequestBodyCompany'AddressKanji'City obj) : (Data.Aeson..=) "country" (postAccountRequestBodyCompany'AddressKanji'Country obj) : (Data.Aeson..=) "line1" (postAccountRequestBodyCompany'AddressKanji'Line1 obj) : (Data.Aeson..=) "line2" (postAccountRequestBodyCompany'AddressKanji'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountRequestBodyCompany'AddressKanji'PostalCode obj) : (Data.Aeson..=) "state" (postAccountRequestBodyCompany'AddressKanji'State obj) : (Data.Aeson..=) "town" (postAccountRequestBodyCompany'AddressKanji'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountRequestBodyCompany'AddressKanji'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountRequestBodyCompany'AddressKanji'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountRequestBodyCompany'AddressKanji'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountRequestBodyCompany'AddressKanji'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountRequestBodyCompany'AddressKanji'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountRequestBodyCompany'AddressKanji'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountRequestBodyCompany'AddressKanji'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyCompany'AddressKanji'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyCompany'AddressKanji'" (\obj -> ((((((GHC.Base.pure PostAccountRequestBodyCompany'AddressKanji' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
-- | Defines the enum schema postAccountRequestBodyCompany\'Structure\'
-- 
-- 
data PostAccountRequestBodyCompany'Structure'
    = PostAccountRequestBodyCompany'Structure'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountRequestBodyCompany'Structure'EnumTyped Data.Text.Internal.Text
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
-- | Defines the data type for the schema postAccountRequestBodyCompany\'Verification\'
-- 
-- 
data PostAccountRequestBodyCompany'Verification' = PostAccountRequestBodyCompany'Verification' {
  -- | document
  postAccountRequestBodyCompany'Verification'Document :: (GHC.Maybe.Maybe PostAccountRequestBodyCompany'Verification'Document')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyCompany'Verification'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "document" (postAccountRequestBodyCompany'Verification'Document obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "document" (postAccountRequestBodyCompany'Verification'Document obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyCompany'Verification'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyCompany'Verification'" (\obj -> GHC.Base.pure PostAccountRequestBodyCompany'Verification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document"))
-- | Defines the data type for the schema postAccountRequestBodyCompany\'Verification\'Document\'
-- 
-- 
data PostAccountRequestBodyCompany'Verification'Document' = PostAccountRequestBodyCompany'Verification'Document' {
  -- | back
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  postAccountRequestBodyCompany'Verification'Document'Back :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | front
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  , postAccountRequestBodyCompany'Verification'Document'Front :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyCompany'Verification'Document'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountRequestBodyCompany'Verification'Document'Back obj) : (Data.Aeson..=) "front" (postAccountRequestBodyCompany'Verification'Document'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountRequestBodyCompany'Verification'Document'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountRequestBodyCompany'Verification'Document'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyCompany'Verification'Document'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyCompany'Verification'Document'" (\obj -> (GHC.Base.pure PostAccountRequestBodyCompany'Verification'Document' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
-- | Defines the data type for the schema postAccountRequestBodyIndividual\'
-- 
-- Information about the person represented by the account. This field is null unless \`business_type\` is set to \`individual\`.
data PostAccountRequestBodyIndividual' = PostAccountRequestBodyIndividual' {
  -- | address
  postAccountRequestBodyIndividual'Address :: (GHC.Maybe.Maybe PostAccountRequestBodyIndividual'Address')
  -- | address_kana
  , postAccountRequestBodyIndividual'AddressKana :: (GHC.Maybe.Maybe PostAccountRequestBodyIndividual'AddressKana')
  -- | address_kanji
  , postAccountRequestBodyIndividual'AddressKanji :: (GHC.Maybe.Maybe PostAccountRequestBodyIndividual'AddressKanji')
  -- | dob
  , postAccountRequestBodyIndividual'Dob :: (GHC.Maybe.Maybe PostAccountRequestBodyIndividual'Dob'Variants)
  -- | email
  , postAccountRequestBodyIndividual'Email :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | first_name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 100
  , postAccountRequestBodyIndividual'FirstName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | first_name_kana
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyIndividual'FirstNameKana :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | first_name_kanji
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyIndividual'FirstNameKanji :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | gender
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyIndividual'Gender :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id_number
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyIndividual'IdNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | last_name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 100
  , postAccountRequestBodyIndividual'LastName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | last_name_kana
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyIndividual'LastNameKana :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | last_name_kanji
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyIndividual'LastNameKanji :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | maiden_name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyIndividual'MaidenName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | metadata
  , postAccountRequestBodyIndividual'Metadata :: (GHC.Maybe.Maybe PostAccountRequestBodyIndividual'Metadata')
  -- | phone
  , postAccountRequestBodyIndividual'Phone :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | ssn_last_4
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyIndividual'SsnLast_4 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | verification
  , postAccountRequestBodyIndividual'Verification :: (GHC.Maybe.Maybe PostAccountRequestBodyIndividual'Verification')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyIndividual'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postAccountRequestBodyIndividual'Address obj) : (Data.Aeson..=) "address_kana" (postAccountRequestBodyIndividual'AddressKana obj) : (Data.Aeson..=) "address_kanji" (postAccountRequestBodyIndividual'AddressKanji obj) : (Data.Aeson..=) "dob" (postAccountRequestBodyIndividual'Dob obj) : (Data.Aeson..=) "email" (postAccountRequestBodyIndividual'Email obj) : (Data.Aeson..=) "first_name" (postAccountRequestBodyIndividual'FirstName obj) : (Data.Aeson..=) "first_name_kana" (postAccountRequestBodyIndividual'FirstNameKana obj) : (Data.Aeson..=) "first_name_kanji" (postAccountRequestBodyIndividual'FirstNameKanji obj) : (Data.Aeson..=) "gender" (postAccountRequestBodyIndividual'Gender obj) : (Data.Aeson..=) "id_number" (postAccountRequestBodyIndividual'IdNumber obj) : (Data.Aeson..=) "last_name" (postAccountRequestBodyIndividual'LastName obj) : (Data.Aeson..=) "last_name_kana" (postAccountRequestBodyIndividual'LastNameKana obj) : (Data.Aeson..=) "last_name_kanji" (postAccountRequestBodyIndividual'LastNameKanji obj) : (Data.Aeson..=) "maiden_name" (postAccountRequestBodyIndividual'MaidenName obj) : (Data.Aeson..=) "metadata" (postAccountRequestBodyIndividual'Metadata obj) : (Data.Aeson..=) "phone" (postAccountRequestBodyIndividual'Phone obj) : (Data.Aeson..=) "ssn_last_4" (postAccountRequestBodyIndividual'SsnLast_4 obj) : (Data.Aeson..=) "verification" (postAccountRequestBodyIndividual'Verification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postAccountRequestBodyIndividual'Address obj) GHC.Base.<> ((Data.Aeson..=) "address_kana" (postAccountRequestBodyIndividual'AddressKana obj) GHC.Base.<> ((Data.Aeson..=) "address_kanji" (postAccountRequestBodyIndividual'AddressKanji obj) GHC.Base.<> ((Data.Aeson..=) "dob" (postAccountRequestBodyIndividual'Dob obj) GHC.Base.<> ((Data.Aeson..=) "email" (postAccountRequestBodyIndividual'Email obj) GHC.Base.<> ((Data.Aeson..=) "first_name" (postAccountRequestBodyIndividual'FirstName obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kana" (postAccountRequestBodyIndividual'FirstNameKana obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kanji" (postAccountRequestBodyIndividual'FirstNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "gender" (postAccountRequestBodyIndividual'Gender obj) GHC.Base.<> ((Data.Aeson..=) "id_number" (postAccountRequestBodyIndividual'IdNumber obj) GHC.Base.<> ((Data.Aeson..=) "last_name" (postAccountRequestBodyIndividual'LastName obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kana" (postAccountRequestBodyIndividual'LastNameKana obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kanji" (postAccountRequestBodyIndividual'LastNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "maiden_name" (postAccountRequestBodyIndividual'MaidenName obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postAccountRequestBodyIndividual'Metadata obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postAccountRequestBodyIndividual'Phone obj) GHC.Base.<> ((Data.Aeson..=) "ssn_last_4" (postAccountRequestBodyIndividual'SsnLast_4 obj) GHC.Base.<> (Data.Aeson..=) "verification" (postAccountRequestBodyIndividual'Verification obj))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyIndividual'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyIndividual'" (\obj -> (((((((((((((((((GHC.Base.pure PostAccountRequestBodyIndividual' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dob")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gender")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "maiden_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ssn_last_4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verification"))
-- | Defines the data type for the schema postAccountRequestBodyIndividual\'Address\'
-- 
-- 
data PostAccountRequestBodyIndividual'Address' = PostAccountRequestBodyIndividual'Address' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 100
  postAccountRequestBodyIndividual'Address'City :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyIndividual'Address'Country :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 200
  , postAccountRequestBodyIndividual'Address'Line1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 200
  , postAccountRequestBodyIndividual'Address'Line2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyIndividual'Address'PostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyIndividual'Address'State :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyIndividual'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountRequestBodyIndividual'Address'City obj) : (Data.Aeson..=) "country" (postAccountRequestBodyIndividual'Address'Country obj) : (Data.Aeson..=) "line1" (postAccountRequestBodyIndividual'Address'Line1 obj) : (Data.Aeson..=) "line2" (postAccountRequestBodyIndividual'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountRequestBodyIndividual'Address'PostalCode obj) : (Data.Aeson..=) "state" (postAccountRequestBodyIndividual'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountRequestBodyIndividual'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountRequestBodyIndividual'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountRequestBodyIndividual'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountRequestBodyIndividual'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountRequestBodyIndividual'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postAccountRequestBodyIndividual'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyIndividual'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyIndividual'Address'" (\obj -> (((((GHC.Base.pure PostAccountRequestBodyIndividual'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
-- | Defines the data type for the schema postAccountRequestBodyIndividual\'Address_kana\'
-- 
-- 
data PostAccountRequestBodyIndividual'AddressKana' = PostAccountRequestBodyIndividual'AddressKana' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountRequestBodyIndividual'AddressKana'City :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyIndividual'AddressKana'Country :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyIndividual'AddressKana'Line1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyIndividual'AddressKana'Line2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyIndividual'AddressKana'PostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyIndividual'AddressKana'State :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | town
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyIndividual'AddressKana'Town :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyIndividual'AddressKana'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountRequestBodyIndividual'AddressKana'City obj) : (Data.Aeson..=) "country" (postAccountRequestBodyIndividual'AddressKana'Country obj) : (Data.Aeson..=) "line1" (postAccountRequestBodyIndividual'AddressKana'Line1 obj) : (Data.Aeson..=) "line2" (postAccountRequestBodyIndividual'AddressKana'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountRequestBodyIndividual'AddressKana'PostalCode obj) : (Data.Aeson..=) "state" (postAccountRequestBodyIndividual'AddressKana'State obj) : (Data.Aeson..=) "town" (postAccountRequestBodyIndividual'AddressKana'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountRequestBodyIndividual'AddressKana'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountRequestBodyIndividual'AddressKana'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountRequestBodyIndividual'AddressKana'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountRequestBodyIndividual'AddressKana'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountRequestBodyIndividual'AddressKana'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountRequestBodyIndividual'AddressKana'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountRequestBodyIndividual'AddressKana'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyIndividual'AddressKana'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyIndividual'AddressKana'" (\obj -> ((((((GHC.Base.pure PostAccountRequestBodyIndividual'AddressKana' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
-- | Defines the data type for the schema postAccountRequestBodyIndividual\'Address_kanji\'
-- 
-- 
data PostAccountRequestBodyIndividual'AddressKanji' = PostAccountRequestBodyIndividual'AddressKanji' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountRequestBodyIndividual'AddressKanji'City :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyIndividual'AddressKanji'Country :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyIndividual'AddressKanji'Line1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyIndividual'AddressKanji'Line2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyIndividual'AddressKanji'PostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyIndividual'AddressKanji'State :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | town
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyIndividual'AddressKanji'Town :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyIndividual'AddressKanji'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountRequestBodyIndividual'AddressKanji'City obj) : (Data.Aeson..=) "country" (postAccountRequestBodyIndividual'AddressKanji'Country obj) : (Data.Aeson..=) "line1" (postAccountRequestBodyIndividual'AddressKanji'Line1 obj) : (Data.Aeson..=) "line2" (postAccountRequestBodyIndividual'AddressKanji'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountRequestBodyIndividual'AddressKanji'PostalCode obj) : (Data.Aeson..=) "state" (postAccountRequestBodyIndividual'AddressKanji'State obj) : (Data.Aeson..=) "town" (postAccountRequestBodyIndividual'AddressKanji'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountRequestBodyIndividual'AddressKanji'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountRequestBodyIndividual'AddressKanji'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountRequestBodyIndividual'AddressKanji'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountRequestBodyIndividual'AddressKanji'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountRequestBodyIndividual'AddressKanji'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountRequestBodyIndividual'AddressKanji'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountRequestBodyIndividual'AddressKanji'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyIndividual'AddressKanji'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyIndividual'AddressKanji'" (\obj -> ((((((GHC.Base.pure PostAccountRequestBodyIndividual'AddressKanji' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
-- | Defines the enum schema postAccountRequestBodyIndividual\'Dob\'OneOf1
-- 
-- 
data PostAccountRequestBodyIndividual'Dob'OneOf1
    = PostAccountRequestBodyIndividual'Dob'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountRequestBodyIndividual'Dob'OneOf1EnumTyped Data.Text.Internal.Text
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
-- | Defines the data type for the schema postAccountRequestBodyIndividual\'Dob\'OneOf2
-- 
-- 
data PostAccountRequestBodyIndividual'Dob'OneOf2 = PostAccountRequestBodyIndividual'Dob'OneOf2 {
  -- | day
  postAccountRequestBodyIndividual'Dob'OneOf2Day :: GHC.Integer.Type.Integer
  -- | month
  , postAccountRequestBodyIndividual'Dob'OneOf2Month :: GHC.Integer.Type.Integer
  -- | year
  , postAccountRequestBodyIndividual'Dob'OneOf2Year :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyIndividual'Dob'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "day" (postAccountRequestBodyIndividual'Dob'OneOf2Day obj) : (Data.Aeson..=) "month" (postAccountRequestBodyIndividual'Dob'OneOf2Month obj) : (Data.Aeson..=) "year" (postAccountRequestBodyIndividual'Dob'OneOf2Year obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "day" (postAccountRequestBodyIndividual'Dob'OneOf2Day obj) GHC.Base.<> ((Data.Aeson..=) "month" (postAccountRequestBodyIndividual'Dob'OneOf2Month obj) GHC.Base.<> (Data.Aeson..=) "year" (postAccountRequestBodyIndividual'Dob'OneOf2Year obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyIndividual'Dob'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyIndividual'Dob'OneOf2" (\obj -> ((GHC.Base.pure PostAccountRequestBodyIndividual'Dob'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "year"))
-- | Define the one-of schema postAccountRequestBodyIndividual\'Dob\'
-- 
-- 
data PostAccountRequestBodyIndividual'Dob'Variants
    = PostAccountRequestBodyIndividual'Dob'PostAccountRequestBodyIndividual'Dob'OneOf1 PostAccountRequestBodyIndividual'Dob'OneOf1
    | PostAccountRequestBodyIndividual'Dob'PostAccountRequestBodyIndividual'Dob'OneOf2 PostAccountRequestBodyIndividual'Dob'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountRequestBodyIndividual'Dob'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountRequestBodyIndividual'Dob'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postAccountRequestBodyIndividual\'Metadata\'
-- 
-- 
data PostAccountRequestBodyIndividual'Metadata' = PostAccountRequestBodyIndividual'Metadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyIndividual'Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyIndividual'Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyIndividual'Metadata'" (\obj -> GHC.Base.pure PostAccountRequestBodyIndividual'Metadata')
-- | Defines the data type for the schema postAccountRequestBodyIndividual\'Verification\'
-- 
-- 
data PostAccountRequestBodyIndividual'Verification' = PostAccountRequestBodyIndividual'Verification' {
  -- | additional_document
  postAccountRequestBodyIndividual'Verification'AdditionalDocument :: (GHC.Maybe.Maybe PostAccountRequestBodyIndividual'Verification'AdditionalDocument')
  -- | document
  , postAccountRequestBodyIndividual'Verification'Document :: (GHC.Maybe.Maybe PostAccountRequestBodyIndividual'Verification'Document')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyIndividual'Verification'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "additional_document" (postAccountRequestBodyIndividual'Verification'AdditionalDocument obj) : (Data.Aeson..=) "document" (postAccountRequestBodyIndividual'Verification'Document obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "additional_document" (postAccountRequestBodyIndividual'Verification'AdditionalDocument obj) GHC.Base.<> (Data.Aeson..=) "document" (postAccountRequestBodyIndividual'Verification'Document obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyIndividual'Verification'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyIndividual'Verification'" (\obj -> (GHC.Base.pure PostAccountRequestBodyIndividual'Verification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "additional_document")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document"))
-- | Defines the data type for the schema postAccountRequestBodyIndividual\'Verification\'Additional_document\'
-- 
-- 
data PostAccountRequestBodyIndividual'Verification'AdditionalDocument' = PostAccountRequestBodyIndividual'Verification'AdditionalDocument' {
  -- | back
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  postAccountRequestBodyIndividual'Verification'AdditionalDocument'Back :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | front
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  , postAccountRequestBodyIndividual'Verification'AdditionalDocument'Front :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyIndividual'Verification'AdditionalDocument'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountRequestBodyIndividual'Verification'AdditionalDocument'Back obj) : (Data.Aeson..=) "front" (postAccountRequestBodyIndividual'Verification'AdditionalDocument'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountRequestBodyIndividual'Verification'AdditionalDocument'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountRequestBodyIndividual'Verification'AdditionalDocument'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyIndividual'Verification'AdditionalDocument'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyIndividual'Verification'AdditionalDocument'" (\obj -> (GHC.Base.pure PostAccountRequestBodyIndividual'Verification'AdditionalDocument' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
-- | Defines the data type for the schema postAccountRequestBodyIndividual\'Verification\'Document\'
-- 
-- 
data PostAccountRequestBodyIndividual'Verification'Document' = PostAccountRequestBodyIndividual'Verification'Document' {
  -- | back
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  postAccountRequestBodyIndividual'Verification'Document'Back :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | front
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  , postAccountRequestBodyIndividual'Verification'Document'Front :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyIndividual'Verification'Document'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountRequestBodyIndividual'Verification'Document'Back obj) : (Data.Aeson..=) "front" (postAccountRequestBodyIndividual'Verification'Document'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountRequestBodyIndividual'Verification'Document'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountRequestBodyIndividual'Verification'Document'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyIndividual'Verification'Document'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyIndividual'Verification'Document'" (\obj -> (GHC.Base.pure PostAccountRequestBodyIndividual'Verification'Document' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
-- | Defines the data type for the schema postAccountRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostAccountRequestBodyMetadata' = PostAccountRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyMetadata'" (\obj -> GHC.Base.pure PostAccountRequestBodyMetadata')
-- | Defines the enum schema postAccountRequestBodyRequested_capabilities\'
-- 
-- 
data PostAccountRequestBodyRequestedCapabilities'
    = PostAccountRequestBodyRequestedCapabilities'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountRequestBodyRequestedCapabilities'EnumTyped Data.Text.Internal.Text
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
-- | Defines the data type for the schema postAccountRequestBodySettings\'
-- 
-- Options for customizing how the account functions within Stripe.
data PostAccountRequestBodySettings' = PostAccountRequestBodySettings' {
  -- | branding
  postAccountRequestBodySettings'Branding :: (GHC.Maybe.Maybe PostAccountRequestBodySettings'Branding')
  -- | card_payments
  , postAccountRequestBodySettings'CardPayments :: (GHC.Maybe.Maybe PostAccountRequestBodySettings'CardPayments')
  -- | payments
  , postAccountRequestBodySettings'Payments :: (GHC.Maybe.Maybe PostAccountRequestBodySettings'Payments')
  -- | payouts
  , postAccountRequestBodySettings'Payouts :: (GHC.Maybe.Maybe PostAccountRequestBodySettings'Payouts')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodySettings'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "branding" (postAccountRequestBodySettings'Branding obj) : (Data.Aeson..=) "card_payments" (postAccountRequestBodySettings'CardPayments obj) : (Data.Aeson..=) "payments" (postAccountRequestBodySettings'Payments obj) : (Data.Aeson..=) "payouts" (postAccountRequestBodySettings'Payouts obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "branding" (postAccountRequestBodySettings'Branding obj) GHC.Base.<> ((Data.Aeson..=) "card_payments" (postAccountRequestBodySettings'CardPayments obj) GHC.Base.<> ((Data.Aeson..=) "payments" (postAccountRequestBodySettings'Payments obj) GHC.Base.<> (Data.Aeson..=) "payouts" (postAccountRequestBodySettings'Payouts obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodySettings'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodySettings'" (\obj -> (((GHC.Base.pure PostAccountRequestBodySettings' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "branding")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card_payments")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payments")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payouts"))
-- | Defines the data type for the schema postAccountRequestBodySettings\'Branding\'
-- 
-- 
data PostAccountRequestBodySettings'Branding' = PostAccountRequestBodySettings'Branding' {
  -- | icon
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountRequestBodySettings'Branding'Icon :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | logo
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodySettings'Branding'Logo :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | primary_color
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodySettings'Branding'PrimaryColor :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodySettings'Branding'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "icon" (postAccountRequestBodySettings'Branding'Icon obj) : (Data.Aeson..=) "logo" (postAccountRequestBodySettings'Branding'Logo obj) : (Data.Aeson..=) "primary_color" (postAccountRequestBodySettings'Branding'PrimaryColor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "icon" (postAccountRequestBodySettings'Branding'Icon obj) GHC.Base.<> ((Data.Aeson..=) "logo" (postAccountRequestBodySettings'Branding'Logo obj) GHC.Base.<> (Data.Aeson..=) "primary_color" (postAccountRequestBodySettings'Branding'PrimaryColor obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodySettings'Branding'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodySettings'Branding'" (\obj -> ((GHC.Base.pure PostAccountRequestBodySettings'Branding' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "icon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "logo")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "primary_color"))
-- | Defines the data type for the schema postAccountRequestBodySettings\'Card_payments\'
-- 
-- 
data PostAccountRequestBodySettings'CardPayments' = PostAccountRequestBodySettings'CardPayments' {
  -- | decline_on
  postAccountRequestBodySettings'CardPayments'DeclineOn :: (GHC.Maybe.Maybe PostAccountRequestBodySettings'CardPayments'DeclineOn')
  -- | statement_descriptor_prefix
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 10
  , postAccountRequestBodySettings'CardPayments'StatementDescriptorPrefix :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodySettings'CardPayments'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "decline_on" (postAccountRequestBodySettings'CardPayments'DeclineOn obj) : (Data.Aeson..=) "statement_descriptor_prefix" (postAccountRequestBodySettings'CardPayments'StatementDescriptorPrefix obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "decline_on" (postAccountRequestBodySettings'CardPayments'DeclineOn obj) GHC.Base.<> (Data.Aeson..=) "statement_descriptor_prefix" (postAccountRequestBodySettings'CardPayments'StatementDescriptorPrefix obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodySettings'CardPayments'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodySettings'CardPayments'" (\obj -> (GHC.Base.pure PostAccountRequestBodySettings'CardPayments' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "decline_on")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_prefix"))
-- | Defines the data type for the schema postAccountRequestBodySettings\'Card_payments\'Decline_on\'
-- 
-- 
data PostAccountRequestBodySettings'CardPayments'DeclineOn' = PostAccountRequestBodySettings'CardPayments'DeclineOn' {
  -- | avs_failure
  postAccountRequestBodySettings'CardPayments'DeclineOn'AvsFailure :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | cvc_failure
  , postAccountRequestBodySettings'CardPayments'DeclineOn'CvcFailure :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodySettings'CardPayments'DeclineOn'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "avs_failure" (postAccountRequestBodySettings'CardPayments'DeclineOn'AvsFailure obj) : (Data.Aeson..=) "cvc_failure" (postAccountRequestBodySettings'CardPayments'DeclineOn'CvcFailure obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "avs_failure" (postAccountRequestBodySettings'CardPayments'DeclineOn'AvsFailure obj) GHC.Base.<> (Data.Aeson..=) "cvc_failure" (postAccountRequestBodySettings'CardPayments'DeclineOn'CvcFailure obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodySettings'CardPayments'DeclineOn'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodySettings'CardPayments'DeclineOn'" (\obj -> (GHC.Base.pure PostAccountRequestBodySettings'CardPayments'DeclineOn' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "avs_failure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc_failure"))
-- | Defines the data type for the schema postAccountRequestBodySettings\'Payments\'
-- 
-- 
data PostAccountRequestBodySettings'Payments' = PostAccountRequestBodySettings'Payments' {
  -- | statement_descriptor
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 22
  postAccountRequestBodySettings'Payments'StatementDescriptor :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | statement_descriptor_kana
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 22
  , postAccountRequestBodySettings'Payments'StatementDescriptorKana :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | statement_descriptor_kanji
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 22
  , postAccountRequestBodySettings'Payments'StatementDescriptorKanji :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodySettings'Payments'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "statement_descriptor" (postAccountRequestBodySettings'Payments'StatementDescriptor obj) : (Data.Aeson..=) "statement_descriptor_kana" (postAccountRequestBodySettings'Payments'StatementDescriptorKana obj) : (Data.Aeson..=) "statement_descriptor_kanji" (postAccountRequestBodySettings'Payments'StatementDescriptorKanji obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "statement_descriptor" (postAccountRequestBodySettings'Payments'StatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor_kana" (postAccountRequestBodySettings'Payments'StatementDescriptorKana obj) GHC.Base.<> (Data.Aeson..=) "statement_descriptor_kanji" (postAccountRequestBodySettings'Payments'StatementDescriptorKanji obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodySettings'Payments'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodySettings'Payments'" (\obj -> ((GHC.Base.pure PostAccountRequestBodySettings'Payments' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_kanji"))
-- | Defines the data type for the schema postAccountRequestBodySettings\'Payouts\'
-- 
-- 
data PostAccountRequestBodySettings'Payouts' = PostAccountRequestBodySettings'Payouts' {
  -- | debit_negative_balances
  postAccountRequestBodySettings'Payouts'DebitNegativeBalances :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | schedule
  , postAccountRequestBodySettings'Payouts'Schedule :: (GHC.Maybe.Maybe PostAccountRequestBodySettings'Payouts'Schedule')
  -- | statement_descriptor
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 22
  , postAccountRequestBodySettings'Payouts'StatementDescriptor :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodySettings'Payouts'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "debit_negative_balances" (postAccountRequestBodySettings'Payouts'DebitNegativeBalances obj) : (Data.Aeson..=) "schedule" (postAccountRequestBodySettings'Payouts'Schedule obj) : (Data.Aeson..=) "statement_descriptor" (postAccountRequestBodySettings'Payouts'StatementDescriptor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "debit_negative_balances" (postAccountRequestBodySettings'Payouts'DebitNegativeBalances obj) GHC.Base.<> ((Data.Aeson..=) "schedule" (postAccountRequestBodySettings'Payouts'Schedule obj) GHC.Base.<> (Data.Aeson..=) "statement_descriptor" (postAccountRequestBodySettings'Payouts'StatementDescriptor obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodySettings'Payouts'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodySettings'Payouts'" (\obj -> ((GHC.Base.pure PostAccountRequestBodySettings'Payouts' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "debit_negative_balances")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "schedule")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor"))
-- | Defines the data type for the schema postAccountRequestBodySettings\'Payouts\'Schedule\'
-- 
-- 
data PostAccountRequestBodySettings'Payouts'Schedule' = PostAccountRequestBodySettings'Payouts'Schedule' {
  -- | delay_days
  postAccountRequestBodySettings'Payouts'Schedule'DelayDays :: (GHC.Maybe.Maybe PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'Variants)
  -- | interval
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodySettings'Payouts'Schedule'Interval :: (GHC.Maybe.Maybe PostAccountRequestBodySettings'Payouts'Schedule'Interval')
  -- | monthly_anchor
  , postAccountRequestBodySettings'Payouts'Schedule'MonthlyAnchor :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | weekly_anchor
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor :: (GHC.Maybe.Maybe PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodySettings'Payouts'Schedule'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "delay_days" (postAccountRequestBodySettings'Payouts'Schedule'DelayDays obj) : (Data.Aeson..=) "interval" (postAccountRequestBodySettings'Payouts'Schedule'Interval obj) : (Data.Aeson..=) "monthly_anchor" (postAccountRequestBodySettings'Payouts'Schedule'MonthlyAnchor obj) : (Data.Aeson..=) "weekly_anchor" (postAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "delay_days" (postAccountRequestBodySettings'Payouts'Schedule'DelayDays obj) GHC.Base.<> ((Data.Aeson..=) "interval" (postAccountRequestBodySettings'Payouts'Schedule'Interval obj) GHC.Base.<> ((Data.Aeson..=) "monthly_anchor" (postAccountRequestBodySettings'Payouts'Schedule'MonthlyAnchor obj) GHC.Base.<> (Data.Aeson..=) "weekly_anchor" (postAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodySettings'Payouts'Schedule'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodySettings'Payouts'Schedule'" (\obj -> (((GHC.Base.pure PostAccountRequestBodySettings'Payouts'Schedule' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "delay_days")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "monthly_anchor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "weekly_anchor"))
-- | Defines the enum schema postAccountRequestBodySettings\'Payouts\'Schedule\'Delay_days\'OneOf1
-- 
-- 
data PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1
    = PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumTyped Data.Text.Internal.Text
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
-- | Define the one-of schema postAccountRequestBodySettings\'Payouts\'Schedule\'Delay_days\'
-- 
-- 
data PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'Variants
    = PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1 PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1
    | PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'Integer GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountRequestBodySettings'Payouts'Schedule'DelayDays'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postAccountRequestBodySettings\'Payouts\'Schedule\'Interval\'
-- 
-- 
data PostAccountRequestBodySettings'Payouts'Schedule'Interval'
    = PostAccountRequestBodySettings'Payouts'Schedule'Interval'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountRequestBodySettings'Payouts'Schedule'Interval'EnumTyped Data.Text.Internal.Text
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
-- | Defines the enum schema postAccountRequestBodySettings\'Payouts\'Schedule\'Weekly_anchor\'
-- 
-- 
data PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'
    = PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumTyped Data.Text.Internal.Text
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
-- | Defines the data type for the schema postAccountRequestBodyTos_acceptance\'
-- 
-- Details on the account\'s acceptance of the [Stripe Services Agreement](https:\/\/stripe.com\/docs\/connect\/updating-accounts\#tos-acceptance).
data PostAccountRequestBodyTosAcceptance' = PostAccountRequestBodyTosAcceptance' {
  -- | date
  postAccountRequestBodyTosAcceptance'Date :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | ip
  , postAccountRequestBodyTosAcceptance'Ip :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | user_agent
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountRequestBodyTosAcceptance'UserAgent :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountRequestBodyTosAcceptance'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "date" (postAccountRequestBodyTosAcceptance'Date obj) : (Data.Aeson..=) "ip" (postAccountRequestBodyTosAcceptance'Ip obj) : (Data.Aeson..=) "user_agent" (postAccountRequestBodyTosAcceptance'UserAgent obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "date" (postAccountRequestBodyTosAcceptance'Date obj) GHC.Base.<> ((Data.Aeson..=) "ip" (postAccountRequestBodyTosAcceptance'Ip obj) GHC.Base.<> (Data.Aeson..=) "user_agent" (postAccountRequestBodyTosAcceptance'UserAgent obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountRequestBodyTosAcceptance'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountRequestBodyTosAcceptance'" (\obj -> ((GHC.Base.pure PostAccountRequestBodyTosAcceptance' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "user_agent"))
-- | Represents a response of the operation 'postAccount'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostAccountResponseError' is used.
data PostAccountResponse =                   
   PostAccountResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostAccountResponse200 Account           -- ^ Successful response.
  | PostAccountResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
