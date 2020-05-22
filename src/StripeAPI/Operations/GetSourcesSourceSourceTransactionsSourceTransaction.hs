{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getSourcesSourceSourceTransactionsSourceTransaction
module StripeAPI.Operations.GetSourcesSourceSourceTransactionsSourceTransaction where

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

-- | > GET /v1/sources/{source}/source_transactions/{source_transaction}
-- 
-- \<p>Retrieve an existing source transaction object. Supply the unique source ID from a source creation request and the source transaction ID and Stripe will return the corresponding up-to-date source object information.\<\/p>
getSourcesSourceSourceTransactionsSourceTransaction :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                                                                 -- ^ expand: Specifies which fields in the response should be expanded.
  -> GHC.Base.String                                                                                                                                                 -- ^ source | Constraints: Maximum length of 5000
  -> GHC.Base.String                                                                                                                                                 -- ^ source_transaction | Constraints: Maximum length of 5000
  -> GetSourcesSourceSourceTransactionsSourceTransactionRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetSourcesSourceSourceTransactionsSourceTransactionResponse)) -- ^ Monad containing the result of the operation
getSourcesSourceSourceTransactionsSourceTransaction config
                                                    expand
                                                    source
                                                    sourceTransaction
                                                    body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetSourcesSourceSourceTransactionsSourceTransactionResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetSourcesSourceSourceTransactionsSourceTransactionResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           SourceTransaction)
                                                                                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetSourcesSourceSourceTransactionsSourceTransactionResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/sources/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel source)) GHC.Base.++ ("/source_transactions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel sourceTransaction)) GHC.Base.++ ""))))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/sources/{source}/source_transactions/{source_transaction}
-- 
-- The same as 'getSourcesSourceSourceTransactionsSourceTransaction' but returns the raw 'Data.ByteString.Char8.ByteString'
getSourcesSourceSourceTransactionsSourceTransactionRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                        StripeAPI.Common.SecurityScheme s) =>
                                                          StripeAPI.Common.Configuration s ->
                                                          GHC.Maybe.Maybe GHC.Base.String ->
                                                          GHC.Base.String ->
                                                          GHC.Base.String ->
                                                          GetSourcesSourceSourceTransactionsSourceTransactionRequestBody ->
                                                          m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getSourcesSourceSourceTransactionsSourceTransactionRaw config
                                                       expand
                                                       source
                                                       sourceTransaction
                                                       body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/sources/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel source)) GHC.Base.++ ("/source_transactions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel sourceTransaction)) GHC.Base.++ ""))))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/sources/{source}/source_transactions/{source_transaction}
-- 
-- Monadic version of 'getSourcesSourceSourceTransactionsSourceTransaction' (use with 'StripeAPI.Common.runWithConfiguration')
getSourcesSourceSourceTransactionsSourceTransactionM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                      StripeAPI.Common.SecurityScheme s) =>
                                                        GHC.Maybe.Maybe GHC.Base.String ->
                                                        GHC.Base.String ->
                                                        GHC.Base.String ->
                                                        GetSourcesSourceSourceTransactionsSourceTransactionRequestBody ->
                                                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                           m
                                                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                               (Network.HTTP.Client.Types.Response GetSourcesSourceSourceTransactionsSourceTransactionResponse))
getSourcesSourceSourceTransactionsSourceTransactionM expand
                                                     source
                                                     sourceTransaction
                                                     body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetSourcesSourceSourceTransactionsSourceTransactionResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetSourcesSourceSourceTransactionsSourceTransactionResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            SourceTransaction)
                                                                                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetSourcesSourceSourceTransactionsSourceTransactionResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/sources/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel source)) GHC.Base.++ ("/source_transactions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel sourceTransaction)) GHC.Base.++ ""))))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/sources/{source}/source_transactions/{source_transaction}
-- 
-- Monadic version of 'getSourcesSourceSourceTransactionsSourceTransactionRaw' (use with 'StripeAPI.Common.runWithConfiguration')
getSourcesSourceSourceTransactionsSourceTransactionRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                         StripeAPI.Common.SecurityScheme s) =>
                                                           GHC.Maybe.Maybe GHC.Base.String ->
                                                           GHC.Base.String ->
                                                           GHC.Base.String ->
                                                           GetSourcesSourceSourceTransactionsSourceTransactionRequestBody ->
                                                           Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                              m
                                                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getSourcesSourceSourceTransactionsSourceTransactionRawM expand
                                                        source
                                                        sourceTransaction
                                                        body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/sources/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel source)) GHC.Base.++ ("/source_transactions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel sourceTransaction)) GHC.Base.++ ""))))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema getSourcesSourceSourceTransactionsSourceTransactionRequestBody
-- 
-- 
data GetSourcesSourceSourceTransactionsSourceTransactionRequestBody = GetSourcesSourceSourceTransactionsSourceTransactionRequestBody {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetSourcesSourceSourceTransactionsSourceTransactionRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetSourcesSourceSourceTransactionsSourceTransactionRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSourcesSourceSourceTransactionsSourceTransactionRequestBody" (\obj -> GHC.Base.pure GetSourcesSourceSourceTransactionsSourceTransactionRequestBody)
-- | Represents a response of the operation 'getSourcesSourceSourceTransactionsSourceTransaction'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSourcesSourceSourceTransactionsSourceTransactionResponseError' is used.
data GetSourcesSourceSourceTransactionsSourceTransactionResponse =                    
   GetSourcesSourceSourceTransactionsSourceTransactionResponseError GHC.Base.String   -- ^ Means either no matching case available or a parse error
  | GetSourcesSourceSourceTransactionsSourceTransactionResponse200 SourceTransaction  -- ^ Successful response.
  | GetSourcesSourceSourceTransactionsSourceTransactionResponseDefault Error          -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
