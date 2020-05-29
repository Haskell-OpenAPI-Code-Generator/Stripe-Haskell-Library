{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postAccountsAccountPersons
module StripeAPI.Operations.PostAccountsAccountPersons where

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

-- | > POST /v1/accounts/{account}/persons
-- 
-- \<p>Creates a new person.\<\/p>
postAccountsAccountPersons :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text                                                                                                                -- ^ account | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostAccountsAccountPersonsRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostAccountsAccountPersonsResponse)) -- ^ Monad containing the result of the operation
postAccountsAccountPersons config
                           account
                           body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountsAccountPersonsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountPersonsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                Person)
                                                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountPersonsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/persons"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/accounts/{account}/persons
-- 
-- The same as 'postAccountsAccountPersons' but returns the raw 'Data.ByteString.Char8.ByteString'
postAccountsAccountPersonsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                               StripeAPI.Common.SecurityScheme s) =>
                                 StripeAPI.Common.Configuration s ->
                                 Data.Text.Internal.Text ->
                                 GHC.Maybe.Maybe PostAccountsAccountPersonsRequestBody ->
                                 m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountsAccountPersonsRaw config
                              account
                              body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/persons"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/accounts/{account}/persons
-- 
-- Monadic version of 'postAccountsAccountPersons' (use with 'StripeAPI.Common.runWithConfiguration')
postAccountsAccountPersonsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                             StripeAPI.Common.SecurityScheme s) =>
                               Data.Text.Internal.Text ->
                               GHC.Maybe.Maybe PostAccountsAccountPersonsRequestBody ->
                               Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                  m
                                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                      (Network.HTTP.Client.Types.Response PostAccountsAccountPersonsResponse))
postAccountsAccountPersonsM account
                            body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostAccountsAccountPersonsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountPersonsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 Person)
                                                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountPersonsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/persons"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/accounts/{account}/persons
-- 
-- Monadic version of 'postAccountsAccountPersonsRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postAccountsAccountPersonsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                StripeAPI.Common.SecurityScheme s) =>
                                  Data.Text.Internal.Text ->
                                  GHC.Maybe.Maybe PostAccountsAccountPersonsRequestBody ->
                                  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                     m
                                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountsAccountPersonsRawM account
                               body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/persons"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postAccountsAccountPersonsRequestBody
