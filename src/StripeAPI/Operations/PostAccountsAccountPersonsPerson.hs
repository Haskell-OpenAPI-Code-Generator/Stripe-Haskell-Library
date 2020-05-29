{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postAccountsAccountPersonsPerson
module StripeAPI.Operations.PostAccountsAccountPersonsPerson where

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

-- | > POST /v1/accounts/{account}/persons/{person}
-- 
-- \<p>Updates an existing person.\<\/p>
postAccountsAccountPersonsPerson :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                              -- ^ account | Constraints: Maximum length of 5000
  -> GHC.Base.String                                                                                                                              -- ^ person | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostAccountsAccountPersonsPersonRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostAccountsAccountPersonsPersonResponse)) -- ^ Monad containing the result of the operation
postAccountsAccountPersonsPerson config
                                 account
                                 person
                                 body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountsAccountPersonsPersonResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountPersonsPersonResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  Person)
                                                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountPersonsPersonResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ("/persons/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel person)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/accounts/{account}/persons/{person}
-- 
-- The same as 'postAccountsAccountPersonsPerson' but returns the raw 'Data.ByteString.Char8.ByteString'
postAccountsAccountPersonsPersonRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                     StripeAPI.Common.SecurityScheme s) =>
                                       StripeAPI.Common.Configuration s ->
                                       GHC.Base.String ->
                                       GHC.Base.String ->
                                       GHC.Maybe.Maybe PostAccountsAccountPersonsPersonRequestBody ->
                                       m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                             (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountsAccountPersonsPersonRaw config
                                    account
                                    person
                                    body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ("/persons/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel person)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/accounts/{account}/persons/{person}
-- 
-- Monadic version of 'postAccountsAccountPersonsPerson' (use with 'StripeAPI.Common.runWithConfiguration')
postAccountsAccountPersonsPersonM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                   StripeAPI.Common.SecurityScheme s) =>
                                     GHC.Base.String ->
                                     GHC.Base.String ->
                                     GHC.Maybe.Maybe PostAccountsAccountPersonsPersonRequestBody ->
                                     Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                        m
                                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                            (Network.HTTP.Client.Types.Response PostAccountsAccountPersonsPersonResponse))
