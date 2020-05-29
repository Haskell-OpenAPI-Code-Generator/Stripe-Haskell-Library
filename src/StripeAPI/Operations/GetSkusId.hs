{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getSkusId
module StripeAPI.Operations.GetSkusId where

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
import qualified Data.Vector
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

-- | > GET /v1/skus/{id}
-- 
-- \<p>Retrieves the details of an existing SKU. Supply the unique SKU identifier from either a SKU creation request or from the product, and Stripe will return the corresponding SKU information.\<\/p>
getSkusId :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Maybe.Maybe Data.Text.Internal.Text                                                                               -- ^ expand: Specifies which fields in the response should be expanded.
  -> Data.Text.Internal.Text                                                                                               -- ^ id | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe GetSkusIdRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetSkusIdResponse)) -- ^ Monad containing the result of the operation
getSkusId config
          expand
          id
          body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetSkusIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetSkusIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                             GetSkusIdResponseBody200)
                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetSkusIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/skus/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               'x',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               'p',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               'a',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               'n',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               'd'],
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/skus/{id}
-- 
-- The same as 'getSkusId' but returns the raw 'Data.ByteString.Char8.ByteString'
getSkusIdRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                              StripeAPI.Common.SecurityScheme s) =>
                StripeAPI.Common.Configuration s ->
                GHC.Maybe.Maybe Data.Text.Internal.Text ->
                Data.Text.Internal.Text ->
                GHC.Maybe.Maybe GetSkusIdRequestBody ->
                m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getSkusIdRaw config
             expand
             id
             body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/skus/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                        'x',
                                                                                                                                                                                                                                                                                                                                                                                        'p',
                                                                                                                                                                                                                                                                                                                                                                                        'a',
                                                                                                                                                                                                                                                                                                                                                                                        'n',
                                                                                                                                                                                                                                                                                                                                                                                        'd'],
                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/skus/{id}
-- 
-- Monadic version of 'getSkusId' (use with 'StripeAPI.Common.runWithConfiguration')
getSkusIdM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                            StripeAPI.Common.SecurityScheme s) =>
              GHC.Maybe.Maybe Data.Text.Internal.Text ->
              Data.Text.Internal.Text ->
              GHC.Maybe.Maybe GetSkusIdRequestBody ->
              Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                 m
                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                     (Network.HTTP.Client.Types.Response GetSkusIdResponse))
getSkusIdM expand
           id
           body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetSkusIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetSkusIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                              GetSkusIdResponseBody200)
                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetSkusIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                Error)
                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/skus/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          'x',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          'p',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          'a',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          'n',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          'd'],
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/skus/{id}
-- 
-- Monadic version of 'getSkusIdRaw' (use with 'StripeAPI.Common.runWithConfiguration')
getSkusIdRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                               StripeAPI.Common.SecurityScheme s) =>
                 GHC.Maybe.Maybe Data.Text.Internal.Text ->
                 Data.Text.Internal.Text ->
                 GHC.Maybe.Maybe GetSkusIdRequestBody ->
                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                    m
                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getSkusIdRawM expand
              id
              body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/skus/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                   'x',
                                                                                                                                                                                                                                                                                                                                                                                   'p',
                                                                                                                                                                                                                                                                                                                                                                                   'a',
                                                                                                                                                                                                                                                                                                                                                                                   'n',
                                                                                                                                                                                                                                                                                                                                                                                   'd'],
                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema getSkusIdRequestBody
