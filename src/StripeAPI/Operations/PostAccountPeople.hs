{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostAccountPeople where

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
-- POST /v1/account/people
postAccountPeople :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                   StripeAPI.Common.SecurityScheme s) =>
                     StripeAPI.Common.Configuration s ->
                     PostAccountPeopleRequestBody ->
                     m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                           (Network.HTTP.Client.Types.Response PostAccountPeopleResponse))
postAccountPeople config
                  body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountPeopleResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountPeopleResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                     Person)
                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountPeopleResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/account/people") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountPeopleRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        StripeAPI.Common.Configuration s ->
                        PostAccountPeopleRequestBody ->
                        m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountPeopleRaw config
                     body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/account/people") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountPeopleM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                    StripeAPI.Common.SecurityScheme s) =>
                      PostAccountPeopleRequestBody ->
                      Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                         m
                                                         (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                             (Network.HTTP.Client.Types.Response PostAccountPeopleResponse))
postAccountPeopleM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostAccountPeopleResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountPeopleResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                      Person)
                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountPeopleResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/account/people") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postAccountPeopleRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                       StripeAPI.Common.SecurityScheme s) =>
                         PostAccountPeopleRequestBody ->
                         Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                            m
                                                            (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountPeopleRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/account/people") [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostAccountPeopleRequestBody
    = PostAccountPeopleRequestBody {postAccountPeopleRequestBodyAccount :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postAccountPeopleRequestBodyAddress :: (GHC.Maybe.Maybe PostAccountPeopleRequestBodyAddress'),
                                    postAccountPeopleRequestBodyAddressKana :: (GHC.Maybe.Maybe PostAccountPeopleRequestBodyAddressKana'),
                                    postAccountPeopleRequestBodyAddressKanji :: (GHC.Maybe.Maybe PostAccountPeopleRequestBodyAddressKanji'),
                                    postAccountPeopleRequestBodyDob :: (GHC.Maybe.Maybe PostAccountPeopleRequestBodyDob'Variants),
                                    postAccountPeopleRequestBodyEmail :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postAccountPeopleRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                    postAccountPeopleRequestBodyFirstName :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postAccountPeopleRequestBodyFirstNameKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postAccountPeopleRequestBodyFirstNameKanji :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postAccountPeopleRequestBodyGender :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postAccountPeopleRequestBodyIdNumber :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postAccountPeopleRequestBodyLastName :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postAccountPeopleRequestBodyLastNameKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postAccountPeopleRequestBodyLastNameKanji :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postAccountPeopleRequestBodyMaidenName :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postAccountPeopleRequestBodyMetadata :: (GHC.Maybe.Maybe PostAccountPeopleRequestBodyMetadata'),
                                    postAccountPeopleRequestBodyPersonToken :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postAccountPeopleRequestBodyPhone :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postAccountPeopleRequestBodyRelationship :: (GHC.Maybe.Maybe PostAccountPeopleRequestBodyRelationship'),
                                    postAccountPeopleRequestBodySsnLast_4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postAccountPeopleRequestBodyVerification :: (GHC.Maybe.Maybe PostAccountPeopleRequestBodyVerification')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountPeopleRequestBodyAddress'
    = PostAccountPeopleRequestBodyAddress' {postAccountPeopleRequestBodyAddress'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postAccountPeopleRequestBodyAddress'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postAccountPeopleRequestBodyAddress'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postAccountPeopleRequestBodyAddress'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postAccountPeopleRequestBodyAddress'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postAccountPeopleRequestBodyAddress'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPeopleRequestBodyAddress'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountPeopleRequestBodyAddress'City obj) : (Data.Aeson..=) "country" (postAccountPeopleRequestBodyAddress'Country obj) : (Data.Aeson..=) "line1" (postAccountPeopleRequestBodyAddress'Line1 obj) : (Data.Aeson..=) "line2" (postAccountPeopleRequestBodyAddress'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountPeopleRequestBodyAddress'PostalCode obj) : (Data.Aeson..=) "state" (postAccountPeopleRequestBodyAddress'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountPeopleRequestBodyAddress'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountPeopleRequestBodyAddress'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountPeopleRequestBodyAddress'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountPeopleRequestBodyAddress'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountPeopleRequestBodyAddress'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postAccountPeopleRequestBodyAddress'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeopleRequestBodyAddress'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeopleRequestBodyAddress'" (\obj -> (((((GHC.Base.pure PostAccountPeopleRequestBodyAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
data PostAccountPeopleRequestBodyAddressKana'
    = PostAccountPeopleRequestBodyAddressKana' {postAccountPeopleRequestBodyAddressKana'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postAccountPeopleRequestBodyAddressKana'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postAccountPeopleRequestBodyAddressKana'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postAccountPeopleRequestBodyAddressKana'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postAccountPeopleRequestBodyAddressKana'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postAccountPeopleRequestBodyAddressKana'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postAccountPeopleRequestBodyAddressKana'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPeopleRequestBodyAddressKana'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountPeopleRequestBodyAddressKana'City obj) : (Data.Aeson..=) "country" (postAccountPeopleRequestBodyAddressKana'Country obj) : (Data.Aeson..=) "line1" (postAccountPeopleRequestBodyAddressKana'Line1 obj) : (Data.Aeson..=) "line2" (postAccountPeopleRequestBodyAddressKana'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountPeopleRequestBodyAddressKana'PostalCode obj) : (Data.Aeson..=) "state" (postAccountPeopleRequestBodyAddressKana'State obj) : (Data.Aeson..=) "town" (postAccountPeopleRequestBodyAddressKana'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountPeopleRequestBodyAddressKana'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountPeopleRequestBodyAddressKana'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountPeopleRequestBodyAddressKana'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountPeopleRequestBodyAddressKana'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountPeopleRequestBodyAddressKana'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountPeopleRequestBodyAddressKana'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountPeopleRequestBodyAddressKana'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeopleRequestBodyAddressKana'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeopleRequestBodyAddressKana'" (\obj -> ((((((GHC.Base.pure PostAccountPeopleRequestBodyAddressKana' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostAccountPeopleRequestBodyAddressKanji'
    = PostAccountPeopleRequestBodyAddressKanji' {postAccountPeopleRequestBodyAddressKanji'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountPeopleRequestBodyAddressKanji'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountPeopleRequestBodyAddressKanji'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountPeopleRequestBodyAddressKanji'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountPeopleRequestBodyAddressKanji'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountPeopleRequestBodyAddressKanji'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postAccountPeopleRequestBodyAddressKanji'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPeopleRequestBodyAddressKanji'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountPeopleRequestBodyAddressKanji'City obj) : (Data.Aeson..=) "country" (postAccountPeopleRequestBodyAddressKanji'Country obj) : (Data.Aeson..=) "line1" (postAccountPeopleRequestBodyAddressKanji'Line1 obj) : (Data.Aeson..=) "line2" (postAccountPeopleRequestBodyAddressKanji'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountPeopleRequestBodyAddressKanji'PostalCode obj) : (Data.Aeson..=) "state" (postAccountPeopleRequestBodyAddressKanji'State obj) : (Data.Aeson..=) "town" (postAccountPeopleRequestBodyAddressKanji'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountPeopleRequestBodyAddressKanji'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountPeopleRequestBodyAddressKanji'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountPeopleRequestBodyAddressKanji'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountPeopleRequestBodyAddressKanji'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountPeopleRequestBodyAddressKanji'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountPeopleRequestBodyAddressKanji'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountPeopleRequestBodyAddressKanji'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeopleRequestBodyAddressKanji'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeopleRequestBodyAddressKanji'" (\obj -> ((((((GHC.Base.pure PostAccountPeopleRequestBodyAddressKanji' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostAccountPeopleRequestBodyDob'OneOf1
    = PostAccountPeopleRequestBodyDob'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountPeopleRequestBodyDob'OneOf1EnumTyped GHC.Base.String
    | PostAccountPeopleRequestBodyDob'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPeopleRequestBodyDob'OneOf1
    where toJSON (PostAccountPeopleRequestBodyDob'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountPeopleRequestBodyDob'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountPeopleRequestBodyDob'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostAccountPeopleRequestBodyDob'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostAccountPeopleRequestBodyDob'OneOf1EnumString_
                                          else PostAccountPeopleRequestBodyDob'OneOf1EnumOther val)
data PostAccountPeopleRequestBodyDob'OneOf2
    = PostAccountPeopleRequestBodyDob'OneOf2 {postAccountPeopleRequestBodyDob'OneOf2Day :: GHC.Integer.Type.Integer,
                                              postAccountPeopleRequestBodyDob'OneOf2Month :: GHC.Integer.Type.Integer,
                                              postAccountPeopleRequestBodyDob'OneOf2Year :: GHC.Integer.Type.Integer}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPeopleRequestBodyDob'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "day" (postAccountPeopleRequestBodyDob'OneOf2Day obj) : (Data.Aeson..=) "month" (postAccountPeopleRequestBodyDob'OneOf2Month obj) : (Data.Aeson..=) "year" (postAccountPeopleRequestBodyDob'OneOf2Year obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "day" (postAccountPeopleRequestBodyDob'OneOf2Day obj) GHC.Base.<> ((Data.Aeson..=) "month" (postAccountPeopleRequestBodyDob'OneOf2Month obj) GHC.Base.<> (Data.Aeson..=) "year" (postAccountPeopleRequestBodyDob'OneOf2Year obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeopleRequestBodyDob'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeopleRequestBodyDob'OneOf2" (\obj -> ((GHC.Base.pure PostAccountPeopleRequestBodyDob'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "year"))
data PostAccountPeopleRequestBodyDob'Variants
    = PostAccountPeopleRequestBodyDob'Variant1 PostAccountPeopleRequestBodyDob'OneOf1
    | PostAccountPeopleRequestBodyDob'Variant2 PostAccountPeopleRequestBodyDob'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountPeopleRequestBodyDob'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountPeopleRequestBodyDob'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostAccountPeopleRequestBodyMetadata'
    = PostAccountPeopleRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPeopleRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeopleRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeopleRequestBodyMetadata'" (\obj -> GHC.Base.pure PostAccountPeopleRequestBodyMetadata')
data PostAccountPeopleRequestBodyRelationship'
    = PostAccountPeopleRequestBodyRelationship' {postAccountPeopleRequestBodyRelationship'Director :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                 postAccountPeopleRequestBodyRelationship'Executive :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                 postAccountPeopleRequestBodyRelationship'Owner :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                 postAccountPeopleRequestBodyRelationship'PercentOwnership :: (GHC.Maybe.Maybe PostAccountPeopleRequestBodyRelationship'PercentOwnership'Variants),
                                                 postAccountPeopleRequestBodyRelationship'Representative :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                 postAccountPeopleRequestBodyRelationship'Title :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountPeopleRequestBodyRelationship'PercentOwnership'OneOf1
    = PostAccountPeopleRequestBodyRelationship'PercentOwnership'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountPeopleRequestBodyRelationship'PercentOwnership'OneOf1EnumTyped GHC.Base.String
    | PostAccountPeopleRequestBodyRelationship'PercentOwnership'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPeopleRequestBodyRelationship'PercentOwnership'OneOf1
    where toJSON (PostAccountPeopleRequestBodyRelationship'PercentOwnership'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountPeopleRequestBodyRelationship'PercentOwnership'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountPeopleRequestBodyRelationship'PercentOwnership'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostAccountPeopleRequestBodyRelationship'PercentOwnership'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostAccountPeopleRequestBodyRelationship'PercentOwnership'OneOf1EnumString_
                                          else PostAccountPeopleRequestBodyRelationship'PercentOwnership'OneOf1EnumOther val)
data PostAccountPeopleRequestBodyRelationship'PercentOwnership'Variants
    = PostAccountPeopleRequestBodyRelationship'PercentOwnership'Variant1 PostAccountPeopleRequestBodyRelationship'PercentOwnership'OneOf1
    | PostAccountPeopleRequestBodyRelationship'PercentOwnership'Variant2 GHC.Types.Double
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountPeopleRequestBodyRelationship'PercentOwnership'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountPeopleRequestBodyRelationship'PercentOwnership'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostAccountPeopleRequestBodyRelationship'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "director" (postAccountPeopleRequestBodyRelationship'Director obj) : (Data.Aeson..=) "executive" (postAccountPeopleRequestBodyRelationship'Executive obj) : (Data.Aeson..=) "owner" (postAccountPeopleRequestBodyRelationship'Owner obj) : (Data.Aeson..=) "percent_ownership" (postAccountPeopleRequestBodyRelationship'PercentOwnership obj) : (Data.Aeson..=) "representative" (postAccountPeopleRequestBodyRelationship'Representative obj) : (Data.Aeson..=) "title" (postAccountPeopleRequestBodyRelationship'Title obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "director" (postAccountPeopleRequestBodyRelationship'Director obj) GHC.Base.<> ((Data.Aeson..=) "executive" (postAccountPeopleRequestBodyRelationship'Executive obj) GHC.Base.<> ((Data.Aeson..=) "owner" (postAccountPeopleRequestBodyRelationship'Owner obj) GHC.Base.<> ((Data.Aeson..=) "percent_ownership" (postAccountPeopleRequestBodyRelationship'PercentOwnership obj) GHC.Base.<> ((Data.Aeson..=) "representative" (postAccountPeopleRequestBodyRelationship'Representative obj) GHC.Base.<> (Data.Aeson..=) "title" (postAccountPeopleRequestBodyRelationship'Title obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeopleRequestBodyRelationship'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeopleRequestBodyRelationship'" (\obj -> (((((GHC.Base.pure PostAccountPeopleRequestBodyRelationship' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "director")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "executive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owner")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "percent_ownership")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "representative")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title"))
data PostAccountPeopleRequestBodyVerification'
    = PostAccountPeopleRequestBodyVerification' {postAccountPeopleRequestBodyVerification'AdditionalDocument :: (GHC.Maybe.Maybe PostAccountPeopleRequestBodyVerification'AdditionalDocument'),
                                                 postAccountPeopleRequestBodyVerification'Document :: (GHC.Maybe.Maybe PostAccountPeopleRequestBodyVerification'Document')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostAccountPeopleRequestBodyVerification'AdditionalDocument'
    = PostAccountPeopleRequestBodyVerification'AdditionalDocument' {postAccountPeopleRequestBodyVerification'AdditionalDocument'Back :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                    postAccountPeopleRequestBodyVerification'AdditionalDocument'Front :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPeopleRequestBodyVerification'AdditionalDocument'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountPeopleRequestBodyVerification'AdditionalDocument'Back obj) : (Data.Aeson..=) "front" (postAccountPeopleRequestBodyVerification'AdditionalDocument'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountPeopleRequestBodyVerification'AdditionalDocument'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountPeopleRequestBodyVerification'AdditionalDocument'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeopleRequestBodyVerification'AdditionalDocument'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeopleRequestBodyVerification'AdditionalDocument'" (\obj -> (GHC.Base.pure PostAccountPeopleRequestBodyVerification'AdditionalDocument' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
data PostAccountPeopleRequestBodyVerification'Document'
    = PostAccountPeopleRequestBodyVerification'Document' {postAccountPeopleRequestBodyVerification'Document'Back :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postAccountPeopleRequestBodyVerification'Document'Front :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountPeopleRequestBodyVerification'Document'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountPeopleRequestBodyVerification'Document'Back obj) : (Data.Aeson..=) "front" (postAccountPeopleRequestBodyVerification'Document'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountPeopleRequestBodyVerification'Document'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountPeopleRequestBodyVerification'Document'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeopleRequestBodyVerification'Document'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeopleRequestBodyVerification'Document'" (\obj -> (GHC.Base.pure PostAccountPeopleRequestBodyVerification'Document' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
instance Data.Aeson.ToJSON PostAccountPeopleRequestBodyVerification'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "additional_document" (postAccountPeopleRequestBodyVerification'AdditionalDocument obj) : (Data.Aeson..=) "document" (postAccountPeopleRequestBodyVerification'Document obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "additional_document" (postAccountPeopleRequestBodyVerification'AdditionalDocument obj) GHC.Base.<> (Data.Aeson..=) "document" (postAccountPeopleRequestBodyVerification'Document obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeopleRequestBodyVerification'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeopleRequestBodyVerification'" (\obj -> (GHC.Base.pure PostAccountPeopleRequestBodyVerification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "additional_document")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document"))
instance Data.Aeson.ToJSON PostAccountPeopleRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account" (postAccountPeopleRequestBodyAccount obj) : (Data.Aeson..=) "address" (postAccountPeopleRequestBodyAddress obj) : (Data.Aeson..=) "address_kana" (postAccountPeopleRequestBodyAddressKana obj) : (Data.Aeson..=) "address_kanji" (postAccountPeopleRequestBodyAddressKanji obj) : (Data.Aeson..=) "dob" (postAccountPeopleRequestBodyDob obj) : (Data.Aeson..=) "email" (postAccountPeopleRequestBodyEmail obj) : (Data.Aeson..=) "expand" (postAccountPeopleRequestBodyExpand obj) : (Data.Aeson..=) "first_name" (postAccountPeopleRequestBodyFirstName obj) : (Data.Aeson..=) "first_name_kana" (postAccountPeopleRequestBodyFirstNameKana obj) : (Data.Aeson..=) "first_name_kanji" (postAccountPeopleRequestBodyFirstNameKanji obj) : (Data.Aeson..=) "gender" (postAccountPeopleRequestBodyGender obj) : (Data.Aeson..=) "id_number" (postAccountPeopleRequestBodyIdNumber obj) : (Data.Aeson..=) "last_name" (postAccountPeopleRequestBodyLastName obj) : (Data.Aeson..=) "last_name_kana" (postAccountPeopleRequestBodyLastNameKana obj) : (Data.Aeson..=) "last_name_kanji" (postAccountPeopleRequestBodyLastNameKanji obj) : (Data.Aeson..=) "maiden_name" (postAccountPeopleRequestBodyMaidenName obj) : (Data.Aeson..=) "metadata" (postAccountPeopleRequestBodyMetadata obj) : (Data.Aeson..=) "person_token" (postAccountPeopleRequestBodyPersonToken obj) : (Data.Aeson..=) "phone" (postAccountPeopleRequestBodyPhone obj) : (Data.Aeson..=) "relationship" (postAccountPeopleRequestBodyRelationship obj) : (Data.Aeson..=) "ssn_last_4" (postAccountPeopleRequestBodySsnLast_4 obj) : (Data.Aeson..=) "verification" (postAccountPeopleRequestBodyVerification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account" (postAccountPeopleRequestBodyAccount obj) GHC.Base.<> ((Data.Aeson..=) "address" (postAccountPeopleRequestBodyAddress obj) GHC.Base.<> ((Data.Aeson..=) "address_kana" (postAccountPeopleRequestBodyAddressKana obj) GHC.Base.<> ((Data.Aeson..=) "address_kanji" (postAccountPeopleRequestBodyAddressKanji obj) GHC.Base.<> ((Data.Aeson..=) "dob" (postAccountPeopleRequestBodyDob obj) GHC.Base.<> ((Data.Aeson..=) "email" (postAccountPeopleRequestBodyEmail obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postAccountPeopleRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "first_name" (postAccountPeopleRequestBodyFirstName obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kana" (postAccountPeopleRequestBodyFirstNameKana obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kanji" (postAccountPeopleRequestBodyFirstNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "gender" (postAccountPeopleRequestBodyGender obj) GHC.Base.<> ((Data.Aeson..=) "id_number" (postAccountPeopleRequestBodyIdNumber obj) GHC.Base.<> ((Data.Aeson..=) "last_name" (postAccountPeopleRequestBodyLastName obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kana" (postAccountPeopleRequestBodyLastNameKana obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kanji" (postAccountPeopleRequestBodyLastNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "maiden_name" (postAccountPeopleRequestBodyMaidenName obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postAccountPeopleRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "person_token" (postAccountPeopleRequestBodyPersonToken obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postAccountPeopleRequestBodyPhone obj) GHC.Base.<> ((Data.Aeson..=) "relationship" (postAccountPeopleRequestBodyRelationship obj) GHC.Base.<> ((Data.Aeson..=) "ssn_last_4" (postAccountPeopleRequestBodySsnLast_4 obj) GHC.Base.<> (Data.Aeson..=) "verification" (postAccountPeopleRequestBodyVerification obj))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountPeopleRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountPeopleRequestBody" (\obj -> (((((((((((((((((((((GHC.Base.pure PostAccountPeopleRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dob")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gender")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "maiden_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "person_token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "relationship")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ssn_last_4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verification"))

data PostAccountPeopleResponse
    = PostAccountPeopleResponseError GHC.Base.String
    | PostAccountPeopleResponse200 Person
    | PostAccountPeopleResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
