{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postAccountPersons
module StripeAPI.Operations.PostAccountPersons where

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

-- | > POST /v1/account/persons
-- 
-- \<p>Creates a new person.\<\/p>
postAccountPersons :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Maybe.Maybe PostAccountPersonsRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostAccountPersonsResponse)) -- ^ Monad containing the result of the operation
postAccountPersons config
                   body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountPersonsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountPersonsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                        Person)
                                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountPersonsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/account/persons") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/account/persons
-- 
-- The same as 'postAccountPersons' but returns the raw 'Data.ByteString.Char8.ByteString'
postAccountPersonsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                       StripeAPI.Common.SecurityScheme s) =>
                         StripeAPI.Common.Configuration s ->
                         GHC.Maybe.Maybe PostAccountPersonsRequestBody ->
                         m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountPersonsRaw config
                      body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/account/persons") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/account/persons
-- 
-- Monadic version of 'postAccountPersons' (use with 'StripeAPI.Common.runWithConfiguration')
postAccountPersonsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                     StripeAPI.Common.SecurityScheme s) =>
                       GHC.Maybe.Maybe PostAccountPersonsRequestBody ->
                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                          m
                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                              (Network.HTTP.Client.Types.Response PostAccountPersonsResponse))
postAccountPersonsM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostAccountPersonsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountPersonsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                         Person)
                                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountPersonsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/account/persons") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/account/persons
