{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postSkus
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

-- | > POST /v1/skus
-- 
-- \<p>Creates a new SKU associated with a product.\<\/p>
postSkus :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> PostSkusRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostSkusResponse)) -- ^ Monad containing the result of the operation
postSkus config
         body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSkusResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSkusResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                          Sku)
                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSkusResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/skus") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/skus
-- 
-- The same as 'postSkus' but returns the raw 'Data.ByteString.Char8.ByteString'
postSkusRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                             StripeAPI.Common.SecurityScheme s) =>
               StripeAPI.Common.Configuration s ->
               PostSkusRequestBody ->
               m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSkusRaw config
            body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/skus") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/skus
-- 
-- Monadic version of 'postSkus' (use with 'StripeAPI.Common.runWithConfiguration')
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
-- | > POST /v1/skus
-- 
-- Monadic version of 'postSkusRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postSkusRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                              StripeAPI.Common.SecurityScheme s) =>
                PostSkusRequestBody ->
                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                   m
                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSkusRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/skus") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postSkusRequestBody
-- 
-- 
data PostSkusRequestBody = PostSkusRequestBody {
  -- | active: Whether the SKU is available for purchase. Default to \`true\`.
  postSkusRequestBodyActive :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | attributes: A dictionary of attributes and values for the attributes defined by the product. If, for example, a product\'s attributes are \`[\"size\", \"gender\"]\`, a valid SKU has the following dictionary of attributes: \`{\"size\": \"Medium\", \"gender\": \"Unisex\"}\`.
  , postSkusRequestBodyAttributes :: (GHC.Maybe.Maybe PostSkusRequestBodyAttributes')
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  , postSkusRequestBodyCurrency :: GHC.Base.String
  -- | expand: Specifies which fields in the response should be expanded.
  , postSkusRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | id: The identifier for the SKU. Must be unique. If not provided, an identifier will be randomly generated.
  , postSkusRequestBodyId :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | image: The URL of an image for this SKU, meant to be displayable to the customer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSkusRequestBodyImage :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | inventory: Description of the SKU\'s inventory.
  , postSkusRequestBodyInventory :: PostSkusRequestBodyInventory'
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postSkusRequestBodyMetadata :: (GHC.Maybe.Maybe PostSkusRequestBodyMetadata')
  -- | package_dimensions: The dimensions of this SKU for shipping purposes.
  , postSkusRequestBodyPackageDimensions :: (GHC.Maybe.Maybe PostSkusRequestBodyPackageDimensions')
  -- | price: The cost of the item as a nonnegative integer in the smallest currency unit (that is, 100 cents to charge \$1.00, or 100 to charge ¥100, Japanese Yen being a zero-decimal currency).
  , postSkusRequestBodyPrice :: GHC.Integer.Type.Integer
  -- | product: The ID of the product this SKU is associated with. Must be a product with type \`good\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSkusRequestBodyProduct :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSkusRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "active" (postSkusRequestBodyActive obj) : (Data.Aeson..=) "attributes" (postSkusRequestBodyAttributes obj) : (Data.Aeson..=) "currency" (postSkusRequestBodyCurrency obj) : (Data.Aeson..=) "expand" (postSkusRequestBodyExpand obj) : (Data.Aeson..=) "id" (postSkusRequestBodyId obj) : (Data.Aeson..=) "image" (postSkusRequestBodyImage obj) : (Data.Aeson..=) "inventory" (postSkusRequestBodyInventory obj) : (Data.Aeson..=) "metadata" (postSkusRequestBodyMetadata obj) : (Data.Aeson..=) "package_dimensions" (postSkusRequestBodyPackageDimensions obj) : (Data.Aeson..=) "price" (postSkusRequestBodyPrice obj) : (Data.Aeson..=) "product" (postSkusRequestBodyProduct obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "active" (postSkusRequestBodyActive obj) GHC.Base.<> ((Data.Aeson..=) "attributes" (postSkusRequestBodyAttributes obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postSkusRequestBodyCurrency obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postSkusRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "id" (postSkusRequestBodyId obj) GHC.Base.<> ((Data.Aeson..=) "image" (postSkusRequestBodyImage obj) GHC.Base.<> ((Data.Aeson..=) "inventory" (postSkusRequestBodyInventory obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postSkusRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "package_dimensions" (postSkusRequestBodyPackageDimensions obj) GHC.Base.<> ((Data.Aeson..=) "price" (postSkusRequestBodyPrice obj) GHC.Base.<> (Data.Aeson..=) "product" (postSkusRequestBodyProduct obj)))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSkusRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSkusRequestBody" (\obj -> ((((((((((GHC.Base.pure PostSkusRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "attributes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "image")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "inventory")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "package_dimensions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "price")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "product"))
-- | Defines the data type for the schema postSkusRequestBodyAttributes\'
-- 
-- A dictionary of attributes and values for the attributes defined by the product. If, for example, a product\'s attributes are \`[\"size\", \"gender\"]\`, a valid SKU has the following dictionary of attributes: \`{\"size\": \"Medium\", \"gender\": \"Unisex\"}\`.
data PostSkusRequestBodyAttributes' = PostSkusRequestBodyAttributes' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSkusRequestBodyAttributes'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostSkusRequestBodyAttributes'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSkusRequestBodyAttributes'" (\obj -> GHC.Base.pure PostSkusRequestBodyAttributes')
-- | Defines the data type for the schema postSkusRequestBodyInventory\'
-- 
-- Description of the SKU\'s inventory.
data PostSkusRequestBodyInventory' = PostSkusRequestBodyInventory' {
  -- | quantity
  postSkusRequestBodyInventory'Quantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | type
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSkusRequestBodyInventory'Type :: (GHC.Maybe.Maybe PostSkusRequestBodyInventory'Type')
  -- | value
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSkusRequestBodyInventory'Value :: (GHC.Maybe.Maybe PostSkusRequestBodyInventory'Value')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSkusRequestBodyInventory'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "quantity" (postSkusRequestBodyInventory'Quantity obj) : (Data.Aeson..=) "type" (postSkusRequestBodyInventory'Type obj) : (Data.Aeson..=) "value" (postSkusRequestBodyInventory'Value obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "quantity" (postSkusRequestBodyInventory'Quantity obj) GHC.Base.<> ((Data.Aeson..=) "type" (postSkusRequestBodyInventory'Type obj) GHC.Base.<> (Data.Aeson..=) "value" (postSkusRequestBodyInventory'Value obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostSkusRequestBodyInventory'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSkusRequestBodyInventory'" (\obj -> ((GHC.Base.pure PostSkusRequestBodyInventory' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "value"))
-- | Defines the enum schema postSkusRequestBodyInventory\'Type\'
-- 
-- 
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
-- | Defines the enum schema postSkusRequestBodyInventory\'Value\'
-- 
-- 
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
-- | Defines the data type for the schema postSkusRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostSkusRequestBodyMetadata' = PostSkusRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSkusRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostSkusRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSkusRequestBodyMetadata'" (\obj -> GHC.Base.pure PostSkusRequestBodyMetadata')
-- | Defines the data type for the schema postSkusRequestBodyPackage_dimensions\'
-- 
-- The dimensions of this SKU for shipping purposes.
data PostSkusRequestBodyPackageDimensions' = PostSkusRequestBodyPackageDimensions' {
  -- | height
  postSkusRequestBodyPackageDimensions'Height :: GHC.Types.Double
  -- | length
  , postSkusRequestBodyPackageDimensions'Length :: GHC.Types.Double
  -- | weight
  , postSkusRequestBodyPackageDimensions'Weight :: GHC.Types.Double
  -- | width
  , postSkusRequestBodyPackageDimensions'Width :: GHC.Types.Double
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSkusRequestBodyPackageDimensions'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "height" (postSkusRequestBodyPackageDimensions'Height obj) : (Data.Aeson..=) "length" (postSkusRequestBodyPackageDimensions'Length obj) : (Data.Aeson..=) "weight" (postSkusRequestBodyPackageDimensions'Weight obj) : (Data.Aeson..=) "width" (postSkusRequestBodyPackageDimensions'Width obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "height" (postSkusRequestBodyPackageDimensions'Height obj) GHC.Base.<> ((Data.Aeson..=) "length" (postSkusRequestBodyPackageDimensions'Length obj) GHC.Base.<> ((Data.Aeson..=) "weight" (postSkusRequestBodyPackageDimensions'Weight obj) GHC.Base.<> (Data.Aeson..=) "width" (postSkusRequestBodyPackageDimensions'Width obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSkusRequestBodyPackageDimensions'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSkusRequestBodyPackageDimensions'" (\obj -> (((GHC.Base.pure PostSkusRequestBodyPackageDimensions' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "length")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "weight")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "width"))
-- | Represents a response of the operation 'postSkus'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSkusResponseError' is used.
data PostSkusResponse =                    
   PostSkusResponseError GHC.Base.String   -- ^ Means either no matching case available or a parse error
  | PostSkusResponse200 Sku                -- ^ Successful response.
  | PostSkusResponseDefault Error          -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
