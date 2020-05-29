{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postProductsId
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

-- | > POST /v1/products/{id}
-- 
-- \<p>Updates the specific product by setting the values of the parameters passed. Any parameters not provided will be left unchanged.\<\/p>
postProductsId :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text                                                                                                    -- ^ id | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostProductsIdRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostProductsIdResponse)) -- ^ Monad containing the result of the operation
postProductsId config
               id
               body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostProductsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostProductsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                            Product)
                                                                                                                                                                              | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostProductsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/products/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/products/{id}
-- 
-- The same as 'postProductsId' but returns the raw 'Data.ByteString.Char8.ByteString'
postProductsIdRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                   StripeAPI.Common.SecurityScheme s) =>
                     StripeAPI.Common.Configuration s ->
                     Data.Text.Internal.Text ->
                     GHC.Maybe.Maybe PostProductsIdRequestBody ->
                     m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postProductsIdRaw config
                  id
                  body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/products/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/products/{id}
-- 
-- Monadic version of 'postProductsId' (use with 'StripeAPI.Common.runWithConfiguration')
postProductsIdM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                 StripeAPI.Common.SecurityScheme s) =>
                   Data.Text.Internal.Text ->
                   GHC.Maybe.Maybe PostProductsIdRequestBody ->
                   Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                      m
                                                      (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                          (Network.HTTP.Client.Types.Response PostProductsIdResponse))
postProductsIdM id
                body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostProductsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostProductsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                             Product)
                                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostProductsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/products/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/products/{id}
