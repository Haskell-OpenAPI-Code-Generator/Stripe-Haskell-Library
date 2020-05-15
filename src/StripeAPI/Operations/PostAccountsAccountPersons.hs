{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

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
-- POST /v1/accounts/{account}/persons
postAccountsAccountPersons :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                            StripeAPI.Common.SecurityScheme s) =>
                              StripeAPI.Common.Configuration s ->
                              GHC.Base.String ->
                              PostAccountsAccountPersonsRequestBody ->
                              m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                    (Network.HTTP.Client.Types.Response PostAccountsAccountPersonsResponse))
postAccountsAccountPersons config
                           account
                           body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountsAccountPersonsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountPersonsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                Person)
                                                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountPersonsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/persons"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountsAccountPersonsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                               StripeAPI.Common.SecurityScheme s) =>
                                 StripeAPI.Common.Configuration s ->
                                 GHC.Base.String ->
                                 PostAccountsAccountPersonsRequestBody ->
                                 m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountsAccountPersonsRaw config
                              account
                              body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/persons"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountsAccountPersonsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                             StripeAPI.Common.SecurityScheme s) =>
                               GHC.Base.String ->
                               PostAccountsAccountPersonsRequestBody ->
                               Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                  m
                                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                      (Network.HTTP.Client.Types.Response PostAccountsAccountPersonsResponse))
