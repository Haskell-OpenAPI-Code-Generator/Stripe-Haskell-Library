{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postAccountsAccountPeople
module StripeAPI.Operations.PostAccountsAccountPeople where

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

-- | > POST /v1/accounts/{account}/people
-- 
-- \<p>Creates a new person.\<\/p>
postAccountsAccountPeople :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                       -- ^ account | Constraints: Maximum length of 5000
  -> PostAccountsAccountPeopleRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostAccountsAccountPeopleResponse)) -- ^ Monad containing the result of the operation
postAccountsAccountPeople config
                          account
                          body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountsAccountPeopleResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountPeopleResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                             Person)
                                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountPeopleResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/people"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/accounts/{account}/people
-- 
-- The same as 'postAccountsAccountPeople' but returns the raw 'Data.ByteString.Char8.ByteString'
postAccountsAccountPeopleRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                StripeAPI.Common.Configuration s ->
                                GHC.Base.String ->
                                PostAccountsAccountPeopleRequestBody ->
                                m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountsAccountPeopleRaw config
                             account
                             body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/people"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/accounts/{account}/people
-- 
-- Monadic version of 'postAccountsAccountPeople' (use with 'StripeAPI.Common.runWithConfiguration')
postAccountsAccountPeopleM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                            StripeAPI.Common.SecurityScheme s) =>
                              GHC.Base.String ->
                              PostAccountsAccountPeopleRequestBody ->
                              Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                 m
                                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                     (Network.HTTP.Client.Types.Response PostAccountsAccountPeopleResponse))
postAccountsAccountPeopleM account
                           body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostAccountsAccountPeopleResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountPeopleResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                              Person)
                                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountPeopleResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                Error)
                                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/people"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/accounts/{account}/people
-- 
-- Monadic version of 'postAccountsAccountPeopleRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postAccountsAccountPeopleRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                               StripeAPI.Common.SecurityScheme s) =>
                                 GHC.Base.String ->
                                 PostAccountsAccountPeopleRequestBody ->
                                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                    m
                                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountsAccountPeopleRawM account
                              body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/people"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postAccountsAccountPeopleRequestBody
