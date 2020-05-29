{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postTransfersTransfer
module StripeAPI.Operations.PostTransfersTransfer where

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

-- | > POST /v1/transfers/{transfer}
-- 
-- \<p>Updates the specified transfer by setting the values of the parameters passed. Any parameters not provided will be left unchanged.\<\/p>
-- 
-- \<p>This request accepts only metadata as an argument.\<\/p>
postTransfersTransfer :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text                                                                                                           -- ^ transfer | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostTransfersTransferRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostTransfersTransferResponse)) -- ^ Monad containing the result of the operation
postTransfersTransfer config
                      transfer
                      body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostTransfersTransferResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTransfersTransferResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                 Transfer)
                                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTransfersTransferResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/transfers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel transfer)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/transfers/{transfer}
-- 
-- The same as 'postTransfersTransfer' but returns the raw 'Data.ByteString.Char8.ByteString'
postTransfersTransferRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                          StripeAPI.Common.SecurityScheme s) =>
                            StripeAPI.Common.Configuration s ->
                            Data.Text.Internal.Text ->
                            GHC.Maybe.Maybe PostTransfersTransferRequestBody ->
                            m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postTransfersTransferRaw config
                         transfer
                         body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/transfers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel transfer)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/transfers/{transfer}
-- 
-- Monadic version of 'postTransfersTransfer' (use with 'StripeAPI.Common.runWithConfiguration')
postTransfersTransferM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          Data.Text.Internal.Text ->
                          GHC.Maybe.Maybe PostTransfersTransferRequestBody ->
                          Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                             m
                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                 (Network.HTTP.Client.Types.Response PostTransfersTransferResponse))
postTransfersTransferM transfer
                       body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostTransfersTransferResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTransfersTransferResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                  Transfer)
                                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTransfersTransferResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/transfers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel transfer)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/transfers/{transfer}
-- 
-- Monadic version of 'postTransfersTransferRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postTransfersTransferRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             Data.Text.Internal.Text ->
                             GHC.Maybe.Maybe PostTransfersTransferRequestBody ->
                             Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                m
                                                                (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                    (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postTransfersTransferRawM transfer
                          body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/transfers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel transfer)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postTransfersTransferRequestBody
-- 
-- 
data PostTransfersTransferRequestBody = PostTransfersTransferRequestBody {
  -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postTransfersTransferRequestBodyDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | expand: Specifies which fields in the response should be expanded.
  , postTransfersTransferRequestBodyExpand :: (GHC.Maybe.Maybe ([] Data.Text.Internal.Text))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postTransfersTransferRequestBodyMetadata :: (GHC.Maybe.Maybe PostTransfersTransferRequestBodyMetadata')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTransfersTransferRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "description" (postTransfersTransferRequestBodyDescription obj) : (Data.Aeson..=) "expand" (postTransfersTransferRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postTransfersTransferRequestBodyMetadata obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "description" (postTransfersTransferRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postTransfersTransferRequestBodyExpand obj) GHC.Base.<> (Data.Aeson..=) "metadata" (postTransfersTransferRequestBodyMetadata obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostTransfersTransferRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTransfersTransferRequestBody" (\obj -> ((GHC.Base.pure PostTransfersTransferRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata"))
-- | Defines the data type for the schema postTransfersTransferRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostTransfersTransferRequestBodyMetadata' = PostTransfersTransferRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTransfersTransferRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostTransfersTransferRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTransfersTransferRequestBodyMetadata'" (\obj -> GHC.Base.pure PostTransfersTransferRequestBodyMetadata')
-- | Represents a response of the operation 'postTransfersTransfer'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostTransfersTransferResponseError' is used.
data PostTransfersTransferResponse =                   
   PostTransfersTransferResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostTransfersTransferResponse200 Transfer          -- ^ Successful response.
  | PostTransfersTransferResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
