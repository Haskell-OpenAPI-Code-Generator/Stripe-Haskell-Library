{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postAccountPeoplePerson
module StripeAPI.Operations.PostAccountPeoplePerson where

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

-- | > POST /v1/account/people/{person}
-- 
-- \<p>Updates an existing person.\<\/p>
postAccountPeoplePerson :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                     -- ^ person | Constraints: Maximum length of 5000
  -> PostAccountPeoplePersonRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostAccountPeoplePersonResponse)) -- ^ Monad containing the result of the operation
postAccountPeoplePerson config
                        person
                        body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountPeoplePersonResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountPeoplePersonResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                       Person)
                                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountPeoplePersonResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/account/people/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel person)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/account/people/{person}
-- 
-- The same as 'postAccountPeoplePerson' but returns the raw 'Data.ByteString.Char8.ByteString'
postAccountPeoplePersonRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                            StripeAPI.Common.SecurityScheme s) =>
                              StripeAPI.Common.Configuration s ->
                              GHC.Base.String ->
                              PostAccountPeoplePersonRequestBody ->
                              m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                    (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountPeoplePersonRaw config
                           person
                           body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/account/people/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel person)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/account/people/{person}
-- 
-- Monadic version of 'postAccountPeoplePerson' (use with 'StripeAPI.Common.runWithConfiguration')
postAccountPeoplePersonM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                          StripeAPI.Common.SecurityScheme s) =>
                            GHC.Base.String ->
                            PostAccountPeoplePersonRequestBody ->
                            Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                               m
                                                               (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                   (Network.HTTP.Client.Types.Response PostAccountPeoplePersonResponse))
postAccountPeoplePersonM person
                         body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostAccountPeoplePersonResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountPeoplePersonResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                        Person)
                                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountPeoplePersonResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/account/people/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel person)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/account/people/{person}
-- 
-- Monadic version of 'postAccountPeoplePersonRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postAccountPeoplePersonRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                             StripeAPI.Common.SecurityScheme s) =>
                               GHC.Base.String ->
                               PostAccountPeoplePersonRequestBody ->
                               Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                  m
                                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountPeoplePersonRawM person
                            body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/account/people/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel person)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postAccountPeoplePersonRequestBody
