{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostAccountPersonsPerson where

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
-- POST /v1/account/persons/{person}
postAccountPersonsPerson :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                          StripeAPI.Common.SecurityScheme s) =>
                            StripeAPI.Common.Configuration s ->
                            GHC.Base.String ->
                            PostAccountPersonsPersonRequestBody ->
                            m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                  (Network.HTTP.Client.Types.Response PostAccountPersonsPersonResponse))
postAccountPersonsPerson config
                         person
                         body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountPersonsPersonResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountPersonsPersonResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                          Person)
                                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountPersonsPersonResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/account/persons/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel person)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountPersonsPersonRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                             StripeAPI.Common.SecurityScheme s) =>
                               StripeAPI.Common.Configuration s ->
                               GHC.Base.String ->
                               PostAccountPersonsPersonRequestBody ->
                               m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountPersonsPersonRaw config
                            person
                            body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/account/persons/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel person)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountPersonsPersonM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             GHC.Base.String ->
                             PostAccountPersonsPersonRequestBody ->
                             Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                m
                                                                (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                    (Network.HTTP.Client.Types.Response PostAccountPersonsPersonResponse))
postAccountPersonsPersonM person
                          body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostAccountPersonsPersonResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountPersonsPersonResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                           Person)
                                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountPersonsPersonResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/account/persons/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel person)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountPersonsPersonRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                GHC.Base.String ->
                                PostAccountPersonsPersonRequestBody ->
                                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                   m
                                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountPersonsPersonRawM person
                             body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/account/persons/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel person)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostAccountPersonsPersonRequestBody
    = PostAccountPersonsPersonRequestBody {postAccountPersonsPersonRequestBodyAccount :: (GHC.Maybe.Maybe GHC.Base.String),
                                           postAccountPersonsPersonRequestBodyAddress :: (GHC.Maybe.Maybe PostAccountPersonsPersonRequestBodyAddress'),
                                           postAccountPersonsPersonRequestBodyAddressKana :: (GHC.Maybe.Maybe PostAccountPersonsPersonRequestBodyAddressKana'),
                                           postAccountPersonsPersonRequestBodyAddressKanji :: (GHC.Maybe.Maybe PostAccountPersonsPersonRequestBodyAddressKanji'),
                                           postAccountPersonsPersonRequestBodyDob :: (GHC.Maybe.Maybe PostAccountPersonsPersonRequestBodyDob'Variants),
                                           postAccountPersonsPersonRequestBodyEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                                           postAccountPersonsPersonRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                           postAccountPersonsPersonRequestBodyFirstName :: (GHC.Maybe.Maybe GHC.Base.String),
                                           postAccountPersonsPersonRequestBodyFirstNameKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                           postAccountPersonsPersonRequestBodyFirstNameKanji :: (GHC.Maybe.Maybe GHC.Base.String),
                                           postAccountPersonsPersonRequestBodyGender :: (GHC.Maybe.Maybe GHC.Base.String),
                                           postAccountPersonsPersonRequestBodyIdNumber :: (GHC.Maybe.Maybe GHC.Base.String),
                                           postAccountPersonsPersonRequestBodyLastName :: (GHC.Maybe.Maybe GHC.Base.String),
                                           postAccountPersonsPersonRequestBodyLastNameKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                           postAccountPersonsPersonRequestBodyLastNameKanji :: (GHC.Maybe.Maybe GHC.Base.String),
                                           postAccountPersonsPersonRequestBodyMaidenName :: (GHC.Maybe.Maybe GHC.Base.String),
                                           postAccountPersonsPersonRequestBodyMetadata :: (GHC.Maybe.Maybe PostAccountPersonsPersonRequestBodyMetadata'),
                                           postAccountPersonsPersonRequestBodyPersonToken :: (GHC.Maybe.Maybe GHC.Base.String),
                                           postAccountPersonsPersonRequestBodyPhone :: (GHC.Maybe.Maybe GHC.Base.String),
                                           postAccountPersonsPersonRequestBodyRelationship :: (GHC.Maybe.Maybe PostAccountPersonsPersonRequestBodyRelationship'),
                                           postAccountPersonsPersonRequestBodySsnLast_4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                           postAccountPersonsPersonRequestBodyVerification :: (GHC.Maybe.Maybe PostAccountPersonsPersonRequestBodyVerification')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountPersonsPersonRequestBodyAddress'
    = PostAccountPersonsPersonRequestBodyAddress' {postAccountPersonsPersonRequestBodyAddress'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountPersonsPersonRequestBodyAddress'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountPersonsPersonRequestBodyAddress'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountPersonsPersonRequestBodyAddress'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountPersonsPersonRequestBodyAddress'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountPersonsPersonRequestBodyAddress'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPersonsPersonRequestBodyAddress'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountPersonsPersonRequestBodyAddress'City obj) : (Data.Aeson..=) "country" (postAccountPersonsPersonRequestBodyAddress'Country obj) : (Data.Aeson..=) "line1" (postAccountPersonsPersonRequestBodyAddress'Line1 obj) : (Data.Aeson..=) "line2" (postAccountPersonsPersonRequestBodyAddress'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountPersonsPersonRequestBodyAddress'PostalCode obj) : (Data.Aeson..=) "state" (postAccountPersonsPersonRequestBodyAddress'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountPersonsPersonRequestBodyAddress'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountPersonsPersonRequestBodyAddress'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountPersonsPersonRequestBodyAddress'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountPersonsPersonRequestBodyAddress'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountPersonsPersonRequestBodyAddress'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postAccountPersonsPersonRequestBodyAddress'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPersonsPersonRequestBodyAddress'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPersonsPersonRequestBodyAddress'" (\obj -> (((((GHC.Base.pure PostAccountPersonsPersonRequestBodyAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
data PostAccountPersonsPersonRequestBodyAddressKana'
    = PostAccountPersonsPersonRequestBodyAddressKana' {postAccountPersonsPersonRequestBodyAddressKana'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                       postAccountPersonsPersonRequestBodyAddressKana'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                       postAccountPersonsPersonRequestBodyAddressKana'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                       postAccountPersonsPersonRequestBodyAddressKana'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                       postAccountPersonsPersonRequestBodyAddressKana'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                       postAccountPersonsPersonRequestBodyAddressKana'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                       postAccountPersonsPersonRequestBodyAddressKana'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPersonsPersonRequestBodyAddressKana'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountPersonsPersonRequestBodyAddressKana'City obj) : (Data.Aeson..=) "country" (postAccountPersonsPersonRequestBodyAddressKana'Country obj) : (Data.Aeson..=) "line1" (postAccountPersonsPersonRequestBodyAddressKana'Line1 obj) : (Data.Aeson..=) "line2" (postAccountPersonsPersonRequestBodyAddressKana'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountPersonsPersonRequestBodyAddressKana'PostalCode obj) : (Data.Aeson..=) "state" (postAccountPersonsPersonRequestBodyAddressKana'State obj) : (Data.Aeson..=) "town" (postAccountPersonsPersonRequestBodyAddressKana'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountPersonsPersonRequestBodyAddressKana'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountPersonsPersonRequestBodyAddressKana'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountPersonsPersonRequestBodyAddressKana'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountPersonsPersonRequestBodyAddressKana'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountPersonsPersonRequestBodyAddressKana'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountPersonsPersonRequestBodyAddressKana'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountPersonsPersonRequestBodyAddressKana'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPersonsPersonRequestBodyAddressKana'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPersonsPersonRequestBodyAddressKana'" (\obj -> ((((((GHC.Base.pure PostAccountPersonsPersonRequestBodyAddressKana' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostAccountPersonsPersonRequestBodyAddressKanji'
    = PostAccountPersonsPersonRequestBodyAddressKanji' {postAccountPersonsPersonRequestBodyAddressKanji'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postAccountPersonsPersonRequestBodyAddressKanji'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postAccountPersonsPersonRequestBodyAddressKanji'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postAccountPersonsPersonRequestBodyAddressKanji'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postAccountPersonsPersonRequestBodyAddressKanji'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postAccountPersonsPersonRequestBodyAddressKanji'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postAccountPersonsPersonRequestBodyAddressKanji'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPersonsPersonRequestBodyAddressKanji'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountPersonsPersonRequestBodyAddressKanji'City obj) : (Data.Aeson..=) "country" (postAccountPersonsPersonRequestBodyAddressKanji'Country obj) : (Data.Aeson..=) "line1" (postAccountPersonsPersonRequestBodyAddressKanji'Line1 obj) : (Data.Aeson..=) "line2" (postAccountPersonsPersonRequestBodyAddressKanji'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountPersonsPersonRequestBodyAddressKanji'PostalCode obj) : (Data.Aeson..=) "state" (postAccountPersonsPersonRequestBodyAddressKanji'State obj) : (Data.Aeson..=) "town" (postAccountPersonsPersonRequestBodyAddressKanji'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountPersonsPersonRequestBodyAddressKanji'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountPersonsPersonRequestBodyAddressKanji'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountPersonsPersonRequestBodyAddressKanji'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountPersonsPersonRequestBodyAddressKanji'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountPersonsPersonRequestBodyAddressKanji'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountPersonsPersonRequestBodyAddressKanji'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountPersonsPersonRequestBodyAddressKanji'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPersonsPersonRequestBodyAddressKanji'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPersonsPersonRequestBodyAddressKanji'" (\obj -> ((((((GHC.Base.pure PostAccountPersonsPersonRequestBodyAddressKanji' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostAccountPersonsPersonRequestBodyDob'OneOf1
    = PostAccountPersonsPersonRequestBodyDob'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountPersonsPersonRequestBodyDob'OneOf1EnumTyped GHC.Base.String
    | PostAccountPersonsPersonRequestBodyDob'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPersonsPersonRequestBodyDob'OneOf1
    where toJSON (PostAccountPersonsPersonRequestBodyDob'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountPersonsPersonRequestBodyDob'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountPersonsPersonRequestBodyDob'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostAccountPersonsPersonRequestBodyDob'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostAccountPersonsPersonRequestBodyDob'OneOf1EnumString_
                                          else PostAccountPersonsPersonRequestBodyDob'OneOf1EnumOther val)
data PostAccountPersonsPersonRequestBodyDob'OneOf2
    = PostAccountPersonsPersonRequestBodyDob'OneOf2 {postAccountPersonsPersonRequestBodyDob'OneOf2Day :: GHC.Integer.Type.Integer,
                                                     postAccountPersonsPersonRequestBodyDob'OneOf2Month :: GHC.Integer.Type.Integer,
                                                     postAccountPersonsPersonRequestBodyDob'OneOf2Year :: GHC.Integer.Type.Integer}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPersonsPersonRequestBodyDob'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "day" (postAccountPersonsPersonRequestBodyDob'OneOf2Day obj) : (Data.Aeson..=) "month" (postAccountPersonsPersonRequestBodyDob'OneOf2Month obj) : (Data.Aeson..=) "year" (postAccountPersonsPersonRequestBodyDob'OneOf2Year obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "day" (postAccountPersonsPersonRequestBodyDob'OneOf2Day obj) GHC.Base.<> ((Data.Aeson..=) "month" (postAccountPersonsPersonRequestBodyDob'OneOf2Month obj) GHC.Base.<> (Data.Aeson..=) "year" (postAccountPersonsPersonRequestBodyDob'OneOf2Year obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPersonsPersonRequestBodyDob'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPersonsPersonRequestBodyDob'OneOf2" (\obj -> ((GHC.Base.pure PostAccountPersonsPersonRequestBodyDob'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "year"))
data PostAccountPersonsPersonRequestBodyDob'Variants
    = PostAccountPersonsPersonRequestBodyDob'Variant1 PostAccountPersonsPersonRequestBodyDob'OneOf1
    | PostAccountPersonsPersonRequestBodyDob'Variant2 PostAccountPersonsPersonRequestBodyDob'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountPersonsPersonRequestBodyDob'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountPersonsPersonRequestBodyDob'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostAccountPersonsPersonRequestBodyMetadata'
    = PostAccountPersonsPersonRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPersonsPersonRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPersonsPersonRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPersonsPersonRequestBodyMetadata'" (\obj -> GHC.Base.pure PostAccountPersonsPersonRequestBodyMetadata')
data PostAccountPersonsPersonRequestBodyRelationship'
    = PostAccountPersonsPersonRequestBodyRelationship' {postAccountPersonsPersonRequestBodyRelationship'Director :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                        postAccountPersonsPersonRequestBodyRelationship'Executive :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                        postAccountPersonsPersonRequestBodyRelationship'Owner :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                        postAccountPersonsPersonRequestBodyRelationship'PercentOwnership :: (GHC.Maybe.Maybe PostAccountPersonsPersonRequestBodyRelationship'PercentOwnership'Variants),
                                                        postAccountPersonsPersonRequestBodyRelationship'Representative :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                        postAccountPersonsPersonRequestBodyRelationship'Title :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountPersonsPersonRequestBodyRelationship'PercentOwnership'OneOf1
    = PostAccountPersonsPersonRequestBodyRelationship'PercentOwnership'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountPersonsPersonRequestBodyRelationship'PercentOwnership'OneOf1EnumTyped GHC.Base.String
    | PostAccountPersonsPersonRequestBodyRelationship'PercentOwnership'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPersonsPersonRequestBodyRelationship'PercentOwnership'OneOf1
    where toJSON (PostAccountPersonsPersonRequestBodyRelationship'PercentOwnership'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountPersonsPersonRequestBodyRelationship'PercentOwnership'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountPersonsPersonRequestBodyRelationship'PercentOwnership'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostAccountPersonsPersonRequestBodyRelationship'PercentOwnership'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostAccountPersonsPersonRequestBodyRelationship'PercentOwnership'OneOf1EnumString_
                                          else PostAccountPersonsPersonRequestBodyRelationship'PercentOwnership'OneOf1EnumOther val)
data PostAccountPersonsPersonRequestBodyRelationship'PercentOwnership'Variants
    = PostAccountPersonsPersonRequestBodyRelationship'PercentOwnership'Variant1 PostAccountPersonsPersonRequestBodyRelationship'PercentOwnership'OneOf1
    | PostAccountPersonsPersonRequestBodyRelationship'PercentOwnership'Variant2 GHC.Types.Double
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountPersonsPersonRequestBodyRelationship'PercentOwnership'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountPersonsPersonRequestBodyRelationship'PercentOwnership'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostAccountPersonsPersonRequestBodyRelationship'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "director" (postAccountPersonsPersonRequestBodyRelationship'Director obj) : (Data.Aeson..=) "executive" (postAccountPersonsPersonRequestBodyRelationship'Executive obj) : (Data.Aeson..=) "owner" (postAccountPersonsPersonRequestBodyRelationship'Owner obj) : (Data.Aeson..=) "percent_ownership" (postAccountPersonsPersonRequestBodyRelationship'PercentOwnership obj) : (Data.Aeson..=) "representative" (postAccountPersonsPersonRequestBodyRelationship'Representative obj) : (Data.Aeson..=) "title" (postAccountPersonsPersonRequestBodyRelationship'Title obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "director" (postAccountPersonsPersonRequestBodyRelationship'Director obj) GHC.Base.<> ((Data.Aeson..=) "executive" (postAccountPersonsPersonRequestBodyRelationship'Executive obj) GHC.Base.<> ((Data.Aeson..=) "owner" (postAccountPersonsPersonRequestBodyRelationship'Owner obj) GHC.Base.<> ((Data.Aeson..=) "percent_ownership" (postAccountPersonsPersonRequestBodyRelationship'PercentOwnership obj) GHC.Base.<> ((Data.Aeson..=) "representative" (postAccountPersonsPersonRequestBodyRelationship'Representative obj) GHC.Base.<> (Data.Aeson..=) "title" (postAccountPersonsPersonRequestBodyRelationship'Title obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPersonsPersonRequestBodyRelationship'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPersonsPersonRequestBodyRelationship'" (\obj -> (((((GHC.Base.pure PostAccountPersonsPersonRequestBodyRelationship' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "director")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "executive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owner")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "percent_ownership")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "representative")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title"))
data PostAccountPersonsPersonRequestBodyVerification'
    = PostAccountPersonsPersonRequestBodyVerification' {postAccountPersonsPersonRequestBodyVerification'AdditionalDocument :: (GHC.Maybe.Maybe PostAccountPersonsPersonRequestBodyVerification'AdditionalDocument'),
                                                        postAccountPersonsPersonRequestBodyVerification'Document :: (GHC.Maybe.Maybe PostAccountPersonsPersonRequestBodyVerification'Document')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountPersonsPersonRequestBodyVerification'AdditionalDocument'
    = PostAccountPersonsPersonRequestBodyVerification'AdditionalDocument' {postAccountPersonsPersonRequestBodyVerification'AdditionalDocument'Back :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                           postAccountPersonsPersonRequestBodyVerification'AdditionalDocument'Front :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPersonsPersonRequestBodyVerification'AdditionalDocument'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountPersonsPersonRequestBodyVerification'AdditionalDocument'Back obj) : (Data.Aeson..=) "front" (postAccountPersonsPersonRequestBodyVerification'AdditionalDocument'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountPersonsPersonRequestBodyVerification'AdditionalDocument'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountPersonsPersonRequestBodyVerification'AdditionalDocument'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPersonsPersonRequestBodyVerification'AdditionalDocument'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPersonsPersonRequestBodyVerification'AdditionalDocument'" (\obj -> (GHC.Base.pure PostAccountPersonsPersonRequestBodyVerification'AdditionalDocument' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
data PostAccountPersonsPersonRequestBodyVerification'Document'
    = PostAccountPersonsPersonRequestBodyVerification'Document' {postAccountPersonsPersonRequestBodyVerification'Document'Back :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                 postAccountPersonsPersonRequestBodyVerification'Document'Front :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPersonsPersonRequestBodyVerification'Document'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountPersonsPersonRequestBodyVerification'Document'Back obj) : (Data.Aeson..=) "front" (postAccountPersonsPersonRequestBodyVerification'Document'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountPersonsPersonRequestBodyVerification'Document'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountPersonsPersonRequestBodyVerification'Document'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPersonsPersonRequestBodyVerification'Document'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPersonsPersonRequestBodyVerification'Document'" (\obj -> (GHC.Base.pure PostAccountPersonsPersonRequestBodyVerification'Document' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
instance Data.Aeson.ToJSON PostAccountPersonsPersonRequestBodyVerification'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "additional_document" (postAccountPersonsPersonRequestBodyVerification'AdditionalDocument obj) : (Data.Aeson..=) "document" (postAccountPersonsPersonRequestBodyVerification'Document obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "additional_document" (postAccountPersonsPersonRequestBodyVerification'AdditionalDocument obj) GHC.Base.<> (Data.Aeson..=) "document" (postAccountPersonsPersonRequestBodyVerification'Document obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPersonsPersonRequestBodyVerification'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPersonsPersonRequestBodyVerification'" (\obj -> (GHC.Base.pure PostAccountPersonsPersonRequestBodyVerification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "additional_document")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document"))
instance Data.Aeson.ToJSON PostAccountPersonsPersonRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account" (postAccountPersonsPersonRequestBodyAccount obj) : (Data.Aeson..=) "address" (postAccountPersonsPersonRequestBodyAddress obj) : (Data.Aeson..=) "address_kana" (postAccountPersonsPersonRequestBodyAddressKana obj) : (Data.Aeson..=) "address_kanji" (postAccountPersonsPersonRequestBodyAddressKanji obj) : (Data.Aeson..=) "dob" (postAccountPersonsPersonRequestBodyDob obj) : (Data.Aeson..=) "email" (postAccountPersonsPersonRequestBodyEmail obj) : (Data.Aeson..=) "expand" (postAccountPersonsPersonRequestBodyExpand obj) : (Data.Aeson..=) "first_name" (postAccountPersonsPersonRequestBodyFirstName obj) : (Data.Aeson..=) "first_name_kana" (postAccountPersonsPersonRequestBodyFirstNameKana obj) : (Data.Aeson..=) "first_name_kanji" (postAccountPersonsPersonRequestBodyFirstNameKanji obj) : (Data.Aeson..=) "gender" (postAccountPersonsPersonRequestBodyGender obj) : (Data.Aeson..=) "id_number" (postAccountPersonsPersonRequestBodyIdNumber obj) : (Data.Aeson..=) "last_name" (postAccountPersonsPersonRequestBodyLastName obj) : (Data.Aeson..=) "last_name_kana" (postAccountPersonsPersonRequestBodyLastNameKana obj) : (Data.Aeson..=) "last_name_kanji" (postAccountPersonsPersonRequestBodyLastNameKanji obj) : (Data.Aeson..=) "maiden_name" (postAccountPersonsPersonRequestBodyMaidenName obj) : (Data.Aeson..=) "metadata" (postAccountPersonsPersonRequestBodyMetadata obj) : (Data.Aeson..=) "person_token" (postAccountPersonsPersonRequestBodyPersonToken obj) : (Data.Aeson..=) "phone" (postAccountPersonsPersonRequestBodyPhone obj) : (Data.Aeson..=) "relationship" (postAccountPersonsPersonRequestBodyRelationship obj) : (Data.Aeson..=) "ssn_last_4" (postAccountPersonsPersonRequestBodySsnLast_4 obj) : (Data.Aeson..=) "verification" (postAccountPersonsPersonRequestBodyVerification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account" (postAccountPersonsPersonRequestBodyAccount obj) GHC.Base.<> ((Data.Aeson..=) "address" (postAccountPersonsPersonRequestBodyAddress obj) GHC.Base.<> ((Data.Aeson..=) "address_kana" (postAccountPersonsPersonRequestBodyAddressKana obj) GHC.Base.<> ((Data.Aeson..=) "address_kanji" (postAccountPersonsPersonRequestBodyAddressKanji obj) GHC.Base.<> ((Data.Aeson..=) "dob" (postAccountPersonsPersonRequestBodyDob obj) GHC.Base.<> ((Data.Aeson..=) "email" (postAccountPersonsPersonRequestBodyEmail obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postAccountPersonsPersonRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "first_name" (postAccountPersonsPersonRequestBodyFirstName obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kana" (postAccountPersonsPersonRequestBodyFirstNameKana obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kanji" (postAccountPersonsPersonRequestBodyFirstNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "gender" (postAccountPersonsPersonRequestBodyGender obj) GHC.Base.<> ((Data.Aeson..=) "id_number" (postAccountPersonsPersonRequestBodyIdNumber obj) GHC.Base.<> ((Data.Aeson..=) "last_name" (postAccountPersonsPersonRequestBodyLastName obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kana" (postAccountPersonsPersonRequestBodyLastNameKana obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kanji" (postAccountPersonsPersonRequestBodyLastNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "maiden_name" (postAccountPersonsPersonRequestBodyMaidenName obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postAccountPersonsPersonRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "person_token" (postAccountPersonsPersonRequestBodyPersonToken obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postAccountPersonsPersonRequestBodyPhone obj) GHC.Base.<> ((Data.Aeson..=) "relationship" (postAccountPersonsPersonRequestBodyRelationship obj) GHC.Base.<> ((Data.Aeson..=) "ssn_last_4" (postAccountPersonsPersonRequestBodySsnLast_4 obj) GHC.Base.<> (Data.Aeson..=) "verification" (postAccountPersonsPersonRequestBodyVerification obj))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPersonsPersonRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPersonsPersonRequestBody" (\obj -> (((((((((((((((((((((GHC.Base.pure PostAccountPersonsPersonRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dob")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gender")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "maiden_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "person_token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "relationship")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ssn_last_4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verification"))

data PostAccountPersonsPersonResponse
    = PostAccountPersonsPersonResponseError GHC.Base.String
    | PostAccountPersonsPersonResponse200 Person
    | PostAccountPersonsPersonResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
