{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostSkus where

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
-- POST /v1/skus
postSkus :: forall m s . (StripeAPI.Common.MonadHTTP m,
                          StripeAPI.Common.SecurityScheme s) =>
            StripeAPI.Common.Configuration s ->
            PostSkusRequestBody ->
            m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                  (Network.HTTP.Client.Types.Response PostSkusResponse))
postSkus config
         body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSkusResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSkusResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                          Sku)
                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSkusResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/skus") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSkusRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                             StripeAPI.Common.SecurityScheme s) =>
               StripeAPI.Common.Configuration s ->
               PostSkusRequestBody ->
               m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSkusRaw config
            body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/skus") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSkusM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                           StripeAPI.Common.SecurityScheme s) =>
             PostSkusRequestBody ->
             Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                m
                                                (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                    (Network.HTTP.Client.Types.Response PostSkusResponse))
postSkusM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSkusResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSkusResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                           Sku)
                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSkusResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/skus") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postSkusRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                              StripeAPI.Common.SecurityScheme s) =>
                PostSkusRequestBody ->
                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                   m
                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSkusRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/skus") [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostSkusRequestBody
    = PostSkusRequestBody {postSkusRequestBodyActive :: (GHC.Maybe.Maybe GHC.Types.Bool),
                           postSkusRequestBodyAttributes :: (GHC.Maybe.Maybe PostSkusRequestBodyAttributes'),
                           postSkusRequestBodyCurrency :: GHC.Base.String,
                           postSkusRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                           postSkusRequestBodyId :: (GHC.Maybe.Maybe GHC.Base.String),
                           postSkusRequestBodyImage :: (GHC.Maybe.Maybe GHC.Base.String),
                           postSkusRequestBodyInventory :: PostSkusRequestBodyInventory',
                           postSkusRequestBodyMetadata :: (GHC.Maybe.Maybe PostSkusRequestBodyMetadata'),
                           postSkusRequestBodyPackageDimensions :: (GHC.Maybe.Maybe PostSkusRequestBodyPackageDimensions'),
                           postSkusRequestBodyPrice :: GHC.Integer.Type.Integer,
                           postSkusRequestBodyProduct :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSkusRequestBodyAttributes'
    = PostSkusRequestBodyAttributes' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSkusRequestBodyAttributes'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostSkusRequestBodyAttributes'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSkusRequestBodyAttributes'" (\obj -> GHC.Base.pure PostSkusRequestBodyAttributes')
data PostSkusRequestBodyInventory'
    = PostSkusRequestBodyInventory' {postSkusRequestBodyInventory'Quantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                     postSkusRequestBodyInventory'Type :: (GHC.Maybe.Maybe PostSkusRequestBodyInventory'Type'),
                                     postSkusRequestBodyInventory'Value :: (GHC.Maybe.Maybe PostSkusRequestBodyInventory'Value')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostSkusRequestBodyInventory'Type'
    = PostSkusRequestBodyInventory'Type'EnumOther Data.Aeson.Types.Internal.Value
    | PostSkusRequestBodyInventory'Type'EnumTyped GHC.Base.String
    | PostSkusRequestBodyInventory'Type'EnumStringBucket
    | PostSkusRequestBodyInventory'Type'EnumStringFinite
    | PostSkusRequestBodyInventory'Type'EnumStringInfinite
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSkusRequestBodyInventory'Type'
    where toJSON (PostSkusRequestBodyInventory'Type'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSkusRequestBodyInventory'Type'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSkusRequestBodyInventory'Type'EnumStringBucket) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bucket"
          toJSON (PostSkusRequestBodyInventory'Type'EnumStringFinite) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "finite"
          toJSON (PostSkusRequestBodyInventory'Type'EnumStringInfinite) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "infinite"
instance Data.Aeson.FromJSON PostSkusRequestBodyInventory'Type'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bucket")
                                          then PostSkusRequestBodyInventory'Type'EnumStringBucket
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "finite")
                                                then PostSkusRequestBodyInventory'Type'EnumStringFinite
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "infinite")
                                                      then PostSkusRequestBodyInventory'Type'EnumStringInfinite
                                                      else PostSkusRequestBodyInventory'Type'EnumOther val)
data PostSkusRequestBodyInventory'Value'
    = PostSkusRequestBodyInventory'Value'EnumOther Data.Aeson.Types.Internal.Value
    | PostSkusRequestBodyInventory'Value'EnumTyped GHC.Base.String
    | PostSkusRequestBodyInventory'Value'EnumString_
    | PostSkusRequestBodyInventory'Value'EnumStringInStock
    | PostSkusRequestBodyInventory'Value'EnumStringLimited
    | PostSkusRequestBodyInventory'Value'EnumStringOutOfStock
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSkusRequestBodyInventory'Value'
    where toJSON (PostSkusRequestBodyInventory'Value'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSkusRequestBodyInventory'Value'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSkusRequestBodyInventory'Value'EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
          toJSON (PostSkusRequestBodyInventory'Value'EnumStringInStock) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "in_stock"
          toJSON (PostSkusRequestBodyInventory'Value'EnumStringLimited) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "limited"
          toJSON (PostSkusRequestBodyInventory'Value'EnumStringOutOfStock) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "out_of_stock"
instance Data.Aeson.FromJSON PostSkusRequestBodyInventory'Value'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSkusRequestBodyInventory'Value'EnumString_
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "in_stock")
                                                then PostSkusRequestBodyInventory'Value'EnumStringInStock
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "limited")
                                                      then PostSkusRequestBodyInventory'Value'EnumStringLimited
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "out_of_stock")
                                                            then PostSkusRequestBodyInventory'Value'EnumStringOutOfStock
                                                            else PostSkusRequestBodyInventory'Value'EnumOther val)
