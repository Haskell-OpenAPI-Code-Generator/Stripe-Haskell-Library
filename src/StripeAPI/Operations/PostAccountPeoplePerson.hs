{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

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

-- | No summary provided
--
-- POST /v1/account/people/{person}
postAccountPeoplePerson :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                         StripeAPI.Common.SecurityScheme s) =>
                           StripeAPI.Common.Configuration s ->
                           GHC.Base.String ->
                           PostAccountPeoplePersonRequestBody ->
                           m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                 (Network.HTTP.Client.Types.Response PostAccountPeoplePersonResponse))
postAccountPeoplePerson config
                        person
                        body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountPeoplePersonResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountPeoplePersonResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                       Person)
                                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountPeoplePersonResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/account/people/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel person)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
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
data PostAccountPeoplePersonRequestBody
    = PostAccountPeoplePersonRequestBody {postAccountPeoplePersonRequestBodyAccount :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postAccountPeoplePersonRequestBodyAddress :: (GHC.Maybe.Maybe PostAccountPeoplePersonRequestBodyAddress'),
                                          postAccountPeoplePersonRequestBodyAddressKana :: (GHC.Maybe.Maybe PostAccountPeoplePersonRequestBodyAddressKana'),
                                          postAccountPeoplePersonRequestBodyAddressKanji :: (GHC.Maybe.Maybe PostAccountPeoplePersonRequestBodyAddressKanji'),
                                          postAccountPeoplePersonRequestBodyDob :: (GHC.Maybe.Maybe PostAccountPeoplePersonRequestBodyDob'Variants),
                                          postAccountPeoplePersonRequestBodyEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postAccountPeoplePersonRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                          postAccountPeoplePersonRequestBodyFirstName :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postAccountPeoplePersonRequestBodyFirstNameKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postAccountPeoplePersonRequestBodyFirstNameKanji :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postAccountPeoplePersonRequestBodyGender :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postAccountPeoplePersonRequestBodyIdNumber :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postAccountPeoplePersonRequestBodyLastName :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postAccountPeoplePersonRequestBodyLastNameKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postAccountPeoplePersonRequestBodyLastNameKanji :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postAccountPeoplePersonRequestBodyMaidenName :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postAccountPeoplePersonRequestBodyMetadata :: (GHC.Maybe.Maybe PostAccountPeoplePersonRequestBodyMetadata'),
                                          postAccountPeoplePersonRequestBodyPersonToken :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postAccountPeoplePersonRequestBodyPhone :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postAccountPeoplePersonRequestBodyRelationship :: (GHC.Maybe.Maybe PostAccountPeoplePersonRequestBodyRelationship'),
                                          postAccountPeoplePersonRequestBodySsnLast_4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                          postAccountPeoplePersonRequestBodyVerification :: (GHC.Maybe.Maybe PostAccountPeoplePersonRequestBodyVerification')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountPeoplePersonRequestBodyAddress'
    = PostAccountPeoplePersonRequestBodyAddress' {postAccountPeoplePersonRequestBodyAddress'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountPeoplePersonRequestBodyAddress'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountPeoplePersonRequestBodyAddress'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountPeoplePersonRequestBodyAddress'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountPeoplePersonRequestBodyAddress'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postAccountPeoplePersonRequestBodyAddress'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPeoplePersonRequestBodyAddress'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountPeoplePersonRequestBodyAddress'City obj) : (Data.Aeson..=) "country" (postAccountPeoplePersonRequestBodyAddress'Country obj) : (Data.Aeson..=) "line1" (postAccountPeoplePersonRequestBodyAddress'Line1 obj) : (Data.Aeson..=) "line2" (postAccountPeoplePersonRequestBodyAddress'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountPeoplePersonRequestBodyAddress'PostalCode obj) : (Data.Aeson..=) "state" (postAccountPeoplePersonRequestBodyAddress'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountPeoplePersonRequestBodyAddress'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountPeoplePersonRequestBodyAddress'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountPeoplePersonRequestBodyAddress'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountPeoplePersonRequestBodyAddress'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountPeoplePersonRequestBodyAddress'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postAccountPeoplePersonRequestBodyAddress'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeoplePersonRequestBodyAddress'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeoplePersonRequestBodyAddress'" (\obj -> (((((GHC.Base.pure PostAccountPeoplePersonRequestBodyAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
data PostAccountPeoplePersonRequestBodyAddressKana'
    = PostAccountPeoplePersonRequestBodyAddressKana' {postAccountPeoplePersonRequestBodyAddressKana'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountPeoplePersonRequestBodyAddressKana'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountPeoplePersonRequestBodyAddressKana'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountPeoplePersonRequestBodyAddressKana'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountPeoplePersonRequestBodyAddressKana'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountPeoplePersonRequestBodyAddressKana'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                      postAccountPeoplePersonRequestBodyAddressKana'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPeoplePersonRequestBodyAddressKana'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountPeoplePersonRequestBodyAddressKana'City obj) : (Data.Aeson..=) "country" (postAccountPeoplePersonRequestBodyAddressKana'Country obj) : (Data.Aeson..=) "line1" (postAccountPeoplePersonRequestBodyAddressKana'Line1 obj) : (Data.Aeson..=) "line2" (postAccountPeoplePersonRequestBodyAddressKana'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountPeoplePersonRequestBodyAddressKana'PostalCode obj) : (Data.Aeson..=) "state" (postAccountPeoplePersonRequestBodyAddressKana'State obj) : (Data.Aeson..=) "town" (postAccountPeoplePersonRequestBodyAddressKana'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountPeoplePersonRequestBodyAddressKana'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountPeoplePersonRequestBodyAddressKana'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountPeoplePersonRequestBodyAddressKana'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountPeoplePersonRequestBodyAddressKana'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountPeoplePersonRequestBodyAddressKana'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountPeoplePersonRequestBodyAddressKana'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountPeoplePersonRequestBodyAddressKana'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeoplePersonRequestBodyAddressKana'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeoplePersonRequestBodyAddressKana'" (\obj -> ((((((GHC.Base.pure PostAccountPeoplePersonRequestBodyAddressKana' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostAccountPeoplePersonRequestBodyAddressKanji'
    = PostAccountPeoplePersonRequestBodyAddressKanji' {postAccountPeoplePersonRequestBodyAddressKanji'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                       postAccountPeoplePersonRequestBodyAddressKanji'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                       postAccountPeoplePersonRequestBodyAddressKanji'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                       postAccountPeoplePersonRequestBodyAddressKanji'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                       postAccountPeoplePersonRequestBodyAddressKanji'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                       postAccountPeoplePersonRequestBodyAddressKanji'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                       postAccountPeoplePersonRequestBodyAddressKanji'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPeoplePersonRequestBodyAddressKanji'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountPeoplePersonRequestBodyAddressKanji'City obj) : (Data.Aeson..=) "country" (postAccountPeoplePersonRequestBodyAddressKanji'Country obj) : (Data.Aeson..=) "line1" (postAccountPeoplePersonRequestBodyAddressKanji'Line1 obj) : (Data.Aeson..=) "line2" (postAccountPeoplePersonRequestBodyAddressKanji'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountPeoplePersonRequestBodyAddressKanji'PostalCode obj) : (Data.Aeson..=) "state" (postAccountPeoplePersonRequestBodyAddressKanji'State obj) : (Data.Aeson..=) "town" (postAccountPeoplePersonRequestBodyAddressKanji'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountPeoplePersonRequestBodyAddressKanji'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountPeoplePersonRequestBodyAddressKanji'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountPeoplePersonRequestBodyAddressKanji'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountPeoplePersonRequestBodyAddressKanji'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountPeoplePersonRequestBodyAddressKanji'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountPeoplePersonRequestBodyAddressKanji'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountPeoplePersonRequestBodyAddressKanji'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeoplePersonRequestBodyAddressKanji'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeoplePersonRequestBodyAddressKanji'" (\obj -> ((((((GHC.Base.pure PostAccountPeoplePersonRequestBodyAddressKanji' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
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
data PostAccountPeoplePersonRequestBodyDob'OneOf2
    = PostAccountPeoplePersonRequestBodyDob'OneOf2 {postAccountPeoplePersonRequestBodyDob'OneOf2Day :: GHC.Integer.Type.Integer,
                                                    postAccountPeoplePersonRequestBodyDob'OneOf2Month :: GHC.Integer.Type.Integer,
                                                    postAccountPeoplePersonRequestBodyDob'OneOf2Year :: GHC.Integer.Type.Integer}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPeoplePersonRequestBodyDob'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "day" (postAccountPeoplePersonRequestBodyDob'OneOf2Day obj) : (Data.Aeson..=) "month" (postAccountPeoplePersonRequestBodyDob'OneOf2Month obj) : (Data.Aeson..=) "year" (postAccountPeoplePersonRequestBodyDob'OneOf2Year obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "day" (postAccountPeoplePersonRequestBodyDob'OneOf2Day obj) GHC.Base.<> ((Data.Aeson..=) "month" (postAccountPeoplePersonRequestBodyDob'OneOf2Month obj) GHC.Base.<> (Data.Aeson..=) "year" (postAccountPeoplePersonRequestBodyDob'OneOf2Year obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeoplePersonRequestBodyDob'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeoplePersonRequestBodyDob'OneOf2" (\obj -> ((GHC.Base.pure PostAccountPeoplePersonRequestBodyDob'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "year"))
data PostAccountPeoplePersonRequestBodyDob'Variants
    = PostAccountPeoplePersonRequestBodyDob'Variant1 PostAccountPeoplePersonRequestBodyDob'OneOf1
    | PostAccountPeoplePersonRequestBodyDob'Variant2 PostAccountPeoplePersonRequestBodyDob'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountPeoplePersonRequestBodyDob'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountPeoplePersonRequestBodyDob'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostAccountPeoplePersonRequestBodyMetadata'
    = PostAccountPeoplePersonRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPeoplePersonRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeoplePersonRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeoplePersonRequestBodyMetadata'" (\obj -> GHC.Base.pure PostAccountPeoplePersonRequestBodyMetadata')
data PostAccountPeoplePersonRequestBodyRelationship'
    = PostAccountPeoplePersonRequestBodyRelationship' {postAccountPeoplePersonRequestBodyRelationship'Director :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                       postAccountPeoplePersonRequestBodyRelationship'Executive :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                       postAccountPeoplePersonRequestBodyRelationship'Owner :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                       postAccountPeoplePersonRequestBodyRelationship'PercentOwnership :: (GHC.Maybe.Maybe PostAccountPeoplePersonRequestBodyRelationship'PercentOwnership'Variants),
                                                       postAccountPeoplePersonRequestBodyRelationship'Representative :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                       postAccountPeoplePersonRequestBodyRelationship'Title :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
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
data PostAccountPeoplePersonRequestBodyRelationship'PercentOwnership'Variants
    = PostAccountPeoplePersonRequestBodyRelationship'PercentOwnership'Variant1 PostAccountPeoplePersonRequestBodyRelationship'PercentOwnership'OneOf1
    | PostAccountPeoplePersonRequestBodyRelationship'PercentOwnership'Variant2 GHC.Types.Double
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountPeoplePersonRequestBodyRelationship'PercentOwnership'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountPeoplePersonRequestBodyRelationship'PercentOwnership'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostAccountPeoplePersonRequestBodyRelationship'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "director" (postAccountPeoplePersonRequestBodyRelationship'Director obj) : (Data.Aeson..=) "executive" (postAccountPeoplePersonRequestBodyRelationship'Executive obj) : (Data.Aeson..=) "owner" (postAccountPeoplePersonRequestBodyRelationship'Owner obj) : (Data.Aeson..=) "percent_ownership" (postAccountPeoplePersonRequestBodyRelationship'PercentOwnership obj) : (Data.Aeson..=) "representative" (postAccountPeoplePersonRequestBodyRelationship'Representative obj) : (Data.Aeson..=) "title" (postAccountPeoplePersonRequestBodyRelationship'Title obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "director" (postAccountPeoplePersonRequestBodyRelationship'Director obj) GHC.Base.<> ((Data.Aeson..=) "executive" (postAccountPeoplePersonRequestBodyRelationship'Executive obj) GHC.Base.<> ((Data.Aeson..=) "owner" (postAccountPeoplePersonRequestBodyRelationship'Owner obj) GHC.Base.<> ((Data.Aeson..=) "percent_ownership" (postAccountPeoplePersonRequestBodyRelationship'PercentOwnership obj) GHC.Base.<> ((Data.Aeson..=) "representative" (postAccountPeoplePersonRequestBodyRelationship'Representative obj) GHC.Base.<> (Data.Aeson..=) "title" (postAccountPeoplePersonRequestBodyRelationship'Title obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeoplePersonRequestBodyRelationship'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeoplePersonRequestBodyRelationship'" (\obj -> (((((GHC.Base.pure PostAccountPeoplePersonRequestBodyRelationship' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "director")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "executive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owner")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "percent_ownership")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "representative")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title"))
data PostAccountPeoplePersonRequestBodyVerification'
    = PostAccountPeoplePersonRequestBodyVerification' {postAccountPeoplePersonRequestBodyVerification'AdditionalDocument :: (GHC.Maybe.Maybe PostAccountPeoplePersonRequestBodyVerification'AdditionalDocument'),
                                                       postAccountPeoplePersonRequestBodyVerification'Document :: (GHC.Maybe.Maybe PostAccountPeoplePersonRequestBodyVerification'Document')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountPeoplePersonRequestBodyVerification'AdditionalDocument'
    = PostAccountPeoplePersonRequestBodyVerification'AdditionalDocument' {postAccountPeoplePersonRequestBodyVerification'AdditionalDocument'Back :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                          postAccountPeoplePersonRequestBodyVerification'AdditionalDocument'Front :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPeoplePersonRequestBodyVerification'AdditionalDocument'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountPeoplePersonRequestBodyVerification'AdditionalDocument'Back obj) : (Data.Aeson..=) "front" (postAccountPeoplePersonRequestBodyVerification'AdditionalDocument'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountPeoplePersonRequestBodyVerification'AdditionalDocument'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountPeoplePersonRequestBodyVerification'AdditionalDocument'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeoplePersonRequestBodyVerification'AdditionalDocument'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeoplePersonRequestBodyVerification'AdditionalDocument'" (\obj -> (GHC.Base.pure PostAccountPeoplePersonRequestBodyVerification'AdditionalDocument' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
data PostAccountPeoplePersonRequestBodyVerification'Document'
    = PostAccountPeoplePersonRequestBodyVerification'Document' {postAccountPeoplePersonRequestBodyVerification'Document'Back :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                postAccountPeoplePersonRequestBodyVerification'Document'Front :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPeoplePersonRequestBodyVerification'Document'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountPeoplePersonRequestBodyVerification'Document'Back obj) : (Data.Aeson..=) "front" (postAccountPeoplePersonRequestBodyVerification'Document'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountPeoplePersonRequestBodyVerification'Document'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountPeoplePersonRequestBodyVerification'Document'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeoplePersonRequestBodyVerification'Document'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeoplePersonRequestBodyVerification'Document'" (\obj -> (GHC.Base.pure PostAccountPeoplePersonRequestBodyVerification'Document' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
instance Data.Aeson.ToJSON PostAccountPeoplePersonRequestBodyVerification'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "additional_document" (postAccountPeoplePersonRequestBodyVerification'AdditionalDocument obj) : (Data.Aeson..=) "document" (postAccountPeoplePersonRequestBodyVerification'Document obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "additional_document" (postAccountPeoplePersonRequestBodyVerification'AdditionalDocument obj) GHC.Base.<> (Data.Aeson..=) "document" (postAccountPeoplePersonRequestBodyVerification'Document obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeoplePersonRequestBodyVerification'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeoplePersonRequestBodyVerification'" (\obj -> (GHC.Base.pure PostAccountPeoplePersonRequestBodyVerification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "additional_document")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document"))
instance Data.Aeson.ToJSON PostAccountPeoplePersonRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account" (postAccountPeoplePersonRequestBodyAccount obj) : (Data.Aeson..=) "address" (postAccountPeoplePersonRequestBodyAddress obj) : (Data.Aeson..=) "address_kana" (postAccountPeoplePersonRequestBodyAddressKana obj) : (Data.Aeson..=) "address_kanji" (postAccountPeoplePersonRequestBodyAddressKanji obj) : (Data.Aeson..=) "dob" (postAccountPeoplePersonRequestBodyDob obj) : (Data.Aeson..=) "email" (postAccountPeoplePersonRequestBodyEmail obj) : (Data.Aeson..=) "expand" (postAccountPeoplePersonRequestBodyExpand obj) : (Data.Aeson..=) "first_name" (postAccountPeoplePersonRequestBodyFirstName obj) : (Data.Aeson..=) "first_name_kana" (postAccountPeoplePersonRequestBodyFirstNameKana obj) : (Data.Aeson..=) "first_name_kanji" (postAccountPeoplePersonRequestBodyFirstNameKanji obj) : (Data.Aeson..=) "gender" (postAccountPeoplePersonRequestBodyGender obj) : (Data.Aeson..=) "id_number" (postAccountPeoplePersonRequestBodyIdNumber obj) : (Data.Aeson..=) "last_name" (postAccountPeoplePersonRequestBodyLastName obj) : (Data.Aeson..=) "last_name_kana" (postAccountPeoplePersonRequestBodyLastNameKana obj) : (Data.Aeson..=) "last_name_kanji" (postAccountPeoplePersonRequestBodyLastNameKanji obj) : (Data.Aeson..=) "maiden_name" (postAccountPeoplePersonRequestBodyMaidenName obj) : (Data.Aeson..=) "metadata" (postAccountPeoplePersonRequestBodyMetadata obj) : (Data.Aeson..=) "person_token" (postAccountPeoplePersonRequestBodyPersonToken obj) : (Data.Aeson..=) "phone" (postAccountPeoplePersonRequestBodyPhone obj) : (Data.Aeson..=) "relationship" (postAccountPeoplePersonRequestBodyRelationship obj) : (Data.Aeson..=) "ssn_last_4" (postAccountPeoplePersonRequestBodySsnLast_4 obj) : (Data.Aeson..=) "verification" (postAccountPeoplePersonRequestBodyVerification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account" (postAccountPeoplePersonRequestBodyAccount obj) GHC.Base.<> ((Data.Aeson..=) "address" (postAccountPeoplePersonRequestBodyAddress obj) GHC.Base.<> ((Data.Aeson..=) "address_kana" (postAccountPeoplePersonRequestBodyAddressKana obj) GHC.Base.<> ((Data.Aeson..=) "address_kanji" (postAccountPeoplePersonRequestBodyAddressKanji obj) GHC.Base.<> ((Data.Aeson..=) "dob" (postAccountPeoplePersonRequestBodyDob obj) GHC.Base.<> ((Data.Aeson..=) "email" (postAccountPeoplePersonRequestBodyEmail obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postAccountPeoplePersonRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "first_name" (postAccountPeoplePersonRequestBodyFirstName obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kana" (postAccountPeoplePersonRequestBodyFirstNameKana obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kanji" (postAccountPeoplePersonRequestBodyFirstNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "gender" (postAccountPeoplePersonRequestBodyGender obj) GHC.Base.<> ((Data.Aeson..=) "id_number" (postAccountPeoplePersonRequestBodyIdNumber obj) GHC.Base.<> ((Data.Aeson..=) "last_name" (postAccountPeoplePersonRequestBodyLastName obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kana" (postAccountPeoplePersonRequestBodyLastNameKana obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kanji" (postAccountPeoplePersonRequestBodyLastNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "maiden_name" (postAccountPeoplePersonRequestBodyMaidenName obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postAccountPeoplePersonRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "person_token" (postAccountPeoplePersonRequestBodyPersonToken obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postAccountPeoplePersonRequestBodyPhone obj) GHC.Base.<> ((Data.Aeson..=) "relationship" (postAccountPeoplePersonRequestBodyRelationship obj) GHC.Base.<> ((Data.Aeson..=) "ssn_last_4" (postAccountPeoplePersonRequestBodySsnLast_4 obj) GHC.Base.<> (Data.Aeson..=) "verification" (postAccountPeoplePersonRequestBodyVerification obj))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeoplePersonRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeoplePersonRequestBody" (\obj -> (((((((((((((((((((((GHC.Base.pure PostAccountPeoplePersonRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dob")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gender")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "maiden_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "person_token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "relationship")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ssn_last_4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verification"))

data PostAccountPeoplePersonResponse
    = PostAccountPeoplePersonResponseError GHC.Base.String
    | PostAccountPeoplePersonResponse200 Person
    | PostAccountPeoplePersonResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
