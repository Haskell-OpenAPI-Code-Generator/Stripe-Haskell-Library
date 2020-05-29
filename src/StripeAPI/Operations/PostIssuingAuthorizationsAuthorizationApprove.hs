{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postIssuingAuthorizationsAuthorizationApprove
module StripeAPI.Operations.PostIssuingAuthorizationsAuthorizationApprove where

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

-- | > POST /v1/issuing/authorizations/{authorization}/approve
-- 
-- \<p>Approves a pending Issuing \<code>Authorization\<\/code> object.\<\/p>
postIssuingAuthorizationsAuthorizationApprove :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text                                                                                                                                   -- ^ authorization | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostIssuingAuthorizationsAuthorizationApproveRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostIssuingAuthorizationsAuthorizationApproveResponse)) -- ^ Monad containing the result of the operation
postIssuingAuthorizationsAuthorizationApprove config
                                              authorization
                                              body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostIssuingAuthorizationsAuthorizationApproveResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostIssuingAuthorizationsAuthorizationApproveResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         Issuing'authorization)
                                                                                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostIssuingAuthorizationsAuthorizationApproveResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/issuing/authorizations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel authorization)) GHC.Base.++ "/approve"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/issuing/authorizations/{authorization}/approve
-- 
-- The same as 'postIssuingAuthorizationsAuthorizationApprove' but returns the raw 'Data.ByteString.Char8.ByteString'
postIssuingAuthorizationsAuthorizationApproveRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                  StripeAPI.Common.SecurityScheme s) =>
                                                    StripeAPI.Common.Configuration s ->
                                                    Data.Text.Internal.Text ->
                                                    GHC.Maybe.Maybe PostIssuingAuthorizationsAuthorizationApproveRequestBody ->
                                                    m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postIssuingAuthorizationsAuthorizationApproveRaw config
                                                 authorization
                                                 body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/issuing/authorizations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel authorization)) GHC.Base.++ "/approve"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/issuing/authorizations/{authorization}/approve
-- 
-- Monadic version of 'postIssuingAuthorizationsAuthorizationApprove' (use with 'StripeAPI.Common.runWithConfiguration')
postIssuingAuthorizationsAuthorizationApproveM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                StripeAPI.Common.SecurityScheme s) =>
                                                  Data.Text.Internal.Text ->
                                                  GHC.Maybe.Maybe PostIssuingAuthorizationsAuthorizationApproveRequestBody ->
                                                  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                     m
                                                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                         (Network.HTTP.Client.Types.Response PostIssuingAuthorizationsAuthorizationApproveResponse))
postIssuingAuthorizationsAuthorizationApproveM authorization
                                               body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostIssuingAuthorizationsAuthorizationApproveResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostIssuingAuthorizationsAuthorizationApproveResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          Issuing'authorization)
                                                                                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostIssuingAuthorizationsAuthorizationApproveResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/issuing/authorizations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel authorization)) GHC.Base.++ "/approve"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/issuing/authorizations/{authorization}/approve
-- 
-- Monadic version of 'postIssuingAuthorizationsAuthorizationApproveRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postIssuingAuthorizationsAuthorizationApproveRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                   StripeAPI.Common.SecurityScheme s) =>
                                                     Data.Text.Internal.Text ->
                                                     GHC.Maybe.Maybe PostIssuingAuthorizationsAuthorizationApproveRequestBody ->
                                                     Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                        m
                                                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postIssuingAuthorizationsAuthorizationApproveRawM authorization
                                                  body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/issuing/authorizations/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel authorization)) GHC.Base.++ "/approve"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postIssuingAuthorizationsAuthorizationApproveRequestBody
-- 
-- 
data PostIssuingAuthorizationsAuthorizationApproveRequestBody = PostIssuingAuthorizationsAuthorizationApproveRequestBody {
  -- | expand: Specifies which fields in the response should be expanded.
  postIssuingAuthorizationsAuthorizationApproveRequestBodyExpand :: (GHC.Maybe.Maybe ([] Data.Text.Internal.Text))
  -- | held_amount: If the authorization\'s \`is_held_amount_controllable\` property is \`true\`, you may provide this value to control how much to hold for the authorization. Must be positive (use [\`decline\`](https:\/\/stripe.com\/docs\/api\/issuing\/authorizations\/decline) to decline an authorization request).
  , postIssuingAuthorizationsAuthorizationApproveRequestBodyHeldAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata :: (GHC.Maybe.Maybe PostIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata'Variants)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostIssuingAuthorizationsAuthorizationApproveRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "expand" (postIssuingAuthorizationsAuthorizationApproveRequestBodyExpand obj) : (Data.Aeson..=) "held_amount" (postIssuingAuthorizationsAuthorizationApproveRequestBodyHeldAmount obj) : (Data.Aeson..=) "metadata" (postIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "expand" (postIssuingAuthorizationsAuthorizationApproveRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "held_amount" (postIssuingAuthorizationsAuthorizationApproveRequestBodyHeldAmount obj) GHC.Base.<> (Data.Aeson..=) "metadata" (postIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostIssuingAuthorizationsAuthorizationApproveRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostIssuingAuthorizationsAuthorizationApproveRequestBody" (\obj -> ((GHC.Base.pure PostIssuingAuthorizationsAuthorizationApproveRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "held_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata"))
-- | Defines the enum schema postIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata\'OneOf1
-- 
-- 
data PostIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata'OneOf1
    = PostIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata'OneOf1EnumTyped Data.Text.Internal.Text
    | PostIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata'OneOf1
    where toJSON (PostIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata'OneOf1EnumString_
                                          else PostIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata'OneOf1EnumOther val)
-- | Defines the data type for the schema postIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata\'OneOf2
-- 
-- 
data PostIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata'OneOf2 = PostIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata'OneOf2 {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata'OneOf2
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata'OneOf2" (\obj -> GHC.Base.pure PostIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata'OneOf2)
-- | Define the one-of schema postIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata'Variants
    = PostIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata'PostIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata'OneOf1 PostIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata'OneOf1
    | PostIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata'PostIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata'OneOf2 PostIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostIssuingAuthorizationsAuthorizationApproveRequestBodyMetadata'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Represents a response of the operation 'postIssuingAuthorizationsAuthorizationApprove'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostIssuingAuthorizationsAuthorizationApproveResponseError' is used.
data PostIssuingAuthorizationsAuthorizationApproveResponse =                        
   PostIssuingAuthorizationsAuthorizationApproveResponseError GHC.Base.String       -- ^ Means either no matching case available or a parse error
  | PostIssuingAuthorizationsAuthorizationApproveResponse200 Issuing'authorization  -- ^ Successful response.
  | PostIssuingAuthorizationsAuthorizationApproveResponseDefault Error              -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
