{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postRecipientsId
module StripeAPI.Operations.PostRecipientsId where

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

-- | > POST /v1/recipients/{id}
-- 
-- \<p>Updates the specified recipient by setting the values of the parameters passed.
-- Any parameters not provided will be left unchanged.\<\/p>
-- 
-- \<p>If you update the name or tax ID, the identity verification will automatically be rerun.
-- If you update the bank account, the bank account validation will automatically be rerun.\<\/p>
postRecipientsId :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                              -- ^ id | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostRecipientsIdRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostRecipientsIdResponse)) -- ^ Monad containing the result of the operation
postRecipientsId config
                 id
                 body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostRecipientsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostRecipientsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                  Recipient)
                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostRecipientsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/recipients/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/recipients/{id}
-- 
-- The same as 'postRecipientsId' but returns the raw 'Data.ByteString.Char8.ByteString'
postRecipientsIdRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                     StripeAPI.Common.SecurityScheme s) =>
                       StripeAPI.Common.Configuration s ->
                       GHC.Base.String ->
                       GHC.Maybe.Maybe PostRecipientsIdRequestBody ->
                       m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                             (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postRecipientsIdRaw config
                    id
                    body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/recipients/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/recipients/{id}
-- 
-- Monadic version of 'postRecipientsId' (use with 'StripeAPI.Common.runWithConfiguration')
postRecipientsIdM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                   StripeAPI.Common.SecurityScheme s) =>
                     GHC.Base.String ->
                     GHC.Maybe.Maybe PostRecipientsIdRequestBody ->
                     Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                        m
                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                            (Network.HTTP.Client.Types.Response PostRecipientsIdResponse))
postRecipientsIdM id
                  body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostRecipientsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostRecipientsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                   Recipient)
                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostRecipientsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/recipients/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/recipients/{id}
-- 
-- Monadic version of 'postRecipientsIdRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postRecipientsIdRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        GHC.Base.String ->
                        GHC.Maybe.Maybe PostRecipientsIdRequestBody ->
                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                           m
                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postRecipientsIdRawM id
                     body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/recipients/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postRecipientsIdRequestBody
-- 
-- 
data PostRecipientsIdRequestBody = PostRecipientsIdRequestBody {
  -- | bank_account: A bank account to attach to the recipient. You can provide either a token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/stripe-js), or a dictionary containing a user\'s bank account details, with the options described below.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postRecipientsIdRequestBodyBankAccount :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | card: A U.S. Visa or MasterCard debit card (not prepaid) to attach to the recipient. You can provide either a token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/stripe-js), or a dictionary containing a user\'s debit card details, with the options described below. Passing \`card\` will create a new card, make it the new recipient default card, and delete the old recipient default (if one exists). If you want to add additional debit cards instead of replacing the existing default, use the [card creation API](https:\/\/stripe.com\/docs\/api\#create_card). Whenever you attach a card to a recipient, Stripe will automatically validate the debit card.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postRecipientsIdRequestBodyCard :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | default_card: ID of the card to set as the recipient\'s new default for payouts.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postRecipientsIdRequestBodyDefaultCard :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | description: An arbitrary string which you can attach to a \`Recipient\` object. It is displayed alongside the recipient in the web interface.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postRecipientsIdRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | email: The recipient\'s email address. It is displayed alongside the recipient in the web interface, and can be useful for searching and tracking.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postRecipientsIdRequestBodyEmail :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | expand: Specifies which fields in the response should be expanded.
  , postRecipientsIdRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postRecipientsIdRequestBodyMetadata :: (GHC.Maybe.Maybe PostRecipientsIdRequestBodyMetadata')
  -- | name: The recipient\'s full, legal name. For type \`individual\`, should be in the format \`First Last\`, \`First Middle Last\`, or \`First M Last\` (no prefixes or suffixes). For \`corporation\`, the full, incorporated name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postRecipientsIdRequestBodyName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | tax_id: The recipient\'s tax ID, as a string. For type \`individual\`, the full SSN; for type \`corporation\`, the full EIN.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postRecipientsIdRequestBodyTaxId :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostRecipientsIdRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "bank_account" (postRecipientsIdRequestBodyBankAccount obj) : (Data.Aeson..=) "card" (postRecipientsIdRequestBodyCard obj) : (Data.Aeson..=) "default_card" (postRecipientsIdRequestBodyDefaultCard obj) : (Data.Aeson..=) "description" (postRecipientsIdRequestBodyDescription obj) : (Data.Aeson..=) "email" (postRecipientsIdRequestBodyEmail obj) : (Data.Aeson..=) "expand" (postRecipientsIdRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postRecipientsIdRequestBodyMetadata obj) : (Data.Aeson..=) "name" (postRecipientsIdRequestBodyName obj) : (Data.Aeson..=) "tax_id" (postRecipientsIdRequestBodyTaxId obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "bank_account" (postRecipientsIdRequestBodyBankAccount obj) GHC.Base.<> ((Data.Aeson..=) "card" (postRecipientsIdRequestBodyCard obj) GHC.Base.<> ((Data.Aeson..=) "default_card" (postRecipientsIdRequestBodyDefaultCard obj) GHC.Base.<> ((Data.Aeson..=) "description" (postRecipientsIdRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "email" (postRecipientsIdRequestBodyEmail obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postRecipientsIdRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postRecipientsIdRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (postRecipientsIdRequestBodyName obj) GHC.Base.<> (Data.Aeson..=) "tax_id" (postRecipientsIdRequestBodyTaxId obj)))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostRecipientsIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostRecipientsIdRequestBody" (\obj -> ((((((((GHC.Base.pure PostRecipientsIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_id"))
-- | Defines the data type for the schema postRecipientsIdRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostRecipientsIdRequestBodyMetadata' = PostRecipientsIdRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostRecipientsIdRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostRecipientsIdRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostRecipientsIdRequestBodyMetadata'" (\obj -> GHC.Base.pure PostRecipientsIdRequestBodyMetadata')
-- | Represents a response of the operation 'postRecipientsId'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostRecipientsIdResponseError' is used.
data PostRecipientsIdResponse =                   
   PostRecipientsIdResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostRecipientsIdResponse200 Recipient         -- ^ Successful response.
  | PostRecipientsIdResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