postAccountsAccountPersonsPersonM account
                                  person
                                  body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostAccountsAccountPersonsPersonResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountPersonsPersonResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   Person)
                                                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountPersonsPersonResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ("/persons/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel person)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/accounts/{account}/persons/{person}
-- 
-- Monadic version of 'postAccountsAccountPersonsPersonRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postAccountsAccountPersonsPersonRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                      StripeAPI.Common.SecurityScheme s) =>
                                        GHC.Base.String ->
                                        GHC.Base.String ->
                                        GHC.Maybe.Maybe PostAccountsAccountPersonsPersonRequestBody ->
                                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                           m
                                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountsAccountPersonsPersonRawM account
                                     person
                                     body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ("/persons/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel person)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postAccountsAccountPersonsPersonRequestBody
-- 
-- 
data PostAccountsAccountPersonsPersonRequestBody = PostAccountsAccountPersonsPersonRequestBody {
  -- | address: The person\'s address.
  postAccountsAccountPersonsPersonRequestBodyAddress :: (GHC.Maybe.Maybe PostAccountsAccountPersonsPersonRequestBodyAddress')
  -- | address_kana: The Kana variation of the person\'s address (Japan only).
  , postAccountsAccountPersonsPersonRequestBodyAddressKana :: (GHC.Maybe.Maybe PostAccountsAccountPersonsPersonRequestBodyAddressKana')
  -- | address_kanji: The Kanji variation of the person\'s address (Japan only).
  , postAccountsAccountPersonsPersonRequestBodyAddressKanji :: (GHC.Maybe.Maybe PostAccountsAccountPersonsPersonRequestBodyAddressKanji')
  -- | dob: The person\'s date of birth.
  , postAccountsAccountPersonsPersonRequestBodyDob :: (GHC.Maybe.Maybe PostAccountsAccountPersonsPersonRequestBodyDob'Variants)
  -- | email: The person\'s email address.
  , postAccountsAccountPersonsPersonRequestBodyEmail :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | expand: Specifies which fields in the response should be expanded.
  , postAccountsAccountPersonsPersonRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | first_name: The person\'s first name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsPersonRequestBodyFirstName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | first_name_kana: The Kana variation of the person\'s first name (Japan only).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsPersonRequestBodyFirstNameKana :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | first_name_kanji: The Kanji variation of the person\'s first name (Japan only).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsPersonRequestBodyFirstNameKanji :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | gender: The person\'s gender (International regulations require either \"male\" or \"female\").
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsPersonRequestBodyGender :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | id_number: The person\'s ID number, as appropriate for their country. For example, a social security number in the U.S., social insurance number in Canada, etc. Instead of the number itself, you can also provide a [PII token provided by Stripe.js](https:\/\/stripe.com\/docs\/stripe.js\#collecting-pii-data).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsPersonRequestBodyIdNumber :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | last_name: The person\'s last name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsPersonRequestBodyLastName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | last_name_kana: The Kana variation of the person\'s last name (Japan only).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsPersonRequestBodyLastNameKana :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | last_name_kanji: The Kanji variation of the person\'s last name (Japan only).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsPersonRequestBodyLastNameKanji :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | maiden_name: The person\'s maiden name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsPersonRequestBodyMaidenName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postAccountsAccountPersonsPersonRequestBodyMetadata :: (GHC.Maybe.Maybe PostAccountsAccountPersonsPersonRequestBodyMetadata')
  -- | person_token: A [person token](https:\/\/stripe.com\/docs\/connect\/account-tokens), used to securely provide details to the person.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsPersonRequestBodyPersonToken :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | phone: The person\'s phone number.
  , postAccountsAccountPersonsPersonRequestBodyPhone :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | relationship: The relationship that this person has with the account\'s legal entity.
  , postAccountsAccountPersonsPersonRequestBodyRelationship :: (GHC.Maybe.Maybe PostAccountsAccountPersonsPersonRequestBodyRelationship')
  -- | ssn_last_4: The last 4 digits of the person\'s social security number.
  , postAccountsAccountPersonsPersonRequestBodySsnLast_4 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | verification: The person\'s verification status.
  , postAccountsAccountPersonsPersonRequestBodyVerification :: (GHC.Maybe.Maybe PostAccountsAccountPersonsPersonRequestBodyVerification')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsPersonRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postAccountsAccountPersonsPersonRequestBodyAddress obj) : (Data.Aeson..=) "address_kana" (postAccountsAccountPersonsPersonRequestBodyAddressKana obj) : (Data.Aeson..=) "address_kanji" (postAccountsAccountPersonsPersonRequestBodyAddressKanji obj) : (Data.Aeson..=) "dob" (postAccountsAccountPersonsPersonRequestBodyDob obj) : (Data.Aeson..=) "email" (postAccountsAccountPersonsPersonRequestBodyEmail obj) : (Data.Aeson..=) "expand" (postAccountsAccountPersonsPersonRequestBodyExpand obj) : (Data.Aeson..=) "first_name" (postAccountsAccountPersonsPersonRequestBodyFirstName obj) : (Data.Aeson..=) "first_name_kana" (postAccountsAccountPersonsPersonRequestBodyFirstNameKana obj) : (Data.Aeson..=) "first_name_kanji" (postAccountsAccountPersonsPersonRequestBodyFirstNameKanji obj) : (Data.Aeson..=) "gender" (postAccountsAccountPersonsPersonRequestBodyGender obj) : (Data.Aeson..=) "id_number" (postAccountsAccountPersonsPersonRequestBodyIdNumber obj) : (Data.Aeson..=) "last_name" (postAccountsAccountPersonsPersonRequestBodyLastName obj) : (Data.Aeson..=) "last_name_kana" (postAccountsAccountPersonsPersonRequestBodyLastNameKana obj) : (Data.Aeson..=) "last_name_kanji" (postAccountsAccountPersonsPersonRequestBodyLastNameKanji obj) : (Data.Aeson..=) "maiden_name" (postAccountsAccountPersonsPersonRequestBodyMaidenName obj) : (Data.Aeson..=) "metadata" (postAccountsAccountPersonsPersonRequestBodyMetadata obj) : (Data.Aeson..=) "person_token" (postAccountsAccountPersonsPersonRequestBodyPersonToken obj) : (Data.Aeson..=) "phone" (postAccountsAccountPersonsPersonRequestBodyPhone obj) : (Data.Aeson..=) "relationship" (postAccountsAccountPersonsPersonRequestBodyRelationship obj) : (Data.Aeson..=) "ssn_last_4" (postAccountsAccountPersonsPersonRequestBodySsnLast_4 obj) : (Data.Aeson..=) "verification" (postAccountsAccountPersonsPersonRequestBodyVerification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postAccountsAccountPersonsPersonRequestBodyAddress obj) GHC.Base.<> ((Data.Aeson..=) "address_kana" (postAccountsAccountPersonsPersonRequestBodyAddressKana obj) GHC.Base.<> ((Data.Aeson..=) "address_kanji" (postAccountsAccountPersonsPersonRequestBodyAddressKanji obj) GHC.Base.<> ((Data.Aeson..=) "dob" (postAccountsAccountPersonsPersonRequestBodyDob obj) GHC.Base.<> ((Data.Aeson..=) "email" (postAccountsAccountPersonsPersonRequestBodyEmail obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postAccountsAccountPersonsPersonRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "first_name" (postAccountsAccountPersonsPersonRequestBodyFirstName obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kana" (postAccountsAccountPersonsPersonRequestBodyFirstNameKana obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kanji" (postAccountsAccountPersonsPersonRequestBodyFirstNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "gender" (postAccountsAccountPersonsPersonRequestBodyGender obj) GHC.Base.<> ((Data.Aeson..=) "id_number" (postAccountsAccountPersonsPersonRequestBodyIdNumber obj) GHC.Base.<> ((Data.Aeson..=) "last_name" (postAccountsAccountPersonsPersonRequestBodyLastName obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kana" (postAccountsAccountPersonsPersonRequestBodyLastNameKana obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kanji" (postAccountsAccountPersonsPersonRequestBodyLastNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "maiden_name" (postAccountsAccountPersonsPersonRequestBodyMaidenName obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postAccountsAccountPersonsPersonRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "person_token" (postAccountsAccountPersonsPersonRequestBodyPersonToken obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postAccountsAccountPersonsPersonRequestBodyPhone obj) GHC.Base.<> ((Data.Aeson..=) "relationship" (postAccountsAccountPersonsPersonRequestBodyRelationship obj) GHC.Base.<> ((Data.Aeson..=) "ssn_last_4" (postAccountsAccountPersonsPersonRequestBodySsnLast_4 obj) GHC.Base.<> (Data.Aeson..=) "verification" (postAccountsAccountPersonsPersonRequestBodyVerification obj)))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsPersonRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsPersonRequestBody" (\obj -> ((((((((((((((((((((GHC.Base.pure PostAccountsAccountPersonsPersonRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dob")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gender")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "maiden_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "person_token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "relationship")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ssn_last_4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verification"))
-- | Defines the data type for the schema postAccountsAccountPersonsPersonRequestBodyAddress\'
-- 
-- The person\'s address.
data PostAccountsAccountPersonsPersonRequestBodyAddress' = PostAccountsAccountPersonsPersonRequestBodyAddress' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 100
  postAccountsAccountPersonsPersonRequestBodyAddress'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsPersonRequestBodyAddress'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 200
  , postAccountsAccountPersonsPersonRequestBodyAddress'Line1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 200
  , postAccountsAccountPersonsPersonRequestBodyAddress'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsPersonRequestBodyAddress'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsPersonRequestBodyAddress'State :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsPersonRequestBodyAddress'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountPersonsPersonRequestBodyAddress'City obj) : (Data.Aeson..=) "country" (postAccountsAccountPersonsPersonRequestBodyAddress'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountPersonsPersonRequestBodyAddress'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountPersonsPersonRequestBodyAddress'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountPersonsPersonRequestBodyAddress'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountPersonsPersonRequestBodyAddress'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountPersonsPersonRequestBodyAddress'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountPersonsPersonRequestBodyAddress'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountPersonsPersonRequestBodyAddress'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountPersonsPersonRequestBodyAddress'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountPersonsPersonRequestBodyAddress'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postAccountsAccountPersonsPersonRequestBodyAddress'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsPersonRequestBodyAddress'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsPersonRequestBodyAddress'" (\obj -> (((((GHC.Base.pure PostAccountsAccountPersonsPersonRequestBodyAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
-- | Defines the data type for the schema postAccountsAccountPersonsPersonRequestBodyAddress_kana\'
-- 
-- The Kana variation of the person\'s address (Japan only).
data PostAccountsAccountPersonsPersonRequestBodyAddressKana' = PostAccountsAccountPersonsPersonRequestBodyAddressKana' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountsAccountPersonsPersonRequestBodyAddressKana'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsPersonRequestBodyAddressKana'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsPersonRequestBodyAddressKana'Line1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsPersonRequestBodyAddressKana'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsPersonRequestBodyAddressKana'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsPersonRequestBodyAddressKana'State :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | town
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsPersonRequestBodyAddressKana'Town :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsPersonRequestBodyAddressKana'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountPersonsPersonRequestBodyAddressKana'City obj) : (Data.Aeson..=) "country" (postAccountsAccountPersonsPersonRequestBodyAddressKana'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountPersonsPersonRequestBodyAddressKana'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountPersonsPersonRequestBodyAddressKana'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountPersonsPersonRequestBodyAddressKana'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountPersonsPersonRequestBodyAddressKana'State obj) : (Data.Aeson..=) "town" (postAccountsAccountPersonsPersonRequestBodyAddressKana'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountPersonsPersonRequestBodyAddressKana'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountPersonsPersonRequestBodyAddressKana'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountPersonsPersonRequestBodyAddressKana'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountPersonsPersonRequestBodyAddressKana'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountPersonsPersonRequestBodyAddressKana'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountsAccountPersonsPersonRequestBodyAddressKana'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountsAccountPersonsPersonRequestBodyAddressKana'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsPersonRequestBodyAddressKana'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsPersonRequestBodyAddressKana'" (\obj -> ((((((GHC.Base.pure PostAccountsAccountPersonsPersonRequestBodyAddressKana' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
-- | Defines the data type for the schema postAccountsAccountPersonsPersonRequestBodyAddress_kanji\'
-- 
-- The Kanji variation of the person\'s address (Japan only).
data PostAccountsAccountPersonsPersonRequestBodyAddressKanji' = PostAccountsAccountPersonsPersonRequestBodyAddressKanji' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountsAccountPersonsPersonRequestBodyAddressKanji'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsPersonRequestBodyAddressKanji'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsPersonRequestBodyAddressKanji'Line1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsPersonRequestBodyAddressKanji'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsPersonRequestBodyAddressKanji'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsPersonRequestBodyAddressKanji'State :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | town
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsPersonRequestBodyAddressKanji'Town :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsPersonRequestBodyAddressKanji'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountPersonsPersonRequestBodyAddressKanji'City obj) : (Data.Aeson..=) "country" (postAccountsAccountPersonsPersonRequestBodyAddressKanji'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountPersonsPersonRequestBodyAddressKanji'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountPersonsPersonRequestBodyAddressKanji'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountPersonsPersonRequestBodyAddressKanji'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountPersonsPersonRequestBodyAddressKanji'State obj) : (Data.Aeson..=) "town" (postAccountsAccountPersonsPersonRequestBodyAddressKanji'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountPersonsPersonRequestBodyAddressKanji'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountPersonsPersonRequestBodyAddressKanji'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountPersonsPersonRequestBodyAddressKanji'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountPersonsPersonRequestBodyAddressKanji'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountPersonsPersonRequestBodyAddressKanji'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountsAccountPersonsPersonRequestBodyAddressKanji'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountsAccountPersonsPersonRequestBodyAddressKanji'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsPersonRequestBodyAddressKanji'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsPersonRequestBodyAddressKanji'" (\obj -> ((((((GHC.Base.pure PostAccountsAccountPersonsPersonRequestBodyAddressKanji' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
-- | Defines the enum schema postAccountsAccountPersonsPersonRequestBodyDob\'OneOf1
-- 
-- 
data PostAccountsAccountPersonsPersonRequestBodyDob'OneOf1
    = PostAccountsAccountPersonsPersonRequestBodyDob'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountPersonsPersonRequestBodyDob'OneOf1EnumTyped GHC.Base.String
    | PostAccountsAccountPersonsPersonRequestBodyDob'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsPersonRequestBodyDob'OneOf1
    where toJSON (PostAccountsAccountPersonsPersonRequestBodyDob'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountPersonsPersonRequestBodyDob'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountPersonsPersonRequestBodyDob'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostAccountsAccountPersonsPersonRequestBodyDob'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostAccountsAccountPersonsPersonRequestBodyDob'OneOf1EnumString_
                                          else PostAccountsAccountPersonsPersonRequestBodyDob'OneOf1EnumOther val)
-- | Defines the data type for the schema postAccountsAccountPersonsPersonRequestBodyDob\'OneOf2
-- 
-- 
data PostAccountsAccountPersonsPersonRequestBodyDob'OneOf2 = PostAccountsAccountPersonsPersonRequestBodyDob'OneOf2 {
  -- | day
  postAccountsAccountPersonsPersonRequestBodyDob'OneOf2Day :: GHC.Integer.Type.Integer
  -- | month
  , postAccountsAccountPersonsPersonRequestBodyDob'OneOf2Month :: GHC.Integer.Type.Integer
  -- | year
  , postAccountsAccountPersonsPersonRequestBodyDob'OneOf2Year :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsPersonRequestBodyDob'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "day" (postAccountsAccountPersonsPersonRequestBodyDob'OneOf2Day obj) : (Data.Aeson..=) "month" (postAccountsAccountPersonsPersonRequestBodyDob'OneOf2Month obj) : (Data.Aeson..=) "year" (postAccountsAccountPersonsPersonRequestBodyDob'OneOf2Year obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "day" (postAccountsAccountPersonsPersonRequestBodyDob'OneOf2Day obj) GHC.Base.<> ((Data.Aeson..=) "month" (postAccountsAccountPersonsPersonRequestBodyDob'OneOf2Month obj) GHC.Base.<> (Data.Aeson..=) "year" (postAccountsAccountPersonsPersonRequestBodyDob'OneOf2Year obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsPersonRequestBodyDob'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsPersonRequestBodyDob'OneOf2" (\obj -> ((GHC.Base.pure PostAccountsAccountPersonsPersonRequestBodyDob'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "year"))
-- | Define the one-of schema postAccountsAccountPersonsPersonRequestBodyDob\'
-- 
-- The person\'s date of birth.
data PostAccountsAccountPersonsPersonRequestBodyDob'Variants
    = PostAccountsAccountPersonsPersonRequestBodyDob'PostAccountsAccountPersonsPersonRequestBodyDob'OneOf1 PostAccountsAccountPersonsPersonRequestBodyDob'OneOf1
    | PostAccountsAccountPersonsPersonRequestBodyDob'PostAccountsAccountPersonsPersonRequestBodyDob'OneOf2 PostAccountsAccountPersonsPersonRequestBodyDob'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsPersonRequestBodyDob'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountsAccountPersonsPersonRequestBodyDob'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postAccountsAccountPersonsPersonRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostAccountsAccountPersonsPersonRequestBodyMetadata' = PostAccountsAccountPersonsPersonRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsPersonRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsPersonRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsPersonRequestBodyMetadata'" (\obj -> GHC.Base.pure PostAccountsAccountPersonsPersonRequestBodyMetadata')
-- | Defines the data type for the schema postAccountsAccountPersonsPersonRequestBodyRelationship\'
-- 
-- The relationship that this person has with the account\'s legal entity.
data PostAccountsAccountPersonsPersonRequestBodyRelationship' = PostAccountsAccountPersonsPersonRequestBodyRelationship' {
  -- | director
  postAccountsAccountPersonsPersonRequestBodyRelationship'Director :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | executive
  , postAccountsAccountPersonsPersonRequestBodyRelationship'Executive :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | owner
  , postAccountsAccountPersonsPersonRequestBodyRelationship'Owner :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | percent_ownership
  , postAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership :: (GHC.Maybe.Maybe PostAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership'Variants)
  -- | representative
  , postAccountsAccountPersonsPersonRequestBodyRelationship'Representative :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | title
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsPersonRequestBodyRelationship'Title :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsPersonRequestBodyRelationship'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "director" (postAccountsAccountPersonsPersonRequestBodyRelationship'Director obj) : (Data.Aeson..=) "executive" (postAccountsAccountPersonsPersonRequestBodyRelationship'Executive obj) : (Data.Aeson..=) "owner" (postAccountsAccountPersonsPersonRequestBodyRelationship'Owner obj) : (Data.Aeson..=) "percent_ownership" (postAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership obj) : (Data.Aeson..=) "representative" (postAccountsAccountPersonsPersonRequestBodyRelationship'Representative obj) : (Data.Aeson..=) "title" (postAccountsAccountPersonsPersonRequestBodyRelationship'Title obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "director" (postAccountsAccountPersonsPersonRequestBodyRelationship'Director obj) GHC.Base.<> ((Data.Aeson..=) "executive" (postAccountsAccountPersonsPersonRequestBodyRelationship'Executive obj) GHC.Base.<> ((Data.Aeson..=) "owner" (postAccountsAccountPersonsPersonRequestBodyRelationship'Owner obj) GHC.Base.<> ((Data.Aeson..=) "percent_ownership" (postAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership obj) GHC.Base.<> ((Data.Aeson..=) "representative" (postAccountsAccountPersonsPersonRequestBodyRelationship'Representative obj) GHC.Base.<> (Data.Aeson..=) "title" (postAccountsAccountPersonsPersonRequestBodyRelationship'Title obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsPersonRequestBodyRelationship'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsPersonRequestBodyRelationship'" (\obj -> (((((GHC.Base.pure PostAccountsAccountPersonsPersonRequestBodyRelationship' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "director")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "executive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owner")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "percent_ownership")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "representative")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title"))
-- | Defines the enum schema postAccountsAccountPersonsPersonRequestBodyRelationship\'Percent_ownership\'OneOf1
-- 
-- 
data PostAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership'OneOf1
    = PostAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership'OneOf1EnumTyped GHC.Base.String
    | PostAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership'OneOf1
    where toJSON (PostAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership'OneOf1EnumString_
                                          else PostAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership'OneOf1EnumOther val)
-- | Define the one-of schema postAccountsAccountPersonsPersonRequestBodyRelationship\'Percent_ownership\'
-- 
-- 
data PostAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership'Variants
    = PostAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership'PostAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership'OneOf1 PostAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership'OneOf1
    | PostAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership'Double GHC.Types.Double
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postAccountsAccountPersonsPersonRequestBodyVerification\'
-- 
-- The person\'s verification status.
data PostAccountsAccountPersonsPersonRequestBodyVerification' = PostAccountsAccountPersonsPersonRequestBodyVerification' {
  -- | additional_document
  postAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument :: (GHC.Maybe.Maybe PostAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument')
  -- | document
  , postAccountsAccountPersonsPersonRequestBodyVerification'Document :: (GHC.Maybe.Maybe PostAccountsAccountPersonsPersonRequestBodyVerification'Document')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsPersonRequestBodyVerification'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "additional_document" (postAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument obj) : (Data.Aeson..=) "document" (postAccountsAccountPersonsPersonRequestBodyVerification'Document obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "additional_document" (postAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument obj) GHC.Base.<> (Data.Aeson..=) "document" (postAccountsAccountPersonsPersonRequestBodyVerification'Document obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsPersonRequestBodyVerification'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsPersonRequestBodyVerification'" (\obj -> (GHC.Base.pure PostAccountsAccountPersonsPersonRequestBodyVerification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "additional_document")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document"))
-- | Defines the data type for the schema postAccountsAccountPersonsPersonRequestBodyVerification\'Additional_document\'
-- 
-- 
data PostAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument' = PostAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument' {
  -- | back
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  postAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument'Back :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | front
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  , postAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument'Front :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument'Back obj) : (Data.Aeson..=) "front" (postAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument'" (\obj -> (GHC.Base.pure PostAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
-- | Defines the data type for the schema postAccountsAccountPersonsPersonRequestBodyVerification\'Document\'
-- 
-- 
data PostAccountsAccountPersonsPersonRequestBodyVerification'Document' = PostAccountsAccountPersonsPersonRequestBodyVerification'Document' {
  -- | back
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  postAccountsAccountPersonsPersonRequestBodyVerification'Document'Back :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | front
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  , postAccountsAccountPersonsPersonRequestBodyVerification'Document'Front :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsPersonRequestBodyVerification'Document'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountsAccountPersonsPersonRequestBodyVerification'Document'Back obj) : (Data.Aeson..=) "front" (postAccountsAccountPersonsPersonRequestBodyVerification'Document'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountsAccountPersonsPersonRequestBodyVerification'Document'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountsAccountPersonsPersonRequestBodyVerification'Document'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsPersonRequestBodyVerification'Document'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsPersonRequestBodyVerification'Document'" (\obj -> (GHC.Base.pure PostAccountsAccountPersonsPersonRequestBodyVerification'Document' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
-- | Represents a response of the operation 'postAccountsAccountPersonsPerson'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostAccountsAccountPersonsPersonResponseError' is used.
data PostAccountsAccountPersonsPersonResponse =                   
   PostAccountsAccountPersonsPersonResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostAccountsAccountPersonsPersonResponse200 Person            -- ^ Successful response.
  | PostAccountsAccountPersonsPersonResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