postAccountsAccountPersonsM account
                            body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostAccountsAccountPersonsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountPersonsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 Person)
                                                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountPersonsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/persons"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountsAccountPersonsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                StripeAPI.Common.SecurityScheme s) =>
                                  GHC.Base.String ->
                                  PostAccountsAccountPersonsRequestBody ->
                                  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                     m
                                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountsAccountPersonsRawM account
                               body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/persons"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostAccountsAccountPersonsRequestBody
    = PostAccountsAccountPersonsRequestBody {postAccountsAccountPersonsRequestBodyAddress :: (GHC.Maybe.Maybe PostAccountsAccountPersonsRequestBodyAddress'),
                                             postAccountsAccountPersonsRequestBodyAddressKana :: (GHC.Maybe.Maybe PostAccountsAccountPersonsRequestBodyAddressKana'),
                                             postAccountsAccountPersonsRequestBodyAddressKanji :: (GHC.Maybe.Maybe PostAccountsAccountPersonsRequestBodyAddressKanji'),
                                             postAccountsAccountPersonsRequestBodyDob :: (GHC.Maybe.Maybe PostAccountsAccountPersonsRequestBodyDob'Variants),
                                             postAccountsAccountPersonsRequestBodyEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                                             postAccountsAccountPersonsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                             postAccountsAccountPersonsRequestBodyFirstName :: (GHC.Maybe.Maybe GHC.Base.String),
                                             postAccountsAccountPersonsRequestBodyFirstNameKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                             postAccountsAccountPersonsRequestBodyFirstNameKanji :: (GHC.Maybe.Maybe GHC.Base.String),
                                             postAccountsAccountPersonsRequestBodyGender :: (GHC.Maybe.Maybe GHC.Base.String),
                                             postAccountsAccountPersonsRequestBodyIdNumber :: (GHC.Maybe.Maybe GHC.Base.String),
                                             postAccountsAccountPersonsRequestBodyLastName :: (GHC.Maybe.Maybe GHC.Base.String),
                                             postAccountsAccountPersonsRequestBodyLastNameKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                             postAccountsAccountPersonsRequestBodyLastNameKanji :: (GHC.Maybe.Maybe GHC.Base.String),
                                             postAccountsAccountPersonsRequestBodyMaidenName :: (GHC.Maybe.Maybe GHC.Base.String),
                                             postAccountsAccountPersonsRequestBodyMetadata :: (GHC.Maybe.Maybe PostAccountsAccountPersonsRequestBodyMetadata'),
                                             postAccountsAccountPersonsRequestBodyPersonToken :: (GHC.Maybe.Maybe GHC.Base.String),
                                             postAccountsAccountPersonsRequestBodyPhone :: (GHC.Maybe.Maybe GHC.Base.String),
                                             postAccountsAccountPersonsRequestBodyRelationship :: (GHC.Maybe.Maybe PostAccountsAccountPersonsRequestBodyRelationship'),
                                             postAccountsAccountPersonsRequestBodySsnLast_4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                             postAccountsAccountPersonsRequestBodyVerification :: (GHC.Maybe.Maybe PostAccountsAccountPersonsRequestBodyVerification')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsAccountPersonsRequestBodyAddress'
    = PostAccountsAccountPersonsRequestBodyAddress' {postAccountsAccountPersonsRequestBodyAddress'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postAccountsAccountPersonsRequestBodyAddress'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postAccountsAccountPersonsRequestBodyAddress'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postAccountsAccountPersonsRequestBodyAddress'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postAccountsAccountPersonsRequestBodyAddress'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postAccountsAccountPersonsRequestBodyAddress'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsRequestBodyAddress'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountPersonsRequestBodyAddress'City obj) : (Data.Aeson..=) "country" (postAccountsAccountPersonsRequestBodyAddress'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountPersonsRequestBodyAddress'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountPersonsRequestBodyAddress'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountPersonsRequestBodyAddress'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountPersonsRequestBodyAddress'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountPersonsRequestBodyAddress'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountPersonsRequestBodyAddress'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountPersonsRequestBodyAddress'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountPersonsRequestBodyAddress'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountPersonsRequestBodyAddress'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postAccountsAccountPersonsRequestBodyAddress'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsRequestBodyAddress'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsRequestBodyAddress'" (\obj -> (((((GHC.Base.pure PostAccountsAccountPersonsRequestBodyAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
data PostAccountsAccountPersonsRequestBodyAddressKana'
    = PostAccountsAccountPersonsRequestBodyAddressKana' {postAccountsAccountPersonsRequestBodyAddressKana'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postAccountsAccountPersonsRequestBodyAddressKana'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postAccountsAccountPersonsRequestBodyAddressKana'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postAccountsAccountPersonsRequestBodyAddressKana'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postAccountsAccountPersonsRequestBodyAddressKana'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postAccountsAccountPersonsRequestBodyAddressKana'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postAccountsAccountPersonsRequestBodyAddressKana'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsRequestBodyAddressKana'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountPersonsRequestBodyAddressKana'City obj) : (Data.Aeson..=) "country" (postAccountsAccountPersonsRequestBodyAddressKana'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountPersonsRequestBodyAddressKana'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountPersonsRequestBodyAddressKana'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountPersonsRequestBodyAddressKana'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountPersonsRequestBodyAddressKana'State obj) : (Data.Aeson..=) "town" (postAccountsAccountPersonsRequestBodyAddressKana'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountPersonsRequestBodyAddressKana'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountPersonsRequestBodyAddressKana'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountPersonsRequestBodyAddressKana'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountPersonsRequestBodyAddressKana'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountPersonsRequestBodyAddressKana'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountsAccountPersonsRequestBodyAddressKana'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountsAccountPersonsRequestBodyAddressKana'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsRequestBodyAddressKana'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsRequestBodyAddressKana'" (\obj -> ((((((GHC.Base.pure PostAccountsAccountPersonsRequestBodyAddressKana' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostAccountsAccountPersonsRequestBodyAddressKanji'
    = PostAccountsAccountPersonsRequestBodyAddressKanji' {postAccountsAccountPersonsRequestBodyAddressKanji'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postAccountsAccountPersonsRequestBodyAddressKanji'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postAccountsAccountPersonsRequestBodyAddressKanji'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postAccountsAccountPersonsRequestBodyAddressKanji'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postAccountsAccountPersonsRequestBodyAddressKanji'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postAccountsAccountPersonsRequestBodyAddressKanji'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postAccountsAccountPersonsRequestBodyAddressKanji'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsRequestBodyAddressKanji'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountPersonsRequestBodyAddressKanji'City obj) : (Data.Aeson..=) "country" (postAccountsAccountPersonsRequestBodyAddressKanji'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountPersonsRequestBodyAddressKanji'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountPersonsRequestBodyAddressKanji'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountPersonsRequestBodyAddressKanji'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountPersonsRequestBodyAddressKanji'State obj) : (Data.Aeson..=) "town" (postAccountsAccountPersonsRequestBodyAddressKanji'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountPersonsRequestBodyAddressKanji'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountPersonsRequestBodyAddressKanji'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountPersonsRequestBodyAddressKanji'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountPersonsRequestBodyAddressKanji'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountPersonsRequestBodyAddressKanji'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountsAccountPersonsRequestBodyAddressKanji'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountsAccountPersonsRequestBodyAddressKanji'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsRequestBodyAddressKanji'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsRequestBodyAddressKanji'" (\obj -> ((((((GHC.Base.pure PostAccountsAccountPersonsRequestBodyAddressKanji' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostAccountsAccountPersonsRequestBodyDob'OneOf1
    = PostAccountsAccountPersonsRequestBodyDob'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountPersonsRequestBodyDob'OneOf1EnumTyped GHC.Base.String
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
data PostAccountsAccountPersonsRequestBodyDob'OneOf2
    = PostAccountsAccountPersonsRequestBodyDob'OneOf2 {postAccountsAccountPersonsRequestBodyDob'OneOf2Day :: GHC.Integer.Type.Integer,
                                                       postAccountsAccountPersonsRequestBodyDob'OneOf2Month :: GHC.Integer.Type.Integer,
                                                       postAccountsAccountPersonsRequestBodyDob'OneOf2Year :: GHC.Integer.Type.Integer}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsRequestBodyDob'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "day" (postAccountsAccountPersonsRequestBodyDob'OneOf2Day obj) : (Data.Aeson..=) "month" (postAccountsAccountPersonsRequestBodyDob'OneOf2Month obj) : (Data.Aeson..=) "year" (postAccountsAccountPersonsRequestBodyDob'OneOf2Year obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "day" (postAccountsAccountPersonsRequestBodyDob'OneOf2Day obj) GHC.Base.<> ((Data.Aeson..=) "month" (postAccountsAccountPersonsRequestBodyDob'OneOf2Month obj) GHC.Base.<> (Data.Aeson..=) "year" (postAccountsAccountPersonsRequestBodyDob'OneOf2Year obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsRequestBodyDob'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsRequestBodyDob'OneOf2" (\obj -> ((GHC.Base.pure PostAccountsAccountPersonsRequestBodyDob'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "year"))
data PostAccountsAccountPersonsRequestBodyDob'Variants
    = PostAccountsAccountPersonsRequestBodyDob'Variant1 PostAccountsAccountPersonsRequestBodyDob'OneOf1
    | PostAccountsAccountPersonsRequestBodyDob'Variant2 PostAccountsAccountPersonsRequestBodyDob'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsRequestBodyDob'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountsAccountPersonsRequestBodyDob'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostAccountsAccountPersonsRequestBodyMetadata'
    = PostAccountsAccountPersonsRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostAccountsAccountPersonsRequestBodyMetadata')
data PostAccountsAccountPersonsRequestBodyRelationship'
    = PostAccountsAccountPersonsRequestBodyRelationship' {postAccountsAccountPersonsRequestBodyRelationship'Director :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                          postAccountsAccountPersonsRequestBodyRelationship'Executive :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                          postAccountsAccountPersonsRequestBodyRelationship'Owner :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                          postAccountsAccountPersonsRequestBodyRelationship'PercentOwnership :: (GHC.Maybe.Maybe PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'Variants),
                                                          postAccountsAccountPersonsRequestBodyRelationship'Representative :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                          postAccountsAccountPersonsRequestBodyRelationship'Title :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1
    = PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1EnumTyped GHC.Base.String
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
data PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'Variants
    = PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'Variant1 PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'OneOf1
    | PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'Variant2 GHC.Types.Double
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountsAccountPersonsRequestBodyRelationship'PercentOwnership'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostAccountsAccountPersonsRequestBodyRelationship'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "director" (postAccountsAccountPersonsRequestBodyRelationship'Director obj) : (Data.Aeson..=) "executive" (postAccountsAccountPersonsRequestBodyRelationship'Executive obj) : (Data.Aeson..=) "owner" (postAccountsAccountPersonsRequestBodyRelationship'Owner obj) : (Data.Aeson..=) "percent_ownership" (postAccountsAccountPersonsRequestBodyRelationship'PercentOwnership obj) : (Data.Aeson..=) "representative" (postAccountsAccountPersonsRequestBodyRelationship'Representative obj) : (Data.Aeson..=) "title" (postAccountsAccountPersonsRequestBodyRelationship'Title obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "director" (postAccountsAccountPersonsRequestBodyRelationship'Director obj) GHC.Base.<> ((Data.Aeson..=) "executive" (postAccountsAccountPersonsRequestBodyRelationship'Executive obj) GHC.Base.<> ((Data.Aeson..=) "owner" (postAccountsAccountPersonsRequestBodyRelationship'Owner obj) GHC.Base.<> ((Data.Aeson..=) "percent_ownership" (postAccountsAccountPersonsRequestBodyRelationship'PercentOwnership obj) GHC.Base.<> ((Data.Aeson..=) "representative" (postAccountsAccountPersonsRequestBodyRelationship'Representative obj) GHC.Base.<> (Data.Aeson..=) "title" (postAccountsAccountPersonsRequestBodyRelationship'Title obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsRequestBodyRelationship'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsRequestBodyRelationship'" (\obj -> (((((GHC.Base.pure PostAccountsAccountPersonsRequestBodyRelationship' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "director")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "executive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owner")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "percent_ownership")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "representative")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title"))
data PostAccountsAccountPersonsRequestBodyVerification'
    = PostAccountsAccountPersonsRequestBodyVerification' {postAccountsAccountPersonsRequestBodyVerification'AdditionalDocument :: (GHC.Maybe.Maybe PostAccountsAccountPersonsRequestBodyVerification'AdditionalDocument'),
                                                          postAccountsAccountPersonsRequestBodyVerification'Document :: (GHC.Maybe.Maybe PostAccountsAccountPersonsRequestBodyVerification'Document')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsAccountPersonsRequestBodyVerification'AdditionalDocument'
    = PostAccountsAccountPersonsRequestBodyVerification'AdditionalDocument' {postAccountsAccountPersonsRequestBodyVerification'AdditionalDocument'Back :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                             postAccountsAccountPersonsRequestBodyVerification'AdditionalDocument'Front :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsRequestBodyVerification'AdditionalDocument'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountsAccountPersonsRequestBodyVerification'AdditionalDocument'Back obj) : (Data.Aeson..=) "front" (postAccountsAccountPersonsRequestBodyVerification'AdditionalDocument'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountsAccountPersonsRequestBodyVerification'AdditionalDocument'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountsAccountPersonsRequestBodyVerification'AdditionalDocument'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsRequestBodyVerification'AdditionalDocument'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsRequestBodyVerification'AdditionalDocument'" (\obj -> (GHC.Base.pure PostAccountsAccountPersonsRequestBodyVerification'AdditionalDocument' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
data PostAccountsAccountPersonsRequestBodyVerification'Document'
    = PostAccountsAccountPersonsRequestBodyVerification'Document' {postAccountsAccountPersonsRequestBodyVerification'Document'Back :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                   postAccountsAccountPersonsRequestBodyVerification'Document'Front :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsRequestBodyVerification'Document'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountsAccountPersonsRequestBodyVerification'Document'Back obj) : (Data.Aeson..=) "front" (postAccountsAccountPersonsRequestBodyVerification'Document'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountsAccountPersonsRequestBodyVerification'Document'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountsAccountPersonsRequestBodyVerification'Document'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsRequestBodyVerification'Document'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsRequestBodyVerification'Document'" (\obj -> (GHC.Base.pure PostAccountsAccountPersonsRequestBodyVerification'Document' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
instance Data.Aeson.ToJSON PostAccountsAccountPersonsRequestBodyVerification'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "additional_document" (postAccountsAccountPersonsRequestBodyVerification'AdditionalDocument obj) : (Data.Aeson..=) "document" (postAccountsAccountPersonsRequestBodyVerification'Document obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "additional_document" (postAccountsAccountPersonsRequestBodyVerification'AdditionalDocument obj) GHC.Base.<> (Data.Aeson..=) "document" (postAccountsAccountPersonsRequestBodyVerification'Document obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsRequestBodyVerification'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsRequestBodyVerification'" (\obj -> (GHC.Base.pure PostAccountsAccountPersonsRequestBodyVerification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "additional_document")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document"))
instance Data.Aeson.ToJSON PostAccountsAccountPersonsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postAccountsAccountPersonsRequestBodyAddress obj) : (Data.Aeson..=) "address_kana" (postAccountsAccountPersonsRequestBodyAddressKana obj) : (Data.Aeson..=) "address_kanji" (postAccountsAccountPersonsRequestBodyAddressKanji obj) : (Data.Aeson..=) "dob" (postAccountsAccountPersonsRequestBodyDob obj) : (Data.Aeson..=) "email" (postAccountsAccountPersonsRequestBodyEmail obj) : (Data.Aeson..=) "expand" (postAccountsAccountPersonsRequestBodyExpand obj) : (Data.Aeson..=) "first_name" (postAccountsAccountPersonsRequestBodyFirstName obj) : (Data.Aeson..=) "first_name_kana" (postAccountsAccountPersonsRequestBodyFirstNameKana obj) : (Data.Aeson..=) "first_name_kanji" (postAccountsAccountPersonsRequestBodyFirstNameKanji obj) : (Data.Aeson..=) "gender" (postAccountsAccountPersonsRequestBodyGender obj) : (Data.Aeson..=) "id_number" (postAccountsAccountPersonsRequestBodyIdNumber obj) : (Data.Aeson..=) "last_name" (postAccountsAccountPersonsRequestBodyLastName obj) : (Data.Aeson..=) "last_name_kana" (postAccountsAccountPersonsRequestBodyLastNameKana obj) : (Data.Aeson..=) "last_name_kanji" (postAccountsAccountPersonsRequestBodyLastNameKanji obj) : (Data.Aeson..=) "maiden_name" (postAccountsAccountPersonsRequestBodyMaidenName obj) : (Data.Aeson..=) "metadata" (postAccountsAccountPersonsRequestBodyMetadata obj) : (Data.Aeson..=) "person_token" (postAccountsAccountPersonsRequestBodyPersonToken obj) : (Data.Aeson..=) "phone" (postAccountsAccountPersonsRequestBodyPhone obj) : (Data.Aeson..=) "relationship" (postAccountsAccountPersonsRequestBodyRelationship obj) : (Data.Aeson..=) "ssn_last_4" (postAccountsAccountPersonsRequestBodySsnLast_4 obj) : (Data.Aeson..=) "verification" (postAccountsAccountPersonsRequestBodyVerification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postAccountsAccountPersonsRequestBodyAddress obj) GHC.Base.<> ((Data.Aeson..=) "address_kana" (postAccountsAccountPersonsRequestBodyAddressKana obj) GHC.Base.<> ((Data.Aeson..=) "address_kanji" (postAccountsAccountPersonsRequestBodyAddressKanji obj) GHC.Base.<> ((Data.Aeson..=) "dob" (postAccountsAccountPersonsRequestBodyDob obj) GHC.Base.<> ((Data.Aeson..=) "email" (postAccountsAccountPersonsRequestBodyEmail obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postAccountsAccountPersonsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "first_name" (postAccountsAccountPersonsRequestBodyFirstName obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kana" (postAccountsAccountPersonsRequestBodyFirstNameKana obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kanji" (postAccountsAccountPersonsRequestBodyFirstNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "gender" (postAccountsAccountPersonsRequestBodyGender obj) GHC.Base.<> ((Data.Aeson..=) "id_number" (postAccountsAccountPersonsRequestBodyIdNumber obj) GHC.Base.<> ((Data.Aeson..=) "last_name" (postAccountsAccountPersonsRequestBodyLastName obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kana" (postAccountsAccountPersonsRequestBodyLastNameKana obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kanji" (postAccountsAccountPersonsRequestBodyLastNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "maiden_name" (postAccountsAccountPersonsRequestBodyMaidenName obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postAccountsAccountPersonsRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "person_token" (postAccountsAccountPersonsRequestBodyPersonToken obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postAccountsAccountPersonsRequestBodyPhone obj) GHC.Base.<> ((Data.Aeson..=) "relationship" (postAccountsAccountPersonsRequestBodyRelationship obj) GHC.Base.<> ((Data.Aeson..=) "ssn_last_4" (postAccountsAccountPersonsRequestBodySsnLast_4 obj) GHC.Base.<> (Data.Aeson..=) "verification" (postAccountsAccountPersonsRequestBodyVerification obj)))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsRequestBody" (\obj -> ((((((((((((((((((((GHC.Base.pure PostAccountsAccountPersonsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dob")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gender")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "maiden_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "person_token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "relationship")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ssn_last_4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verification"))

data PostAccountsAccountPersonsResponse
    = PostAccountsAccountPersonsResponseError GHC.Base.String
    | PostAccountsAccountPersonsResponse200 Person
    | PostAccountsAccountPersonsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
