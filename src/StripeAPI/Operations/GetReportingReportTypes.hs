{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getReportingReportTypes
module StripeAPI.Operations.GetReportingReportTypes where

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

-- | > GET /v1/reporting/report_types
-- 
-- \<p>Returns a full list of Report Types. (Requires a \<a href=\"https:\/\/stripe.com\/docs\/keys\#test-live-modes\">live-mode API key\<\/a>.)\<\/p>
getReportingReportTypes :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Maybe.Maybe Data.Text.Internal.Text                                                                                             -- ^ expand: Specifies which fields in the response should be expanded.
  -> GHC.Maybe.Maybe GetReportingReportTypesRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetReportingReportTypesResponse)) -- ^ Monad containing the result of the operation
getReportingReportTypes config
                        expand
                        body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetReportingReportTypesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetReportingReportTypesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                       GetReportingReportTypesResponseBody200)
                                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetReportingReportTypesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/v1/reporting/report_types") ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          'x',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          'p',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          'a',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          'n',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          'd'],
                                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/reporting/report_types
-- 
-- The same as 'getReportingReportTypes' but returns the raw 'Data.ByteString.Char8.ByteString'
getReportingReportTypesRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                            StripeAPI.Common.SecurityScheme s) =>
                              StripeAPI.Common.Configuration s ->
                              GHC.Maybe.Maybe Data.Text.Internal.Text ->
                              GHC.Maybe.Maybe GetReportingReportTypesRequestBody ->
                              m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                    (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getReportingReportTypesRaw config
                           expand
                           body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/v1/reporting/report_types") ((Data.Text.pack ['e',
                                                                                                                                                                                                                     'x',
                                                                                                                                                                                                                     'p',
                                                                                                                                                                                                                     'a',
                                                                                                                                                                                                                     'n',
                                                                                                                                                                                                                     'd'],
                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/reporting/report_types
-- 
-- Monadic version of 'getReportingReportTypes' (use with 'StripeAPI.Common.runWithConfiguration')
getReportingReportTypesM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                          StripeAPI.Common.SecurityScheme s) =>
                            GHC.Maybe.Maybe Data.Text.Internal.Text ->
                            GHC.Maybe.Maybe GetReportingReportTypesRequestBody ->
                            Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                               m
                                                               (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                   (Network.HTTP.Client.Types.Response GetReportingReportTypesResponse))
getReportingReportTypesM expand
                         body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetReportingReportTypesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetReportingReportTypesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                        GetReportingReportTypesResponseBody200)
                                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetReportingReportTypesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/v1/reporting/report_types") ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     'x',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     'p',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     'a',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     'n',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     'd'],
                                                                                                                                                                                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/reporting/report_types
-- 
-- Monadic version of 'getReportingReportTypesRaw' (use with 'StripeAPI.Common.runWithConfiguration')
getReportingReportTypesRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                             StripeAPI.Common.SecurityScheme s) =>
                               GHC.Maybe.Maybe Data.Text.Internal.Text ->
                               GHC.Maybe.Maybe GetReportingReportTypesRequestBody ->
                               Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                  m
                                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getReportingReportTypesRawM expand
                            body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/v1/reporting/report_types") ((Data.Text.pack ['e',
                                                                                                                                                                                                                'x',
                                                                                                                                                                                                                'p',
                                                                                                                                                                                                                'a',
                                                                                                                                                                                                                'n',
                                                                                                                                                                                                                'd'],
                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema getReportingReportTypesRequestBody
-- 
-- 
data GetReportingReportTypesRequestBody = GetReportingReportTypesRequestBody {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetReportingReportTypesRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetReportingReportTypesRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetReportingReportTypesRequestBody" (\obj -> GHC.Base.pure GetReportingReportTypesRequestBody)
-- | Represents a response of the operation 'getReportingReportTypes'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetReportingReportTypesResponseError' is used.
data GetReportingReportTypesResponse =                                         
   GetReportingReportTypesResponseError GHC.Base.String                        -- ^ Means either no matching case available or a parse error
  | GetReportingReportTypesResponse200 GetReportingReportTypesResponseBody200  -- ^ Successful response.
  | GetReportingReportTypesResponseDefault Error                               -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema GetReportingReportTypesResponseBody200
-- 
-- 
data GetReportingReportTypesResponseBody200 = GetReportingReportTypesResponseBody200 {
  -- | data
  getReportingReportTypesResponseBody200Data :: ([] Reporting'reportType)
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , getReportingReportTypesResponseBody200HasMore :: GHC.Types.Bool
  -- | object: String representing the object\'s type. Objects of the same type share the same value. Always has the value \`list\`.
  , getReportingReportTypesResponseBody200Object :: GetReportingReportTypesResponseBody200Object'
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getReportingReportTypesResponseBody200Url :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetReportingReportTypesResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getReportingReportTypesResponseBody200Data obj) : (Data.Aeson..=) "has_more" (getReportingReportTypesResponseBody200HasMore obj) : (Data.Aeson..=) "object" (getReportingReportTypesResponseBody200Object obj) : (Data.Aeson..=) "url" (getReportingReportTypesResponseBody200Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getReportingReportTypesResponseBody200Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (getReportingReportTypesResponseBody200HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (getReportingReportTypesResponseBody200Object obj) GHC.Base.<> (Data.Aeson..=) "url" (getReportingReportTypesResponseBody200Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetReportingReportTypesResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetReportingReportTypesResponseBody200" (\obj -> (((GHC.Base.pure GetReportingReportTypesResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Defines the enum schema GetReportingReportTypesResponseBody200Object\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value. Always has the value \`list\`.
data GetReportingReportTypesResponseBody200Object'
    = GetReportingReportTypesResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetReportingReportTypesResponseBody200Object'EnumTyped Data.Text.Internal.Text
    | GetReportingReportTypesResponseBody200Object'EnumStringList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetReportingReportTypesResponseBody200Object'
    where toJSON (GetReportingReportTypesResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetReportingReportTypesResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetReportingReportTypesResponseBody200Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"
instance Data.Aeson.FromJSON GetReportingReportTypesResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
                                          then GetReportingReportTypesResponseBody200Object'EnumStringList
                                          else GetReportingReportTypesResponseBody200Object'EnumOther val)