-- 
-- 
data PostAccountsAccountPeopleRequestBody = PostAccountsAccountPeopleRequestBody {
  -- | address: The person\'s address.
  postAccountsAccountPeopleRequestBodyAddress :: (GHC.Maybe.Maybe PostAccountsAccountPeopleRequestBodyAddress')
  -- | address_kana: The Kana variation of the person\'s address (Japan only).
  , postAccountsAccountPeopleRequestBodyAddressKana :: (GHC.Maybe.Maybe PostAccountsAccountPeopleRequestBodyAddressKana')
  -- | address_kanji: The Kanji variation of the person\'s address (Japan only).
  , postAccountsAccountPeopleRequestBodyAddressKanji :: (GHC.Maybe.Maybe PostAccountsAccountPeopleRequestBodyAddressKanji')
  -- | dob: The person\'s date of birth.
  , postAccountsAccountPeopleRequestBodyDob :: (GHC.Maybe.Maybe PostAccountsAccountPeopleRequestBodyDob'Variants)
  -- | email: The person\'s email address.
  , postAccountsAccountPeopleRequestBodyEmail :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | expand: Specifies which fields in the response should be expanded.
  , postAccountsAccountPeopleRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | first_name: The person\'s first name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPeopleRequestBodyFirstName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | first_name_kana: The Kana variation of the person\'s first name (Japan only).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPeopleRequestBodyFirstNameKana :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | first_name_kanji: The Kanji variation of the person\'s first name (Japan only).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPeopleRequestBodyFirstNameKanji :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | gender: The person\'s gender (International regulations require either \"male\" or \"female\").
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPeopleRequestBodyGender :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | id_number: The person\'s ID number, as appropriate for their country. For example, a social security number in the U.S., social insurance number in Canada, etc. Instead of the number itself, you can also provide a [PII token provided by Stripe.js](https:\/\/stripe.com\/docs\/stripe.js\#collecting-pii-data).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPeopleRequestBodyIdNumber :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | last_name: The person\'s last name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPeopleRequestBodyLastName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | last_name_kana: The Kana variation of the person\'s last name (Japan only).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPeopleRequestBodyLastNameKana :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | last_name_kanji: The Kanji variation of the person\'s last name (Japan only).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPeopleRequestBodyLastNameKanji :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | maiden_name: The person\'s maiden name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPeopleRequestBodyMaidenName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postAccountsAccountPeopleRequestBodyMetadata :: (GHC.Maybe.Maybe PostAccountsAccountPeopleRequestBodyMetadata')
  -- | person_token: A [person token](https:\/\/stripe.com\/docs\/connect\/account-tokens), used to securely provide details to the person.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPeopleRequestBodyPersonToken :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | phone: The person\'s phone number.
  , postAccountsAccountPeopleRequestBodyPhone :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | relationship: The relationship that this person has with the account\'s legal entity.
  , postAccountsAccountPeopleRequestBodyRelationship :: (GHC.Maybe.Maybe PostAccountsAccountPeopleRequestBodyRelationship')
  -- | ssn_last_4: The last 4 digits of the person\'s social security number.
  , postAccountsAccountPeopleRequestBodySsnLast_4 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | verification: The person\'s verification status.
  , postAccountsAccountPeopleRequestBodyVerification :: (GHC.Maybe.Maybe PostAccountsAccountPeopleRequestBodyVerification')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPeopleRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postAccountsAccountPeopleRequestBodyAddress obj) : (Data.Aeson..=) "address_kana" (postAccountsAccountPeopleRequestBodyAddressKana obj) : (Data.Aeson..=) "address_kanji" (postAccountsAccountPeopleRequestBodyAddressKanji obj) : (Data.Aeson..=) "dob" (postAccountsAccountPeopleRequestBodyDob obj) : (Data.Aeson..=) "email" (postAccountsAccountPeopleRequestBodyEmail obj) : (Data.Aeson..=) "expand" (postAccountsAccountPeopleRequestBodyExpand obj) : (Data.Aeson..=) "first_name" (postAccountsAccountPeopleRequestBodyFirstName obj) : (Data.Aeson..=) "first_name_kana" (postAccountsAccountPeopleRequestBodyFirstNameKana obj) : (Data.Aeson..=) "first_name_kanji" (postAccountsAccountPeopleRequestBodyFirstNameKanji obj) : (Data.Aeson..=) "gender" (postAccountsAccountPeopleRequestBodyGender obj) : (Data.Aeson..=) "id_number" (postAccountsAccountPeopleRequestBodyIdNumber obj) : (Data.Aeson..=) "last_name" (postAccountsAccountPeopleRequestBodyLastName obj) : (Data.Aeson..=) "last_name_kana" (postAccountsAccountPeopleRequestBodyLastNameKana obj) : (Data.Aeson..=) "last_name_kanji" (postAccountsAccountPeopleRequestBodyLastNameKanji obj) : (Data.Aeson..=) "maiden_name" (postAccountsAccountPeopleRequestBodyMaidenName obj) : (Data.Aeson..=) "metadata" (postAccountsAccountPeopleRequestBodyMetadata obj) : (Data.Aeson..=) "person_token" (postAccountsAccountPeopleRequestBodyPersonToken obj) : (Data.Aeson..=) "phone" (postAccountsAccountPeopleRequestBodyPhone obj) : (Data.Aeson..=) "relationship" (postAccountsAccountPeopleRequestBodyRelationship obj) : (Data.Aeson..=) "ssn_last_4" (postAccountsAccountPeopleRequestBodySsnLast_4 obj) : (Data.Aeson..=) "verification" (postAccountsAccountPeopleRequestBodyVerification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postAccountsAccountPeopleRequestBodyAddress obj) GHC.Base.<> ((Data.Aeson..=) "address_kana" (postAccountsAccountPeopleRequestBodyAddressKana obj) GHC.Base.<> ((Data.Aeson..=) "address_kanji" (postAccountsAccountPeopleRequestBodyAddressKanji obj) GHC.Base.<> ((Data.Aeson..=) "dob" (postAccountsAccountPeopleRequestBodyDob obj) GHC.Base.<> ((Data.Aeson..=) "email" (postAccountsAccountPeopleRequestBodyEmail obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postAccountsAccountPeopleRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "first_name" (postAccountsAccountPeopleRequestBodyFirstName obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kana" (postAccountsAccountPeopleRequestBodyFirstNameKana obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kanji" (postAccountsAccountPeopleRequestBodyFirstNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "gender" (postAccountsAccountPeopleRequestBodyGender obj) GHC.Base.<> ((Data.Aeson..=) "id_number" (postAccountsAccountPeopleRequestBodyIdNumber obj) GHC.Base.<> ((Data.Aeson..=) "last_name" (postAccountsAccountPeopleRequestBodyLastName obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kana" (postAccountsAccountPeopleRequestBodyLastNameKana obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kanji" (postAccountsAccountPeopleRequestBodyLastNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "maiden_name" (postAccountsAccountPeopleRequestBodyMaidenName obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postAccountsAccountPeopleRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "person_token" (postAccountsAccountPeopleRequestBodyPersonToken obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postAccountsAccountPeopleRequestBodyPhone obj) GHC.Base.<> ((Data.Aeson..=) "relationship" (postAccountsAccountPeopleRequestBodyRelationship obj) GHC.Base.<> ((Data.Aeson..=) "ssn_last_4" (postAccountsAccountPeopleRequestBodySsnLast_4 obj) GHC.Base.<> (Data.Aeson..=) "verification" (postAccountsAccountPeopleRequestBodyVerification obj)))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeopleRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeopleRequestBody" (\obj -> ((((((((((((((((((((GHC.Base.pure PostAccountsAccountPeopleRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dob")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gender")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "maiden_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "person_token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "relationship")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ssn_last_4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verification"))
-- | Defines the data type for the schema postAccountsAccountPeopleRequestBodyAddress\'
-- 
-- The person\'s address.
data PostAccountsAccountPeopleRequestBodyAddress' = PostAccountsAccountPeopleRequestBodyAddress' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 100
  postAccountsAccountPeopleRequestBodyAddress'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPeopleRequestBodyAddress'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 200
  , postAccountsAccountPeopleRequestBodyAddress'Line1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 200
  , postAccountsAccountPeopleRequestBodyAddress'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPeopleRequestBodyAddress'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPeopleRequestBodyAddress'State :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPeopleRequestBodyAddress'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountPeopleRequestBodyAddress'City obj) : (Data.Aeson..=) "country" (postAccountsAccountPeopleRequestBodyAddress'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountPeopleRequestBodyAddress'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountPeopleRequestBodyAddress'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountPeopleRequestBodyAddress'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountPeopleRequestBodyAddress'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountPeopleRequestBodyAddress'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountPeopleRequestBodyAddress'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountPeopleRequestBodyAddress'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountPeopleRequestBodyAddress'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountPeopleRequestBodyAddress'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postAccountsAccountPeopleRequestBodyAddress'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeopleRequestBodyAddress'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeopleRequestBodyAddress'" (\obj -> (((((GHC.Base.pure PostAccountsAccountPeopleRequestBodyAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
-- | Defines the data type for the schema postAccountsAccountPeopleRequestBodyAddress_kana\'
-- 
-- The Kana variation of the person\'s address (Japan only).
data PostAccountsAccountPeopleRequestBodyAddressKana' = PostAccountsAccountPeopleRequestBodyAddressKana' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountsAccountPeopleRequestBodyAddressKana'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPeopleRequestBodyAddressKana'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPeopleRequestBodyAddressKana'Line1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPeopleRequestBodyAddressKana'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPeopleRequestBodyAddressKana'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPeopleRequestBodyAddressKana'State :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | town
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPeopleRequestBodyAddressKana'Town :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPeopleRequestBodyAddressKana'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountPeopleRequestBodyAddressKana'City obj) : (Data.Aeson..=) "country" (postAccountsAccountPeopleRequestBodyAddressKana'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountPeopleRequestBodyAddressKana'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountPeopleRequestBodyAddressKana'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountPeopleRequestBodyAddressKana'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountPeopleRequestBodyAddressKana'State obj) : (Data.Aeson..=) "town" (postAccountsAccountPeopleRequestBodyAddressKana'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountPeopleRequestBodyAddressKana'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountPeopleRequestBodyAddressKana'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountPeopleRequestBodyAddressKana'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountPeopleRequestBodyAddressKana'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountPeopleRequestBodyAddressKana'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountsAccountPeopleRequestBodyAddressKana'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountsAccountPeopleRequestBodyAddressKana'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeopleRequestBodyAddressKana'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeopleRequestBodyAddressKana'" (\obj -> ((((((GHC.Base.pure PostAccountsAccountPeopleRequestBodyAddressKana' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
-- | Defines the data type for the schema postAccountsAccountPeopleRequestBodyAddress_kanji\'
-- 
-- The Kanji variation of the person\'s address (Japan only).
data PostAccountsAccountPeopleRequestBodyAddressKanji' = PostAccountsAccountPeopleRequestBodyAddressKanji' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountsAccountPeopleRequestBodyAddressKanji'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPeopleRequestBodyAddressKanji'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPeopleRequestBodyAddressKanji'Line1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPeopleRequestBodyAddressKanji'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPeopleRequestBodyAddressKanji'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPeopleRequestBodyAddressKanji'State :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | town
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPeopleRequestBodyAddressKanji'Town :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPeopleRequestBodyAddressKanji'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountPeopleRequestBodyAddressKanji'City obj) : (Data.Aeson..=) "country" (postAccountsAccountPeopleRequestBodyAddressKanji'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountPeopleRequestBodyAddressKanji'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountPeopleRequestBodyAddressKanji'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountPeopleRequestBodyAddressKanji'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountPeopleRequestBodyAddressKanji'State obj) : (Data.Aeson..=) "town" (postAccountsAccountPeopleRequestBodyAddressKanji'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountPeopleRequestBodyAddressKanji'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountPeopleRequestBodyAddressKanji'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountPeopleRequestBodyAddressKanji'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountPeopleRequestBodyAddressKanji'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountPeopleRequestBodyAddressKanji'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountsAccountPeopleRequestBodyAddressKanji'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountsAccountPeopleRequestBodyAddressKanji'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeopleRequestBodyAddressKanji'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeopleRequestBodyAddressKanji'" (\obj -> ((((((GHC.Base.pure PostAccountsAccountPeopleRequestBodyAddressKanji' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
-- | Defines the enum schema postAccountsAccountPeopleRequestBodyDob\'OneOf1
-- 
-- 
data PostAccountsAccountPeopleRequestBodyDob'OneOf1
    = PostAccountsAccountPeopleRequestBodyDob'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountPeopleRequestBodyDob'OneOf1EnumTyped GHC.Base.String
    | PostAccountsAccountPeopleRequestBodyDob'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPeopleRequestBodyDob'OneOf1
    where toJSON (PostAccountsAccountPeopleRequestBodyDob'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountPeopleRequestBodyDob'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountPeopleRequestBodyDob'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostAccountsAccountPeopleRequestBodyDob'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostAccountsAccountPeopleRequestBodyDob'OneOf1EnumString_
                                          else PostAccountsAccountPeopleRequestBodyDob'OneOf1EnumOther val)
-- | Defines the data type for the schema postAccountsAccountPeopleRequestBodyDob\'OneOf2
-- 
-- 
data PostAccountsAccountPeopleRequestBodyDob'OneOf2 = PostAccountsAccountPeopleRequestBodyDob'OneOf2 {
  -- | day
  postAccountsAccountPeopleRequestBodyDob'OneOf2Day :: GHC.Integer.Type.Integer
  -- | month
  , postAccountsAccountPeopleRequestBodyDob'OneOf2Month :: GHC.Integer.Type.Integer
  -- | year
  , postAccountsAccountPeopleRequestBodyDob'OneOf2Year :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPeopleRequestBodyDob'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "day" (postAccountsAccountPeopleRequestBodyDob'OneOf2Day obj) : (Data.Aeson..=) "month" (postAccountsAccountPeopleRequestBodyDob'OneOf2Month obj) : (Data.Aeson..=) "year" (postAccountsAccountPeopleRequestBodyDob'OneOf2Year obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "day" (postAccountsAccountPeopleRequestBodyDob'OneOf2Day obj) GHC.Base.<> ((Data.Aeson..=) "month" (postAccountsAccountPeopleRequestBodyDob'OneOf2Month obj) GHC.Base.<> (Data.Aeson..=) "year" (postAccountsAccountPeopleRequestBodyDob'OneOf2Year obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeopleRequestBodyDob'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeopleRequestBodyDob'OneOf2" (\obj -> ((GHC.Base.pure PostAccountsAccountPeopleRequestBodyDob'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "year"))
-- | Define the one-of schema postAccountsAccountPeopleRequestBodyDob\'
-- 
-- The person\'s date of birth.
data PostAccountsAccountPeopleRequestBodyDob'Variants
    = PostAccountsAccountPeopleRequestBodyDob'PostAccountsAccountPeopleRequestBodyDob'OneOf1 PostAccountsAccountPeopleRequestBodyDob'OneOf1
    | PostAccountsAccountPeopleRequestBodyDob'PostAccountsAccountPeopleRequestBodyDob'OneOf2 PostAccountsAccountPeopleRequestBodyDob'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountsAccountPeopleRequestBodyDob'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountsAccountPeopleRequestBodyDob'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postAccountsAccountPeopleRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostAccountsAccountPeopleRequestBodyMetadata' = PostAccountsAccountPeopleRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPeopleRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeopleRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeopleRequestBodyMetadata'" (\obj -> GHC.Base.pure PostAccountsAccountPeopleRequestBodyMetadata')
-- | Defines the data type for the schema postAccountsAccountPeopleRequestBodyRelationship\'
-- 
-- The relationship that this person has with the account\'s legal entity.
data PostAccountsAccountPeopleRequestBodyRelationship' = PostAccountsAccountPeopleRequestBodyRelationship' {
  -- | director
  postAccountsAccountPeopleRequestBodyRelationship'Director :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | executive
  , postAccountsAccountPeopleRequestBodyRelationship'Executive :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | owner
  , postAccountsAccountPeopleRequestBodyRelationship'Owner :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | percent_ownership
  , postAccountsAccountPeopleRequestBodyRelationship'PercentOwnership :: (GHC.Maybe.Maybe PostAccountsAccountPeopleRequestBodyRelationship'PercentOwnership'Variants)
  -- | representative
  , postAccountsAccountPeopleRequestBodyRelationship'Representative :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | title
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountPeopleRequestBodyRelationship'Title :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPeopleRequestBodyRelationship'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "director" (postAccountsAccountPeopleRequestBodyRelationship'Director obj) : (Data.Aeson..=) "executive" (postAccountsAccountPeopleRequestBodyRelationship'Executive obj) : (Data.Aeson..=) "owner" (postAccountsAccountPeopleRequestBodyRelationship'Owner obj) : (Data.Aeson..=) "percent_ownership" (postAccountsAccountPeopleRequestBodyRelationship'PercentOwnership obj) : (Data.Aeson..=) "representative" (postAccountsAccountPeopleRequestBodyRelationship'Representative obj) : (Data.Aeson..=) "title" (postAccountsAccountPeopleRequestBodyRelationship'Title obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "director" (postAccountsAccountPeopleRequestBodyRelationship'Director obj) GHC.Base.<> ((Data.Aeson..=) "executive" (postAccountsAccountPeopleRequestBodyRelationship'Executive obj) GHC.Base.<> ((Data.Aeson..=) "owner" (postAccountsAccountPeopleRequestBodyRelationship'Owner obj) GHC.Base.<> ((Data.Aeson..=) "percent_ownership" (postAccountsAccountPeopleRequestBodyRelationship'PercentOwnership obj) GHC.Base.<> ((Data.Aeson..=) "representative" (postAccountsAccountPeopleRequestBodyRelationship'Representative obj) GHC.Base.<> (Data.Aeson..=) "title" (postAccountsAccountPeopleRequestBodyRelationship'Title obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeopleRequestBodyRelationship'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeopleRequestBodyRelationship'" (\obj -> (((((GHC.Base.pure PostAccountsAccountPeopleRequestBodyRelationship' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "director")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "executive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owner")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "percent_ownership")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "representative")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title"))
-- | Defines the enum schema postAccountsAccountPeopleRequestBodyRelationship\'Percent_ownership\'OneOf1
-- 
-- 
data PostAccountsAccountPeopleRequestBodyRelationship'PercentOwnership'OneOf1
    = PostAccountsAccountPeopleRequestBodyRelationship'PercentOwnership'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountPeopleRequestBodyRelationship'PercentOwnership'OneOf1EnumTyped GHC.Base.String
    | PostAccountsAccountPeopleRequestBodyRelationship'PercentOwnership'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPeopleRequestBodyRelationship'PercentOwnership'OneOf1
    where toJSON (PostAccountsAccountPeopleRequestBodyRelationship'PercentOwnership'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountPeopleRequestBodyRelationship'PercentOwnership'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountPeopleRequestBodyRelationship'PercentOwnership'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostAccountsAccountPeopleRequestBodyRelationship'PercentOwnership'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostAccountsAccountPeopleRequestBodyRelationship'PercentOwnership'OneOf1EnumString_
                                          else PostAccountsAccountPeopleRequestBodyRelationship'PercentOwnership'OneOf1EnumOther val)
-- | Define the one-of schema postAccountsAccountPeopleRequestBodyRelationship\'Percent_ownership\'
-- 
-- 
data PostAccountsAccountPeopleRequestBodyRelationship'PercentOwnership'Variants
    = PostAccountsAccountPeopleRequestBodyRelationship'PercentOwnership'PostAccountsAccountPeopleRequestBodyRelationship'PercentOwnership'OneOf1 PostAccountsAccountPeopleRequestBodyRelationship'PercentOwnership'OneOf1
    | PostAccountsAccountPeopleRequestBodyRelationship'PercentOwnership'Double GHC.Types.Double
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountsAccountPeopleRequestBodyRelationship'PercentOwnership'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountsAccountPeopleRequestBodyRelationship'PercentOwnership'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postAccountsAccountPeopleRequestBodyVerification\'
-- 
-- The person\'s verification status.
data PostAccountsAccountPeopleRequestBodyVerification' = PostAccountsAccountPeopleRequestBodyVerification' {
  -- | additional_document
  postAccountsAccountPeopleRequestBodyVerification'AdditionalDocument :: (GHC.Maybe.Maybe PostAccountsAccountPeopleRequestBodyVerification'AdditionalDocument')
  -- | document
  , postAccountsAccountPeopleRequestBodyVerification'Document :: (GHC.Maybe.Maybe PostAccountsAccountPeopleRequestBodyVerification'Document')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPeopleRequestBodyVerification'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "additional_document" (postAccountsAccountPeopleRequestBodyVerification'AdditionalDocument obj) : (Data.Aeson..=) "document" (postAccountsAccountPeopleRequestBodyVerification'Document obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "additional_document" (postAccountsAccountPeopleRequestBodyVerification'AdditionalDocument obj) GHC.Base.<> (Data.Aeson..=) "document" (postAccountsAccountPeopleRequestBodyVerification'Document obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeopleRequestBodyVerification'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeopleRequestBodyVerification'" (\obj -> (GHC.Base.pure PostAccountsAccountPeopleRequestBodyVerification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "additional_document")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document"))
-- | Defines the data type for the schema postAccountsAccountPeopleRequestBodyVerification\'Additional_document\'
-- 
-- 
data PostAccountsAccountPeopleRequestBodyVerification'AdditionalDocument' = PostAccountsAccountPeopleRequestBodyVerification'AdditionalDocument' {
  -- | back
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  postAccountsAccountPeopleRequestBodyVerification'AdditionalDocument'Back :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | front
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  , postAccountsAccountPeopleRequestBodyVerification'AdditionalDocument'Front :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPeopleRequestBodyVerification'AdditionalDocument'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountsAccountPeopleRequestBodyVerification'AdditionalDocument'Back obj) : (Data.Aeson..=) "front" (postAccountsAccountPeopleRequestBodyVerification'AdditionalDocument'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountsAccountPeopleRequestBodyVerification'AdditionalDocument'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountsAccountPeopleRequestBodyVerification'AdditionalDocument'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeopleRequestBodyVerification'AdditionalDocument'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeopleRequestBodyVerification'AdditionalDocument'" (\obj -> (GHC.Base.pure PostAccountsAccountPeopleRequestBodyVerification'AdditionalDocument' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
-- | Defines the data type for the schema postAccountsAccountPeopleRequestBodyVerification\'Document\'
-- 
-- 
data PostAccountsAccountPeopleRequestBodyVerification'Document' = PostAccountsAccountPeopleRequestBodyVerification'Document' {
  -- | back
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  postAccountsAccountPeopleRequestBodyVerification'Document'Back :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | front
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  , postAccountsAccountPeopleRequestBodyVerification'Document'Front :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPeopleRequestBodyVerification'Document'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountsAccountPeopleRequestBodyVerification'Document'Back obj) : (Data.Aeson..=) "front" (postAccountsAccountPeopleRequestBodyVerification'Document'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountsAccountPeopleRequestBodyVerification'Document'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountsAccountPeopleRequestBodyVerification'Document'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeopleRequestBodyVerification'Document'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeopleRequestBodyVerification'Document'" (\obj -> (GHC.Base.pure PostAccountsAccountPeopleRequestBodyVerification'Document' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
-- | Represents a response of the operation 'postAccountsAccountPeople'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostAccountsAccountPeopleResponseError' is used.
data PostAccountsAccountPeopleResponse =                   
   PostAccountsAccountPeopleResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostAccountsAccountPeopleResponse200 Person            -- ^ Successful response.
  | PostAccountsAccountPeopleResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
