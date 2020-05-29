{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getRecipientsId
module StripeAPI.Operations.GetRecipientsId where

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

-- | > GET /v1/recipients/{id}
-- 
-- \<p>Retrieves the details of an existing recipient. You need only supply the unique recipient identifier that was returned upon recipient creation.\<\/p>
getRecipientsId :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                             -- ^ expand: Specifies which fields in the response should be expanded.
  -> GHC.Base.String                                                                                                             -- ^ id | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe GetRecipientsIdRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetRecipientsIdResponse)) -- ^ Monad containing the result of the operation
getRecipientsId config
                expand
                id
                body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetRecipientsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetRecipientsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                               GetRecipientsIdResponseBody200)
                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetRecipientsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                 Error)
                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/recipients/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 'x',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 'p',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 'a',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 'n',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 'd'],
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/recipients/{id}
-- 
-- The same as 'getRecipientsId' but returns the raw 'Data.ByteString.Char8.ByteString'
getRecipientsIdRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                    StripeAPI.Common.SecurityScheme s) =>
                      StripeAPI.Common.Configuration s ->
                      GHC.Maybe.Maybe GHC.Base.String ->
                      GHC.Base.String ->
                      GHC.Maybe.Maybe GetRecipientsIdRequestBody ->
                      m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getRecipientsIdRaw config
                   expand
                   id
                   body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/recipients/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                                    'x',
                                                                                                                                                                                                                                                                                                                                                                                                    'p',
                                                                                                                                                                                                                                                                                                                                                                                                    'a',
                                                                                                                                                                                                                                                                                                                                                                                                    'n',
                                                                                                                                                                                                                                                                                                                                                                                                    'd'],
                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/recipients/{id}
-- 
-- Monadic version of 'getRecipientsId' (use with 'StripeAPI.Common.runWithConfiguration')
getRecipientsIdM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                  StripeAPI.Common.SecurityScheme s) =>
                    GHC.Maybe.Maybe GHC.Base.String ->
                    GHC.Base.String ->
                    GHC.Maybe.Maybe GetRecipientsIdRequestBody ->
                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                       m
                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                           (Network.HTTP.Client.Types.Response GetRecipientsIdResponse))
getRecipientsIdM expand
                 id
                 body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetRecipientsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetRecipientsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                GetRecipientsIdResponseBody200)
                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetRecipientsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/recipients/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            'x',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            'p',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            'a',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            'n',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            'd'],
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/recipients/{id}
-- 
-- Monadic version of 'getRecipientsIdRaw' (use with 'StripeAPI.Common.runWithConfiguration')
getRecipientsIdRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                     StripeAPI.Common.SecurityScheme s) =>
                       GHC.Maybe.Maybe GHC.Base.String ->
                       GHC.Base.String ->
                       GHC.Maybe.Maybe GetRecipientsIdRequestBody ->
                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                          m
                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getRecipientsIdRawM expand
                    id
                    body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/recipients/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                               'x',
                                                                                                                                                                                                                                                                                                                                                                                               'p',
                                                                                                                                                                                                                                                                                                                                                                                               'a',
                                                                                                                                                                                                                                                                                                                                                                                               'n',
                                                                                                                                                                                                                                                                                                                                                                                               'd'],
                                                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema getRecipientsIdRequestBody
