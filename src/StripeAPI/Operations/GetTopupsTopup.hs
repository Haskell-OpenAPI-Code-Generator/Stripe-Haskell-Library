{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getTopupsTopup
module StripeAPI.Operations.GetTopupsTopup where

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

-- | > GET /v1/topups/{topup}
-- 
-- \<p>Retrieves the details of a top-up that has previously been created. Supply the unique top-up ID that was returned from your previous request, and Stripe will return the corresponding top-up information.\<\/p>
getTopupsTopup :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Maybe.Maybe Data.Text.Internal.Text                                                                                    -- ^ expand: Specifies which fields in the response should be expanded.
  -> Data.Text.Internal.Text                                                                                                    -- ^ topup | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe GetTopupsTopupRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetTopupsTopupResponse)) -- ^ Monad containing the result of the operation
getTopupsTopup config
               expand
               topup
               body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetTopupsTopupResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetTopupsTopupResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                            Topup)
                                                                                                                                                                              | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetTopupsTopupResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/topups/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel topup)) GHC.Base.++ ""))) ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              'x',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              'p',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              'a',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              'n',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              'd'],
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/topups/{topup}
-- 
-- The same as 'getTopupsTopup' but returns the raw 'Data.ByteString.Char8.ByteString'
getTopupsTopupRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                   StripeAPI.Common.SecurityScheme s) =>
                     StripeAPI.Common.Configuration s ->
                     GHC.Maybe.Maybe Data.Text.Internal.Text ->
                     Data.Text.Internal.Text ->
                     GHC.Maybe.Maybe GetTopupsTopupRequestBody ->
                     m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getTopupsTopupRaw config
                  expand
                  topup
                  body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/topups/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel topup)) GHC.Base.++ ""))) ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                                  'x',
                                                                                                                                                                                                                                                                                                                                                                                                  'p',
                                                                                                                                                                                                                                                                                                                                                                                                  'a',
                                                                                                                                                                                                                                                                                                                                                                                                  'n',
                                                                                                                                                                                                                                                                                                                                                                                                  'd'],
                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/topups/{topup}
-- 
-- Monadic version of 'getTopupsTopup' (use with 'StripeAPI.Common.runWithConfiguration')
getTopupsTopupM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                 StripeAPI.Common.SecurityScheme s) =>
                   GHC.Maybe.Maybe Data.Text.Internal.Text ->
                   Data.Text.Internal.Text ->
                   GHC.Maybe.Maybe GetTopupsTopupRequestBody ->
                   Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                      m
                                                      (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                          (Network.HTTP.Client.Types.Response GetTopupsTopupResponse))
getTopupsTopupM expand
                topup
                body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetTopupsTopupResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetTopupsTopupResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                             Topup)
                                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetTopupsTopupResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/topups/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel topup)) GHC.Base.++ ""))) ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         'x',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         'p',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         'a',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         'n',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         'd'],
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/topups/{topup}
-- 
-- Monadic version of 'getTopupsTopupRaw' (use with 'StripeAPI.Common.runWithConfiguration')
getTopupsTopupRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                    StripeAPI.Common.SecurityScheme s) =>
                      GHC.Maybe.Maybe Data.Text.Internal.Text ->
                      Data.Text.Internal.Text ->
                      GHC.Maybe.Maybe GetTopupsTopupRequestBody ->
                      Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                         m
                                                         (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                             (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getTopupsTopupRawM expand
                   topup
                   body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/topups/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel topup)) GHC.Base.++ ""))) ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                             'x',
                                                                                                                                                                                                                                                                                                                                                                                             'p',
                                                                                                                                                                                                                                                                                                                                                                                             'a',
                                                                                                                                                                                                                                                                                                                                                                                             'n',
                                                                                                                                                                                                                                                                                                                                                                                             'd'],
                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema getTopupsTopupRequestBody
-- 
-- 
data GetTopupsTopupRequestBody = GetTopupsTopupRequestBody {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetTopupsTopupRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetTopupsTopupRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTopupsTopupRequestBody" (\obj -> GHC.Base.pure GetTopupsTopupRequestBody)
-- | Represents a response of the operation 'getTopupsTopup'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetTopupsTopupResponseError' is used.
data GetTopupsTopupResponse =                   
   GetTopupsTopupResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | GetTopupsTopupResponse200 Topup             -- ^ Successful response.
  | GetTopupsTopupResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