-- 
-- 
data PostAccountPeoplePersonRequestBody = PostAccountPeoplePersonRequestBody {
  -- | account
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountPeoplePersonRequestBodyAccount :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address: The person\'s address.
  , postAccountPeoplePersonRequestBodyAddress :: (GHC.Maybe.Maybe PostAccountPeoplePersonRequestBodyAddress')
  -- | address_kana: The Kana variation of the person\'s address (Japan only).
  , postAccountPeoplePersonRequestBodyAddressKana :: (GHC.Maybe.Maybe PostAccountPeoplePersonRequestBodyAddressKana')
  -- | address_kanji: The Kanji variation of the person\'s address (Japan only).
  , postAccountPeoplePersonRequestBodyAddressKanji :: (GHC.Maybe.Maybe PostAccountPeoplePersonRequestBodyAddressKanji')
  -- | dob: The person\'s date of birth.
  , postAccountPeoplePersonRequestBodyDob :: (GHC.Maybe.Maybe PostAccountPeoplePersonRequestBodyDob'Variants)
  -- | email: The person\'s email address.
  , postAccountPeoplePersonRequestBodyEmail :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | expand: Specifies which fields in the response should be expanded.
  , postAccountPeoplePersonRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | first_name: The person\'s first name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPeoplePersonRequestBodyFirstName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | first_name_kana: The Kana variation of the person\'s first name (Japan only).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPeoplePersonRequestBodyFirstNameKana :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | first_name_kanji: The Kanji variation of the person\'s first name (Japan only).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPeoplePersonRequestBodyFirstNameKanji :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | gender: The person\'s gender (International regulations require either \"male\" or \"female\").
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPeoplePersonRequestBodyGender :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | id_number: The person\'s ID number, as appropriate for their country. For example, a social security number in the U.S., social insurance number in Canada, etc. Instead of the number itself, you can also provide a [PII token provided by Stripe.js](https:\/\/stripe.com\/docs\/stripe.js\#collecting-pii-data).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPeoplePersonRequestBodyIdNumber :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | last_name: The person\'s last name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPeoplePersonRequestBodyLastName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | last_name_kana: The Kana variation of the person\'s last name (Japan only).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPeoplePersonRequestBodyLastNameKana :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | last_name_kanji: The Kanji variation of the person\'s last name (Japan only).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPeoplePersonRequestBodyLastNameKanji :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | maiden_name: The person\'s maiden name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPeoplePersonRequestBodyMaidenName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postAccountPeoplePersonRequestBodyMetadata :: (GHC.Maybe.Maybe PostAccountPeoplePersonRequestBodyMetadata')
  -- | person_token: A [person token](https:\/\/stripe.com\/docs\/connect\/account-tokens), used to securely provide details to the person.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPeoplePersonRequestBodyPersonToken :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | phone: The person\'s phone number.
  , postAccountPeoplePersonRequestBodyPhone :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | relationship: The relationship that this person has with the account\'s legal entity.
  , postAccountPeoplePersonRequestBodyRelationship :: (GHC.Maybe.Maybe PostAccountPeoplePersonRequestBodyRelationship')
  -- | ssn_last_4: The last 4 digits of the person\'s social security number.
  , postAccountPeoplePersonRequestBodySsnLast_4 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | verification: The person\'s verification status.
  , postAccountPeoplePersonRequestBodyVerification :: (GHC.Maybe.Maybe PostAccountPeoplePersonRequestBodyVerification')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPeoplePersonRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account" (postAccountPeoplePersonRequestBodyAccount obj) : (Data.Aeson..=) "address" (postAccountPeoplePersonRequestBodyAddress obj) : (Data.Aeson..=) "address_kana" (postAccountPeoplePersonRequestBodyAddressKana obj) : (Data.Aeson..=) "address_kanji" (postAccountPeoplePersonRequestBodyAddressKanji obj) : (Data.Aeson..=) "dob" (postAccountPeoplePersonRequestBodyDob obj) : (Data.Aeson..=) "email" (postAccountPeoplePersonRequestBodyEmail obj) : (Data.Aeson..=) "expand" (postAccountPeoplePersonRequestBodyExpand obj) : (Data.Aeson..=) "first_name" (postAccountPeoplePersonRequestBodyFirstName obj) : (Data.Aeson..=) "first_name_kana" (postAccountPeoplePersonRequestBodyFirstNameKana obj) : (Data.Aeson..=) "first_name_kanji" (postAccountPeoplePersonRequestBodyFirstNameKanji obj) : (Data.Aeson..=) "gender" (postAccountPeoplePersonRequestBodyGender obj) : (Data.Aeson..=) "id_number" (postAccountPeoplePersonRequestBodyIdNumber obj) : (Data.Aeson..=) "last_name" (postAccountPeoplePersonRequestBodyLastName obj) : (Data.Aeson..=) "last_name_kana" (postAccountPeoplePersonRequestBodyLastNameKana obj) : (Data.Aeson..=) "last_name_kanji" (postAccountPeoplePersonRequestBodyLastNameKanji obj) : (Data.Aeson..=) "maiden_name" (postAccountPeoplePersonRequestBodyMaidenName obj) : (Data.Aeson..=) "metadata" (postAccountPeoplePersonRequestBodyMetadata obj) : (Data.Aeson..=) "person_token" (postAccountPeoplePersonRequestBodyPersonToken obj) : (Data.Aeson..=) "phone" (postAccountPeoplePersonRequestBodyPhone obj) : (Data.Aeson..=) "relationship" (postAccountPeoplePersonRequestBodyRelationship obj) : (Data.Aeson..=) "ssn_last_4" (postAccountPeoplePersonRequestBodySsnLast_4 obj) : (Data.Aeson..=) "verification" (postAccountPeoplePersonRequestBodyVerification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account" (postAccountPeoplePersonRequestBodyAccount obj) GHC.Base.<> ((Data.Aeson..=) "address" (postAccountPeoplePersonRequestBodyAddress obj) GHC.Base.<> ((Data.Aeson..=) "address_kana" (postAccountPeoplePersonRequestBodyAddressKana obj) GHC.Base.<> ((Data.Aeson..=) "address_kanji" (postAccountPeoplePersonRequestBodyAddressKanji obj) GHC.Base.<> ((Data.Aeson..=) "dob" (postAccountPeoplePersonRequestBodyDob obj) GHC.Base.<> ((Data.Aeson..=) "email" (postAccountPeoplePersonRequestBodyEmail obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postAccountPeoplePersonRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "first_name" (postAccountPeoplePersonRequestBodyFirstName obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kana" (postAccountPeoplePersonRequestBodyFirstNameKana obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kanji" (postAccountPeoplePersonRequestBodyFirstNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "gender" (postAccountPeoplePersonRequestBodyGender obj) GHC.Base.<> ((Data.Aeson..=) "id_number" (postAccountPeoplePersonRequestBodyIdNumber obj) GHC.Base.<> ((Data.Aeson..=) "last_name" (postAccountPeoplePersonRequestBodyLastName obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kana" (postAccountPeoplePersonRequestBodyLastNameKana obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kanji" (postAccountPeoplePersonRequestBodyLastNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "maiden_name" (postAccountPeoplePersonRequestBodyMaidenName obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postAccountPeoplePersonRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "person_token" (postAccountPeoplePersonRequestBodyPersonToken obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postAccountPeoplePersonRequestBodyPhone obj) GHC.Base.<> ((Data.Aeson..=) "relationship" (postAccountPeoplePersonRequestBodyRelationship obj) GHC.Base.<> ((Data.Aeson..=) "ssn_last_4" (postAccountPeoplePersonRequestBodySsnLast_4 obj) GHC.Base.<> (Data.Aeson..=) "verification" (postAccountPeoplePersonRequestBodyVerification obj))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeoplePersonRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeoplePersonRequestBody" (\obj -> (((((((((((((((((((((GHC.Base.pure PostAccountPeoplePersonRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dob")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gender")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "maiden_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "person_token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "relationship")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ssn_last_4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verification"))
-- | Defines the data type for the schema postAccountPeoplePersonRequestBodyAddress\'
-- 
-- The person\'s address.
data PostAccountPeoplePersonRequestBodyAddress' = PostAccountPeoplePersonRequestBodyAddress' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 100
  postAccountPeoplePersonRequestBodyAddress'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPeoplePersonRequestBodyAddress'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 200
  , postAccountPeoplePersonRequestBodyAddress'Line1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 200
  , postAccountPeoplePersonRequestBodyAddress'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPeoplePersonRequestBodyAddress'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPeoplePersonRequestBodyAddress'State :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPeoplePersonRequestBodyAddress'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountPeoplePersonRequestBodyAddress'City obj) : (Data.Aeson..=) "country" (postAccountPeoplePersonRequestBodyAddress'Country obj) : (Data.Aeson..=) "line1" (postAccountPeoplePersonRequestBodyAddress'Line1 obj) : (Data.Aeson..=) "line2" (postAccountPeoplePersonRequestBodyAddress'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountPeoplePersonRequestBodyAddress'PostalCode obj) : (Data.Aeson..=) "state" (postAccountPeoplePersonRequestBodyAddress'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountPeoplePersonRequestBodyAddress'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountPeoplePersonRequestBodyAddress'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountPeoplePersonRequestBodyAddress'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountPeoplePersonRequestBodyAddress'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountPeoplePersonRequestBodyAddress'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postAccountPeoplePersonRequestBodyAddress'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeoplePersonRequestBodyAddress'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeoplePersonRequestBodyAddress'" (\obj -> (((((GHC.Base.pure PostAccountPeoplePersonRequestBodyAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
-- | Defines the data type for the schema postAccountPeoplePersonRequestBodyAddress_kana\'
-- 
-- The Kana variation of the person\'s address (Japan only).
data PostAccountPeoplePersonRequestBodyAddressKana' = PostAccountPeoplePersonRequestBodyAddressKana' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountPeoplePersonRequestBodyAddressKana'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPeoplePersonRequestBodyAddressKana'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPeoplePersonRequestBodyAddressKana'Line1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPeoplePersonRequestBodyAddressKana'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPeoplePersonRequestBodyAddressKana'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPeoplePersonRequestBodyAddressKana'State :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | town
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPeoplePersonRequestBodyAddressKana'Town :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPeoplePersonRequestBodyAddressKana'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountPeoplePersonRequestBodyAddressKana'City obj) : (Data.Aeson..=) "country" (postAccountPeoplePersonRequestBodyAddressKana'Country obj) : (Data.Aeson..=) "line1" (postAccountPeoplePersonRequestBodyAddressKana'Line1 obj) : (Data.Aeson..=) "line2" (postAccountPeoplePersonRequestBodyAddressKana'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountPeoplePersonRequestBodyAddressKana'PostalCode obj) : (Data.Aeson..=) "state" (postAccountPeoplePersonRequestBodyAddressKana'State obj) : (Data.Aeson..=) "town" (postAccountPeoplePersonRequestBodyAddressKana'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountPeoplePersonRequestBodyAddressKana'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountPeoplePersonRequestBodyAddressKana'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountPeoplePersonRequestBodyAddressKana'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountPeoplePersonRequestBodyAddressKana'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountPeoplePersonRequestBodyAddressKana'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountPeoplePersonRequestBodyAddressKana'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountPeoplePersonRequestBodyAddressKana'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeoplePersonRequestBodyAddressKana'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeoplePersonRequestBodyAddressKana'" (\obj -> ((((((GHC.Base.pure PostAccountPeoplePersonRequestBodyAddressKana' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
-- | Defines the data type for the schema postAccountPeoplePersonRequestBodyAddress_kanji\'
-- 
-- The Kanji variation of the person\'s address (Japan only).
data PostAccountPeoplePersonRequestBodyAddressKanji' = PostAccountPeoplePersonRequestBodyAddressKanji' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountPeoplePersonRequestBodyAddressKanji'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPeoplePersonRequestBodyAddressKanji'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPeoplePersonRequestBodyAddressKanji'Line1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPeoplePersonRequestBodyAddressKanji'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPeoplePersonRequestBodyAddressKanji'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPeoplePersonRequestBodyAddressKanji'State :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | town
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPeoplePersonRequestBodyAddressKanji'Town :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPeoplePersonRequestBodyAddressKanji'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountPeoplePersonRequestBodyAddressKanji'City obj) : (Data.Aeson..=) "country" (postAccountPeoplePersonRequestBodyAddressKanji'Country obj) : (Data.Aeson..=) "line1" (postAccountPeoplePersonRequestBodyAddressKanji'Line1 obj) : (Data.Aeson..=) "line2" (postAccountPeoplePersonRequestBodyAddressKanji'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountPeoplePersonRequestBodyAddressKanji'PostalCode obj) : (Data.Aeson..=) "state" (postAccountPeoplePersonRequestBodyAddressKanji'State obj) : (Data.Aeson..=) "town" (postAccountPeoplePersonRequestBodyAddressKanji'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountPeoplePersonRequestBodyAddressKanji'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountPeoplePersonRequestBodyAddressKanji'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountPeoplePersonRequestBodyAddressKanji'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountPeoplePersonRequestBodyAddressKanji'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountPeoplePersonRequestBodyAddressKanji'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountPeoplePersonRequestBodyAddressKanji'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountPeoplePersonRequestBodyAddressKanji'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeoplePersonRequestBodyAddressKanji'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeoplePersonRequestBodyAddressKanji'" (\obj -> ((((((GHC.Base.pure PostAccountPeoplePersonRequestBodyAddressKanji' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
-- | Defines the enum schema postAccountPeoplePersonRequestBodyDob\'OneOf1
-- 
-- 
data PostAccountPeoplePersonRequestBodyDob'OneOf1
    = PostAccountPeoplePersonRequestBodyDob'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountPeoplePersonRequestBodyDob'OneOf1EnumTyped GHC.Base.String
    | PostAccountPeoplePersonRequestBodyDob'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPeoplePersonRequestBodyDob'OneOf1
    where toJSON (PostAccountPeoplePersonRequestBodyDob'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountPeoplePersonRequestBodyDob'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountPeoplePersonRequestBodyDob'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostAccountPeoplePersonRequestBodyDob'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostAccountPeoplePersonRequestBodyDob'OneOf1EnumString_
                                          else PostAccountPeoplePersonRequestBodyDob'OneOf1EnumOther val)
-- | Defines the data type for the schema postAccountPeoplePersonRequestBodyDob\'OneOf2
-- 
-- 
data PostAccountPeoplePersonRequestBodyDob'OneOf2 = PostAccountPeoplePersonRequestBodyDob'OneOf2 {
  -- | day
  postAccountPeoplePersonRequestBodyDob'OneOf2Day :: GHC.Integer.Type.Integer
  -- | month
  , postAccountPeoplePersonRequestBodyDob'OneOf2Month :: GHC.Integer.Type.Integer
  -- | year
  , postAccountPeoplePersonRequestBodyDob'OneOf2Year :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPeoplePersonRequestBodyDob'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "day" (postAccountPeoplePersonRequestBodyDob'OneOf2Day obj) : (Data.Aeson..=) "month" (postAccountPeoplePersonRequestBodyDob'OneOf2Month obj) : (Data.Aeson..=) "year" (postAccountPeoplePersonRequestBodyDob'OneOf2Year obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "day" (postAccountPeoplePersonRequestBodyDob'OneOf2Day obj) GHC.Base.<> ((Data.Aeson..=) "month" (postAccountPeoplePersonRequestBodyDob'OneOf2Month obj) GHC.Base.<> (Data.Aeson..=) "year" (postAccountPeoplePersonRequestBodyDob'OneOf2Year obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeoplePersonRequestBodyDob'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeoplePersonRequestBodyDob'OneOf2" (\obj -> ((GHC.Base.pure PostAccountPeoplePersonRequestBodyDob'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "year"))
-- | Define the one-of schema postAccountPeoplePersonRequestBodyDob\'
-- 
-- The person\'s date of birth.
data PostAccountPeoplePersonRequestBodyDob'Variants
    = PostAccountPeoplePersonRequestBodyDob'PostAccountPeoplePersonRequestBodyDob'OneOf1 PostAccountPeoplePersonRequestBodyDob'OneOf1
    | PostAccountPeoplePersonRequestBodyDob'PostAccountPeoplePersonRequestBodyDob'OneOf2 PostAccountPeoplePersonRequestBodyDob'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountPeoplePersonRequestBodyDob'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountPeoplePersonRequestBodyDob'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postAccountPeoplePersonRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostAccountPeoplePersonRequestBodyMetadata' = PostAccountPeoplePersonRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPeoplePersonRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeoplePersonRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeoplePersonRequestBodyMetadata'" (\obj -> GHC.Base.pure PostAccountPeoplePersonRequestBodyMetadata')
-- | Defines the data type for the schema postAccountPeoplePersonRequestBodyRelationship\'
-- 
-- The relationship that this person has with the account\'s legal entity.
data PostAccountPeoplePersonRequestBodyRelationship' = PostAccountPeoplePersonRequestBodyRelationship' {
  -- | director
  postAccountPeoplePersonRequestBodyRelationship'Director :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | executive
  , postAccountPeoplePersonRequestBodyRelationship'Executive :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | owner
  , postAccountPeoplePersonRequestBodyRelationship'Owner :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | percent_ownership
  , postAccountPeoplePersonRequestBodyRelationship'PercentOwnership :: (GHC.Maybe.Maybe PostAccountPeoplePersonRequestBodyRelationship'PercentOwnership'Variants)
  -- | representative
  , postAccountPeoplePersonRequestBodyRelationship'Representative :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | title
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPeoplePersonRequestBodyRelationship'Title :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPeoplePersonRequestBodyRelationship'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "director" (postAccountPeoplePersonRequestBodyRelationship'Director obj) : (Data.Aeson..=) "executive" (postAccountPeoplePersonRequestBodyRelationship'Executive obj) : (Data.Aeson..=) "owner" (postAccountPeoplePersonRequestBodyRelationship'Owner obj) : (Data.Aeson..=) "percent_ownership" (postAccountPeoplePersonRequestBodyRelationship'PercentOwnership obj) : (Data.Aeson..=) "representative" (postAccountPeoplePersonRequestBodyRelationship'Representative obj) : (Data.Aeson..=) "title" (postAccountPeoplePersonRequestBodyRelationship'Title obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "director" (postAccountPeoplePersonRequestBodyRelationship'Director obj) GHC.Base.<> ((Data.Aeson..=) "executive" (postAccountPeoplePersonRequestBodyRelationship'Executive obj) GHC.Base.<> ((Data.Aeson..=) "owner" (postAccountPeoplePersonRequestBodyRelationship'Owner obj) GHC.Base.<> ((Data.Aeson..=) "percent_ownership" (postAccountPeoplePersonRequestBodyRelationship'PercentOwnership obj) GHC.Base.<> ((Data.Aeson..=) "representative" (postAccountPeoplePersonRequestBodyRelationship'Representative obj) GHC.Base.<> (Data.Aeson..=) "title" (postAccountPeoplePersonRequestBodyRelationship'Title obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeoplePersonRequestBodyRelationship'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeoplePersonRequestBodyRelationship'" (\obj -> (((((GHC.Base.pure PostAccountPeoplePersonRequestBodyRelationship' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "director")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "executive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owner")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "percent_ownership")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "representative")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title"))
-- | Defines the enum schema postAccountPeoplePersonRequestBodyRelationship\'Percent_ownership\'OneOf1
-- 
-- 
data PostAccountPeoplePersonRequestBodyRelationship'PercentOwnership'OneOf1
    = PostAccountPeoplePersonRequestBodyRelationship'PercentOwnership'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountPeoplePersonRequestBodyRelationship'PercentOwnership'OneOf1EnumTyped GHC.Base.String
    | PostAccountPeoplePersonRequestBodyRelationship'PercentOwnership'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPeoplePersonRequestBodyRelationship'PercentOwnership'OneOf1
    where toJSON (PostAccountPeoplePersonRequestBodyRelationship'PercentOwnership'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountPeoplePersonRequestBodyRelationship'PercentOwnership'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountPeoplePersonRequestBodyRelationship'PercentOwnership'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostAccountPeoplePersonRequestBodyRelationship'PercentOwnership'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostAccountPeoplePersonRequestBodyRelationship'PercentOwnership'OneOf1EnumString_
                                          else PostAccountPeoplePersonRequestBodyRelationship'PercentOwnership'OneOf1EnumOther val)
-- | Define the one-of schema postAccountPeoplePersonRequestBodyRelationship\'Percent_ownership\'
-- 
-- 
data PostAccountPeoplePersonRequestBodyRelationship'PercentOwnership'Variants
    = PostAccountPeoplePersonRequestBodyRelationship'PercentOwnership'PostAccountPeoplePersonRequestBodyRelationship'PercentOwnership'OneOf1 PostAccountPeoplePersonRequestBodyRelationship'PercentOwnership'OneOf1
    | PostAccountPeoplePersonRequestBodyRelationship'PercentOwnership'Double GHC.Types.Double
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountPeoplePersonRequestBodyRelationship'PercentOwnership'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountPeoplePersonRequestBodyRelationship'PercentOwnership'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postAccountPeoplePersonRequestBodyVerification\'
-- 
-- The person\'s verification status.
data PostAccountPeoplePersonRequestBodyVerification' = PostAccountPeoplePersonRequestBodyVerification' {
  -- | additional_document
  postAccountPeoplePersonRequestBodyVerification'AdditionalDocument :: (GHC.Maybe.Maybe PostAccountPeoplePersonRequestBodyVerification'AdditionalDocument')
  -- | document
  , postAccountPeoplePersonRequestBodyVerification'Document :: (GHC.Maybe.Maybe PostAccountPeoplePersonRequestBodyVerification'Document')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPeoplePersonRequestBodyVerification'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "additional_document" (postAccountPeoplePersonRequestBodyVerification'AdditionalDocument obj) : (Data.Aeson..=) "document" (postAccountPeoplePersonRequestBodyVerification'Document obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "additional_document" (postAccountPeoplePersonRequestBodyVerification'AdditionalDocument obj) GHC.Base.<> (Data.Aeson..=) "document" (postAccountPeoplePersonRequestBodyVerification'Document obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeoplePersonRequestBodyVerification'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeoplePersonRequestBodyVerification'" (\obj -> (GHC.Base.pure PostAccountPeoplePersonRequestBodyVerification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "additional_document")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document"))
-- | Defines the data type for the schema postAccountPeoplePersonRequestBodyVerification\'Additional_document\'
-- 
-- 
data PostAccountPeoplePersonRequestBodyVerification'AdditionalDocument' = PostAccountPeoplePersonRequestBodyVerification'AdditionalDocument' {
  -- | back
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  postAccountPeoplePersonRequestBodyVerification'AdditionalDocument'Back :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | front
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  , postAccountPeoplePersonRequestBodyVerification'AdditionalDocument'Front :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPeoplePersonRequestBodyVerification'AdditionalDocument'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountPeoplePersonRequestBodyVerification'AdditionalDocument'Back obj) : (Data.Aeson..=) "front" (postAccountPeoplePersonRequestBodyVerification'AdditionalDocument'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountPeoplePersonRequestBodyVerification'AdditionalDocument'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountPeoplePersonRequestBodyVerification'AdditionalDocument'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeoplePersonRequestBodyVerification'AdditionalDocument'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeoplePersonRequestBodyVerification'AdditionalDocument'" (\obj -> (GHC.Base.pure PostAccountPeoplePersonRequestBodyVerification'AdditionalDocument' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
-- | Defines the data type for the schema postAccountPeoplePersonRequestBodyVerification\'Document\'
-- 
-- 
data PostAccountPeoplePersonRequestBodyVerification'Document' = PostAccountPeoplePersonRequestBodyVerification'Document' {
  -- | back
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  postAccountPeoplePersonRequestBodyVerification'Document'Back :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | front
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  , postAccountPeoplePersonRequestBodyVerification'Document'Front :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPeoplePersonRequestBodyVerification'Document'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountPeoplePersonRequestBodyVerification'Document'Back obj) : (Data.Aeson..=) "front" (postAccountPeoplePersonRequestBodyVerification'Document'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountPeoplePersonRequestBodyVerification'Document'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountPeoplePersonRequestBodyVerification'Document'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeoplePersonRequestBodyVerification'Document'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeoplePersonRequestBodyVerification'Document'" (\obj -> (GHC.Base.pure PostAccountPeoplePersonRequestBodyVerification'Document' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
-- | Represents a response of the operation 'postAccountPeoplePerson'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostAccountPeoplePersonResponseError' is used.
data PostAccountPeoplePersonResponse =                   
   PostAccountPeoplePersonResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostAccountPeoplePersonResponse200 Person            -- ^ Successful response.
  | PostAccountPeoplePersonResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
