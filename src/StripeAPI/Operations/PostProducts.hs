{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostProducts where

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
-- POST /v1/products
postProducts :: forall m s . (StripeAPI.Common.MonadHTTP m,
                              StripeAPI.Common.SecurityScheme s) =>
                StripeAPI.Common.Configuration s ->
                PostProductsRequestBody ->
                m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                      (Network.HTTP.Client.Types.Response PostProductsResponse))
postProducts config
             body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostProductsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostProductsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      Product)
                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostProductsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/products") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postProductsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                 StripeAPI.Common.SecurityScheme s) =>
                   StripeAPI.Common.Configuration s ->
                   PostProductsRequestBody ->
                   m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postProductsRaw config
                body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/products") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postProductsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                               StripeAPI.Common.SecurityScheme s) =>
                 PostProductsRequestBody ->
                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                    m
                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                        (Network.HTTP.Client.Types.Response PostProductsResponse))
postProductsM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostProductsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostProductsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                       Product)
                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostProductsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/products") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postProductsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                  StripeAPI.Common.SecurityScheme s) =>
                    PostProductsRequestBody ->
                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                       m
                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postProductsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/products") [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostProductsRequestBody
    = PostProductsRequestBody {postProductsRequestBodyActive :: (GHC.Maybe.Maybe GHC.Types.Bool),
                               postProductsRequestBodyAttributes :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                               postProductsRequestBodyCaption :: (GHC.Maybe.Maybe GHC.Base.String),
                               postProductsRequestBodyDeactivateOn :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                               postProductsRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String),
                               postProductsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                               postProductsRequestBodyId :: (GHC.Maybe.Maybe GHC.Base.String),
                               postProductsRequestBodyImages :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                               postProductsRequestBodyMetadata :: (GHC.Maybe.Maybe PostProductsRequestBodyMetadata'),
                               postProductsRequestBodyName :: GHC.Base.String,
                               postProductsRequestBodyPackageDimensions :: (GHC.Maybe.Maybe PostProductsRequestBodyPackageDimensions'),
                               postProductsRequestBodyShippable :: (GHC.Maybe.Maybe GHC.Types.Bool),
                               postProductsRequestBodyStatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String),
                               postProductsRequestBodyType :: (GHC.Maybe.Maybe PostProductsRequestBodyType'),
                               postProductsRequestBodyUnitLabel :: (GHC.Maybe.Maybe GHC.Base.String),
                               postProductsRequestBodyUrl :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostProductsRequestBodyMetadata'
    = PostProductsRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostProductsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostProductsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostProductsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostProductsRequestBodyMetadata')
data PostProductsRequestBodyPackageDimensions'
    = PostProductsRequestBodyPackageDimensions' {postProductsRequestBodyPackageDimensions'Height :: GHC.Types.Double,
                                                 postProductsRequestBodyPackageDimensions'Length :: GHC.Types.Double,
                                                 postProductsRequestBodyPackageDimensions'Weight :: GHC.Types.Double,
                                                 postProductsRequestBodyPackageDimensions'Width :: GHC.Types.Double}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostProductsRequestBodyPackageDimensions'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "height" (postProductsRequestBodyPackageDimensions'Height obj) : (Data.Aeson..=) "length" (postProductsRequestBodyPackageDimensions'Length obj) : (Data.Aeson..=) "weight" (postProductsRequestBodyPackageDimensions'Weight obj) : (Data.Aeson..=) "width" (postProductsRequestBodyPackageDimensions'Width obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "height" (postProductsRequestBodyPackageDimensions'Height obj) GHC.Base.<> ((Data.Aeson..=) "length" (postProductsRequestBodyPackageDimensions'Length obj) GHC.Base.<> ((Data.Aeson..=) "weight" (postProductsRequestBodyPackageDimensions'Weight obj) GHC.Base.<> (Data.Aeson..=) "width" (postProductsRequestBodyPackageDimensions'Width obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostProductsRequestBodyPackageDimensions'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostProductsRequestBodyPackageDimensions'" (\obj -> (((GHC.Base.pure PostProductsRequestBodyPackageDimensions' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "length")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "weight")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "width"))
data PostProductsRequestBodyType'
    = PostProductsRequestBodyType'EnumOther Data.Aeson.Types.Internal.Value
    | PostProductsRequestBodyType'EnumTyped GHC.Base.String
    | PostProductsRequestBodyType'EnumStringGood
    | PostProductsRequestBodyType'EnumStringService
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostProductsRequestBodyType'
    where toJSON (PostProductsRequestBodyType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostProductsRequestBodyType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostProductsRequestBodyType'EnumStringGood) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "good"
          toJSON (PostProductsRequestBodyType'EnumStringService) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "service"
instance Data.Aeson.FromJSON PostProductsRequestBodyType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "good")
                                          then PostProductsRequestBodyType'EnumStringGood
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "service")
                                                then PostProductsRequestBodyType'EnumStringService
                                                else PostProductsRequestBodyType'EnumOther val)
instance Data.Aeson.ToJSON PostProductsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "active" (postProductsRequestBodyActive obj) : (Data.Aeson..=) "attributes" (postProductsRequestBodyAttributes obj) : (Data.Aeson..=) "caption" (postProductsRequestBodyCaption obj) : (Data.Aeson..=) "deactivate_on" (postProductsRequestBodyDeactivateOn obj) : (Data.Aeson..=) "description" (postProductsRequestBodyDescription obj) : (Data.Aeson..=) "expand" (postProductsRequestBodyExpand obj) : (Data.Aeson..=) "id" (postProductsRequestBodyId obj) : (Data.Aeson..=) "images" (postProductsRequestBodyImages obj) : (Data.Aeson..=) "metadata" (postProductsRequestBodyMetadata obj) : (Data.Aeson..=) "name" (postProductsRequestBodyName obj) : (Data.Aeson..=) "package_dimensions" (postProductsRequestBodyPackageDimensions obj) : (Data.Aeson..=) "shippable" (postProductsRequestBodyShippable obj) : (Data.Aeson..=) "statement_descriptor" (postProductsRequestBodyStatementDescriptor obj) : (Data.Aeson..=) "type" (postProductsRequestBodyType obj) : (Data.Aeson..=) "unit_label" (postProductsRequestBodyUnitLabel obj) : (Data.Aeson..=) "url" (postProductsRequestBodyUrl obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "active" (postProductsRequestBodyActive obj) GHC.Base.<> ((Data.Aeson..=) "attributes" (postProductsRequestBodyAttributes obj) GHC.Base.<> ((Data.Aeson..=) "caption" (postProductsRequestBodyCaption obj) GHC.Base.<> ((Data.Aeson..=) "deactivate_on" (postProductsRequestBodyDeactivateOn obj) GHC.Base.<> ((Data.Aeson..=) "description" (postProductsRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postProductsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "id" (postProductsRequestBodyId obj) GHC.Base.<> ((Data.Aeson..=) "images" (postProductsRequestBodyImages obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postProductsRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (postProductsRequestBodyName obj) GHC.Base.<> ((Data.Aeson..=) "package_dimensions" (postProductsRequestBodyPackageDimensions obj) GHC.Base.<> ((Data.Aeson..=) "shippable" (postProductsRequestBodyShippable obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor" (postProductsRequestBodyStatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "type" (postProductsRequestBodyType obj) GHC.Base.<> ((Data.Aeson..=) "unit_label" (postProductsRequestBodyUnitLabel obj) GHC.Base.<> (Data.Aeson..=) "url" (postProductsRequestBodyUrl obj))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostProductsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostProductsRequestBody" (\obj -> (((((((((((((((GHC.Base.pure PostProductsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "attributes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "caption")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "deactivate_on")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "images")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "package_dimensions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shippable")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unit_label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "url"))

data PostProductsResponse
    = PostProductsResponseError GHC.Base.String
    | PostProductsResponse200 Product
    | PostProductsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