instance Data.Aeson.ToJSON PostSkusRequestBodyInventory'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "quantity" (postSkusRequestBodyInventory'Quantity obj) : (Data.Aeson..=) "type" (postSkusRequestBodyInventory'Type obj) : (Data.Aeson..=) "value" (postSkusRequestBodyInventory'Value obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "quantity" (postSkusRequestBodyInventory'Quantity obj) GHC.Base.<> ((Data.Aeson..=) "type" (postSkusRequestBodyInventory'Type obj) GHC.Base.<> (Data.Aeson..=) "value" (postSkusRequestBodyInventory'Value obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostSkusRequestBodyInventory'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSkusRequestBodyInventory'" (\obj -> ((GHC.Base.pure PostSkusRequestBodyInventory' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "value"))
data PostSkusRequestBodyMetadata'
    = PostSkusRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSkusRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostSkusRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSkusRequestBodyMetadata'" (\obj -> GHC.Base.pure PostSkusRequestBodyMetadata')
data PostSkusRequestBodyPackageDimensions'
    = PostSkusRequestBodyPackageDimensions' {postSkusRequestBodyPackageDimensions'Height :: GHC.Types.Double,
                                             postSkusRequestBodyPackageDimensions'Length :: GHC.Types.Double,
                                             postSkusRequestBodyPackageDimensions'Weight :: GHC.Types.Double,
                                             postSkusRequestBodyPackageDimensions'Width :: GHC.Types.Double}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSkusRequestBodyPackageDimensions'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "height" (postSkusRequestBodyPackageDimensions'Height obj) : (Data.Aeson..=) "length" (postSkusRequestBodyPackageDimensions'Length obj) : (Data.Aeson..=) "weight" (postSkusRequestBodyPackageDimensions'Weight obj) : (Data.Aeson..=) "width" (postSkusRequestBodyPackageDimensions'Width obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "height" (postSkusRequestBodyPackageDimensions'Height obj) GHC.Base.<> ((Data.Aeson..=) "length" (postSkusRequestBodyPackageDimensions'Length obj) GHC.Base.<> ((Data.Aeson..=) "weight" (postSkusRequestBodyPackageDimensions'Weight obj) GHC.Base.<> (Data.Aeson..=) "width" (postSkusRequestBodyPackageDimensions'Width obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSkusRequestBodyPackageDimensions'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSkusRequestBodyPackageDimensions'" (\obj -> (((GHC.Base.pure PostSkusRequestBodyPackageDimensions' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "length")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "weight")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "width"))
instance Data.Aeson.ToJSON PostSkusRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "active" (postSkusRequestBodyActive obj) : (Data.Aeson..=) "attributes" (postSkusRequestBodyAttributes obj) : (Data.Aeson..=) "currency" (postSkusRequestBodyCurrency obj) : (Data.Aeson..=) "expand" (postSkusRequestBodyExpand obj) : (Data.Aeson..=) "id" (postSkusRequestBodyId obj) : (Data.Aeson..=) "image" (postSkusRequestBodyImage obj) : (Data.Aeson..=) "inventory" (postSkusRequestBodyInventory obj) : (Data.Aeson..=) "metadata" (postSkusRequestBodyMetadata obj) : (Data.Aeson..=) "package_dimensions" (postSkusRequestBodyPackageDimensions obj) : (Data.Aeson..=) "price" (postSkusRequestBodyPrice obj) : (Data.Aeson..=) "product" (postSkusRequestBodyProduct obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "active" (postSkusRequestBodyActive obj) GHC.Base.<> ((Data.Aeson..=) "attributes" (postSkusRequestBodyAttributes obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postSkusRequestBodyCurrency obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postSkusRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "id" (postSkusRequestBodyId obj) GHC.Base.<> ((Data.Aeson..=) "image" (postSkusRequestBodyImage obj) GHC.Base.<> ((Data.Aeson..=) "inventory" (postSkusRequestBodyInventory obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postSkusRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "package_dimensions" (postSkusRequestBodyPackageDimensions obj) GHC.Base.<> ((Data.Aeson..=) "price" (postSkusRequestBodyPrice obj) GHC.Base.<> (Data.Aeson..=) "product" (postSkusRequestBodyProduct obj)))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSkusRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSkusRequestBody" (\obj -> ((((((((((GHC.Base.pure PostSkusRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "attributes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "image")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "inventory")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "package_dimensions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "price")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "product"))

data PostSkusResponse
    = PostSkusResponseError GHC.Base.String
    | PostSkusResponse200 Sku
    | PostSkusResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
