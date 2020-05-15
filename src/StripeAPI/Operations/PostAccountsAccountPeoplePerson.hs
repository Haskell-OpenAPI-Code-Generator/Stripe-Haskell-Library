{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostAccountsAccountPeoplePerson where

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
-- POST /v1/accounts/{account}/people/{person}
postAccountsAccountPeoplePerson :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                 StripeAPI.Common.SecurityScheme s) =>
                                   StripeAPI.Common.Configuration s ->
                                   GHC.Base.String ->
                                   GHC.Base.String ->
                                   PostAccountsAccountPeoplePersonRequestBody ->
                                   m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                         (Network.HTTP.Client.Types.Response PostAccountsAccountPeoplePersonResponse))
postAccountsAccountPeoplePerson config
                                account
                                person
                                body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountsAccountPeoplePersonResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountPeoplePersonResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                               Person)
                                                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountPeoplePersonResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                 Error)
                                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ("/people/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel person)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountsAccountPeoplePersonRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                    StripeAPI.Common.SecurityScheme s) =>
                                      StripeAPI.Common.Configuration s ->
                                      GHC.Base.String ->
                                      GHC.Base.String ->
                                      PostAccountsAccountPeoplePersonRequestBody ->
                                      m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountsAccountPeoplePersonRaw config
                                   account
                                   person
                                   body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ("/people/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel person)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountsAccountPeoplePersonM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                  StripeAPI.Common.SecurityScheme s) =>
                                    GHC.Base.String ->
                                    GHC.Base.String ->
                                    PostAccountsAccountPeoplePersonRequestBody ->
                                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                       m
                                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                           (Network.HTTP.Client.Types.Response PostAccountsAccountPeoplePersonResponse))
postAccountsAccountPeoplePersonM account
                                 person
                                 body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostAccountsAccountPeoplePersonResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountPeoplePersonResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                Person)
                                                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountPeoplePersonResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ("/people/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel person)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountsAccountPeoplePersonRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                     StripeAPI.Common.SecurityScheme s) =>
                                       GHC.Base.String ->
                                       GHC.Base.String ->
                                       PostAccountsAccountPeoplePersonRequestBody ->
                                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                          m
                                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountsAccountPeoplePersonRawM account
                                    person
                                    body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ("/people/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel person)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostAccountsAccountPeoplePersonRequestBody
    = PostAccountsAccountPeoplePersonRequestBody {postAccountsAccountPeoplePersonRequestBodyAddress :: (GHC.Maybe.Maybe PostAccountsAccountPeoplePersonRequestBodyAddress'),
                                                  postAccountsAccountPeoplePersonRequestBodyAddressKana :: (GHC.Maybe.Maybe PostAccountsAccountPeoplePersonRequestBodyAddressKana'),
                                                  postAccountsAccountPeoplePersonRequestBodyAddressKanji :: (GHC.Maybe.Maybe PostAccountsAccountPeoplePersonRequestBodyAddressKanji'),
                                                  postAccountsAccountPeoplePersonRequestBodyDob :: (GHC.Maybe.Maybe PostAccountsAccountPeoplePersonRequestBodyDob'Variants),
                                                  postAccountsAccountPeoplePersonRequestBodyEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountsAccountPeoplePersonRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                                  postAccountsAccountPeoplePersonRequestBodyFirstName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountsAccountPeoplePersonRequestBodyFirstNameKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountsAccountPeoplePersonRequestBodyFirstNameKanji :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountsAccountPeoplePersonRequestBodyGender :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountsAccountPeoplePersonRequestBodyIdNumber :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountsAccountPeoplePersonRequestBodyLastName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountsAccountPeoplePersonRequestBodyLastNameKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountsAccountPeoplePersonRequestBodyLastNameKanji :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountsAccountPeoplePersonRequestBodyMaidenName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountsAccountPeoplePersonRequestBodyMetadata :: (GHC.Maybe.Maybe PostAccountsAccountPeoplePersonRequestBodyMetadata'),
                                                  postAccountsAccountPeoplePersonRequestBodyPersonToken :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountsAccountPeoplePersonRequestBodyPhone :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountsAccountPeoplePersonRequestBodyRelationship :: (GHC.Maybe.Maybe PostAccountsAccountPeoplePersonRequestBodyRelationship'),
                                                  postAccountsAccountPeoplePersonRequestBodySsnLast_4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountsAccountPeoplePersonRequestBodyVerification :: (GHC.Maybe.Maybe PostAccountsAccountPeoplePersonRequestBodyVerification')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsAccountPeoplePersonRequestBodyAddress'
    = PostAccountsAccountPeoplePersonRequestBodyAddress' {postAccountsAccountPeoplePersonRequestBodyAddress'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postAccountsAccountPeoplePersonRequestBodyAddress'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postAccountsAccountPeoplePersonRequestBodyAddress'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postAccountsAccountPeoplePersonRequestBodyAddress'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postAccountsAccountPeoplePersonRequestBodyAddress'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postAccountsAccountPeoplePersonRequestBodyAddress'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPeoplePersonRequestBodyAddress'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountPeoplePersonRequestBodyAddress'City obj) : (Data.Aeson..=) "country" (postAccountsAccountPeoplePersonRequestBodyAddress'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountPeoplePersonRequestBodyAddress'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountPeoplePersonRequestBodyAddress'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountPeoplePersonRequestBodyAddress'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountPeoplePersonRequestBodyAddress'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountPeoplePersonRequestBodyAddress'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountPeoplePersonRequestBodyAddress'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountPeoplePersonRequestBodyAddress'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountPeoplePersonRequestBodyAddress'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountPeoplePersonRequestBodyAddress'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postAccountsAccountPeoplePersonRequestBodyAddress'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeoplePersonRequestBodyAddress'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeoplePersonRequestBodyAddress'" (\obj -> (((((GHC.Base.pure PostAccountsAccountPeoplePersonRequestBodyAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
data PostAccountsAccountPeoplePersonRequestBodyAddressKana'
    = PostAccountsAccountPeoplePersonRequestBodyAddressKana' {postAccountsAccountPeoplePersonRequestBodyAddressKana'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              postAccountsAccountPeoplePersonRequestBodyAddressKana'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              postAccountsAccountPeoplePersonRequestBodyAddressKana'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              postAccountsAccountPeoplePersonRequestBodyAddressKana'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              postAccountsAccountPeoplePersonRequestBodyAddressKana'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              postAccountsAccountPeoplePersonRequestBodyAddressKana'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                              postAccountsAccountPeoplePersonRequestBodyAddressKana'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPeoplePersonRequestBodyAddressKana'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountPeoplePersonRequestBodyAddressKana'City obj) : (Data.Aeson..=) "country" (postAccountsAccountPeoplePersonRequestBodyAddressKana'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountPeoplePersonRequestBodyAddressKana'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountPeoplePersonRequestBodyAddressKana'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountPeoplePersonRequestBodyAddressKana'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountPeoplePersonRequestBodyAddressKana'State obj) : (Data.Aeson..=) "town" (postAccountsAccountPeoplePersonRequestBodyAddressKana'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountPeoplePersonRequestBodyAddressKana'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountPeoplePersonRequestBodyAddressKana'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountPeoplePersonRequestBodyAddressKana'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountPeoplePersonRequestBodyAddressKana'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountPeoplePersonRequestBodyAddressKana'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountsAccountPeoplePersonRequestBodyAddressKana'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountsAccountPeoplePersonRequestBodyAddressKana'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeoplePersonRequestBodyAddressKana'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeoplePersonRequestBodyAddressKana'" (\obj -> ((((((GHC.Base.pure PostAccountsAccountPeoplePersonRequestBodyAddressKana' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostAccountsAccountPeoplePersonRequestBodyAddressKanji'
    = PostAccountsAccountPeoplePersonRequestBodyAddressKanji' {postAccountsAccountPeoplePersonRequestBodyAddressKanji'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                               postAccountsAccountPeoplePersonRequestBodyAddressKanji'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                               postAccountsAccountPeoplePersonRequestBodyAddressKanji'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                               postAccountsAccountPeoplePersonRequestBodyAddressKanji'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                               postAccountsAccountPeoplePersonRequestBodyAddressKanji'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                               postAccountsAccountPeoplePersonRequestBodyAddressKanji'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                               postAccountsAccountPeoplePersonRequestBodyAddressKanji'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPeoplePersonRequestBodyAddressKanji'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountPeoplePersonRequestBodyAddressKanji'City obj) : (Data.Aeson..=) "country" (postAccountsAccountPeoplePersonRequestBodyAddressKanji'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountPeoplePersonRequestBodyAddressKanji'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountPeoplePersonRequestBodyAddressKanji'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountPeoplePersonRequestBodyAddressKanji'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountPeoplePersonRequestBodyAddressKanji'State obj) : (Data.Aeson..=) "town" (postAccountsAccountPeoplePersonRequestBodyAddressKanji'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountPeoplePersonRequestBodyAddressKanji'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountPeoplePersonRequestBodyAddressKanji'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountPeoplePersonRequestBodyAddressKanji'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountPeoplePersonRequestBodyAddressKanji'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountPeoplePersonRequestBodyAddressKanji'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountsAccountPeoplePersonRequestBodyAddressKanji'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountsAccountPeoplePersonRequestBodyAddressKanji'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeoplePersonRequestBodyAddressKanji'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeoplePersonRequestBodyAddressKanji'" (\obj -> ((((((GHC.Base.pure PostAccountsAccountPeoplePersonRequestBodyAddressKanji' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostAccountsAccountPeoplePersonRequestBodyDob'OneOf1
    = PostAccountsAccountPeoplePersonRequestBodyDob'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountPeoplePersonRequestBodyDob'OneOf1EnumTyped GHC.Base.String
    | PostAccountsAccountPeoplePersonRequestBodyDob'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPeoplePersonRequestBodyDob'OneOf1
    where toJSON (PostAccountsAccountPeoplePersonRequestBodyDob'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountPeoplePersonRequestBodyDob'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountPeoplePersonRequestBodyDob'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostAccountsAccountPeoplePersonRequestBodyDob'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostAccountsAccountPeoplePersonRequestBodyDob'OneOf1EnumString_
                                          else PostAccountsAccountPeoplePersonRequestBodyDob'OneOf1EnumOther val)
data PostAccountsAccountPeoplePersonRequestBodyDob'OneOf2
    = PostAccountsAccountPeoplePersonRequestBodyDob'OneOf2 {postAccountsAccountPeoplePersonRequestBodyDob'OneOf2Day :: GHC.Integer.Type.Integer,
                                                            postAccountsAccountPeoplePersonRequestBodyDob'OneOf2Month :: GHC.Integer.Type.Integer,
                                                            postAccountsAccountPeoplePersonRequestBodyDob'OneOf2Year :: GHC.Integer.Type.Integer}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPeoplePersonRequestBodyDob'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "day" (postAccountsAccountPeoplePersonRequestBodyDob'OneOf2Day obj) : (Data.Aeson..=) "month" (postAccountsAccountPeoplePersonRequestBodyDob'OneOf2Month obj) : (Data.Aeson..=) "year" (postAccountsAccountPeoplePersonRequestBodyDob'OneOf2Year obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "day" (postAccountsAccountPeoplePersonRequestBodyDob'OneOf2Day obj) GHC.Base.<> ((Data.Aeson..=) "month" (postAccountsAccountPeoplePersonRequestBodyDob'OneOf2Month obj) GHC.Base.<> (Data.Aeson..=) "year" (postAccountsAccountPeoplePersonRequestBodyDob'OneOf2Year obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeoplePersonRequestBodyDob'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeoplePersonRequestBodyDob'OneOf2" (\obj -> ((GHC.Base.pure PostAccountsAccountPeoplePersonRequestBodyDob'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "year"))
data PostAccountsAccountPeoplePersonRequestBodyDob'Variants
    = PostAccountsAccountPeoplePersonRequestBodyDob'Variant1 PostAccountsAccountPeoplePersonRequestBodyDob'OneOf1
    | PostAccountsAccountPeoplePersonRequestBodyDob'Variant2 PostAccountsAccountPeoplePersonRequestBodyDob'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountsAccountPeoplePersonRequestBodyDob'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountsAccountPeoplePersonRequestBodyDob'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostAccountsAccountPeoplePersonRequestBodyMetadata'
    = PostAccountsAccountPeoplePersonRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPeoplePersonRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeoplePersonRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeoplePersonRequestBodyMetadata'" (\obj -> GHC.Base.pure PostAccountsAccountPeoplePersonRequestBodyMetadata')
data PostAccountsAccountPeoplePersonRequestBodyRelationship'
    = PostAccountsAccountPeoplePersonRequestBodyRelationship' {postAccountsAccountPeoplePersonRequestBodyRelationship'Director :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                               postAccountsAccountPeoplePersonRequestBodyRelationship'Executive :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                               postAccountsAccountPeoplePersonRequestBodyRelationship'Owner :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                               postAccountsAccountPeoplePersonRequestBodyRelationship'PercentOwnership :: (GHC.Maybe.Maybe PostAccountsAccountPeoplePersonRequestBodyRelationship'PercentOwnership'Variants),
                                                               postAccountsAccountPeoplePersonRequestBodyRelationship'Representative :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                               postAccountsAccountPeoplePersonRequestBodyRelationship'Title :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsAccountPeoplePersonRequestBodyRelationship'PercentOwnership'OneOf1
    = PostAccountsAccountPeoplePersonRequestBodyRelationship'PercentOwnership'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountPeoplePersonRequestBodyRelationship'PercentOwnership'OneOf1EnumTyped GHC.Base.String
    | PostAccountsAccountPeoplePersonRequestBodyRelationship'PercentOwnership'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPeoplePersonRequestBodyRelationship'PercentOwnership'OneOf1
    where toJSON (PostAccountsAccountPeoplePersonRequestBodyRelationship'PercentOwnership'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountPeoplePersonRequestBodyRelationship'PercentOwnership'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountPeoplePersonRequestBodyRelationship'PercentOwnership'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostAccountsAccountPeoplePersonRequestBodyRelationship'PercentOwnership'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostAccountsAccountPeoplePersonRequestBodyRelationship'PercentOwnership'OneOf1EnumString_
                                          else PostAccountsAccountPeoplePersonRequestBodyRelationship'PercentOwnership'OneOf1EnumOther val)
data PostAccountsAccountPeoplePersonRequestBodyRelationship'PercentOwnership'Variants
    = PostAccountsAccountPeoplePersonRequestBodyRelationship'PercentOwnership'Variant1 PostAccountsAccountPeoplePersonRequestBodyRelationship'PercentOwnership'OneOf1
    | PostAccountsAccountPeoplePersonRequestBodyRelationship'PercentOwnership'Variant2 GHC.Types.Double
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountsAccountPeoplePersonRequestBodyRelationship'PercentOwnership'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountsAccountPeoplePersonRequestBodyRelationship'PercentOwnership'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostAccountsAccountPeoplePersonRequestBodyRelationship'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "director" (postAccountsAccountPeoplePersonRequestBodyRelationship'Director obj) : (Data.Aeson..=) "executive" (postAccountsAccountPeoplePersonRequestBodyRelationship'Executive obj) : (Data.Aeson..=) "owner" (postAccountsAccountPeoplePersonRequestBodyRelationship'Owner obj) : (Data.Aeson..=) "percent_ownership" (postAccountsAccountPeoplePersonRequestBodyRelationship'PercentOwnership obj) : (Data.Aeson..=) "representative" (postAccountsAccountPeoplePersonRequestBodyRelationship'Representative obj) : (Data.Aeson..=) "title" (postAccountsAccountPeoplePersonRequestBodyRelationship'Title obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "director" (postAccountsAccountPeoplePersonRequestBodyRelationship'Director obj) GHC.Base.<> ((Data.Aeson..=) "executive" (postAccountsAccountPeoplePersonRequestBodyRelationship'Executive obj) GHC.Base.<> ((Data.Aeson..=) "owner" (postAccountsAccountPeoplePersonRequestBodyRelationship'Owner obj) GHC.Base.<> ((Data.Aeson..=) "percent_ownership" (postAccountsAccountPeoplePersonRequestBodyRelationship'PercentOwnership obj) GHC.Base.<> ((Data.Aeson..=) "representative" (postAccountsAccountPeoplePersonRequestBodyRelationship'Representative obj) GHC.Base.<> (Data.Aeson..=) "title" (postAccountsAccountPeoplePersonRequestBodyRelationship'Title obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeoplePersonRequestBodyRelationship'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeoplePersonRequestBodyRelationship'" (\obj -> (((((GHC.Base.pure PostAccountsAccountPeoplePersonRequestBodyRelationship' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "director")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "executive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owner")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "percent_ownership")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "representative")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title"))
data PostAccountsAccountPeoplePersonRequestBodyVerification'
    = PostAccountsAccountPeoplePersonRequestBodyVerification' {postAccountsAccountPeoplePersonRequestBodyVerification'AdditionalDocument :: (GHC.Maybe.Maybe PostAccountsAccountPeoplePersonRequestBodyVerification'AdditionalDocument'),
                                                               postAccountsAccountPeoplePersonRequestBodyVerification'Document :: (GHC.Maybe.Maybe PostAccountsAccountPeoplePersonRequestBodyVerification'Document')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsAccountPeoplePersonRequestBodyVerification'AdditionalDocument'
    = PostAccountsAccountPeoplePersonRequestBodyVerification'AdditionalDocument' {postAccountsAccountPeoplePersonRequestBodyVerification'AdditionalDocument'Back :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                                  postAccountsAccountPeoplePersonRequestBodyVerification'AdditionalDocument'Front :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPeoplePersonRequestBodyVerification'AdditionalDocument'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountsAccountPeoplePersonRequestBodyVerification'AdditionalDocument'Back obj) : (Data.Aeson..=) "front" (postAccountsAccountPeoplePersonRequestBodyVerification'AdditionalDocument'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountsAccountPeoplePersonRequestBodyVerification'AdditionalDocument'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountsAccountPeoplePersonRequestBodyVerification'AdditionalDocument'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeoplePersonRequestBodyVerification'AdditionalDocument'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeoplePersonRequestBodyVerification'AdditionalDocument'" (\obj -> (GHC.Base.pure PostAccountsAccountPeoplePersonRequestBodyVerification'AdditionalDocument' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
data PostAccountsAccountPeoplePersonRequestBodyVerification'Document'
    = PostAccountsAccountPeoplePersonRequestBodyVerification'Document' {postAccountsAccountPeoplePersonRequestBodyVerification'Document'Back :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                        postAccountsAccountPeoplePersonRequestBodyVerification'Document'Front :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPeoplePersonRequestBodyVerification'Document'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountsAccountPeoplePersonRequestBodyVerification'Document'Back obj) : (Data.Aeson..=) "front" (postAccountsAccountPeoplePersonRequestBodyVerification'Document'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountsAccountPeoplePersonRequestBodyVerification'Document'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountsAccountPeoplePersonRequestBodyVerification'Document'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeoplePersonRequestBodyVerification'Document'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeoplePersonRequestBodyVerification'Document'" (\obj -> (GHC.Base.pure PostAccountsAccountPeoplePersonRequestBodyVerification'Document' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
instance Data.Aeson.ToJSON PostAccountsAccountPeoplePersonRequestBodyVerification'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "additional_document" (postAccountsAccountPeoplePersonRequestBodyVerification'AdditionalDocument obj) : (Data.Aeson..=) "document" (postAccountsAccountPeoplePersonRequestBodyVerification'Document obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "additional_document" (postAccountsAccountPeoplePersonRequestBodyVerification'AdditionalDocument obj) GHC.Base.<> (Data.Aeson..=) "document" (postAccountsAccountPeoplePersonRequestBodyVerification'Document obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeoplePersonRequestBodyVerification'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeoplePersonRequestBodyVerification'" (\obj -> (GHC.Base.pure PostAccountsAccountPeoplePersonRequestBodyVerification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "additional_document")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document"))
instance Data.Aeson.ToJSON PostAccountsAccountPeoplePersonRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postAccountsAccountPeoplePersonRequestBodyAddress obj) : (Data.Aeson..=) "address_kana" (postAccountsAccountPeoplePersonRequestBodyAddressKana obj) : (Data.Aeson..=) "address_kanji" (postAccountsAccountPeoplePersonRequestBodyAddressKanji obj) : (Data.Aeson..=) "dob" (postAccountsAccountPeoplePersonRequestBodyDob obj) : (Data.Aeson..=) "email" (postAccountsAccountPeoplePersonRequestBodyEmail obj) : (Data.Aeson..=) "expand" (postAccountsAccountPeoplePersonRequestBodyExpand obj) : (Data.Aeson..=) "first_name" (postAccountsAccountPeoplePersonRequestBodyFirstName obj) : (Data.Aeson..=) "first_name_kana" (postAccountsAccountPeoplePersonRequestBodyFirstNameKana obj) : (Data.Aeson..=) "first_name_kanji" (postAccountsAccountPeoplePersonRequestBodyFirstNameKanji obj) : (Data.Aeson..=) "gender" (postAccountsAccountPeoplePersonRequestBodyGender obj) : (Data.Aeson..=) "id_number" (postAccountsAccountPeoplePersonRequestBodyIdNumber obj) : (Data.Aeson..=) "last_name" (postAccountsAccountPeoplePersonRequestBodyLastName obj) : (Data.Aeson..=) "last_name_kana" (postAccountsAccountPeoplePersonRequestBodyLastNameKana obj) : (Data.Aeson..=) "last_name_kanji" (postAccountsAccountPeoplePersonRequestBodyLastNameKanji obj) : (Data.Aeson..=) "maiden_name" (postAccountsAccountPeoplePersonRequestBodyMaidenName obj) : (Data.Aeson..=) "metadata" (postAccountsAccountPeoplePersonRequestBodyMetadata obj) : (Data.Aeson..=) "person_token" (postAccountsAccountPeoplePersonRequestBodyPersonToken obj) : (Data.Aeson..=) "phone" (postAccountsAccountPeoplePersonRequestBodyPhone obj) : (Data.Aeson..=) "relationship" (postAccountsAccountPeoplePersonRequestBodyRelationship obj) : (Data.Aeson..=) "ssn_last_4" (postAccountsAccountPeoplePersonRequestBodySsnLast_4 obj) : (Data.Aeson..=) "verification" (postAccountsAccountPeoplePersonRequestBodyVerification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postAccountsAccountPeoplePersonRequestBodyAddress obj) GHC.Base.<> ((Data.Aeson..=) "address_kana" (postAccountsAccountPeoplePersonRequestBodyAddressKana obj) GHC.Base.<> ((Data.Aeson..=) "address_kanji" (postAccountsAccountPeoplePersonRequestBodyAddressKanji obj) GHC.Base.<> ((Data.Aeson..=) "dob" (postAccountsAccountPeoplePersonRequestBodyDob obj) GHC.Base.<> ((Data.Aeson..=) "email" (postAccountsAccountPeoplePersonRequestBodyEmail obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postAccountsAccountPeoplePersonRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "first_name" (postAccountsAccountPeoplePersonRequestBodyFirstName obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kana" (postAccountsAccountPeoplePersonRequestBodyFirstNameKana obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kanji" (postAccountsAccountPeoplePersonRequestBodyFirstNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "gender" (postAccountsAccountPeoplePersonRequestBodyGender obj) GHC.Base.<> ((Data.Aeson..=) "id_number" (postAccountsAccountPeoplePersonRequestBodyIdNumber obj) GHC.Base.<> ((Data.Aeson..=) "last_name" (postAccountsAccountPeoplePersonRequestBodyLastName obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kana" (postAccountsAccountPeoplePersonRequestBodyLastNameKana obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kanji" (postAccountsAccountPeoplePersonRequestBodyLastNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "maiden_name" (postAccountsAccountPeoplePersonRequestBodyMaidenName obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postAccountsAccountPeoplePersonRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "person_token" (postAccountsAccountPeoplePersonRequestBodyPersonToken obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postAccountsAccountPeoplePersonRequestBodyPhone obj) GHC.Base.<> ((Data.Aeson..=) "relationship" (postAccountsAccountPeoplePersonRequestBodyRelationship obj) GHC.Base.<> ((Data.Aeson..=) "ssn_last_4" (postAccountsAccountPeoplePersonRequestBodySsnLast_4 obj) GHC.Base.<> (Data.Aeson..=) "verification" (postAccountsAccountPeoplePersonRequestBodyVerification obj)))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeoplePersonRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeoplePersonRequestBody" (\obj -> ((((((((((((((((((((GHC.Base.pure PostAccountsAccountPeoplePersonRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dob")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gender")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "maiden_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "person_token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "relationship")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ssn_last_4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verification"))

data PostAccountsAccountPeoplePersonResponse
    = PostAccountsAccountPeoplePersonResponseError GHC.Base.String
    | PostAccountsAccountPeoplePersonResponse200 Person
    | PostAccountsAccountPeoplePersonResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
