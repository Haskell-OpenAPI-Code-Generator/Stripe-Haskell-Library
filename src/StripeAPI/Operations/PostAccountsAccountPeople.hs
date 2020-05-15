{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

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

-- | No summary provided
--
-- POST /v1/accounts/{account}/people
postAccountsAccountPeople :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             StripeAPI.Common.Configuration s ->
                             GHC.Base.String ->
                             PostAccountsAccountPeopleRequestBody ->
                             m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                   (Network.HTTP.Client.Types.Response PostAccountsAccountPeopleResponse))
postAccountsAccountPeople config
                          account
                          body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountsAccountPeopleResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountPeopleResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                             Person)
                                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountPeopleResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/people"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
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
data PostAccountsAccountPeopleRequestBody
    = PostAccountsAccountPeopleRequestBody {postAccountsAccountPeopleRequestBodyAddress :: (GHC.Maybe.Maybe PostAccountsAccountPeopleRequestBodyAddress'),
                                            postAccountsAccountPeopleRequestBodyAddressKana :: (GHC.Maybe.Maybe PostAccountsAccountPeopleRequestBodyAddressKana'),
                                            postAccountsAccountPeopleRequestBodyAddressKanji :: (GHC.Maybe.Maybe PostAccountsAccountPeopleRequestBodyAddressKanji'),
                                            postAccountsAccountPeopleRequestBodyDob :: (GHC.Maybe.Maybe PostAccountsAccountPeopleRequestBodyDob'Variants),
                                            postAccountsAccountPeopleRequestBodyEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postAccountsAccountPeopleRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                            postAccountsAccountPeopleRequestBodyFirstName :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postAccountsAccountPeopleRequestBodyFirstNameKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postAccountsAccountPeopleRequestBodyFirstNameKanji :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postAccountsAccountPeopleRequestBodyGender :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postAccountsAccountPeopleRequestBodyIdNumber :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postAccountsAccountPeopleRequestBodyLastName :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postAccountsAccountPeopleRequestBodyLastNameKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postAccountsAccountPeopleRequestBodyLastNameKanji :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postAccountsAccountPeopleRequestBodyMaidenName :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postAccountsAccountPeopleRequestBodyMetadata :: (GHC.Maybe.Maybe PostAccountsAccountPeopleRequestBodyMetadata'),
                                            postAccountsAccountPeopleRequestBodyPersonToken :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postAccountsAccountPeopleRequestBodyPhone :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postAccountsAccountPeopleRequestBodyRelationship :: (GHC.Maybe.Maybe PostAccountsAccountPeopleRequestBodyRelationship'),
                                            postAccountsAccountPeopleRequestBodySsnLast_4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postAccountsAccountPeopleRequestBodyVerification :: (GHC.Maybe.Maybe PostAccountsAccountPeopleRequestBodyVerification')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsAccountPeopleRequestBodyAddress'
    = PostAccountsAccountPeopleRequestBodyAddress' {postAccountsAccountPeopleRequestBodyAddress'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    postAccountsAccountPeopleRequestBodyAddress'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    postAccountsAccountPeopleRequestBodyAddress'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    postAccountsAccountPeopleRequestBodyAddress'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    postAccountsAccountPeopleRequestBodyAddress'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                    postAccountsAccountPeopleRequestBodyAddress'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPeopleRequestBodyAddress'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountPeopleRequestBodyAddress'City obj) : (Data.Aeson..=) "country" (postAccountsAccountPeopleRequestBodyAddress'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountPeopleRequestBodyAddress'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountPeopleRequestBodyAddress'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountPeopleRequestBodyAddress'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountPeopleRequestBodyAddress'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountPeopleRequestBodyAddress'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountPeopleRequestBodyAddress'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountPeopleRequestBodyAddress'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountPeopleRequestBodyAddress'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountPeopleRequestBodyAddress'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postAccountsAccountPeopleRequestBodyAddress'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeopleRequestBodyAddress'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeopleRequestBodyAddress'" (\obj -> (((((GHC.Base.pure PostAccountsAccountPeopleRequestBodyAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
data PostAccountsAccountPeopleRequestBodyAddressKana'
    = PostAccountsAccountPeopleRequestBodyAddressKana' {postAccountsAccountPeopleRequestBodyAddressKana'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postAccountsAccountPeopleRequestBodyAddressKana'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postAccountsAccountPeopleRequestBodyAddressKana'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postAccountsAccountPeopleRequestBodyAddressKana'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postAccountsAccountPeopleRequestBodyAddressKana'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postAccountsAccountPeopleRequestBodyAddressKana'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postAccountsAccountPeopleRequestBodyAddressKana'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPeopleRequestBodyAddressKana'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountPeopleRequestBodyAddressKana'City obj) : (Data.Aeson..=) "country" (postAccountsAccountPeopleRequestBodyAddressKana'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountPeopleRequestBodyAddressKana'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountPeopleRequestBodyAddressKana'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountPeopleRequestBodyAddressKana'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountPeopleRequestBodyAddressKana'State obj) : (Data.Aeson..=) "town" (postAccountsAccountPeopleRequestBodyAddressKana'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountPeopleRequestBodyAddressKana'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountPeopleRequestBodyAddressKana'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountPeopleRequestBodyAddressKana'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountPeopleRequestBodyAddressKana'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountPeopleRequestBodyAddressKana'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountsAccountPeopleRequestBodyAddressKana'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountsAccountPeopleRequestBodyAddressKana'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeopleRequestBodyAddressKana'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeopleRequestBodyAddressKana'" (\obj -> ((((((GHC.Base.pure PostAccountsAccountPeopleRequestBodyAddressKana' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostAccountsAccountPeopleRequestBodyAddressKanji'
    = PostAccountsAccountPeopleRequestBodyAddressKanji' {postAccountsAccountPeopleRequestBodyAddressKanji'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postAccountsAccountPeopleRequestBodyAddressKanji'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postAccountsAccountPeopleRequestBodyAddressKanji'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postAccountsAccountPeopleRequestBodyAddressKanji'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postAccountsAccountPeopleRequestBodyAddressKanji'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postAccountsAccountPeopleRequestBodyAddressKanji'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postAccountsAccountPeopleRequestBodyAddressKanji'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPeopleRequestBodyAddressKanji'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountPeopleRequestBodyAddressKanji'City obj) : (Data.Aeson..=) "country" (postAccountsAccountPeopleRequestBodyAddressKanji'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountPeopleRequestBodyAddressKanji'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountPeopleRequestBodyAddressKanji'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountPeopleRequestBodyAddressKanji'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountPeopleRequestBodyAddressKanji'State obj) : (Data.Aeson..=) "town" (postAccountsAccountPeopleRequestBodyAddressKanji'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountPeopleRequestBodyAddressKanji'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountPeopleRequestBodyAddressKanji'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountPeopleRequestBodyAddressKanji'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountPeopleRequestBodyAddressKanji'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountPeopleRequestBodyAddressKanji'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountsAccountPeopleRequestBodyAddressKanji'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountsAccountPeopleRequestBodyAddressKanji'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeopleRequestBodyAddressKanji'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeopleRequestBodyAddressKanji'" (\obj -> ((((((GHC.Base.pure PostAccountsAccountPeopleRequestBodyAddressKanji' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
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
data PostAccountsAccountPeopleRequestBodyDob'OneOf2
    = PostAccountsAccountPeopleRequestBodyDob'OneOf2 {postAccountsAccountPeopleRequestBodyDob'OneOf2Day :: GHC.Integer.Type.Integer,
                                                      postAccountsAccountPeopleRequestBodyDob'OneOf2Month :: GHC.Integer.Type.Integer,
                                                      postAccountsAccountPeopleRequestBodyDob'OneOf2Year :: GHC.Integer.Type.Integer}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPeopleRequestBodyDob'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "day" (postAccountsAccountPeopleRequestBodyDob'OneOf2Day obj) : (Data.Aeson..=) "month" (postAccountsAccountPeopleRequestBodyDob'OneOf2Month obj) : (Data.Aeson..=) "year" (postAccountsAccountPeopleRequestBodyDob'OneOf2Year obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "day" (postAccountsAccountPeopleRequestBodyDob'OneOf2Day obj) GHC.Base.<> ((Data.Aeson..=) "month" (postAccountsAccountPeopleRequestBodyDob'OneOf2Month obj) GHC.Base.<> (Data.Aeson..=) "year" (postAccountsAccountPeopleRequestBodyDob'OneOf2Year obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeopleRequestBodyDob'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeopleRequestBodyDob'OneOf2" (\obj -> ((GHC.Base.pure PostAccountsAccountPeopleRequestBodyDob'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "year"))
data PostAccountsAccountPeopleRequestBodyDob'Variants
    = PostAccountsAccountPeopleRequestBodyDob'Variant1 PostAccountsAccountPeopleRequestBodyDob'OneOf1
    | PostAccountsAccountPeopleRequestBodyDob'Variant2 PostAccountsAccountPeopleRequestBodyDob'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountsAccountPeopleRequestBodyDob'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountsAccountPeopleRequestBodyDob'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostAccountsAccountPeopleRequestBodyMetadata'
    = PostAccountsAccountPeopleRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPeopleRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeopleRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeopleRequestBodyMetadata'" (\obj -> GHC.Base.pure PostAccountsAccountPeopleRequestBodyMetadata')
data PostAccountsAccountPeopleRequestBodyRelationship'
    = PostAccountsAccountPeopleRequestBodyRelationship' {postAccountsAccountPeopleRequestBodyRelationship'Director :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                         postAccountsAccountPeopleRequestBodyRelationship'Executive :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                         postAccountsAccountPeopleRequestBodyRelationship'Owner :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                         postAccountsAccountPeopleRequestBodyRelationship'PercentOwnership :: (GHC.Maybe.Maybe PostAccountsAccountPeopleRequestBodyRelationship'PercentOwnership'Variants),
                                                         postAccountsAccountPeopleRequestBodyRelationship'Representative :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                         postAccountsAccountPeopleRequestBodyRelationship'Title :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
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
data PostAccountsAccountPeopleRequestBodyRelationship'PercentOwnership'Variants
    = PostAccountsAccountPeopleRequestBodyRelationship'PercentOwnership'Variant1 PostAccountsAccountPeopleRequestBodyRelationship'PercentOwnership'OneOf1
    | PostAccountsAccountPeopleRequestBodyRelationship'PercentOwnership'Variant2 GHC.Types.Double
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountsAccountPeopleRequestBodyRelationship'PercentOwnership'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountsAccountPeopleRequestBodyRelationship'PercentOwnership'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostAccountsAccountPeopleRequestBodyRelationship'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "director" (postAccountsAccountPeopleRequestBodyRelationship'Director obj) : (Data.Aeson..=) "executive" (postAccountsAccountPeopleRequestBodyRelationship'Executive obj) : (Data.Aeson..=) "owner" (postAccountsAccountPeopleRequestBodyRelationship'Owner obj) : (Data.Aeson..=) "percent_ownership" (postAccountsAccountPeopleRequestBodyRelationship'PercentOwnership obj) : (Data.Aeson..=) "representative" (postAccountsAccountPeopleRequestBodyRelationship'Representative obj) : (Data.Aeson..=) "title" (postAccountsAccountPeopleRequestBodyRelationship'Title obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "director" (postAccountsAccountPeopleRequestBodyRelationship'Director obj) GHC.Base.<> ((Data.Aeson..=) "executive" (postAccountsAccountPeopleRequestBodyRelationship'Executive obj) GHC.Base.<> ((Data.Aeson..=) "owner" (postAccountsAccountPeopleRequestBodyRelationship'Owner obj) GHC.Base.<> ((Data.Aeson..=) "percent_ownership" (postAccountsAccountPeopleRequestBodyRelationship'PercentOwnership obj) GHC.Base.<> ((Data.Aeson..=) "representative" (postAccountsAccountPeopleRequestBodyRelationship'Representative obj) GHC.Base.<> (Data.Aeson..=) "title" (postAccountsAccountPeopleRequestBodyRelationship'Title obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeopleRequestBodyRelationship'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeopleRequestBodyRelationship'" (\obj -> (((((GHC.Base.pure PostAccountsAccountPeopleRequestBodyRelationship' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "director")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "executive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owner")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "percent_ownership")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "representative")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title"))
data PostAccountsAccountPeopleRequestBodyVerification'
    = PostAccountsAccountPeopleRequestBodyVerification' {postAccountsAccountPeopleRequestBodyVerification'AdditionalDocument :: (GHC.Maybe.Maybe PostAccountsAccountPeopleRequestBodyVerification'AdditionalDocument'),
                                                         postAccountsAccountPeopleRequestBodyVerification'Document :: (GHC.Maybe.Maybe PostAccountsAccountPeopleRequestBodyVerification'Document')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsAccountPeopleRequestBodyVerification'AdditionalDocument'
    = PostAccountsAccountPeopleRequestBodyVerification'AdditionalDocument' {postAccountsAccountPeopleRequestBodyVerification'AdditionalDocument'Back :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                            postAccountsAccountPeopleRequestBodyVerification'AdditionalDocument'Front :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPeopleRequestBodyVerification'AdditionalDocument'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountsAccountPeopleRequestBodyVerification'AdditionalDocument'Back obj) : (Data.Aeson..=) "front" (postAccountsAccountPeopleRequestBodyVerification'AdditionalDocument'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountsAccountPeopleRequestBodyVerification'AdditionalDocument'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountsAccountPeopleRequestBodyVerification'AdditionalDocument'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeopleRequestBodyVerification'AdditionalDocument'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeopleRequestBodyVerification'AdditionalDocument'" (\obj -> (GHC.Base.pure PostAccountsAccountPeopleRequestBodyVerification'AdditionalDocument' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
data PostAccountsAccountPeopleRequestBodyVerification'Document'
    = PostAccountsAccountPeopleRequestBodyVerification'Document' {postAccountsAccountPeopleRequestBodyVerification'Document'Back :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                  postAccountsAccountPeopleRequestBodyVerification'Document'Front :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPeopleRequestBodyVerification'Document'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountsAccountPeopleRequestBodyVerification'Document'Back obj) : (Data.Aeson..=) "front" (postAccountsAccountPeopleRequestBodyVerification'Document'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountsAccountPeopleRequestBodyVerification'Document'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountsAccountPeopleRequestBodyVerification'Document'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeopleRequestBodyVerification'Document'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeopleRequestBodyVerification'Document'" (\obj -> (GHC.Base.pure PostAccountsAccountPeopleRequestBodyVerification'Document' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
instance Data.Aeson.ToJSON PostAccountsAccountPeopleRequestBodyVerification'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "additional_document" (postAccountsAccountPeopleRequestBodyVerification'AdditionalDocument obj) : (Data.Aeson..=) "document" (postAccountsAccountPeopleRequestBodyVerification'Document obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "additional_document" (postAccountsAccountPeopleRequestBodyVerification'AdditionalDocument obj) GHC.Base.<> (Data.Aeson..=) "document" (postAccountsAccountPeopleRequestBodyVerification'Document obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeopleRequestBodyVerification'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeopleRequestBodyVerification'" (\obj -> (GHC.Base.pure PostAccountsAccountPeopleRequestBodyVerification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "additional_document")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document"))
instance Data.Aeson.ToJSON PostAccountsAccountPeopleRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postAccountsAccountPeopleRequestBodyAddress obj) : (Data.Aeson..=) "address_kana" (postAccountsAccountPeopleRequestBodyAddressKana obj) : (Data.Aeson..=) "address_kanji" (postAccountsAccountPeopleRequestBodyAddressKanji obj) : (Data.Aeson..=) "dob" (postAccountsAccountPeopleRequestBodyDob obj) : (Data.Aeson..=) "email" (postAccountsAccountPeopleRequestBodyEmail obj) : (Data.Aeson..=) "expand" (postAccountsAccountPeopleRequestBodyExpand obj) : (Data.Aeson..=) "first_name" (postAccountsAccountPeopleRequestBodyFirstName obj) : (Data.Aeson..=) "first_name_kana" (postAccountsAccountPeopleRequestBodyFirstNameKana obj) : (Data.Aeson..=) "first_name_kanji" (postAccountsAccountPeopleRequestBodyFirstNameKanji obj) : (Data.Aeson..=) "gender" (postAccountsAccountPeopleRequestBodyGender obj) : (Data.Aeson..=) "id_number" (postAccountsAccountPeopleRequestBodyIdNumber obj) : (Data.Aeson..=) "last_name" (postAccountsAccountPeopleRequestBodyLastName obj) : (Data.Aeson..=) "last_name_kana" (postAccountsAccountPeopleRequestBodyLastNameKana obj) : (Data.Aeson..=) "last_name_kanji" (postAccountsAccountPeopleRequestBodyLastNameKanji obj) : (Data.Aeson..=) "maiden_name" (postAccountsAccountPeopleRequestBodyMaidenName obj) : (Data.Aeson..=) "metadata" (postAccountsAccountPeopleRequestBodyMetadata obj) : (Data.Aeson..=) "person_token" (postAccountsAccountPeopleRequestBodyPersonToken obj) : (Data.Aeson..=) "phone" (postAccountsAccountPeopleRequestBodyPhone obj) : (Data.Aeson..=) "relationship" (postAccountsAccountPeopleRequestBodyRelationship obj) : (Data.Aeson..=) "ssn_last_4" (postAccountsAccountPeopleRequestBodySsnLast_4 obj) : (Data.Aeson..=) "verification" (postAccountsAccountPeopleRequestBodyVerification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postAccountsAccountPeopleRequestBodyAddress obj) GHC.Base.<> ((Data.Aeson..=) "address_kana" (postAccountsAccountPeopleRequestBodyAddressKana obj) GHC.Base.<> ((Data.Aeson..=) "address_kanji" (postAccountsAccountPeopleRequestBodyAddressKanji obj) GHC.Base.<> ((Data.Aeson..=) "dob" (postAccountsAccountPeopleRequestBodyDob obj) GHC.Base.<> ((Data.Aeson..=) "email" (postAccountsAccountPeopleRequestBodyEmail obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postAccountsAccountPeopleRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "first_name" (postAccountsAccountPeopleRequestBodyFirstName obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kana" (postAccountsAccountPeopleRequestBodyFirstNameKana obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kanji" (postAccountsAccountPeopleRequestBodyFirstNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "gender" (postAccountsAccountPeopleRequestBodyGender obj) GHC.Base.<> ((Data.Aeson..=) "id_number" (postAccountsAccountPeopleRequestBodyIdNumber obj) GHC.Base.<> ((Data.Aeson..=) "last_name" (postAccountsAccountPeopleRequestBodyLastName obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kana" (postAccountsAccountPeopleRequestBodyLastNameKana obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kanji" (postAccountsAccountPeopleRequestBodyLastNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "maiden_name" (postAccountsAccountPeopleRequestBodyMaidenName obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postAccountsAccountPeopleRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "person_token" (postAccountsAccountPeopleRequestBodyPersonToken obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postAccountsAccountPeopleRequestBodyPhone obj) GHC.Base.<> ((Data.Aeson..=) "relationship" (postAccountsAccountPeopleRequestBodyRelationship obj) GHC.Base.<> ((Data.Aeson..=) "ssn_last_4" (postAccountsAccountPeopleRequestBodySsnLast_4 obj) GHC.Base.<> (Data.Aeson..=) "verification" (postAccountsAccountPeopleRequestBodyVerification obj)))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPeopleRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPeopleRequestBody" (\obj -> ((((((((((((((((((((GHC.Base.pure PostAccountsAccountPeopleRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dob")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gender")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "maiden_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "person_token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "relationship")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ssn_last_4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verification"))

data PostAccountsAccountPeopleResponse
    = PostAccountsAccountPeopleResponseError GHC.Base.String
    | PostAccountsAccountPeopleResponse200 Person
    | PostAccountsAccountPeopleResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