-- 
-- 
data GetRecipientsIdRequestBody = GetRecipientsIdRequestBody {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetRecipientsIdRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetRecipientsIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetRecipientsIdRequestBody" (\obj -> GHC.Base.pure GetRecipientsIdRequestBody)
-- | Represents a response of the operation 'getRecipientsId'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetRecipientsIdResponseError' is used.
data GetRecipientsIdResponse =                                 
   GetRecipientsIdResponseError GHC.Base.String                -- ^ Means either no matching case available or a parse error
  | GetRecipientsIdResponse200 GetRecipientsIdResponseBody200  -- ^ Successful response.
  | GetRecipientsIdResponseDefault Error                       -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema GetRecipientsIdResponseBody200
-- 
-- 
data GetRecipientsIdResponseBody200 = GetRecipientsIdResponseBody200 {
  -- | active_account: Hash describing the current account on the recipient, if there is one.
  getRecipientsIdResponseBody200ActiveAccount :: (GHC.Maybe.Maybe GetRecipientsIdResponseBody200ActiveAccount')
  -- | cards: 
  , getRecipientsIdResponseBody200Cards :: (GHC.Maybe.Maybe GetRecipientsIdResponseBody200Cards')
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  , getRecipientsIdResponseBody200Created :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | default_card: The default card to use for creating transfers to this recipient.
  , getRecipientsIdResponseBody200DefaultCard :: (GHC.Maybe.Maybe GetRecipientsIdResponseBody200DefaultCard'Variants)
  -- | deleted: Always true for a deleted object
  , getRecipientsIdResponseBody200Deleted :: (GHC.Maybe.Maybe GetRecipientsIdResponseBody200Deleted')
  -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getRecipientsIdResponseBody200Description :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | email
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getRecipientsIdResponseBody200Email :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getRecipientsIdResponseBody200Id :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , getRecipientsIdResponseBody200Livemode :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  , getRecipientsIdResponseBody200Metadata :: (GHC.Maybe.Maybe GetRecipientsIdResponseBody200Metadata')
  -- | migrated_to: The ID of the [Custom account](https:\/\/stripe.com\/docs\/connect\/custom-accounts) this recipient was migrated to. If set, the recipient can no longer be updated, nor can transfers be made to it: use the Custom account instead.
  , getRecipientsIdResponseBody200MigratedTo :: (GHC.Maybe.Maybe GetRecipientsIdResponseBody200MigratedTo'Variants)
  -- | name: Full, legal name of the recipient.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getRecipientsIdResponseBody200Name :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , getRecipientsIdResponseBody200Object :: (GHC.Maybe.Maybe GetRecipientsIdResponseBody200Object')
  -- | rolled_back_from
  , getRecipientsIdResponseBody200RolledBackFrom :: (GHC.Maybe.Maybe GetRecipientsIdResponseBody200RolledBackFrom'Variants)
  -- | type: Type of the recipient, one of \`individual\` or \`corporation\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getRecipientsIdResponseBody200Type :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetRecipientsIdResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "active_account" (getRecipientsIdResponseBody200ActiveAccount obj) : (Data.Aeson..=) "cards" (getRecipientsIdResponseBody200Cards obj) : (Data.Aeson..=) "created" (getRecipientsIdResponseBody200Created obj) : (Data.Aeson..=) "default_card" (getRecipientsIdResponseBody200DefaultCard obj) : (Data.Aeson..=) "deleted" (getRecipientsIdResponseBody200Deleted obj) : (Data.Aeson..=) "description" (getRecipientsIdResponseBody200Description obj) : (Data.Aeson..=) "email" (getRecipientsIdResponseBody200Email obj) : (Data.Aeson..=) "id" (getRecipientsIdResponseBody200Id obj) : (Data.Aeson..=) "livemode" (getRecipientsIdResponseBody200Livemode obj) : (Data.Aeson..=) "metadata" (getRecipientsIdResponseBody200Metadata obj) : (Data.Aeson..=) "migrated_to" (getRecipientsIdResponseBody200MigratedTo obj) : (Data.Aeson..=) "name" (getRecipientsIdResponseBody200Name obj) : (Data.Aeson..=) "object" (getRecipientsIdResponseBody200Object obj) : (Data.Aeson..=) "rolled_back_from" (getRecipientsIdResponseBody200RolledBackFrom obj) : (Data.Aeson..=) "type" (getRecipientsIdResponseBody200Type obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "active_account" (getRecipientsIdResponseBody200ActiveAccount obj) GHC.Base.<> ((Data.Aeson..=) "cards" (getRecipientsIdResponseBody200Cards obj) GHC.Base.<> ((Data.Aeson..=) "created" (getRecipientsIdResponseBody200Created obj) GHC.Base.<> ((Data.Aeson..=) "default_card" (getRecipientsIdResponseBody200DefaultCard obj) GHC.Base.<> ((Data.Aeson..=) "deleted" (getRecipientsIdResponseBody200Deleted obj) GHC.Base.<> ((Data.Aeson..=) "description" (getRecipientsIdResponseBody200Description obj) GHC.Base.<> ((Data.Aeson..=) "email" (getRecipientsIdResponseBody200Email obj) GHC.Base.<> ((Data.Aeson..=) "id" (getRecipientsIdResponseBody200Id obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (getRecipientsIdResponseBody200Livemode obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (getRecipientsIdResponseBody200Metadata obj) GHC.Base.<> ((Data.Aeson..=) "migrated_to" (getRecipientsIdResponseBody200MigratedTo obj) GHC.Base.<> ((Data.Aeson..=) "name" (getRecipientsIdResponseBody200Name obj) GHC.Base.<> ((Data.Aeson..=) "object" (getRecipientsIdResponseBody200Object obj) GHC.Base.<> ((Data.Aeson..=) "rolled_back_from" (getRecipientsIdResponseBody200RolledBackFrom obj) GHC.Base.<> (Data.Aeson..=) "type" (getRecipientsIdResponseBody200Type obj)))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetRecipientsIdResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetRecipientsIdResponseBody200" (\obj -> ((((((((((((((GHC.Base.pure GetRecipientsIdResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "active_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cards")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "migrated_to")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "rolled_back_from")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type"))
-- | Defines the data type for the schema GetRecipientsIdResponseBody200Active_account\'
-- 
-- Hash describing the current account on the recipient, if there is one.
data GetRecipientsIdResponseBody200ActiveAccount' = GetRecipientsIdResponseBody200ActiveAccount' {
  -- | account: The ID of the account that the bank account is associated with.
  getRecipientsIdResponseBody200ActiveAccount'Account :: (GHC.Maybe.Maybe GetRecipientsIdResponseBody200ActiveAccount'Account'Variants)
  -- | account_holder_name: The name of the person or business that owns the bank account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getRecipientsIdResponseBody200ActiveAccount'AccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | account_holder_type: The type of entity that holds the account. This can be either \`individual\` or \`company\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getRecipientsIdResponseBody200ActiveAccount'AccountHolderType :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | bank_name: Name of the bank associated with the routing number (e.g., \`WELLS FARGO\`).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getRecipientsIdResponseBody200ActiveAccount'BankName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country: Two-letter ISO code representing the country the bank account is located in.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getRecipientsIdResponseBody200ActiveAccount'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | currency: Three-letter [ISO code for the currency](https:\/\/stripe.com\/docs\/payouts) paid out to the bank account.
  , getRecipientsIdResponseBody200ActiveAccount'Currency :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | customer: The ID of the customer that the bank account is associated with.
  , getRecipientsIdResponseBody200ActiveAccount'Customer :: (GHC.Maybe.Maybe GetRecipientsIdResponseBody200ActiveAccount'Customer'Variants)
  -- | default_for_currency: Whether this bank account is the default external account for its currency.
  , getRecipientsIdResponseBody200ActiveAccount'DefaultForCurrency :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | fingerprint: Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getRecipientsIdResponseBody200ActiveAccount'Fingerprint :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getRecipientsIdResponseBody200ActiveAccount'Id :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | last4: The last four digits of the bank account number.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getRecipientsIdResponseBody200ActiveAccount'Last4 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  , getRecipientsIdResponseBody200ActiveAccount'Metadata :: (GHC.Maybe.Maybe GetRecipientsIdResponseBody200ActiveAccount'Metadata')
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , getRecipientsIdResponseBody200ActiveAccount'Object :: (GHC.Maybe.Maybe GetRecipientsIdResponseBody200ActiveAccount'Object')
  -- | routing_number: The routing transit number for the bank account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getRecipientsIdResponseBody200ActiveAccount'RoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | status: For bank accounts, possible values are \`new\`, \`validated\`, \`verified\`, \`verification_failed\`, or \`errored\`. A bank account that hasn\'t had any activity or validation performed is \`new\`. If Stripe can determine that the bank account exists, its status will be \`validated\`. Note that there often isn’t enough information to know (e.g., for smaller credit unions), and the validation is not always run. If customer bank account verification has succeeded, the bank account status will be \`verified\`. If the verification failed for any reason, such as microdeposit failure, the status will be \`verification_failed\`. If a transfer sent to this bank account fails, we\'ll set the status to \`errored\` and will not continue to send transfers until the bank details are updated.
  -- 
  -- For external accounts, possible values are \`new\` and \`errored\`. Validations aren\'t run against external accounts because they\'re only used for payouts. This means the other statuses don\'t apply. If a transfer fails, the status is set to \`errored\` and transfers are stopped until account details are updated.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getRecipientsIdResponseBody200ActiveAccount'Status :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetRecipientsIdResponseBody200ActiveAccount'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account" (getRecipientsIdResponseBody200ActiveAccount'Account obj) : (Data.Aeson..=) "account_holder_name" (getRecipientsIdResponseBody200ActiveAccount'AccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (getRecipientsIdResponseBody200ActiveAccount'AccountHolderType obj) : (Data.Aeson..=) "bank_name" (getRecipientsIdResponseBody200ActiveAccount'BankName obj) : (Data.Aeson..=) "country" (getRecipientsIdResponseBody200ActiveAccount'Country obj) : (Data.Aeson..=) "currency" (getRecipientsIdResponseBody200ActiveAccount'Currency obj) : (Data.Aeson..=) "customer" (getRecipientsIdResponseBody200ActiveAccount'Customer obj) : (Data.Aeson..=) "default_for_currency" (getRecipientsIdResponseBody200ActiveAccount'DefaultForCurrency obj) : (Data.Aeson..=) "fingerprint" (getRecipientsIdResponseBody200ActiveAccount'Fingerprint obj) : (Data.Aeson..=) "id" (getRecipientsIdResponseBody200ActiveAccount'Id obj) : (Data.Aeson..=) "last4" (getRecipientsIdResponseBody200ActiveAccount'Last4 obj) : (Data.Aeson..=) "metadata" (getRecipientsIdResponseBody200ActiveAccount'Metadata obj) : (Data.Aeson..=) "object" (getRecipientsIdResponseBody200ActiveAccount'Object obj) : (Data.Aeson..=) "routing_number" (getRecipientsIdResponseBody200ActiveAccount'RoutingNumber obj) : (Data.Aeson..=) "status" (getRecipientsIdResponseBody200ActiveAccount'Status obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account" (getRecipientsIdResponseBody200ActiveAccount'Account obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_name" (getRecipientsIdResponseBody200ActiveAccount'AccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (getRecipientsIdResponseBody200ActiveAccount'AccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "bank_name" (getRecipientsIdResponseBody200ActiveAccount'BankName obj) GHC.Base.<> ((Data.Aeson..=) "country" (getRecipientsIdResponseBody200ActiveAccount'Country obj) GHC.Base.<> ((Data.Aeson..=) "currency" (getRecipientsIdResponseBody200ActiveAccount'Currency obj) GHC.Base.<> ((Data.Aeson..=) "customer" (getRecipientsIdResponseBody200ActiveAccount'Customer obj) GHC.Base.<> ((Data.Aeson..=) "default_for_currency" (getRecipientsIdResponseBody200ActiveAccount'DefaultForCurrency obj) GHC.Base.<> ((Data.Aeson..=) "fingerprint" (getRecipientsIdResponseBody200ActiveAccount'Fingerprint obj) GHC.Base.<> ((Data.Aeson..=) "id" (getRecipientsIdResponseBody200ActiveAccount'Id obj) GHC.Base.<> ((Data.Aeson..=) "last4" (getRecipientsIdResponseBody200ActiveAccount'Last4 obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (getRecipientsIdResponseBody200ActiveAccount'Metadata obj) GHC.Base.<> ((Data.Aeson..=) "object" (getRecipientsIdResponseBody200ActiveAccount'Object obj) GHC.Base.<> ((Data.Aeson..=) "routing_number" (getRecipientsIdResponseBody200ActiveAccount'RoutingNumber obj) GHC.Base.<> (Data.Aeson..=) "status" (getRecipientsIdResponseBody200ActiveAccount'Status obj)))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetRecipientsIdResponseBody200ActiveAccount'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetRecipientsIdResponseBody200ActiveAccount'" (\obj -> ((((((((((((((GHC.Base.pure GetRecipientsIdResponseBody200ActiveAccount' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_for_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "status"))
-- | Define the one-of schema GetRecipientsIdResponseBody200Active_account\'Account\'
-- 
-- The ID of the account that the bank account is associated with.
data GetRecipientsIdResponseBody200ActiveAccount'Account'Variants
    = GetRecipientsIdResponseBody200ActiveAccount'Account'Account Account
    | GetRecipientsIdResponseBody200ActiveAccount'Account'String GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON GetRecipientsIdResponseBody200ActiveAccount'Account'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON GetRecipientsIdResponseBody200ActiveAccount'Account'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Define the one-of schema GetRecipientsIdResponseBody200Active_account\'Customer\'
-- 
-- The ID of the customer that the bank account is associated with.
data GetRecipientsIdResponseBody200ActiveAccount'Customer'Variants
    = GetRecipientsIdResponseBody200ActiveAccount'Customer'Customer Customer
    | GetRecipientsIdResponseBody200ActiveAccount'Customer'DeletedCustomer DeletedCustomer
    | GetRecipientsIdResponseBody200ActiveAccount'Customer'String GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON GetRecipientsIdResponseBody200ActiveAccount'Customer'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON GetRecipientsIdResponseBody200ActiveAccount'Customer'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema GetRecipientsIdResponseBody200Active_account\'Metadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
data GetRecipientsIdResponseBody200ActiveAccount'Metadata' = GetRecipientsIdResponseBody200ActiveAccount'Metadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetRecipientsIdResponseBody200ActiveAccount'Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetRecipientsIdResponseBody200ActiveAccount'Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetRecipientsIdResponseBody200ActiveAccount'Metadata'" (\obj -> GHC.Base.pure GetRecipientsIdResponseBody200ActiveAccount'Metadata')
-- | Defines the enum schema GetRecipientsIdResponseBody200Active_account\'Object\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data GetRecipientsIdResponseBody200ActiveAccount'Object'
    = GetRecipientsIdResponseBody200ActiveAccount'Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetRecipientsIdResponseBody200ActiveAccount'Object'EnumTyped GHC.Base.String
    | GetRecipientsIdResponseBody200ActiveAccount'Object'EnumStringBankAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetRecipientsIdResponseBody200ActiveAccount'Object'
    where toJSON (GetRecipientsIdResponseBody200ActiveAccount'Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetRecipientsIdResponseBody200ActiveAccount'Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetRecipientsIdResponseBody200ActiveAccount'Object'EnumStringBankAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account"
instance Data.Aeson.FromJSON GetRecipientsIdResponseBody200ActiveAccount'Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account")
                                          then GetRecipientsIdResponseBody200ActiveAccount'Object'EnumStringBankAccount
                                          else GetRecipientsIdResponseBody200ActiveAccount'Object'EnumOther val)
-- | Defines the data type for the schema GetRecipientsIdResponseBody200Cards\'
-- 
-- 
data GetRecipientsIdResponseBody200Cards' = GetRecipientsIdResponseBody200Cards' {
  -- | data
  getRecipientsIdResponseBody200Cards'Data :: ([] Card)
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , getRecipientsIdResponseBody200Cards'HasMore :: GHC.Types.Bool
  -- | object: String representing the object\'s type. Objects of the same type share the same value. Always has the value \`list\`.
  , getRecipientsIdResponseBody200Cards'Object :: GetRecipientsIdResponseBody200Cards'Object'
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getRecipientsIdResponseBody200Cards'Url :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetRecipientsIdResponseBody200Cards'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getRecipientsIdResponseBody200Cards'Data obj) : (Data.Aeson..=) "has_more" (getRecipientsIdResponseBody200Cards'HasMore obj) : (Data.Aeson..=) "object" (getRecipientsIdResponseBody200Cards'Object obj) : (Data.Aeson..=) "url" (getRecipientsIdResponseBody200Cards'Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getRecipientsIdResponseBody200Cards'Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (getRecipientsIdResponseBody200Cards'HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (getRecipientsIdResponseBody200Cards'Object obj) GHC.Base.<> (Data.Aeson..=) "url" (getRecipientsIdResponseBody200Cards'Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetRecipientsIdResponseBody200Cards'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetRecipientsIdResponseBody200Cards'" (\obj -> (((GHC.Base.pure GetRecipientsIdResponseBody200Cards' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Defines the enum schema GetRecipientsIdResponseBody200Cards\'Object\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value. Always has the value \`list\`.
data GetRecipientsIdResponseBody200Cards'Object'
    = GetRecipientsIdResponseBody200Cards'Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetRecipientsIdResponseBody200Cards'Object'EnumTyped GHC.Base.String
    | GetRecipientsIdResponseBody200Cards'Object'EnumStringList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetRecipientsIdResponseBody200Cards'Object'
    where toJSON (GetRecipientsIdResponseBody200Cards'Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetRecipientsIdResponseBody200Cards'Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetRecipientsIdResponseBody200Cards'Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"
instance Data.Aeson.FromJSON GetRecipientsIdResponseBody200Cards'Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
                                          then GetRecipientsIdResponseBody200Cards'Object'EnumStringList
                                          else GetRecipientsIdResponseBody200Cards'Object'EnumOther val)
-- | Define the one-of schema GetRecipientsIdResponseBody200Default_card\'
-- 
-- The default card to use for creating transfers to this recipient.
data GetRecipientsIdResponseBody200DefaultCard'Variants
    = GetRecipientsIdResponseBody200DefaultCard'Card Card
    | GetRecipientsIdResponseBody200DefaultCard'String GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON GetRecipientsIdResponseBody200DefaultCard'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON GetRecipientsIdResponseBody200DefaultCard'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema GetRecipientsIdResponseBody200Deleted\'
-- 
-- Always true for a deleted object
data GetRecipientsIdResponseBody200Deleted'
    = GetRecipientsIdResponseBody200Deleted'EnumOther Data.Aeson.Types.Internal.Value
    | GetRecipientsIdResponseBody200Deleted'EnumTyped GHC.Types.Bool
    | GetRecipientsIdResponseBody200Deleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetRecipientsIdResponseBody200Deleted'
    where toJSON (GetRecipientsIdResponseBody200Deleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetRecipientsIdResponseBody200Deleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetRecipientsIdResponseBody200Deleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON GetRecipientsIdResponseBody200Deleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then GetRecipientsIdResponseBody200Deleted'EnumBoolTrue
                                          else GetRecipientsIdResponseBody200Deleted'EnumOther val)
-- | Defines the data type for the schema GetRecipientsIdResponseBody200Metadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
data GetRecipientsIdResponseBody200Metadata' = GetRecipientsIdResponseBody200Metadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetRecipientsIdResponseBody200Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetRecipientsIdResponseBody200Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetRecipientsIdResponseBody200Metadata'" (\obj -> GHC.Base.pure GetRecipientsIdResponseBody200Metadata')
-- | Define the one-of schema GetRecipientsIdResponseBody200Migrated_to\'
-- 
-- The ID of the [Custom account](https:\/\/stripe.com\/docs\/connect\/custom-accounts) this recipient was migrated to. If set, the recipient can no longer be updated, nor can transfers be made to it: use the Custom account instead.
data GetRecipientsIdResponseBody200MigratedTo'Variants
    = GetRecipientsIdResponseBody200MigratedTo'Account Account
    | GetRecipientsIdResponseBody200MigratedTo'String GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON GetRecipientsIdResponseBody200MigratedTo'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON GetRecipientsIdResponseBody200MigratedTo'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema GetRecipientsIdResponseBody200Object\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data GetRecipientsIdResponseBody200Object'
    = GetRecipientsIdResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetRecipientsIdResponseBody200Object'EnumTyped GHC.Base.String
    | GetRecipientsIdResponseBody200Object'EnumStringRecipient
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetRecipientsIdResponseBody200Object'
    where toJSON (GetRecipientsIdResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetRecipientsIdResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetRecipientsIdResponseBody200Object'EnumStringRecipient) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "recipient"
instance Data.Aeson.FromJSON GetRecipientsIdResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "recipient")
                                          then GetRecipientsIdResponseBody200Object'EnumStringRecipient
                                          else GetRecipientsIdResponseBody200Object'EnumOther val)
-- | Define the one-of schema GetRecipientsIdResponseBody200Rolled_back_from\'
-- 
-- 
data GetRecipientsIdResponseBody200RolledBackFrom'Variants
    = GetRecipientsIdResponseBody200RolledBackFrom'Account Account
    | GetRecipientsIdResponseBody200RolledBackFrom'String GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON GetRecipientsIdResponseBody200RolledBackFrom'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON GetRecipientsIdResponseBody200RolledBackFrom'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
