{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

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
-- POST /v1/accounts/{account}/persons/{person}
postAccountsAccountPersonsPerson :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                  StripeAPI.Common.SecurityScheme s) =>
                                    StripeAPI.Common.Configuration s ->
                                    GHC.Base.String ->
                                    GHC.Base.String ->
                                    PostAccountsAccountPersonsPersonRequestBody ->
                                    m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                          (Network.HTTP.Client.Types.Response PostAccountsAccountPersonsPersonResponse))
postAccountsAccountPersonsPerson config
                                 account
                                 person
                                 body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountsAccountPersonsPersonResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountPersonsPersonResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  Person)
                                                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountPersonsPersonResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ("/persons/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel person)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountsAccountPersonsPersonRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                     StripeAPI.Common.SecurityScheme s) =>
                                       StripeAPI.Common.Configuration s ->
                                       GHC.Base.String ->
                                       GHC.Base.String ->
                                       PostAccountsAccountPersonsPersonRequestBody ->
                                       m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                             (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountsAccountPersonsPersonRaw config
                                    account
                                    person
                                    body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ("/persons/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel person)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountsAccountPersonsPersonM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                   StripeAPI.Common.SecurityScheme s) =>
                                     GHC.Base.String ->
                                     GHC.Base.String ->
                                     PostAccountsAccountPersonsPersonRequestBody ->
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
                                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ("/persons/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel person)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountsAccountPersonsPersonRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                      StripeAPI.Common.SecurityScheme s) =>
                                        GHC.Base.String ->
                                        GHC.Base.String ->
                                        PostAccountsAccountPersonsPersonRequestBody ->
                                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                           m
                                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountsAccountPersonsPersonRawM account
                                     person
                                     body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ("/persons/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel person)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostAccountsAccountPersonsPersonRequestBody
    = PostAccountsAccountPersonsPersonRequestBody {postAccountsAccountPersonsPersonRequestBodyAddress :: (GHC.Maybe.Maybe PostAccountsAccountPersonsPersonRequestBodyAddress'),
                                                   postAccountsAccountPersonsPersonRequestBodyAddressKana :: (GHC.Maybe.Maybe PostAccountsAccountPersonsPersonRequestBodyAddressKana'),
                                                   postAccountsAccountPersonsPersonRequestBodyAddressKanji :: (GHC.Maybe.Maybe PostAccountsAccountPersonsPersonRequestBodyAddressKanji'),
                                                   postAccountsAccountPersonsPersonRequestBodyDob :: (GHC.Maybe.Maybe PostAccountsAccountPersonsPersonRequestBodyDob'Variants),
                                                   postAccountsAccountPersonsPersonRequestBodyEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountsAccountPersonsPersonRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                                   postAccountsAccountPersonsPersonRequestBodyFirstName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountsAccountPersonsPersonRequestBodyFirstNameKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountsAccountPersonsPersonRequestBodyFirstNameKanji :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountsAccountPersonsPersonRequestBodyGender :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountsAccountPersonsPersonRequestBodyIdNumber :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountsAccountPersonsPersonRequestBodyLastName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountsAccountPersonsPersonRequestBodyLastNameKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountsAccountPersonsPersonRequestBodyLastNameKanji :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountsAccountPersonsPersonRequestBodyMaidenName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountsAccountPersonsPersonRequestBodyMetadata :: (GHC.Maybe.Maybe PostAccountsAccountPersonsPersonRequestBodyMetadata'),
                                                   postAccountsAccountPersonsPersonRequestBodyPersonToken :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountsAccountPersonsPersonRequestBodyPhone :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountsAccountPersonsPersonRequestBodyRelationship :: (GHC.Maybe.Maybe PostAccountsAccountPersonsPersonRequestBodyRelationship'),
                                                   postAccountsAccountPersonsPersonRequestBodySsnLast_4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   postAccountsAccountPersonsPersonRequestBodyVerification :: (GHC.Maybe.Maybe PostAccountsAccountPersonsPersonRequestBodyVerification')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsAccountPersonsPersonRequestBodyAddress'
    = PostAccountsAccountPersonsPersonRequestBodyAddress' {postAccountsAccountPersonsPersonRequestBodyAddress'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                           postAccountsAccountPersonsPersonRequestBodyAddress'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                           postAccountsAccountPersonsPersonRequestBodyAddress'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                           postAccountsAccountPersonsPersonRequestBodyAddress'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                           postAccountsAccountPersonsPersonRequestBodyAddress'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                           postAccountsAccountPersonsPersonRequestBodyAddress'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsPersonRequestBodyAddress'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountPersonsPersonRequestBodyAddress'City obj) : (Data.Aeson..=) "country" (postAccountsAccountPersonsPersonRequestBodyAddress'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountPersonsPersonRequestBodyAddress'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountPersonsPersonRequestBodyAddress'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountPersonsPersonRequestBodyAddress'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountPersonsPersonRequestBodyAddress'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountPersonsPersonRequestBodyAddress'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountPersonsPersonRequestBodyAddress'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountPersonsPersonRequestBodyAddress'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountPersonsPersonRequestBodyAddress'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountPersonsPersonRequestBodyAddress'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postAccountsAccountPersonsPersonRequestBodyAddress'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsPersonRequestBodyAddress'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsPersonRequestBodyAddress'" (\obj -> (((((GHC.Base.pure PostAccountsAccountPersonsPersonRequestBodyAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
data PostAccountsAccountPersonsPersonRequestBodyAddressKana'
    = PostAccountsAccountPersonsPersonRequestBodyAddressKana' {postAccountsAccountPersonsPersonRequestBodyAddressKana'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                               postAccountsAccountPersonsPersonRequestBodyAddressKana'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                               postAccountsAccountPersonsPersonRequestBodyAddressKana'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                               postAccountsAccountPersonsPersonRequestBodyAddressKana'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                               postAccountsAccountPersonsPersonRequestBodyAddressKana'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                               postAccountsAccountPersonsPersonRequestBodyAddressKana'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                               postAccountsAccountPersonsPersonRequestBodyAddressKana'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsPersonRequestBodyAddressKana'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountPersonsPersonRequestBodyAddressKana'City obj) : (Data.Aeson..=) "country" (postAccountsAccountPersonsPersonRequestBodyAddressKana'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountPersonsPersonRequestBodyAddressKana'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountPersonsPersonRequestBodyAddressKana'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountPersonsPersonRequestBodyAddressKana'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountPersonsPersonRequestBodyAddressKana'State obj) : (Data.Aeson..=) "town" (postAccountsAccountPersonsPersonRequestBodyAddressKana'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountPersonsPersonRequestBodyAddressKana'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountPersonsPersonRequestBodyAddressKana'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountPersonsPersonRequestBodyAddressKana'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountPersonsPersonRequestBodyAddressKana'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountPersonsPersonRequestBodyAddressKana'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountsAccountPersonsPersonRequestBodyAddressKana'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountsAccountPersonsPersonRequestBodyAddressKana'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsPersonRequestBodyAddressKana'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsPersonRequestBodyAddressKana'" (\obj -> ((((((GHC.Base.pure PostAccountsAccountPersonsPersonRequestBodyAddressKana' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostAccountsAccountPersonsPersonRequestBodyAddressKanji'
    = PostAccountsAccountPersonsPersonRequestBodyAddressKanji' {postAccountsAccountPersonsPersonRequestBodyAddressKanji'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                postAccountsAccountPersonsPersonRequestBodyAddressKanji'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                postAccountsAccountPersonsPersonRequestBodyAddressKanji'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                postAccountsAccountPersonsPersonRequestBodyAddressKanji'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                postAccountsAccountPersonsPersonRequestBodyAddressKanji'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                postAccountsAccountPersonsPersonRequestBodyAddressKanji'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                postAccountsAccountPersonsPersonRequestBodyAddressKanji'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsPersonRequestBodyAddressKanji'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountPersonsPersonRequestBodyAddressKanji'City obj) : (Data.Aeson..=) "country" (postAccountsAccountPersonsPersonRequestBodyAddressKanji'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountPersonsPersonRequestBodyAddressKanji'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountPersonsPersonRequestBodyAddressKanji'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountPersonsPersonRequestBodyAddressKanji'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountPersonsPersonRequestBodyAddressKanji'State obj) : (Data.Aeson..=) "town" (postAccountsAccountPersonsPersonRequestBodyAddressKanji'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountPersonsPersonRequestBodyAddressKanji'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountPersonsPersonRequestBodyAddressKanji'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountPersonsPersonRequestBodyAddressKanji'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountPersonsPersonRequestBodyAddressKanji'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountPersonsPersonRequestBodyAddressKanji'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountsAccountPersonsPersonRequestBodyAddressKanji'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountsAccountPersonsPersonRequestBodyAddressKanji'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsPersonRequestBodyAddressKanji'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsPersonRequestBodyAddressKanji'" (\obj -> ((((((GHC.Base.pure PostAccountsAccountPersonsPersonRequestBodyAddressKanji' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
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
data PostAccountsAccountPersonsPersonRequestBodyDob'OneOf2
    = PostAccountsAccountPersonsPersonRequestBodyDob'OneOf2 {postAccountsAccountPersonsPersonRequestBodyDob'OneOf2Day :: GHC.Integer.Type.Integer,
                                                             postAccountsAccountPersonsPersonRequestBodyDob'OneOf2Month :: GHC.Integer.Type.Integer,
                                                             postAccountsAccountPersonsPersonRequestBodyDob'OneOf2Year :: GHC.Integer.Type.Integer}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsPersonRequestBodyDob'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "day" (postAccountsAccountPersonsPersonRequestBodyDob'OneOf2Day obj) : (Data.Aeson..=) "month" (postAccountsAccountPersonsPersonRequestBodyDob'OneOf2Month obj) : (Data.Aeson..=) "year" (postAccountsAccountPersonsPersonRequestBodyDob'OneOf2Year obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "day" (postAccountsAccountPersonsPersonRequestBodyDob'OneOf2Day obj) GHC.Base.<> ((Data.Aeson..=) "month" (postAccountsAccountPersonsPersonRequestBodyDob'OneOf2Month obj) GHC.Base.<> (Data.Aeson..=) "year" (postAccountsAccountPersonsPersonRequestBodyDob'OneOf2Year obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsPersonRequestBodyDob'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsPersonRequestBodyDob'OneOf2" (\obj -> ((GHC.Base.pure PostAccountsAccountPersonsPersonRequestBodyDob'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "year"))
data PostAccountsAccountPersonsPersonRequestBodyDob'Variants
    = PostAccountsAccountPersonsPersonRequestBodyDob'Variant1 PostAccountsAccountPersonsPersonRequestBodyDob'OneOf1
    | PostAccountsAccountPersonsPersonRequestBodyDob'Variant2 PostAccountsAccountPersonsPersonRequestBodyDob'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsPersonRequestBodyDob'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountsAccountPersonsPersonRequestBodyDob'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostAccountsAccountPersonsPersonRequestBodyMetadata'
    = PostAccountsAccountPersonsPersonRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsPersonRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsPersonRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsPersonRequestBodyMetadata'" (\obj -> GHC.Base.pure PostAccountsAccountPersonsPersonRequestBodyMetadata')
data PostAccountsAccountPersonsPersonRequestBodyRelationship'
    = PostAccountsAccountPersonsPersonRequestBodyRelationship' {postAccountsAccountPersonsPersonRequestBodyRelationship'Director :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                                postAccountsAccountPersonsPersonRequestBodyRelationship'Executive :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                                postAccountsAccountPersonsPersonRequestBodyRelationship'Owner :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                                postAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership :: (GHC.Maybe.Maybe PostAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership'Variants),
                                                                postAccountsAccountPersonsPersonRequestBodyRelationship'Representative :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                                postAccountsAccountPersonsPersonRequestBodyRelationship'Title :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
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
data PostAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership'Variants
    = PostAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership'Variant1 PostAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership'OneOf1
    | PostAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership'Variant2 GHC.Types.Double
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostAccountsAccountPersonsPersonRequestBodyRelationship'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "director" (postAccountsAccountPersonsPersonRequestBodyRelationship'Director obj) : (Data.Aeson..=) "executive" (postAccountsAccountPersonsPersonRequestBodyRelationship'Executive obj) : (Data.Aeson..=) "owner" (postAccountsAccountPersonsPersonRequestBodyRelationship'Owner obj) : (Data.Aeson..=) "percent_ownership" (postAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership obj) : (Data.Aeson..=) "representative" (postAccountsAccountPersonsPersonRequestBodyRelationship'Representative obj) : (Data.Aeson..=) "title" (postAccountsAccountPersonsPersonRequestBodyRelationship'Title obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "director" (postAccountsAccountPersonsPersonRequestBodyRelationship'Director obj) GHC.Base.<> ((Data.Aeson..=) "executive" (postAccountsAccountPersonsPersonRequestBodyRelationship'Executive obj) GHC.Base.<> ((Data.Aeson..=) "owner" (postAccountsAccountPersonsPersonRequestBodyRelationship'Owner obj) GHC.Base.<> ((Data.Aeson..=) "percent_ownership" (postAccountsAccountPersonsPersonRequestBodyRelationship'PercentOwnership obj) GHC.Base.<> ((Data.Aeson..=) "representative" (postAccountsAccountPersonsPersonRequestBodyRelationship'Representative obj) GHC.Base.<> (Data.Aeson..=) "title" (postAccountsAccountPersonsPersonRequestBodyRelationship'Title obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsPersonRequestBodyRelationship'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsPersonRequestBodyRelationship'" (\obj -> (((((GHC.Base.pure PostAccountsAccountPersonsPersonRequestBodyRelationship' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "director")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "executive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owner")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "percent_ownership")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "representative")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title"))
data PostAccountsAccountPersonsPersonRequestBodyVerification'
    = PostAccountsAccountPersonsPersonRequestBodyVerification' {postAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument :: (GHC.Maybe.Maybe PostAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument'),
                                                                postAccountsAccountPersonsPersonRequestBodyVerification'Document :: (GHC.Maybe.Maybe PostAccountsAccountPersonsPersonRequestBodyVerification'Document')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument'
    = PostAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument' {postAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument'Back :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                                   postAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument'Front :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument'Back obj) : (Data.Aeson..=) "front" (postAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument'" (\obj -> (GHC.Base.pure PostAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
data PostAccountsAccountPersonsPersonRequestBodyVerification'Document'
    = PostAccountsAccountPersonsPersonRequestBodyVerification'Document' {postAccountsAccountPersonsPersonRequestBodyVerification'Document'Back :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                         postAccountsAccountPersonsPersonRequestBodyVerification'Document'Front :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountPersonsPersonRequestBodyVerification'Document'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountsAccountPersonsPersonRequestBodyVerification'Document'Back obj) : (Data.Aeson..=) "front" (postAccountsAccountPersonsPersonRequestBodyVerification'Document'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountsAccountPersonsPersonRequestBodyVerification'Document'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountsAccountPersonsPersonRequestBodyVerification'Document'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsPersonRequestBodyVerification'Document'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsPersonRequestBodyVerification'Document'" (\obj -> (GHC.Base.pure PostAccountsAccountPersonsPersonRequestBodyVerification'Document' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
instance Data.Aeson.ToJSON PostAccountsAccountPersonsPersonRequestBodyVerification'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "additional_document" (postAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument obj) : (Data.Aeson..=) "document" (postAccountsAccountPersonsPersonRequestBodyVerification'Document obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "additional_document" (postAccountsAccountPersonsPersonRequestBodyVerification'AdditionalDocument obj) GHC.Base.<> (Data.Aeson..=) "document" (postAccountsAccountPersonsPersonRequestBodyVerification'Document obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsPersonRequestBodyVerification'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsPersonRequestBodyVerification'" (\obj -> (GHC.Base.pure PostAccountsAccountPersonsPersonRequestBodyVerification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "additional_document")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document"))
instance Data.Aeson.ToJSON PostAccountsAccountPersonsPersonRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postAccountsAccountPersonsPersonRequestBodyAddress obj) : (Data.Aeson..=) "address_kana" (postAccountsAccountPersonsPersonRequestBodyAddressKana obj) : (Data.Aeson..=) "address_kanji" (postAccountsAccountPersonsPersonRequestBodyAddressKanji obj) : (Data.Aeson..=) "dob" (postAccountsAccountPersonsPersonRequestBodyDob obj) : (Data.Aeson..=) "email" (postAccountsAccountPersonsPersonRequestBodyEmail obj) : (Data.Aeson..=) "expand" (postAccountsAccountPersonsPersonRequestBodyExpand obj) : (Data.Aeson..=) "first_name" (postAccountsAccountPersonsPersonRequestBodyFirstName obj) : (Data.Aeson..=) "first_name_kana" (postAccountsAccountPersonsPersonRequestBodyFirstNameKana obj) : (Data.Aeson..=) "first_name_kanji" (postAccountsAccountPersonsPersonRequestBodyFirstNameKanji obj) : (Data.Aeson..=) "gender" (postAccountsAccountPersonsPersonRequestBodyGender obj) : (Data.Aeson..=) "id_number" (postAccountsAccountPersonsPersonRequestBodyIdNumber obj) : (Data.Aeson..=) "last_name" (postAccountsAccountPersonsPersonRequestBodyLastName obj) : (Data.Aeson..=) "last_name_kana" (postAccountsAccountPersonsPersonRequestBodyLastNameKana obj) : (Data.Aeson..=) "last_name_kanji" (postAccountsAccountPersonsPersonRequestBodyLastNameKanji obj) : (Data.Aeson..=) "maiden_name" (postAccountsAccountPersonsPersonRequestBodyMaidenName obj) : (Data.Aeson..=) "metadata" (postAccountsAccountPersonsPersonRequestBodyMetadata obj) : (Data.Aeson..=) "person_token" (postAccountsAccountPersonsPersonRequestBodyPersonToken obj) : (Data.Aeson..=) "phone" (postAccountsAccountPersonsPersonRequestBodyPhone obj) : (Data.Aeson..=) "relationship" (postAccountsAccountPersonsPersonRequestBodyRelationship obj) : (Data.Aeson..=) "ssn_last_4" (postAccountsAccountPersonsPersonRequestBodySsnLast_4 obj) : (Data.Aeson..=) "verification" (postAccountsAccountPersonsPersonRequestBodyVerification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postAccountsAccountPersonsPersonRequestBodyAddress obj) GHC.Base.<> ((Data.Aeson..=) "address_kana" (postAccountsAccountPersonsPersonRequestBodyAddressKana obj) GHC.Base.<> ((Data.Aeson..=) "address_kanji" (postAccountsAccountPersonsPersonRequestBodyAddressKanji obj) GHC.Base.<> ((Data.Aeson..=) "dob" (postAccountsAccountPersonsPersonRequestBodyDob obj) GHC.Base.<> ((Data.Aeson..=) "email" (postAccountsAccountPersonsPersonRequestBodyEmail obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postAccountsAccountPersonsPersonRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "first_name" (postAccountsAccountPersonsPersonRequestBodyFirstName obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kana" (postAccountsAccountPersonsPersonRequestBodyFirstNameKana obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kanji" (postAccountsAccountPersonsPersonRequestBodyFirstNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "gender" (postAccountsAccountPersonsPersonRequestBodyGender obj) GHC.Base.<> ((Data.Aeson..=) "id_number" (postAccountsAccountPersonsPersonRequestBodyIdNumber obj) GHC.Base.<> ((Data.Aeson..=) "last_name" (postAccountsAccountPersonsPersonRequestBodyLastName obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kana" (postAccountsAccountPersonsPersonRequestBodyLastNameKana obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kanji" (postAccountsAccountPersonsPersonRequestBodyLastNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "maiden_name" (postAccountsAccountPersonsPersonRequestBodyMaidenName obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postAccountsAccountPersonsPersonRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "person_token" (postAccountsAccountPersonsPersonRequestBodyPersonToken obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postAccountsAccountPersonsPersonRequestBodyPhone obj) GHC.Base.<> ((Data.Aeson..=) "relationship" (postAccountsAccountPersonsPersonRequestBodyRelationship obj) GHC.Base.<> ((Data.Aeson..=) "ssn_last_4" (postAccountsAccountPersonsPersonRequestBodySsnLast_4 obj) GHC.Base.<> (Data.Aeson..=) "verification" (postAccountsAccountPersonsPersonRequestBodyVerification obj)))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountPersonsPersonRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountPersonsPersonRequestBody" (\obj -> ((((((((((((((((((((GHC.Base.pure PostAccountsAccountPersonsPersonRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dob")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gender")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "maiden_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "person_token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "relationship")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ssn_last_4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verification"))

data PostAccountsAccountPersonsPersonResponse
    = PostAccountsAccountPersonsPersonResponseError GHC.Base.String
    | PostAccountsAccountPersonsPersonResponse200 Person
    | PostAccountsAccountPersonsPersonResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
