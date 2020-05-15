{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostProductsId where

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
-- POST /v1/products/{id}
postProductsId :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                StripeAPI.Common.SecurityScheme s) =>
                  StripeAPI.Common.Configuration s ->
                  GHC.Base.String ->
                  PostProductsIdRequestBody ->
                  m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                        (Network.HTTP.Client.Types.Response PostProductsIdResponse))
postProductsId config
               id
               body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostProductsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostProductsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                            Product)
                                                                                                                                                                              | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostProductsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/products/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postProductsIdRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                   StripeAPI.Common.SecurityScheme s) =>
                     StripeAPI.Common.Configuration s ->
                     GHC.Base.String ->
                     PostProductsIdRequestBody ->
                     m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postProductsIdRaw config
                  id
                  body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/products/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postProductsIdM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                 StripeAPI.Common.SecurityScheme s) =>
                   GHC.Base.String ->
                   PostProductsIdRequestBody ->
                   Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                      m
                                                      (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                          (Network.HTTP.Client.Types.Response PostProductsIdResponse))
postProductsIdM id
                body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostProductsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostProductsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                             Product)
                                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostProductsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/products/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postProductsIdRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                    StripeAPI.Common.SecurityScheme s) =>
                      GHC.Base.String ->
                      PostProductsIdRequestBody ->
                      Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                         m
                                                         (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                             (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postProductsIdRawM id
                   body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/products/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostProductsIdRequestBody
    = PostProductsIdRequestBody {postProductsIdRequestBodyActive :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                 postProductsIdRequestBodyAttributes :: (GHC.Maybe.Maybe PostProductsIdRequestBodyAttributes'Variants),
                                 postProductsIdRequestBodyCaption :: (GHC.Maybe.Maybe GHC.Base.String),
                                 postProductsIdRequestBodyDeactivateOn :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                 postProductsIdRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String),
                                 postProductsIdRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                 postProductsIdRequestBodyImages :: (GHC.Maybe.Maybe PostProductsIdRequestBodyImages'Variants),
                                 postProductsIdRequestBodyMetadata :: (GHC.Maybe.Maybe PostProductsIdRequestBodyMetadata'),
                                 postProductsIdRequestBodyName :: (GHC.Maybe.Maybe GHC.Base.String),
                                 postProductsIdRequestBodyPackageDimensions :: (GHC.Maybe.Maybe PostProductsIdRequestBodyPackageDimensions'Variants),
                                 postProductsIdRequestBodyShippable :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                 postProductsIdRequestBodyStatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String),
                                 postProductsIdRequestBodyUnitLabel :: (GHC.Maybe.Maybe GHC.Base.String),
                                 postProductsIdRequestBodyUrl :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostProductsIdRequestBodyAttributes'OneOf1
    = PostProductsIdRequestBodyAttributes'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostProductsIdRequestBodyAttributes'OneOf1EnumTyped GHC.Base.String
    | PostProductsIdRequestBodyAttributes'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostProductsIdRequestBodyAttributes'OneOf1
    where toJSON (PostProductsIdRequestBodyAttributes'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostProductsIdRequestBodyAttributes'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostProductsIdRequestBodyAttributes'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostProductsIdRequestBodyAttributes'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostProductsIdRequestBodyAttributes'OneOf1EnumString_
                                          else PostProductsIdRequestBodyAttributes'OneOf1EnumOther val)
data PostProductsIdRequestBodyAttributes'Variants
    = PostProductsIdRequestBodyAttributes'Variant1 PostProductsIdRequestBodyAttributes'OneOf1
    | PostProductsIdRequestBodyAttributes'Variant2 ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostProductsIdRequestBodyAttributes'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostProductsIdRequestBodyAttributes'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostProductsIdRequestBodyImages'OneOf1
    = PostProductsIdRequestBodyImages'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostProductsIdRequestBodyImages'OneOf1EnumTyped GHC.Base.String
    | PostProductsIdRequestBodyImages'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostProductsIdRequestBodyImages'OneOf1
    where toJSON (PostProductsIdRequestBodyImages'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostProductsIdRequestBodyImages'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostProductsIdRequestBodyImages'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostProductsIdRequestBodyImages'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostProductsIdRequestBodyImages'OneOf1EnumString_
                                          else PostProductsIdRequestBodyImages'OneOf1EnumOther val)
data PostProductsIdRequestBodyImages'Variants
    = PostProductsIdRequestBodyImages'Variant1 PostProductsIdRequestBodyImages'OneOf1
    | PostProductsIdRequestBodyImages'Variant2 ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostProductsIdRequestBodyImages'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostProductsIdRequestBodyImages'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostProductsIdRequestBodyMetadata'
    = PostProductsIdRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostProductsIdRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostProductsIdRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostProductsIdRequestBodyMetadata'" (\obj -> GHC.Base.pure PostProductsIdRequestBodyMetadata')
data PostProductsIdRequestBodyPackageDimensions'OneOf1
    = PostProductsIdRequestBodyPackageDimensions'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostProductsIdRequestBodyPackageDimensions'OneOf1EnumTyped GHC.Base.String
    | PostProductsIdRequestBodyPackageDimensions'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostProductsIdRequestBodyPackageDimensions'OneOf1
    where toJSON (PostProductsIdRequestBodyPackageDimensions'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostProductsIdRequestBodyPackageDimensions'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostProductsIdRequestBodyPackageDimensions'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostProductsIdRequestBodyPackageDimensions'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostProductsIdRequestBodyPackageDimensions'OneOf1EnumString_
                                          else PostProductsIdRequestBodyPackageDimensions'OneOf1EnumOther val)
data PostProductsIdRequestBodyPackageDimensions'OneOf2
    = PostProductsIdRequestBodyPackageDimensions'OneOf2 {postProductsIdRequestBodyPackageDimensions'OneOf2Height :: GHC.Types.Double,
                                                         postProductsIdRequestBodyPackageDimensions'OneOf2Length :: GHC.Types.Double,
                                                         postProductsIdRequestBodyPackageDimensions'OneOf2Weight :: GHC.Types.Double,
                                                         postProductsIdRequestBodyPackageDimensions'OneOf2Width :: GHC.Types.Double}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostProductsIdRequestBodyPackageDimensions'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "height" (postProductsIdRequestBodyPackageDimensions'OneOf2Height obj) : (Data.Aeson..=) "length" (postProductsIdRequestBodyPackageDimensions'OneOf2Length obj) : (Data.Aeson..=) "weight" (postProductsIdRequestBodyPackageDimensions'OneOf2Weight obj) : (Data.Aeson..=) "width" (postProductsIdRequestBodyPackageDimensions'OneOf2Width obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "height" (postProductsIdRequestBodyPackageDimensions'OneOf2Height obj) GHC.Base.<> ((Data.Aeson..=) "length" (postProductsIdRequestBodyPackageDimensions'OneOf2Length obj) GHC.Base.<> ((Data.Aeson..=) "weight" (postProductsIdRequestBodyPackageDimensions'OneOf2Weight obj) GHC.Base.<> (Data.Aeson..=) "width" (postProductsIdRequestBodyPackageDimensions'OneOf2Width obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostProductsIdRequestBodyPackageDimensions'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostProductsIdRequestBodyPackageDimensions'OneOf2" (\obj -> (((GHC.Base.pure PostProductsIdRequestBodyPackageDimensions'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "length")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "weight")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "width"))
data PostProductsIdRequestBodyPackageDimensions'Variants
    = PostProductsIdRequestBodyPackageDimensions'Variant1 PostProductsIdRequestBodyPackageDimensions'OneOf1
    | PostProductsIdRequestBodyPackageDimensions'Variant2 PostProductsIdRequestBodyPackageDimensions'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostProductsIdRequestBodyPackageDimensions'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostProductsIdRequestBodyPackageDimensions'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostProductsIdRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "active" (postProductsIdRequestBodyActive obj) : (Data.Aeson..=) "attributes" (postProductsIdRequestBodyAttributes obj) : (Data.Aeson..=) "caption" (postProductsIdRequestBodyCaption obj) : (Data.Aeson..=) "deactivate_on" (postProductsIdRequestBodyDeactivateOn obj) : (Data.Aeson..=) "description" (postProductsIdRequestBodyDescription obj) : (Data.Aeson..=) "expand" (postProductsIdRequestBodyExpand obj) : (Data.Aeson..=) "images" (postProductsIdRequestBodyImages obj) : (Data.Aeson..=) "metadata" (postProductsIdRequestBodyMetadata obj) : (Data.Aeson..=) "name" (postProductsIdRequestBodyName obj) : (Data.Aeson..=) "package_dimensions" (postProductsIdRequestBodyPackageDimensions obj) : (Data.Aeson..=) "shippable" (postProductsIdRequestBodyShippable obj) : (Data.Aeson..=) "statement_descriptor" (postProductsIdRequestBodyStatementDescriptor obj) : (Data.Aeson..=) "unit_label" (postProductsIdRequestBodyUnitLabel obj) : (Data.Aeson..=) "url" (postProductsIdRequestBodyUrl obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "active" (postProductsIdRequestBodyActive obj) GHC.Base.<> ((Data.Aeson..=) "attributes" (postProductsIdRequestBodyAttributes obj) GHC.Base.<> ((Data.Aeson..=) "caption" (postProductsIdRequestBodyCaption obj) GHC.Base.<> ((Data.Aeson..=) "deactivate_on" (postProductsIdRequestBodyDeactivateOn obj) GHC.Base.<> ((Data.Aeson..=) "description" (postProductsIdRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postProductsIdRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "images" (postProductsIdRequestBodyImages obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postProductsIdRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (postProductsIdRequestBodyName obj) GHC.Base.<> ((Data.Aeson..=) "package_dimensions" (postProductsIdRequestBodyPackageDimensions obj) GHC.Base.<> ((Data.Aeson..=) "shippable" (postProductsIdRequestBodyShippable obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor" (postProductsIdRequestBodyStatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "unit_label" (postProductsIdRequestBodyUnitLabel obj) GHC.Base.<> (Data.Aeson..=) "url" (postProductsIdRequestBodyUrl obj))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostProductsIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostProductsIdRequestBody" (\obj -> (((((((((((((GHC.Base.pure PostProductsIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "attributes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "caption")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "deactivate_on")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "images")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "package_dimensions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shippable")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unit_label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "url"))

data PostProductsIdResponse
    = PostProductsIdResponseError GHC.Base.String
    | PostProductsIdResponse200 Product
    | PostProductsIdResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