-- 
-- Monadic version of 'postProductsIdRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postProductsIdRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                    StripeAPI.Common.SecurityScheme s) =>
                      Data.Text.Internal.Text ->
                      GHC.Maybe.Maybe PostProductsIdRequestBody ->
                      Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                         m
                                                         (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                             (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postProductsIdRawM id
                   body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/products/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postProductsIdRequestBody
-- 
-- 
data PostProductsIdRequestBody = PostProductsIdRequestBody {
  -- | active: Whether the product is available for purchase.
  postProductsIdRequestBodyActive :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | attributes: A list of up to 5 alphanumeric attributes that each SKU can provide values for (e.g., \`[\"color\", \"size\"]\`). If a value for \`attributes\` is specified, the list specified will replace the existing attributes list on this product. Any attributes not present after the update will be deleted from the SKUs for this product.
  , postProductsIdRequestBodyAttributes :: (GHC.Maybe.Maybe PostProductsIdRequestBodyAttributes'Variants)
  -- | caption: A short one-line description of the product, meant to be displayable to the customer. May only be set if \`type=good\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postProductsIdRequestBodyCaption :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | deactivate_on: An array of Connect application names or identifiers that should not be able to order the SKUs for this product. May only be set if \`type=good\`.
  , postProductsIdRequestBodyDeactivateOn :: (GHC.Maybe.Maybe ([] Data.Text.Internal.Text))
  -- | description: The product\'s description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 40000
  , postProductsIdRequestBodyDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | expand: Specifies which fields in the response should be expanded.
  , postProductsIdRequestBodyExpand :: (GHC.Maybe.Maybe ([] Data.Text.Internal.Text))
  -- | images: A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
  , postProductsIdRequestBodyImages :: (GHC.Maybe.Maybe PostProductsIdRequestBodyImages'Variants)
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postProductsIdRequestBodyMetadata :: (GHC.Maybe.Maybe PostProductsIdRequestBodyMetadata')
  -- | name: The product\'s name, meant to be displayable to the customer. Whenever this product is sold via a subscription, name will show up on associated invoice line item descriptions.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postProductsIdRequestBodyName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | package_dimensions: The dimensions of this product for shipping purposes. A SKU associated with this product can override this value by having its own \`package_dimensions\`. May only be set if \`type=good\`.
  , postProductsIdRequestBodyPackageDimensions :: (GHC.Maybe.Maybe PostProductsIdRequestBodyPackageDimensions'Variants)
  -- | shippable: Whether this product is shipped (i.e., physical goods). Defaults to \`true\`. May only be set if \`type=good\`.
  , postProductsIdRequestBodyShippable :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | statement_descriptor: An arbitrary string to be displayed on your customer\'s credit card or bank statement. While most banks display this information consistently, some may display it incorrectly or not at all.
  -- 
  -- This may be up to 22 characters. The statement description may not include \`\<\`, \`>\`, \`\\\`, \`\"\`, \`\'\` characters, and will appear on your customer\'s statement in capital letters. Non-ASCII characters are automatically stripped.
  --  It must contain at least one letter. May only be set if \`type=service\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 22
  , postProductsIdRequestBodyStatementDescriptor :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | unit_label: A label that represents units of this product in Stripe and on customers’ receipts and invoices. When set, this will be included in associated invoice line item descriptions. May only be set if \`type=service\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 12
  , postProductsIdRequestBodyUnitLabel :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | url: A URL of a publicly-accessible webpage for this product. May only be set if \`type=good\`.
  , postProductsIdRequestBodyUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostProductsIdRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "active" (postProductsIdRequestBodyActive obj) : (Data.Aeson..=) "attributes" (postProductsIdRequestBodyAttributes obj) : (Data.Aeson..=) "caption" (postProductsIdRequestBodyCaption obj) : (Data.Aeson..=) "deactivate_on" (postProductsIdRequestBodyDeactivateOn obj) : (Data.Aeson..=) "description" (postProductsIdRequestBodyDescription obj) : (Data.Aeson..=) "expand" (postProductsIdRequestBodyExpand obj) : (Data.Aeson..=) "images" (postProductsIdRequestBodyImages obj) : (Data.Aeson..=) "metadata" (postProductsIdRequestBodyMetadata obj) : (Data.Aeson..=) "name" (postProductsIdRequestBodyName obj) : (Data.Aeson..=) "package_dimensions" (postProductsIdRequestBodyPackageDimensions obj) : (Data.Aeson..=) "shippable" (postProductsIdRequestBodyShippable obj) : (Data.Aeson..=) "statement_descriptor" (postProductsIdRequestBodyStatementDescriptor obj) : (Data.Aeson..=) "unit_label" (postProductsIdRequestBodyUnitLabel obj) : (Data.Aeson..=) "url" (postProductsIdRequestBodyUrl obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "active" (postProductsIdRequestBodyActive obj) GHC.Base.<> ((Data.Aeson..=) "attributes" (postProductsIdRequestBodyAttributes obj) GHC.Base.<> ((Data.Aeson..=) "caption" (postProductsIdRequestBodyCaption obj) GHC.Base.<> ((Data.Aeson..=) "deactivate_on" (postProductsIdRequestBodyDeactivateOn obj) GHC.Base.<> ((Data.Aeson..=) "description" (postProductsIdRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postProductsIdRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "images" (postProductsIdRequestBodyImages obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postProductsIdRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (postProductsIdRequestBodyName obj) GHC.Base.<> ((Data.Aeson..=) "package_dimensions" (postProductsIdRequestBodyPackageDimensions obj) GHC.Base.<> ((Data.Aeson..=) "shippable" (postProductsIdRequestBodyShippable obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor" (postProductsIdRequestBodyStatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "unit_label" (postProductsIdRequestBodyUnitLabel obj) GHC.Base.<> (Data.Aeson..=) "url" (postProductsIdRequestBodyUrl obj))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostProductsIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostProductsIdRequestBody" (\obj -> (((((((((((((GHC.Base.pure PostProductsIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "attributes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "caption")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "deactivate_on")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "images")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "package_dimensions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shippable")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unit_label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "url"))
-- | Defines the enum schema postProductsIdRequestBodyAttributes\'OneOf1
-- 
-- 
data PostProductsIdRequestBodyAttributes'OneOf1
    = PostProductsIdRequestBodyAttributes'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostProductsIdRequestBodyAttributes'OneOf1EnumTyped Data.Text.Internal.Text
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
-- | Define the one-of schema postProductsIdRequestBodyAttributes\'
-- 
-- A list of up to 5 alphanumeric attributes that each SKU can provide values for (e.g., \`[\"color\", \"size\"]\`). If a value for \`attributes\` is specified, the list specified will replace the existing attributes list on this product. Any attributes not present after the update will be deleted from the SKUs for this product.
data PostProductsIdRequestBodyAttributes'Variants
    = PostProductsIdRequestBodyAttributes'PostProductsIdRequestBodyAttributes'OneOf1 PostProductsIdRequestBodyAttributes'OneOf1
    | PostProductsIdRequestBodyAttributes'ListText ([] Data.Text.Internal.Text)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostProductsIdRequestBodyAttributes'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostProductsIdRequestBodyAttributes'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postProductsIdRequestBodyImages\'OneOf1
-- 
-- 
data PostProductsIdRequestBodyImages'OneOf1
    = PostProductsIdRequestBodyImages'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostProductsIdRequestBodyImages'OneOf1EnumTyped Data.Text.Internal.Text
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
-- | Define the one-of schema postProductsIdRequestBodyImages\'
-- 
-- A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
data PostProductsIdRequestBodyImages'Variants
    = PostProductsIdRequestBodyImages'PostProductsIdRequestBodyImages'OneOf1 PostProductsIdRequestBodyImages'OneOf1
    | PostProductsIdRequestBodyImages'ListText ([] Data.Text.Internal.Text)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostProductsIdRequestBodyImages'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostProductsIdRequestBodyImages'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postProductsIdRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostProductsIdRequestBodyMetadata' = PostProductsIdRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostProductsIdRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostProductsIdRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostProductsIdRequestBodyMetadata'" (\obj -> GHC.Base.pure PostProductsIdRequestBodyMetadata')
-- | Defines the enum schema postProductsIdRequestBodyPackage_dimensions\'OneOf1
-- 
-- 
data PostProductsIdRequestBodyPackageDimensions'OneOf1
    = PostProductsIdRequestBodyPackageDimensions'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostProductsIdRequestBodyPackageDimensions'OneOf1EnumTyped Data.Text.Internal.Text
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
-- | Defines the data type for the schema postProductsIdRequestBodyPackage_dimensions\'OneOf2
-- 
-- 
data PostProductsIdRequestBodyPackageDimensions'OneOf2 = PostProductsIdRequestBodyPackageDimensions'OneOf2 {
  -- | height
  postProductsIdRequestBodyPackageDimensions'OneOf2Height :: GHC.Types.Double
  -- | length
  , postProductsIdRequestBodyPackageDimensions'OneOf2Length :: GHC.Types.Double
  -- | weight
  , postProductsIdRequestBodyPackageDimensions'OneOf2Weight :: GHC.Types.Double
  -- | width
  , postProductsIdRequestBodyPackageDimensions'OneOf2Width :: GHC.Types.Double
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostProductsIdRequestBodyPackageDimensions'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "height" (postProductsIdRequestBodyPackageDimensions'OneOf2Height obj) : (Data.Aeson..=) "length" (postProductsIdRequestBodyPackageDimensions'OneOf2Length obj) : (Data.Aeson..=) "weight" (postProductsIdRequestBodyPackageDimensions'OneOf2Weight obj) : (Data.Aeson..=) "width" (postProductsIdRequestBodyPackageDimensions'OneOf2Width obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "height" (postProductsIdRequestBodyPackageDimensions'OneOf2Height obj) GHC.Base.<> ((Data.Aeson..=) "length" (postProductsIdRequestBodyPackageDimensions'OneOf2Length obj) GHC.Base.<> ((Data.Aeson..=) "weight" (postProductsIdRequestBodyPackageDimensions'OneOf2Weight obj) GHC.Base.<> (Data.Aeson..=) "width" (postProductsIdRequestBodyPackageDimensions'OneOf2Width obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostProductsIdRequestBodyPackageDimensions'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostProductsIdRequestBodyPackageDimensions'OneOf2" (\obj -> (((GHC.Base.pure PostProductsIdRequestBodyPackageDimensions'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "length")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "weight")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "width"))
-- | Define the one-of schema postProductsIdRequestBodyPackage_dimensions\'
-- 
-- The dimensions of this product for shipping purposes. A SKU associated with this product can override this value by having its own \`package_dimensions\`. May only be set if \`type=good\`.
data PostProductsIdRequestBodyPackageDimensions'Variants
    = PostProductsIdRequestBodyPackageDimensions'PostProductsIdRequestBodyPackageDimensions'OneOf1 PostProductsIdRequestBodyPackageDimensions'OneOf1
    | PostProductsIdRequestBodyPackageDimensions'PostProductsIdRequestBodyPackageDimensions'OneOf2 PostProductsIdRequestBodyPackageDimensions'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostProductsIdRequestBodyPackageDimensions'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostProductsIdRequestBodyPackageDimensions'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Represents a response of the operation 'postProductsId'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostProductsIdResponseError' is used.
data PostProductsIdResponse =                   
   PostProductsIdResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostProductsIdResponse200 Product           -- ^ Successful response.
  | PostProductsIdResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
