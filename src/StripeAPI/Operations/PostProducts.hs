{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postProducts
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

-- | > POST /v1/products
-- 
-- \<p>Creates a new product object. To create a product for use with orders, see \<a href=\"\#create_product\">Products\<\/a>.\<\/p>
postProducts :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> PostProductsRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostProductsResponse)) -- ^ Monad containing the result of the operation
postProducts config
             body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostProductsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostProductsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      Product)
                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostProductsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/products") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/products
-- 
-- The same as 'postProducts' but returns the raw 'Data.ByteString.Char8.ByteString'
postProductsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                 StripeAPI.Common.SecurityScheme s) =>
                   StripeAPI.Common.Configuration s ->
                   PostProductsRequestBody ->
                   m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postProductsRaw config
                body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/products") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/products
-- 
-- Monadic version of 'postProducts' (use with 'StripeAPI.Common.runWithConfiguration')
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
-- | > POST /v1/products
-- 
-- Monadic version of 'postProductsRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postProductsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                  StripeAPI.Common.SecurityScheme s) =>
                    PostProductsRequestBody ->
                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                       m
                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postProductsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/products") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postProductsRequestBody
-- 
-- 
data PostProductsRequestBody = PostProductsRequestBody {
  -- | active: Whether the product is currently available for purchase. Defaults to \`true\`.
  postProductsRequestBodyActive :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | attributes: A list of up to 5 alphanumeric attributes.
  , postProductsRequestBodyAttributes :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | caption: A short one-line description of the product, meant to be displayable to the customer. May only be set if type=\`good\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postProductsRequestBodyCaption :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | deactivate_on: An array of Connect application names or identifiers that should not be able to order the SKUs for this product. May only be set if type=\`good\`.
  , postProductsRequestBodyDeactivateOn :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | description: The product\'s description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 40000
  , postProductsRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | expand: Specifies which fields in the response should be expanded.
  , postProductsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | id: An identifier will be randomly generated by Stripe. You can optionally override this ID, but the ID must be unique across all products in your Stripe account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postProductsRequestBodyId :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | images: A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
  , postProductsRequestBodyImages :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postProductsRequestBodyMetadata :: (GHC.Maybe.Maybe PostProductsRequestBodyMetadata')
  -- | name: The product\'s name, meant to be displayable to the customer. Whenever this product is sold via a subscription, name will show up on associated invoice line item descriptions.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postProductsRequestBodyName :: GHC.Base.String
  -- | package_dimensions: The dimensions of this product for shipping purposes. A SKU associated with this product can override this value by having its own \`package_dimensions\`. May only be set if type=\`good\`.
  , postProductsRequestBodyPackageDimensions :: (GHC.Maybe.Maybe PostProductsRequestBodyPackageDimensions')
  -- | shippable: Whether this product is shipped (i.e., physical goods). Defaults to \`true\`. May only be set if type=\`good\`.
  , postProductsRequestBodyShippable :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | statement_descriptor: An arbitrary string to be displayed on your customer\'s credit card or bank statement. While most banks display this information consistently, some may display it incorrectly or not at all.
  -- 
  -- This may be up to 22 characters. The statement description may not include \`\<\`, \`>\`, \`\\\`, \`\"\`, \`\'\` characters, and will appear on your customer\'s statement in capital letters. Non-ASCII characters are automatically stripped.
  --  It must contain at least one letter.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 22
  , postProductsRequestBodyStatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | type: The type of the product. Defaults to \`service\` if not explicitly specified, enabling use of this product with Subscriptions and Plans. Set this parameter to \`good\` to use this product with Orders and SKUs. On API versions before \`2018-02-05\`, this field defaults to \`good\` for compatibility reasons.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postProductsRequestBodyType :: (GHC.Maybe.Maybe PostProductsRequestBodyType')
  -- | unit_label: A label that represents units of this product in Stripe and on customers’ receipts and invoices. When set, this will be included in associated invoice line item descriptions.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 12
  , postProductsRequestBodyUnitLabel :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | url: A URL of a publicly-accessible webpage for this product. May only be set if type=\`good\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postProductsRequestBodyUrl :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostProductsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "active" (postProductsRequestBodyActive obj) : (Data.Aeson..=) "attributes" (postProductsRequestBodyAttributes obj) : (Data.Aeson..=) "caption" (postProductsRequestBodyCaption obj) : (Data.Aeson..=) "deactivate_on" (postProductsRequestBodyDeactivateOn obj) : (Data.Aeson..=) "description" (postProductsRequestBodyDescription obj) : (Data.Aeson..=) "expand" (postProductsRequestBodyExpand obj) : (Data.Aeson..=) "id" (postProductsRequestBodyId obj) : (Data.Aeson..=) "images" (postProductsRequestBodyImages obj) : (Data.Aeson..=) "metadata" (postProductsRequestBodyMetadata obj) : (Data.Aeson..=) "name" (postProductsRequestBodyName obj) : (Data.Aeson..=) "package_dimensions" (postProductsRequestBodyPackageDimensions obj) : (Data.Aeson..=) "shippable" (postProductsRequestBodyShippable obj) : (Data.Aeson..=) "statement_descriptor" (postProductsRequestBodyStatementDescriptor obj) : (Data.Aeson..=) "type" (postProductsRequestBodyType obj) : (Data.Aeson..=) "unit_label" (postProductsRequestBodyUnitLabel obj) : (Data.Aeson..=) "url" (postProductsRequestBodyUrl obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "active" (postProductsRequestBodyActive obj) GHC.Base.<> ((Data.Aeson..=) "attributes" (postProductsRequestBodyAttributes obj) GHC.Base.<> ((Data.Aeson..=) "caption" (postProductsRequestBodyCaption obj) GHC.Base.<> ((Data.Aeson..=) "deactivate_on" (postProductsRequestBodyDeactivateOn obj) GHC.Base.<> ((Data.Aeson..=) "description" (postProductsRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postProductsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "id" (postProductsRequestBodyId obj) GHC.Base.<> ((Data.Aeson..=) "images" (postProductsRequestBodyImages obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postProductsRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (postProductsRequestBodyName obj) GHC.Base.<> ((Data.Aeson..=) "package_dimensions" (postProductsRequestBodyPackageDimensions obj) GHC.Base.<> ((Data.Aeson..=) "shippable" (postProductsRequestBodyShippable obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor" (postProductsRequestBodyStatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "type" (postProductsRequestBodyType obj) GHC.Base.<> ((Data.Aeson..=) "unit_label" (postProductsRequestBodyUnitLabel obj) GHC.Base.<> (Data.Aeson..=) "url" (postProductsRequestBodyUrl obj))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostProductsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostProductsRequestBody" (\obj -> (((((((((((((((GHC.Base.pure PostProductsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "attributes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "caption")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "deactivate_on")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "images")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "package_dimensions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shippable")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unit_label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "url"))
-- | Defines the data type for the schema postProductsRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostProductsRequestBodyMetadata' = PostProductsRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostProductsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostProductsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostProductsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostProductsRequestBodyMetadata')
-- | Defines the data type for the schema postProductsRequestBodyPackage_dimensions\'
-- 
-- The dimensions of this product for shipping purposes. A SKU associated with this product can override this value by having its own \`package_dimensions\`. May only be set if type=\`good\`.
data PostProductsRequestBodyPackageDimensions' = PostProductsRequestBodyPackageDimensions' {
  -- | height
  postProductsRequestBodyPackageDimensions'Height :: GHC.Types.Double
  -- | length
  , postProductsRequestBodyPackageDimensions'Length :: GHC.Types.Double
  -- | weight
  , postProductsRequestBodyPackageDimensions'Weight :: GHC.Types.Double
  -- | width
  , postProductsRequestBodyPackageDimensions'Width :: GHC.Types.Double
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostProductsRequestBodyPackageDimensions'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "height" (postProductsRequestBodyPackageDimensions'Height obj) : (Data.Aeson..=) "length" (postProductsRequestBodyPackageDimensions'Length obj) : (Data.Aeson..=) "weight" (postProductsRequestBodyPackageDimensions'Weight obj) : (Data.Aeson..=) "width" (postProductsRequestBodyPackageDimensions'Width obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "height" (postProductsRequestBodyPackageDimensions'Height obj) GHC.Base.<> ((Data.Aeson..=) "length" (postProductsRequestBodyPackageDimensions'Length obj) GHC.Base.<> ((Data.Aeson..=) "weight" (postProductsRequestBodyPackageDimensions'Weight obj) GHC.Base.<> (Data.Aeson..=) "width" (postProductsRequestBodyPackageDimensions'Width obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostProductsRequestBodyPackageDimensions'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostProductsRequestBodyPackageDimensions'" (\obj -> (((GHC.Base.pure PostProductsRequestBodyPackageDimensions' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "length")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "weight")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "width"))
-- | Defines the enum schema postProductsRequestBodyType\'
-- 
-- The type of the product. Defaults to \`service\` if not explicitly specified, enabling use of this product with Subscriptions and Plans. Set this parameter to \`good\` to use this product with Orders and SKUs. On API versions before \`2018-02-05\`, this field defaults to \`good\` for compatibility reasons.
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
-- | Represents a response of the operation 'postProducts'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostProductsResponseError' is used.
data PostProductsResponse =                   
   PostProductsResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostProductsResponse200 Product           -- ^ Successful response.
  | PostProductsResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