-- 
-- 
data PostAccountsAccountPersonsRequestBody = PostAccountsAccountPersonsRequestBody {
  -- | address: The person\'s address.
  postAccountsAccountPersonsRequestBodyAddress :: (GHC.Maybe.Maybe PostAccountsAccountPersonsRequestBodyAddress')
  -- | address_kana: The Kana variation of the person\'s address (Japan only).
  , postAccountsAccountPersonsRequestBodyAddressKana :: (GHC.Maybe.Maybe PostAccountsAccountPersonsRequestBodyAddressKana')
  -- | address_kanji: The Kanji variation of the person\'s address (Japan only).
  , postAccountsAccountPersonsRequestBodyAddressKanji :: (GHC.Maybe.Maybe PostAccountsAccountPersonsRequestBodyAddressKanji')
  -- | dob: The person\'s date of birth.
  , postAccountsAccountPersonsRequestBodyDob :: (GHC.Maybe.Maybe PostAccountsAccountPersonsRequestBodyDob'Variants)
  -- | email: The person\'s email address.
  , postAccountsAccountPersonsRequestBodyEmail :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | expand: Specifies which fields in the response should be expanded.
  , postAccountsAccountPersonsRequestBodyExpand :: (GHC.Maybe.Maybe ([] Data.Text.Internal.Text))
  -- | first_name: The person\'s first name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsRequestBodyFirstName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | first_name_kana: The Kana variation of the person\'s first name (Japan only).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsRequestBodyFirstNameKana :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | first_name_kanji: The Kanji variation of the person\'s first name (Japan only).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsRequestBodyFirstNameKanji :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | gender: The person\'s gender (International regulations require either \"male\" or \"female\").
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsRequestBodyGender :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id_number: The person\'s ID number, as appropriate for their country. For example, a social security number in the U.S., social insurance number in Canada, etc. Instead of the number itself, you can also provide a [PII token provided by Stripe.js](https:\/\/stripe.com\/docs\/stripe.js\#collecting-pii-data).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsRequestBodyIdNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | last_name: The person\'s last name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsRequestBodyLastName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | last_name_kana: The Kana variation of the person\'s last name (Japan only).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsRequestBodyLastNameKana :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | last_name_kanji: The Kanji variation of the person\'s last name (Japan only).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsRequestBodyLastNameKanji :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | maiden_name: The person\'s maiden name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsRequestBodyMaidenName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postAccountsAccountPersonsRequestBodyMetadata :: (GHC.Maybe.Maybe PostAccountsAccountPersonsRequestBodyMetadata')
  -- | person_token: A [person token](https:\/\/stripe.com\/docs\/connect\/account-tokens), used to securely provide details to the person.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsRequestBodyPersonToken :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | phone: The person\'s phone number.
  , postAccountsAccountPersonsRequestBodyPhone :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | relationship: The relationship that this person has with the account\'s legal entity.
  , postAccountsAccountPersonsRequestBodyRelationship :: (GHC.Maybe.Maybe PostAccountsAccountPersonsRequestBodyRelationship')
  -- | ssn_last_4: The last 4 digits of the person\'s social security number.
  , postAccountsAccountPersonsRequestBodySsnLast_4 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | verification: The person\'s verification status.
  , postAccountsAccountPersonsRequestBodyVerification :: (GHC.Maybe.Maybe PostAccountsAccountPersonsRequestBodyVerification')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postAccountsAccountPersonsRequestBodyAddress obj) : (Data.Aeson..=) "address_kana" (postAccountsAccountPersonsRequestBodyAddressKana obj) : (Data.Aeson..=) "address_kanji" (postAccountsAccountPersonsRequestBodyAddressKanji obj) : (Data.Aeson..=) "dob" (postAccountsAccountPersonsRequestBodyDob obj) : (Data.Aeson..=) "email" (postAccountsAccountPersonsRequestBodyEmail obj) : (Data.Aeson..=) "expand" (postAccountsAccountPersonsRequestBodyExpand obj) : (Data.Aeson..=) "first_name" (postAccountsAccountPersonsRequestBodyFirstName obj) : (Data.Aeson..=) "first_name_kana" (postAccountsAccountPersonsRequestBodyFirstNameKana obj) : (Data.Aeson..=) "first_name_kanji" (postAccountsAccountPersonsRequestBodyFirstNameKanji obj) : (Data.Aeson..=) "gender" (postAccountsAccountPersonsRequestBodyGender obj) : (Data.Aeson..=) "id_number" (postAccountsAccountPersonsRequestBodyIdNumber obj) : (Data.Aeson..=) "last_name" (postAccountsAccountPersonsRequestBodyLastName obj) : (Data.Aeson..=) "last_name_kana" (postAccountsAccountPersonsRequestBodyLastNameKana obj) : (Data.Aeson..=) "last_name_kanji" (postAccountsAccountPersonsRequestBodyLastNameKanji obj) : (Data.Aeson..=) "maiden_name" (postAccountsAccountPersonsRequestBodyMaidenName obj) : (Data.Aeson..=) "metadata" (postAccountsAccountPersonsRequestBodyMetadata obj) : (Data.Aeson..=) "person_token" (postAccountsAccountPersonsRequestBodyPersonToken obj) : (Data.Aeson..=) "phone" (postAccountsAccountPersonsRequestBodyPhone obj) : (Data.Aeson..=) "relationship" (postAccountsAccountPersonsRequestBodyRelationship obj) : (Data.Aeson..=) "ssn_last_4" (postAccountsAccountPersonsRequestBodySsnLast_4 obj) : (Data.Aeson..=) "verification" (postAccountsAccountPersonsRequestBodyVerification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postAccountsAccountPersonsRequestBodyAddress obj) GHC.Base.<> ((Data.Aeson..=) "address_kana" (postAccountsAccountPersonsRequestBodyAddressKana obj) GHC.Base.<> ((Data.Aeson..=) "address_kanji" (postAccountsAccountPersonsRequestBodyAddressKanji obj) GHC.Base.<> ((Data.Aeson..=) "dob" (postAccountsAccountPersonsRequestBodyDob obj) GHC.Base.<> ((Data.Aeson..=) "email" (postAccountsAccountPersonsRequestBodyEmail obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postAccountsAccountPersonsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "first_name" (postAccountsAccountPersonsRequestBodyFirstName obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kana" (postAccountsAccountPersonsRequestBodyFirstNameKana obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kanji" (postAccountsAccountPersonsRequestBodyFirstNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "gender" (postAccountsAccountPersonsRequestBodyGender obj) GHC.Base.<> ((Data.Aeson..=) "id_number" (postAccountsAccountPersonsRequestBodyIdNumber obj) GHC.Base.<> ((Data.Aeson..=) "last_name" (postAccountsAccountPersonsRequestBodyLastName obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kana" (postAccountsAccountPersonsRequestBodyLastNameKana obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kanji" (postAccountsAccountPersonsRequestBodyLastNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "maiden_name" (postAccountsAccountPersonsRequestBodyMaidenName obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postAccountsAccountPersonsRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "person_token" (postAccountsAccountPersonsRequestBodyPersonToken obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postAccountsAccountPersonsRequestBodyPhone obj) GHC.Base.<> ((Data.Aeson..=) "relationship" (postAccountsAccountPersonsRequestBodyRelationship obj) GHC.Base.<> ((Data.Aeson..=) "ssn_last_4" (postAccountsAccountPersonsRequestBodySsnLast_4 obj) GHC.Base.<> (Data.Aeson..=) "verification" (postAccountsAccountPersonsRequestBodyVerification obj)))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsRequestBody" (\obj -> ((((((((((((((((((((GHC.Base.pure PostAccountsAccountPersonsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dob")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gender")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "maiden_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "person_token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "relationship")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ssn_last_4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verification"))
-- | Defines the data type for the schema postAccountsAccountPersonsRequestBodyAddress\'
-- 
-- The person\'s address.
data PostAccountsAccountPersonsRequestBodyAddress' = PostAccountsAccountPersonsRequestBodyAddress' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 100
  postAccountsAccountPersonsRequestBodyAddress'City :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsRequestBodyAddress'Country :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 200
  , postAccountsAccountPersonsRequestBodyAddress'Line1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 200
  , postAccountsAccountPersonsRequestBodyAddress'Line2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsRequestBodyAddress'PostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsRequestBodyAddress'State :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsRequestBodyAddress'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountPersonsRequestBodyAddress'City obj) : (Data.Aeson..=) "country" (postAccountsAccountPersonsRequestBodyAddress'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountPersonsRequestBodyAddress'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountPersonsRequestBodyAddress'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountPersonsRequestBodyAddress'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountPersonsRequestBodyAddress'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountPersonsRequestBodyAddress'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountPersonsRequestBodyAddress'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountPersonsRequestBodyAddress'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountPersonsRequestBodyAddress'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountPersonsRequestBodyAddress'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postAccountsAccountPersonsRequestBodyAddress'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsRequestBodyAddress'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsRequestBodyAddress'" (\obj -> (((((GHC.Base.pure PostAccountsAccountPersonsRequestBodyAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
-- | Defines the data type for the schema postAccountsAccountPersonsRequestBodyAddress_kana\'
-- 
-- The Kana variation of the person\'s address (Japan only).
data PostAccountsAccountPersonsRequestBodyAddressKana' = PostAccountsAccountPersonsRequestBodyAddressKana' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountsAccountPersonsRequestBodyAddressKana'City :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsRequestBodyAddressKana'Country :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsRequestBodyAddressKana'Line1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsRequestBodyAddressKana'Line2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsRequestBodyAddressKana'PostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsRequestBodyAddressKana'State :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | town
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsRequestBodyAddressKana'Town :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsRequestBodyAddressKana'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountPersonsRequestBodyAddressKana'City obj) : (Data.Aeson..=) "country" (postAccountsAccountPersonsRequestBodyAddressKana'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountPersonsRequestBodyAddressKana'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountPersonsRequestBodyAddressKana'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountPersonsRequestBodyAddressKana'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountPersonsRequestBodyAddressKana'State obj) : (Data.Aeson..=) "town" (postAccountsAccountPersonsRequestBodyAddressKana'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountPersonsRequestBodyAddressKana'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountPersonsRequestBodyAddressKana'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountPersonsRequestBodyAddressKana'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountPersonsRequestBodyAddressKana'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountPersonsRequestBodyAddressKana'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountsAccountPersonsRequestBodyAddressKana'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountsAccountPersonsRequestBodyAddressKana'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsRequestBodyAddressKana'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsRequestBodyAddressKana'" (\obj -> ((((((GHC.Base.pure PostAccountsAccountPersonsRequestBodyAddressKana' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
-- | Defines the data type for the schema postAccountsAccountPersonsRequestBodyAddress_kanji\'
-- 
-- The Kanji variation of the person\'s address (Japan only).
data PostAccountsAccountPersonsRequestBodyAddressKanji' = PostAccountsAccountPersonsRequestBodyAddressKanji' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountsAccountPersonsRequestBodyAddressKanji'City :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsRequestBodyAddressKanji'Country :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsRequestBodyAddressKanji'Line1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsRequestBodyAddressKanji'Line2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsRequestBodyAddressKanji'PostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsRequestBodyAddressKanji'State :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | town
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsRequestBodyAddressKanji'Town :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsRequestBodyAddressKanji'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountPersonsRequestBodyAddressKanji'City obj) : (Data.Aeson..=) "country" (postAccountsAccountPersonsRequestBodyAddressKanji'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountPersonsRequestBodyAddressKanji'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountPersonsRequestBodyAddressKanji'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountPersonsRequestBodyAddressKanji'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountPersonsRequestBodyAddressKanji'State obj) : (Data.Aeson..=) "town" (postAccountsAccountPersonsRequestBodyAddressKanji'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountPersonsRequestBodyAddressKanji'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountPersonsRequestBodyAddressKanji'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountPersonsRequestBodyAddressKanji'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountPersonsRequestBodyAddressKanji'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountPersonsRequestBodyAddressKanji'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountsAccountPersonsRequestBodyAddressKanji'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountsAccountPersonsRequestBodyAddressKanji'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsRequestBodyAddressKanji'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsRequestBodyAddressKanji'" (\obj -> ((((((GHC.Base.pure PostAccountsAccountPersonsRequestBodyAddressKanji' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
-- | Defines the enum schema postAccountsAccountPersonsRequestBodyDob\'OneOf1
-- 
-- 
data PostAccountsAccountPersonsRequestBodyDob'OneOf1
    = PostAccountsAccountPersonsRequestBodyDob'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountPersonsRequestBodyDob'OneOf1EnumTyped Data.Text.Internal.Text
    | PostAccountsAccountPersonsRequestBodyDob'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsRequestBodyDob'OneOf1
    where toJSON (PostAccountsAccountPersonsRequestBodyDob'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountPersonsRequestBodyDob'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountPersonsRequestBodyDob'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostAccountsAccountPersonsRequestBodyDob'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostAccountsAccountPersonsRequestBodyDob'OneOf1EnumString_
                                          else PostAccountsAccountPersonsRequestBodyDob'OneOf1EnumOther val)
-- | Defines the data type for the schema postAccountsAccountPersonsRequestBodyDob\'OneOf2
-- 
-- 
data PostAccountsAccountPersonsRequestBodyDob'OneOf2 = PostAccountsAccountPersonsRequestBodyDob'OneOf2 {
  -- | day
  postAccountsAccountPersonsRequestBodyDob'OneOf2Day :: GHC.Integer.Type.Integer
  -- | month
  , postAccountsAccountPersonsRequestBodyDob'OneOf2Month :: GHC.Integer.Type.Integer
  -- | year
  , postAccountsAccountPersonsRequestBodyDob'OneOf2Year :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsRequestBodyDob'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "day" (postAccountsAccountPersonsRequestBodyDob'OneOf2Day obj) : (Data.Aeson..=) "month" (postAccountsAccountPersonsRequestBodyDob'OneOf2Month obj) : (Data.Aeson..=) "year" (postAccountsAccountPersonsRequestBodyDob'OneOf2Year obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "day" (postAccountsAccountPersonsRequestBodyDob'OneOf2Day obj) GHC.Base.<> ((Data.Aeson..=) "month" (postAccountsAccountPersonsRequestBodyDob'OneOf2Month obj) GHC.Base.<> (Data.Aeson..=) "year" (postAccountsAccountPersonsRequestBodyDob'OneOf2Year obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsRequestBodyDob'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsRequestBodyDob'OneOf2" (\obj -> ((GHC.Base.pure PostAccountsAccountPersonsRequestBodyDob'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "year"))
-- | Define the one-of schema postAccountsAccountPersonsRequestBodyDob\'
-- 
-- The person\'s date of birth.
data PostAccountsAccountPersonsRequestBodyDob'Variants
    = PostAccountsAccountPersonsRequestBodyDob'PostAccountsAccountPersonsRequestBodyDob'OneOf1 PostAccountsAccountPersonsRequestBodyDob'OneOf1
    | PostAccountsAccountPersonsRequestBodyDob'PostAccountsAccountPersonsRequestBodyDob'OneOf2 PostAccountsAccountPersonsRequestBodyDob'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsRequestBodyDob'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountsAccountPersonsRequestBodyDob'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postAccountsAccountPersonsRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostAccountsAccountPersonsRequestBodyMetadata' = PostAccountsAccountPersonsRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostAccountsAccountPersonsRequestBodyMetadata')
-- | Defines the data type for the schema postAccountsAccountPersonsRequestBodyRelationship\'
-- 
-- The relationship that this person has with the account\'s legal entity.
data PostAccountsAccountPersonsRequestBodyRelationship' = PostAccountsAccountPersonsRequestBodyRelationship' {
  -- | director
  postAccountsAccountPersonsRequestBodyRelationship'Director :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | executive
  , postAccountsAccountPersonsRequestBodyRelationship'Executive :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | owner
  , postAccountsAccountPersonsRequestBodyRelationship'Owner :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | percent_ownership
  , postAccountsAccountPersonsRequestBodyRelationship'PercentOwnership :: (GHC.Maybe.Maybe PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'Variants)
  -- | representative
  , postAccountsAccountPersonsRequestBodyRelationship'Representative :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | title
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPersonsRequestBodyRelationship'Title :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsRequestBodyRelationship'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "director" (postAccountsAccountPersonsRequestBodyRelationship'Director obj) : (Data.Aeson..=) "executive" (postAccountsAccountPersonsRequestBodyRelationship'Executive obj) : (Data.Aeson..=) "owner" (postAccountsAccountPersonsRequestBodyRelationship'Owner obj) : (Data.Aeson..=) "percent_ownership" (postAccountsAccountPersonsRequestBodyRelationship'PercentOwnership obj) : (Data.Aeson..=) "representative" (postAccountsAccountPersonsRequestBodyRelationship'Representative obj) : (Data.Aeson..=) "title" (postAccountsAccountPersonsRequestBodyRelationship'Title obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "director" (postAccountsAccountPersonsRequestBodyRelationship'Director obj) GHC.Base.<> ((Data.Aeson..=) "executive" (postAccountsAccountPersonsRequestBodyRelationship'Executive obj) GHC.Base.<> ((Data.Aeson..=) "owner" (postAccountsAccountPersonsRequestBodyRelationship'Owner obj) GHC.Base.<> ((Data.Aeson..=) "percent_ownership" (postAccountsAccountPersonsRequestBodyRelationship'PercentOwnership obj) GHC.Base.<> ((Data.Aeson..=) "representative" (postAccountsAccountPersonsRequestBodyRelationship'Representative obj) GHC.Base.<> (Data.Aeson..=) "title" (postAccountsAccountPersonsRequestBodyRelationship'Title obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsRequestBodyRelationship'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsRequestBodyRelationship'" (\obj -> (((((GHC.Base.pure PostAccountsAccountPersonsRequestBodyRelationship' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "director")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "executive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owner")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "percent_ownership")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "representative")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title"))
-- | Defines the enum schema postAccountsAccountPersonsRequestBodyRelationship\'Percent_ownership\'OneOf1
-- 
-- 
data PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1
    = PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1EnumTyped Data.Text.Internal.Text
    | PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1
    where toJSON (PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1EnumString_
                                          else PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1EnumOther val)
-- | Define the one-of schema postAccountsAccountPersonsRequestBodyRelationship\'Percent_ownership\'
-- 
-- 
data PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'Variants
    = PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1 PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1
    | PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'Double GHC.Types.Double
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postAccountsAccountPersonsRequestBodyVerification\'
-- 
-- The person\'s verification status.
data PostAccountsAccountPersonsRequestBodyVerification' = PostAccountsAccountPersonsRequestBodyVerification' {
  -- | additional_document
  postAccountsAccountPersonsRequestBodyVerification'AdditionalDocument :: (GHC.Maybe.Maybe PostAccountsAccountPersonsRequestBodyVerification'AdditionalDocument')
  -- | document
  , postAccountsAccountPersonsRequestBodyVerification'Document :: (GHC.Maybe.Maybe PostAccountsAccountPersonsRequestBodyVerification'Document')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsRequestBodyVerification'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "additional_document" (postAccountsAccountPersonsRequestBodyVerification'AdditionalDocument obj) : (Data.Aeson..=) "document" (postAccountsAccountPersonsRequestBodyVerification'Document obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "additional_document" (postAccountsAccountPersonsRequestBodyVerification'AdditionalDocument obj) GHC.Base.<> (Data.Aeson..=) "document" (postAccountsAccountPersonsRequestBodyVerification'Document obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsRequestBodyVerification'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsRequestBodyVerification'" (\obj -> (GHC.Base.pure PostAccountsAccountPersonsRequestBodyVerification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "additional_document")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document"))
-- | Defines the data type for the schema postAccountsAccountPersonsRequestBodyVerification\'Additional_document\'
-- 
-- 
data PostAccountsAccountPersonsRequestBodyVerification'AdditionalDocument' = PostAccountsAccountPersonsRequestBodyVerification'AdditionalDocument' {
  -- | back
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  postAccountsAccountPersonsRequestBodyVerification'AdditionalDocument'Back :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | front
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  , postAccountsAccountPersonsRequestBodyVerification'AdditionalDocument'Front :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsRequestBodyVerification'AdditionalDocument'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountsAccountPersonsRequestBodyVerification'AdditionalDocument'Back obj) : (Data.Aeson..=) "front" (postAccountsAccountPersonsRequestBodyVerification'AdditionalDocument'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountsAccountPersonsRequestBodyVerification'AdditionalDocument'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountsAccountPersonsRequestBodyVerification'AdditionalDocument'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsRequestBodyVerification'AdditionalDocument'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsRequestBodyVerification'AdditionalDocument'" (\obj -> (GHC.Base.pure PostAccountsAccountPersonsRequestBodyVerification'AdditionalDocument' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
-- | Defines the data type for the schema postAccountsAccountPersonsRequestBodyVerification\'Document\'
-- 
-- 
data PostAccountsAccountPersonsRequestBodyVerification'Document' = PostAccountsAccountPersonsRequestBodyVerification'Document' {
  -- | back
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  postAccountsAccountPersonsRequestBodyVerification'Document'Back :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | front
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  , postAccountsAccountPersonsRequestBodyVerification'Document'Front :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsRequestBodyVerification'Document'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountsAccountPersonsRequestBodyVerification'Document'Back obj) : (Data.Aeson..=) "front" (postAccountsAccountPersonsRequestBodyVerification'Document'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountsAccountPersonsRequestBodyVerification'Document'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountsAccountPersonsRequestBodyVerification'Document'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsRequestBodyVerification'Document'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsRequestBodyVerification'Document'" (\obj -> (GHC.Base.pure PostAccountsAccountPersonsRequestBodyVerification'Document' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
-- | Represents a response of the operation 'postAccountsAccountPersons'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostAccountsAccountPersonsResponseError' is used.
data PostAccountsAccountPersonsResponse =                   
   PostAccountsAccountPersonsResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostAccountsAccountPersonsResponse200 Person            -- ^ Successful response.
  | PostAccountsAccountPersonsResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
