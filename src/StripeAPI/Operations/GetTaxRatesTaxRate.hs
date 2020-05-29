{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getTaxRatesTaxRate
module StripeAPI.Operations.GetTaxRatesTaxRate where

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

-- | > GET /v1/tax_rates/{tax_rate}
-- 
-- \<p>Retrieves a tax rate with the given ID\<\/p>
getTaxRatesTaxRate :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Maybe.Maybe Data.Text.Internal.Text                                                                                        -- ^ expand: Specifies which fields in the response should be expanded.
  -> Data.Text.Internal.Text                                                                                                        -- ^ tax_rate | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe GetTaxRatesTaxRateRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetTaxRatesTaxRateResponse)) -- ^ Monad containing the result of the operation
getTaxRatesTaxRate config
                   expand
                   taxRate
                   body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetTaxRatesTaxRateResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetTaxRatesTaxRateResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                        TaxRate)
                                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetTaxRatesTaxRateResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/tax_rates/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel taxRate)) GHC.Base.++ ""))) ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           'x',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           'p',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           'a',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           'n',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           'd'],
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/tax_rates/{tax_rate}
-- 
-- The same as 'getTaxRatesTaxRate' but returns the raw 'Data.ByteString.Char8.ByteString'
getTaxRatesTaxRateRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                       StripeAPI.Common.SecurityScheme s) =>
                         StripeAPI.Common.Configuration s ->
                         GHC.Maybe.Maybe Data.Text.Internal.Text ->
                         Data.Text.Internal.Text ->
                         GHC.Maybe.Maybe GetTaxRatesTaxRateRequestBody ->
                         m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getTaxRatesTaxRateRaw config
                      expand
                      taxRate
                      body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/tax_rates/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel taxRate)) GHC.Base.++ ""))) ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                                           'x',
                                                                                                                                                                                                                                                                                                                                                                                                           'p',
                                                                                                                                                                                                                                                                                                                                                                                                           'a',
                                                                                                                                                                                                                                                                                                                                                                                                           'n',
                                                                                                                                                                                                                                                                                                                                                                                                           'd'],
                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/tax_rates/{tax_rate}
-- 
-- Monadic version of 'getTaxRatesTaxRate' (use with 'StripeAPI.Common.runWithConfiguration')
getTaxRatesTaxRateM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                     StripeAPI.Common.SecurityScheme s) =>
                       GHC.Maybe.Maybe Data.Text.Internal.Text ->
                       Data.Text.Internal.Text ->
                       GHC.Maybe.Maybe GetTaxRatesTaxRateRequestBody ->
                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                          m
                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                              (Network.HTTP.Client.Types.Response GetTaxRatesTaxRateResponse))
getTaxRatesTaxRateM expand
                    taxRate
                    body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetTaxRatesTaxRateResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetTaxRatesTaxRateResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                         TaxRate)
                                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetTaxRatesTaxRateResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/tax_rates/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel taxRate)) GHC.Base.++ ""))) ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      'x',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      'p',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      'a',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      'n',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      'd'],
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/tax_rates/{tax_rate}
-- 
-- Monadic version of 'getTaxRatesTaxRateRaw' (use with 'StripeAPI.Common.runWithConfiguration')
getTaxRatesTaxRateRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          GHC.Maybe.Maybe Data.Text.Internal.Text ->
                          Data.Text.Internal.Text ->
                          GHC.Maybe.Maybe GetTaxRatesTaxRateRequestBody ->
                          Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                             m
                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                 (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getTaxRatesTaxRateRawM expand
                       taxRate
                       body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/tax_rates/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel taxRate)) GHC.Base.++ ""))) ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                                      'x',
                                                                                                                                                                                                                                                                                                                                                                                                      'p',
                                                                                                                                                                                                                                                                                                                                                                                                      'a',
                                                                                                                                                                                                                                                                                                                                                                                                      'n',
                                                                                                                                                                                                                                                                                                                                                                                                      'd'],
                                                                                                                                                                                                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema getTaxRatesTaxRateRequestBody
-- 
-- 
data GetTaxRatesTaxRateRequestBody = GetTaxRatesTaxRateRequestBody {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetTaxRatesTaxRateRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetTaxRatesTaxRateRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTaxRatesTaxRateRequestBody" (\obj -> GHC.Base.pure GetTaxRatesTaxRateRequestBody)
-- | Represents a response of the operation 'getTaxRatesTaxRate'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetTaxRatesTaxRateResponseError' is used.
data GetTaxRatesTaxRateResponse =                   
   GetTaxRatesTaxRateResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | GetTaxRatesTaxRateResponse200 TaxRate           -- ^ Successful response.
  | GetTaxRatesTaxRateResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
