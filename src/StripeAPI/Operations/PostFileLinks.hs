{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postFileLinks
module StripeAPI.Operations.PostFileLinks where

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

-- | > POST /v1/file_links
-- 
-- \<p>Creates a new file link object.\<\/p>
postFileLinks :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> PostFileLinksRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostFileLinksResponse)) -- ^ Monad containing the result of the operation
postFileLinks config
              body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostFileLinksResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostFileLinksResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                         FileLink)
                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostFileLinksResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/file_links") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/file_links
-- 
-- The same as 'postFileLinks' but returns the raw 'Data.ByteString.Char8.ByteString'
postFileLinksRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                  StripeAPI.Common.SecurityScheme s) =>
                    StripeAPI.Common.Configuration s ->
                    PostFileLinksRequestBody ->
                    m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postFileLinksRaw config
                 body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/file_links") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/file_links
-- 
-- Monadic version of 'postFileLinks' (use with 'StripeAPI.Common.runWithConfiguration')
postFileLinksM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                StripeAPI.Common.SecurityScheme s) =>
                  PostFileLinksRequestBody ->
                  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                     m
                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                         (Network.HTTP.Client.Types.Response PostFileLinksResponse))
postFileLinksM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostFileLinksResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostFileLinksResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                          FileLink)
                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostFileLinksResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/file_links") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/file_links
-- 
-- Monadic version of 'postFileLinksRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postFileLinksRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                   StripeAPI.Common.SecurityScheme s) =>
                     PostFileLinksRequestBody ->
                     Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                        m
                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postFileLinksRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/file_links") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postFileLinksRequestBody
-- 
-- 
data PostFileLinksRequestBody = PostFileLinksRequestBody {
  -- | expand: Specifies which fields in the response should be expanded.
  postFileLinksRequestBodyExpand :: (GHC.Maybe.Maybe ([] Data.Text.Internal.Text))
  -- | expires_at: A future timestamp after which the link will no longer be usable.
  , postFileLinksRequestBodyExpiresAt :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | file: The ID of the file. The file\'s \`purpose\` must be one of the following: \`business_icon\`, \`business_logo\`, \`customer_signature\`, \`dispute_evidence\`, \`finance_report_run\`, \`pci_document\`, \`sigma_scheduled_query\`, or \`tax_document_user_upload\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postFileLinksRequestBodyFile :: Data.Text.Internal.Text
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postFileLinksRequestBodyMetadata :: (GHC.Maybe.Maybe PostFileLinksRequestBodyMetadata')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFileLinksRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "expand" (postFileLinksRequestBodyExpand obj) : (Data.Aeson..=) "expires_at" (postFileLinksRequestBodyExpiresAt obj) : (Data.Aeson..=) "file" (postFileLinksRequestBodyFile obj) : (Data.Aeson..=) "metadata" (postFileLinksRequestBodyMetadata obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "expand" (postFileLinksRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "expires_at" (postFileLinksRequestBodyExpiresAt obj) GHC.Base.<> ((Data.Aeson..=) "file" (postFileLinksRequestBodyFile obj) GHC.Base.<> (Data.Aeson..=) "metadata" (postFileLinksRequestBodyMetadata obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostFileLinksRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFileLinksRequestBody" (\obj -> (((GHC.Base.pure PostFileLinksRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expires_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "file")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata"))
-- | Defines the data type for the schema postFileLinksRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostFileLinksRequestBodyMetadata' = PostFileLinksRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFileLinksRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostFileLinksRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFileLinksRequestBodyMetadata'" (\obj -> GHC.Base.pure PostFileLinksRequestBodyMetadata')
-- | Represents a response of the operation 'postFileLinks'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostFileLinksResponseError' is used.
data PostFileLinksResponse =                   
   PostFileLinksResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostFileLinksResponse200 FileLink          -- ^ Successful response.
  | PostFileLinksResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