-- 
-- Monadic version of 'postAccountPersonsRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postAccountPersonsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          GHC.Maybe.Maybe PostAccountPersonsRequestBody ->
                          Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                             m
                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                 (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountPersonsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/account/persons") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postAccountPersonsRequestBody
-- 
-- 
data PostAccountPersonsRequestBody = PostAccountPersonsRequestBody {
  -- | account
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountPersonsRequestBodyAccount :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | address: The person\'s address.
  , postAccountPersonsRequestBodyAddress :: (GHC.Maybe.Maybe PostAccountPersonsRequestBodyAddress')
  -- | address_kana: The Kana variation of the person\'s address (Japan only).
  , postAccountPersonsRequestBodyAddressKana :: (GHC.Maybe.Maybe PostAccountPersonsRequestBodyAddressKana')
  -- | address_kanji: The Kanji variation of the person\'s address (Japan only).
  , postAccountPersonsRequestBodyAddressKanji :: (GHC.Maybe.Maybe PostAccountPersonsRequestBodyAddressKanji')
  -- | dob: The person\'s date of birth.
  , postAccountPersonsRequestBodyDob :: (GHC.Maybe.Maybe PostAccountPersonsRequestBodyDob'Variants)
  -- | email: The person\'s email address.
  , postAccountPersonsRequestBodyEmail :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | expand: Specifies which fields in the response should be expanded.
  , postAccountPersonsRequestBodyExpand :: (GHC.Maybe.Maybe ([] Data.Text.Internal.Text))
  -- | first_name: The person\'s first name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPersonsRequestBodyFirstName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | first_name_kana: The Kana variation of the person\'s first name (Japan only).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPersonsRequestBodyFirstNameKana :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | first_name_kanji: The Kanji variation of the person\'s first name (Japan only).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPersonsRequestBodyFirstNameKanji :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | gender: The person\'s gender (International regulations require either \"male\" or \"female\").
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPersonsRequestBodyGender :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id_number: The person\'s ID number, as appropriate for their country. For example, a social security number in the U.S., social insurance number in Canada, etc. Instead of the number itself, you can also provide a [PII token provided by Stripe.js](https:\/\/stripe.com\/docs\/stripe.js\#collecting-pii-data).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPersonsRequestBodyIdNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | last_name: The person\'s last name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPersonsRequestBodyLastName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | last_name_kana: The Kana variation of the person\'s last name (Japan only).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPersonsRequestBodyLastNameKana :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | last_name_kanji: The Kanji variation of the person\'s last name (Japan only).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPersonsRequestBodyLastNameKanji :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | maiden_name: The person\'s maiden name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPersonsRequestBodyMaidenName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postAccountPersonsRequestBodyMetadata :: (GHC.Maybe.Maybe PostAccountPersonsRequestBodyMetadata')
  -- | person_token: A [person token](https:\/\/stripe.com\/docs\/connect\/account-tokens), used to securely provide details to the person.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPersonsRequestBodyPersonToken :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | phone: The person\'s phone number.
  , postAccountPersonsRequestBodyPhone :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | relationship: The relationship that this person has with the account\'s legal entity.
  , postAccountPersonsRequestBodyRelationship :: (GHC.Maybe.Maybe PostAccountPersonsRequestBodyRelationship')
  -- | ssn_last_4: The last 4 digits of the person\'s social security number.
  , postAccountPersonsRequestBodySsnLast_4 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | verification: The person\'s verification status.
  , postAccountPersonsRequestBodyVerification :: (GHC.Maybe.Maybe PostAccountPersonsRequestBodyVerification')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPersonsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account" (postAccountPersonsRequestBodyAccount obj) : (Data.Aeson..=) "address" (postAccountPersonsRequestBodyAddress obj) : (Data.Aeson..=) "address_kana" (postAccountPersonsRequestBodyAddressKana obj) : (Data.Aeson..=) "address_kanji" (postAccountPersonsRequestBodyAddressKanji obj) : (Data.Aeson..=) "dob" (postAccountPersonsRequestBodyDob obj) : (Data.Aeson..=) "email" (postAccountPersonsRequestBodyEmail obj) : (Data.Aeson..=) "expand" (postAccountPersonsRequestBodyExpand obj) : (Data.Aeson..=) "first_name" (postAccountPersonsRequestBodyFirstName obj) : (Data.Aeson..=) "first_name_kana" (postAccountPersonsRequestBodyFirstNameKana obj) : (Data.Aeson..=) "first_name_kanji" (postAccountPersonsRequestBodyFirstNameKanji obj) : (Data.Aeson..=) "gender" (postAccountPersonsRequestBodyGender obj) : (Data.Aeson..=) "id_number" (postAccountPersonsRequestBodyIdNumber obj) : (Data.Aeson..=) "last_name" (postAccountPersonsRequestBodyLastName obj) : (Data.Aeson..=) "last_name_kana" (postAccountPersonsRequestBodyLastNameKana obj) : (Data.Aeson..=) "last_name_kanji" (postAccountPersonsRequestBodyLastNameKanji obj) : (Data.Aeson..=) "maiden_name" (postAccountPersonsRequestBodyMaidenName obj) : (Data.Aeson..=) "metadata" (postAccountPersonsRequestBodyMetadata obj) : (Data.Aeson..=) "person_token" (postAccountPersonsRequestBodyPersonToken obj) : (Data.Aeson..=) "phone" (postAccountPersonsRequestBodyPhone obj) : (Data.Aeson..=) "relationship" (postAccountPersonsRequestBodyRelationship obj) : (Data.Aeson..=) "ssn_last_4" (postAccountPersonsRequestBodySsnLast_4 obj) : (Data.Aeson..=) "verification" (postAccountPersonsRequestBodyVerification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account" (postAccountPersonsRequestBodyAccount obj) GHC.Base.<> ((Data.Aeson..=) "address" (postAccountPersonsRequestBodyAddress obj) GHC.Base.<> ((Data.Aeson..=) "address_kana" (postAccountPersonsRequestBodyAddressKana obj) GHC.Base.<> ((Data.Aeson..=) "address_kanji" (postAccountPersonsRequestBodyAddressKanji obj) GHC.Base.<> ((Data.Aeson..=) "dob" (postAccountPersonsRequestBodyDob obj) GHC.Base.<> ((Data.Aeson..=) "email" (postAccountPersonsRequestBodyEmail obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postAccountPersonsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "first_name" (postAccountPersonsRequestBodyFirstName obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kana" (postAccountPersonsRequestBodyFirstNameKana obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kanji" (postAccountPersonsRequestBodyFirstNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "gender" (postAccountPersonsRequestBodyGender obj) GHC.Base.<> ((Data.Aeson..=) "id_number" (postAccountPersonsRequestBodyIdNumber obj) GHC.Base.<> ((Data.Aeson..=) "last_name" (postAccountPersonsRequestBodyLastName obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kana" (postAccountPersonsRequestBodyLastNameKana obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kanji" (postAccountPersonsRequestBodyLastNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "maiden_name" (postAccountPersonsRequestBodyMaidenName obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postAccountPersonsRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "person_token" (postAccountPersonsRequestBodyPersonToken obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postAccountPersonsRequestBodyPhone obj) GHC.Base.<> ((Data.Aeson..=) "relationship" (postAccountPersonsRequestBodyRelationship obj) GHC.Base.<> ((Data.Aeson..=) "ssn_last_4" (postAccountPersonsRequestBodySsnLast_4 obj) GHC.Base.<> (Data.Aeson..=) "verification" (postAccountPersonsRequestBodyVerification obj))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPersonsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPersonsRequestBody" (\obj -> (((((((((((((((((((((GHC.Base.pure PostAccountPersonsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dob")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gender")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "maiden_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "person_token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "relationship")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ssn_last_4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verification"))
-- | Defines the data type for the schema postAccountPersonsRequestBodyAddress\'
-- 
-- The person\'s address.
data PostAccountPersonsRequestBodyAddress' = PostAccountPersonsRequestBodyAddress' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 100
  postAccountPersonsRequestBodyAddress'City :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPersonsRequestBodyAddress'Country :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 200
  , postAccountPersonsRequestBodyAddress'Line1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 200
  , postAccountPersonsRequestBodyAddress'Line2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPersonsRequestBodyAddress'PostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPersonsRequestBodyAddress'State :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPersonsRequestBodyAddress'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountPersonsRequestBodyAddress'City obj) : (Data.Aeson..=) "country" (postAccountPersonsRequestBodyAddress'Country obj) : (Data.Aeson..=) "line1" (postAccountPersonsRequestBodyAddress'Line1 obj) : (Data.Aeson..=) "line2" (postAccountPersonsRequestBodyAddress'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountPersonsRequestBodyAddress'PostalCode obj) : (Data.Aeson..=) "state" (postAccountPersonsRequestBodyAddress'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountPersonsRequestBodyAddress'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountPersonsRequestBodyAddress'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountPersonsRequestBodyAddress'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountPersonsRequestBodyAddress'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountPersonsRequestBodyAddress'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postAccountPersonsRequestBodyAddress'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPersonsRequestBodyAddress'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPersonsRequestBodyAddress'" (\obj -> (((((GHC.Base.pure PostAccountPersonsRequestBodyAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
-- | Defines the data type for the schema postAccountPersonsRequestBodyAddress_kana\'
-- 
-- The Kana variation of the person\'s address (Japan only).
data PostAccountPersonsRequestBodyAddressKana' = PostAccountPersonsRequestBodyAddressKana' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountPersonsRequestBodyAddressKana'City :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPersonsRequestBodyAddressKana'Country :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPersonsRequestBodyAddressKana'Line1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPersonsRequestBodyAddressKana'Line2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPersonsRequestBodyAddressKana'PostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPersonsRequestBodyAddressKana'State :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | town
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPersonsRequestBodyAddressKana'Town :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPersonsRequestBodyAddressKana'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountPersonsRequestBodyAddressKana'City obj) : (Data.Aeson..=) "country" (postAccountPersonsRequestBodyAddressKana'Country obj) : (Data.Aeson..=) "line1" (postAccountPersonsRequestBodyAddressKana'Line1 obj) : (Data.Aeson..=) "line2" (postAccountPersonsRequestBodyAddressKana'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountPersonsRequestBodyAddressKana'PostalCode obj) : (Data.Aeson..=) "state" (postAccountPersonsRequestBodyAddressKana'State obj) : (Data.Aeson..=) "town" (postAccountPersonsRequestBodyAddressKana'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountPersonsRequestBodyAddressKana'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountPersonsRequestBodyAddressKana'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountPersonsRequestBodyAddressKana'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountPersonsRequestBodyAddressKana'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountPersonsRequestBodyAddressKana'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountPersonsRequestBodyAddressKana'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountPersonsRequestBodyAddressKana'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPersonsRequestBodyAddressKana'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPersonsRequestBodyAddressKana'" (\obj -> ((((((GHC.Base.pure PostAccountPersonsRequestBodyAddressKana' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
-- | Defines the data type for the schema postAccountPersonsRequestBodyAddress_kanji\'
-- 
-- The Kanji variation of the person\'s address (Japan only).
data PostAccountPersonsRequestBodyAddressKanji' = PostAccountPersonsRequestBodyAddressKanji' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountPersonsRequestBodyAddressKanji'City :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPersonsRequestBodyAddressKanji'Country :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPersonsRequestBodyAddressKanji'Line1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPersonsRequestBodyAddressKanji'Line2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPersonsRequestBodyAddressKanji'PostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPersonsRequestBodyAddressKanji'State :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | town
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPersonsRequestBodyAddressKanji'Town :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPersonsRequestBodyAddressKanji'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountPersonsRequestBodyAddressKanji'City obj) : (Data.Aeson..=) "country" (postAccountPersonsRequestBodyAddressKanji'Country obj) : (Data.Aeson..=) "line1" (postAccountPersonsRequestBodyAddressKanji'Line1 obj) : (Data.Aeson..=) "line2" (postAccountPersonsRequestBodyAddressKanji'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountPersonsRequestBodyAddressKanji'PostalCode obj) : (Data.Aeson..=) "state" (postAccountPersonsRequestBodyAddressKanji'State obj) : (Data.Aeson..=) "town" (postAccountPersonsRequestBodyAddressKanji'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountPersonsRequestBodyAddressKanji'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountPersonsRequestBodyAddressKanji'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountPersonsRequestBodyAddressKanji'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountPersonsRequestBodyAddressKanji'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountPersonsRequestBodyAddressKanji'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountPersonsRequestBodyAddressKanji'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountPersonsRequestBodyAddressKanji'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPersonsRequestBodyAddressKanji'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPersonsRequestBodyAddressKanji'" (\obj -> ((((((GHC.Base.pure PostAccountPersonsRequestBodyAddressKanji' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
-- | Defines the enum schema postAccountPersonsRequestBodyDob\'OneOf1
-- 
-- 
data PostAccountPersonsRequestBodyDob'OneOf1
    = PostAccountPersonsRequestBodyDob'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountPersonsRequestBodyDob'OneOf1EnumTyped Data.Text.Internal.Text
    | PostAccountPersonsRequestBodyDob'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPersonsRequestBodyDob'OneOf1
    where toJSON (PostAccountPersonsRequestBodyDob'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountPersonsRequestBodyDob'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountPersonsRequestBodyDob'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostAccountPersonsRequestBodyDob'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostAccountPersonsRequestBodyDob'OneOf1EnumString_
                                          else PostAccountPersonsRequestBodyDob'OneOf1EnumOther val)
-- | Defines the data type for the schema postAccountPersonsRequestBodyDob\'OneOf2
-- 
-- 
data PostAccountPersonsRequestBodyDob'OneOf2 = PostAccountPersonsRequestBodyDob'OneOf2 {
  -- | day
  postAccountPersonsRequestBodyDob'OneOf2Day :: GHC.Integer.Type.Integer
  -- | month
  , postAccountPersonsRequestBodyDob'OneOf2Month :: GHC.Integer.Type.Integer
  -- | year
  , postAccountPersonsRequestBodyDob'OneOf2Year :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPersonsRequestBodyDob'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "day" (postAccountPersonsRequestBodyDob'OneOf2Day obj) : (Data.Aeson..=) "month" (postAccountPersonsRequestBodyDob'OneOf2Month obj) : (Data.Aeson..=) "year" (postAccountPersonsRequestBodyDob'OneOf2Year obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "day" (postAccountPersonsRequestBodyDob'OneOf2Day obj) GHC.Base.<> ((Data.Aeson..=) "month" (postAccountPersonsRequestBodyDob'OneOf2Month obj) GHC.Base.<> (Data.Aeson..=) "year" (postAccountPersonsRequestBodyDob'OneOf2Year obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPersonsRequestBodyDob'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPersonsRequestBodyDob'OneOf2" (\obj -> ((GHC.Base.pure PostAccountPersonsRequestBodyDob'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "year"))
-- | Define the one-of schema postAccountPersonsRequestBodyDob\'
-- 
-- The person\'s date of birth.
data PostAccountPersonsRequestBodyDob'Variants
    = PostAccountPersonsRequestBodyDob'PostAccountPersonsRequestBodyDob'OneOf1 PostAccountPersonsRequestBodyDob'OneOf1
    | PostAccountPersonsRequestBodyDob'PostAccountPersonsRequestBodyDob'OneOf2 PostAccountPersonsRequestBodyDob'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountPersonsRequestBodyDob'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountPersonsRequestBodyDob'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postAccountPersonsRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostAccountPersonsRequestBodyMetadata' = PostAccountPersonsRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPersonsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPersonsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPersonsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostAccountPersonsRequestBodyMetadata')
-- | Defines the data type for the schema postAccountPersonsRequestBodyRelationship\'
-- 
-- The relationship that this person has with the account\'s legal entity.
data PostAccountPersonsRequestBodyRelationship' = PostAccountPersonsRequestBodyRelationship' {
  -- | director
  postAccountPersonsRequestBodyRelationship'Director :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | executive
  , postAccountPersonsRequestBodyRelationship'Executive :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | owner
  , postAccountPersonsRequestBodyRelationship'Owner :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | percent_ownership
  , postAccountPersonsRequestBodyRelationship'PercentOwnership :: (GHC.Maybe.Maybe PostAccountPersonsRequestBodyRelationship'PercentOwnership'Variants)
  -- | representative
  , postAccountPersonsRequestBodyRelationship'Representative :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | title
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountPersonsRequestBodyRelationship'Title :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPersonsRequestBodyRelationship'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "director" (postAccountPersonsRequestBodyRelationship'Director obj) : (Data.Aeson..=) "executive" (postAccountPersonsRequestBodyRelationship'Executive obj) : (Data.Aeson..=) "owner" (postAccountPersonsRequestBodyRelationship'Owner obj) : (Data.Aeson..=) "percent_ownership" (postAccountPersonsRequestBodyRelationship'PercentOwnership obj) : (Data.Aeson..=) "representative" (postAccountPersonsRequestBodyRelationship'Representative obj) : (Data.Aeson..=) "title" (postAccountPersonsRequestBodyRelationship'Title obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "director" (postAccountPersonsRequestBodyRelationship'Director obj) GHC.Base.<> ((Data.Aeson..=) "executive" (postAccountPersonsRequestBodyRelationship'Executive obj) GHC.Base.<> ((Data.Aeson..=) "owner" (postAccountPersonsRequestBodyRelationship'Owner obj) GHC.Base.<> ((Data.Aeson..=) "percent_ownership" (postAccountPersonsRequestBodyRelationship'PercentOwnership obj) GHC.Base.<> ((Data.Aeson..=) "representative" (postAccountPersonsRequestBodyRelationship'Representative obj) GHC.Base.<> (Data.Aeson..=) "title" (postAccountPersonsRequestBodyRelationship'Title obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPersonsRequestBodyRelationship'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPersonsRequestBodyRelationship'" (\obj -> (((((GHC.Base.pure PostAccountPersonsRequestBodyRelationship' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "director")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "executive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owner")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "percent_ownership")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "representative")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title"))
-- | Defines the enum schema postAccountPersonsRequestBodyRelationship\'Percent_ownership\'OneOf1
-- 
-- 
data PostAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1
    = PostAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1EnumTyped Data.Text.Internal.Text
    | PostAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1
    where toJSON (PostAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1EnumString_
                                          else PostAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1EnumOther val)
-- | Define the one-of schema postAccountPersonsRequestBodyRelationship\'Percent_ownership\'
-- 
-- 
data PostAccountPersonsRequestBodyRelationship'PercentOwnership'Variants
    = PostAccountPersonsRequestBodyRelationship'PercentOwnership'PostAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1 PostAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1
    | PostAccountPersonsRequestBodyRelationship'PercentOwnership'Double GHC.Types.Double
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountPersonsRequestBodyRelationship'PercentOwnership'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountPersonsRequestBodyRelationship'PercentOwnership'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postAccountPersonsRequestBodyVerification\'
-- 
-- The person\'s verification status.
data PostAccountPersonsRequestBodyVerification' = PostAccountPersonsRequestBodyVerification' {
  -- | additional_document
  postAccountPersonsRequestBodyVerification'AdditionalDocument :: (GHC.Maybe.Maybe PostAccountPersonsRequestBodyVerification'AdditionalDocument')
  -- | document
  , postAccountPersonsRequestBodyVerification'Document :: (GHC.Maybe.Maybe PostAccountPersonsRequestBodyVerification'Document')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPersonsRequestBodyVerification'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "additional_document" (postAccountPersonsRequestBodyVerification'AdditionalDocument obj) : (Data.Aeson..=) "document" (postAccountPersonsRequestBodyVerification'Document obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "additional_document" (postAccountPersonsRequestBodyVerification'AdditionalDocument obj) GHC.Base.<> (Data.Aeson..=) "document" (postAccountPersonsRequestBodyVerification'Document obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPersonsRequestBodyVerification'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPersonsRequestBodyVerification'" (\obj -> (GHC.Base.pure PostAccountPersonsRequestBodyVerification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "additional_document")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document"))
-- | Defines the data type for the schema postAccountPersonsRequestBodyVerification\'Additional_document\'
-- 
-- 
data PostAccountPersonsRequestBodyVerification'AdditionalDocument' = PostAccountPersonsRequestBodyVerification'AdditionalDocument' {
  -- | back
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  postAccountPersonsRequestBodyVerification'AdditionalDocument'Back :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | front
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  , postAccountPersonsRequestBodyVerification'AdditionalDocument'Front :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPersonsRequestBodyVerification'AdditionalDocument'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountPersonsRequestBodyVerification'AdditionalDocument'Back obj) : (Data.Aeson..=) "front" (postAccountPersonsRequestBodyVerification'AdditionalDocument'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountPersonsRequestBodyVerification'AdditionalDocument'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountPersonsRequestBodyVerification'AdditionalDocument'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPersonsRequestBodyVerification'AdditionalDocument'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPersonsRequestBodyVerification'AdditionalDocument'" (\obj -> (GHC.Base.pure PostAccountPersonsRequestBodyVerification'AdditionalDocument' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
-- | Defines the data type for the schema postAccountPersonsRequestBodyVerification\'Document\'
-- 
-- 
data PostAccountPersonsRequestBodyVerification'Document' = PostAccountPersonsRequestBodyVerification'Document' {
  -- | back
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  postAccountPersonsRequestBodyVerification'Document'Back :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | front
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  , postAccountPersonsRequestBodyVerification'Document'Front :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPersonsRequestBodyVerification'Document'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountPersonsRequestBodyVerification'Document'Back obj) : (Data.Aeson..=) "front" (postAccountPersonsRequestBodyVerification'Document'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountPersonsRequestBodyVerification'Document'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountPersonsRequestBodyVerification'Document'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPersonsRequestBodyVerification'Document'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPersonsRequestBodyVerification'Document'" (\obj -> (GHC.Base.pure PostAccountPersonsRequestBodyVerification'Document' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
-- | Represents a response of the operation 'postAccountPersons'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostAccountPersonsResponseError' is used.
data PostAccountPersonsResponse =                   
   PostAccountPersonsResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostAccountPersonsResponse200 Person            -- ^ Successful response.
  | PostAccountPersonsResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