-- 
-- 
data GetSkusIdRequestBody = GetSkusIdRequestBody {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetSkusIdRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetSkusIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSkusIdRequestBody" (\obj -> GHC.Base.pure GetSkusIdRequestBody)
-- | Represents a response of the operation 'getSkusId'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSkusIdResponseError' is used.
data GetSkusIdResponse =                           
   GetSkusIdResponseError GHC.Base.String          -- ^ Means either no matching case available or a parse error
  | GetSkusIdResponse200 GetSkusIdResponseBody200  -- ^ Successful response.
  | GetSkusIdResponseDefault Error                 -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema GetSkusIdResponseBody200
-- 
-- 
data GetSkusIdResponseBody200 = GetSkusIdResponseBody200 {
  -- | active: Whether the SKU is available for purchase.
  getSkusIdResponseBody200Active :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | attributes: A dictionary of attributes and values for the attributes defined by the product. If, for example, a product\'s attributes are \`[\"size\", \"gender\"]\`, a valid SKU has the following dictionary of attributes: \`{\"size\": \"Medium\", \"gender\": \"Unisex\"}\`.
  , getSkusIdResponseBody200Attributes :: (GHC.Maybe.Maybe GetSkusIdResponseBody200Attributes')
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  , getSkusIdResponseBody200Created :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  , getSkusIdResponseBody200Currency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | deleted: Always true for a deleted object
  , getSkusIdResponseBody200Deleted :: (GHC.Maybe.Maybe GetSkusIdResponseBody200Deleted')
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getSkusIdResponseBody200Id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | image: The URL of an image for this SKU, meant to be displayable to the customer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 2048
  , getSkusIdResponseBody200Image :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | inventory: 
  , getSkusIdResponseBody200Inventory :: (GHC.Maybe.Maybe Inventory)
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , getSkusIdResponseBody200Livemode :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  , getSkusIdResponseBody200Metadata :: (GHC.Maybe.Maybe GetSkusIdResponseBody200Metadata')
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , getSkusIdResponseBody200Object :: (GHC.Maybe.Maybe GetSkusIdResponseBody200Object')
  -- | package_dimensions: The dimensions of this SKU for shipping purposes.
  , getSkusIdResponseBody200PackageDimensions :: (GHC.Maybe.Maybe GetSkusIdResponseBody200PackageDimensions')
  -- | price: The cost of the item as a positive integer in the smallest currency unit (that is, 100 cents to charge \$1.00, or 100 to charge ¥100, Japanese Yen being a zero-decimal currency).
  , getSkusIdResponseBody200Price :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | product: The ID of the product this SKU is associated with. The product must be currently active.
  , getSkusIdResponseBody200Product :: (GHC.Maybe.Maybe GetSkusIdResponseBody200Product'Variants)
  -- | updated: Time at which the object was last updated. Measured in seconds since the Unix epoch.
  , getSkusIdResponseBody200Updated :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetSkusIdResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "active" (getSkusIdResponseBody200Active obj) : (Data.Aeson..=) "attributes" (getSkusIdResponseBody200Attributes obj) : (Data.Aeson..=) "created" (getSkusIdResponseBody200Created obj) : (Data.Aeson..=) "currency" (getSkusIdResponseBody200Currency obj) : (Data.Aeson..=) "deleted" (getSkusIdResponseBody200Deleted obj) : (Data.Aeson..=) "id" (getSkusIdResponseBody200Id obj) : (Data.Aeson..=) "image" (getSkusIdResponseBody200Image obj) : (Data.Aeson..=) "inventory" (getSkusIdResponseBody200Inventory obj) : (Data.Aeson..=) "livemode" (getSkusIdResponseBody200Livemode obj) : (Data.Aeson..=) "metadata" (getSkusIdResponseBody200Metadata obj) : (Data.Aeson..=) "object" (getSkusIdResponseBody200Object obj) : (Data.Aeson..=) "package_dimensions" (getSkusIdResponseBody200PackageDimensions obj) : (Data.Aeson..=) "price" (getSkusIdResponseBody200Price obj) : (Data.Aeson..=) "product" (getSkusIdResponseBody200Product obj) : (Data.Aeson..=) "updated" (getSkusIdResponseBody200Updated obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "active" (getSkusIdResponseBody200Active obj) GHC.Base.<> ((Data.Aeson..=) "attributes" (getSkusIdResponseBody200Attributes obj) GHC.Base.<> ((Data.Aeson..=) "created" (getSkusIdResponseBody200Created obj) GHC.Base.<> ((Data.Aeson..=) "currency" (getSkusIdResponseBody200Currency obj) GHC.Base.<> ((Data.Aeson..=) "deleted" (getSkusIdResponseBody200Deleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (getSkusIdResponseBody200Id obj) GHC.Base.<> ((Data.Aeson..=) "image" (getSkusIdResponseBody200Image obj) GHC.Base.<> ((Data.Aeson..=) "inventory" (getSkusIdResponseBody200Inventory obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (getSkusIdResponseBody200Livemode obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (getSkusIdResponseBody200Metadata obj) GHC.Base.<> ((Data.Aeson..=) "object" (getSkusIdResponseBody200Object obj) GHC.Base.<> ((Data.Aeson..=) "package_dimensions" (getSkusIdResponseBody200PackageDimensions obj) GHC.Base.<> ((Data.Aeson..=) "price" (getSkusIdResponseBody200Price obj) GHC.Base.<> ((Data.Aeson..=) "product" (getSkusIdResponseBody200Product obj) GHC.Base.<> (Data.Aeson..=) "updated" (getSkusIdResponseBody200Updated obj)))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetSkusIdResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSkusIdResponseBody200" (\obj -> ((((((((((((((GHC.Base.pure GetSkusIdResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "attributes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "image")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "inventory")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "package_dimensions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "price")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "product")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "updated"))
-- | Defines the data type for the schema GetSkusIdResponseBody200Attributes\'
-- 
-- A dictionary of attributes and values for the attributes defined by the product. If, for example, a product\'s attributes are \`[\"size\", \"gender\"]\`, a valid SKU has the following dictionary of attributes: \`{\"size\": \"Medium\", \"gender\": \"Unisex\"}\`.
data GetSkusIdResponseBody200Attributes' = GetSkusIdResponseBody200Attributes' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetSkusIdResponseBody200Attributes'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetSkusIdResponseBody200Attributes'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSkusIdResponseBody200Attributes'" (\obj -> GHC.Base.pure GetSkusIdResponseBody200Attributes')
-- | Defines the enum schema GetSkusIdResponseBody200Deleted\'
-- 
-- Always true for a deleted object
data GetSkusIdResponseBody200Deleted'
    = GetSkusIdResponseBody200Deleted'EnumOther Data.Aeson.Types.Internal.Value
    | GetSkusIdResponseBody200Deleted'EnumTyped GHC.Types.Bool
    | GetSkusIdResponseBody200Deleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetSkusIdResponseBody200Deleted'
    where toJSON (GetSkusIdResponseBody200Deleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetSkusIdResponseBody200Deleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetSkusIdResponseBody200Deleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON GetSkusIdResponseBody200Deleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then GetSkusIdResponseBody200Deleted'EnumBoolTrue
                                          else GetSkusIdResponseBody200Deleted'EnumOther val)
-- | Defines the data type for the schema GetSkusIdResponseBody200Metadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
data GetSkusIdResponseBody200Metadata' = GetSkusIdResponseBody200Metadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetSkusIdResponseBody200Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetSkusIdResponseBody200Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSkusIdResponseBody200Metadata'" (\obj -> GHC.Base.pure GetSkusIdResponseBody200Metadata')
-- | Defines the enum schema GetSkusIdResponseBody200Object\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data GetSkusIdResponseBody200Object'
    = GetSkusIdResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetSkusIdResponseBody200Object'EnumTyped Data.Text.Internal.Text
    | GetSkusIdResponseBody200Object'EnumStringSku
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetSkusIdResponseBody200Object'
    where toJSON (GetSkusIdResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetSkusIdResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetSkusIdResponseBody200Object'EnumStringSku) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sku"
instance Data.Aeson.FromJSON GetSkusIdResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sku")
                                          then GetSkusIdResponseBody200Object'EnumStringSku
                                          else GetSkusIdResponseBody200Object'EnumOther val)
-- | Defines the data type for the schema GetSkusIdResponseBody200Package_dimensions\'
-- 
-- The dimensions of this SKU for shipping purposes.
data GetSkusIdResponseBody200PackageDimensions' = GetSkusIdResponseBody200PackageDimensions' {
  -- | height: Height, in inches.
  getSkusIdResponseBody200PackageDimensions'Height :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | length: Length, in inches.
  , getSkusIdResponseBody200PackageDimensions'Length :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | weight: Weight, in ounces.
  , getSkusIdResponseBody200PackageDimensions'Weight :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | width: Width, in inches.
  , getSkusIdResponseBody200PackageDimensions'Width :: (GHC.Maybe.Maybe GHC.Types.Double)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetSkusIdResponseBody200PackageDimensions'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "height" (getSkusIdResponseBody200PackageDimensions'Height obj) : (Data.Aeson..=) "length" (getSkusIdResponseBody200PackageDimensions'Length obj) : (Data.Aeson..=) "weight" (getSkusIdResponseBody200PackageDimensions'Weight obj) : (Data.Aeson..=) "width" (getSkusIdResponseBody200PackageDimensions'Width obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "height" (getSkusIdResponseBody200PackageDimensions'Height obj) GHC.Base.<> ((Data.Aeson..=) "length" (getSkusIdResponseBody200PackageDimensions'Length obj) GHC.Base.<> ((Data.Aeson..=) "weight" (getSkusIdResponseBody200PackageDimensions'Weight obj) GHC.Base.<> (Data.Aeson..=) "width" (getSkusIdResponseBody200PackageDimensions'Width obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetSkusIdResponseBody200PackageDimensions'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSkusIdResponseBody200PackageDimensions'" (\obj -> (((GHC.Base.pure GetSkusIdResponseBody200PackageDimensions' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "length")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "weight")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "width"))
-- | Define the one-of schema GetSkusIdResponseBody200Product\'
-- 
-- The ID of the product this SKU is associated with. The product must be currently active.
data GetSkusIdResponseBody200Product'Variants
    = GetSkusIdResponseBody200Product'Product Product
    | GetSkusIdResponseBody200Product'Text Data.Text.Internal.Text
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON GetSkusIdResponseBody200Product'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON GetSkusIdResponseBody200Product'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
