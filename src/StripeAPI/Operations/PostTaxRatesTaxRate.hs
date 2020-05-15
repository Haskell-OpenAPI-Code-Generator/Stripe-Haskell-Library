{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostTaxRatesTaxRate where

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

-- | No summary provided
--
-- POST /v1/tax_rates/{tax_rate}
postTaxRatesTaxRate :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                     StripeAPI.Common.SecurityScheme s) =>
                       StripeAPI.Common.Configuration s ->
                       GHC.Base.String ->
                       PostTaxRatesTaxRateRequestBody ->
                       m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                             (Network.HTTP.Client.Types.Response PostTaxRatesTaxRateResponse))
postTaxRatesTaxRate config
                    taxRate
                    body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostTaxRatesTaxRateResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTaxRatesTaxRateResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                           TaxRate)
                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTaxRatesTaxRateResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/tax_rates/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel taxRate)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postTaxRatesTaxRateRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          StripeAPI.Common.Configuration s ->
                          GHC.Base.String ->
                          PostTaxRatesTaxRateRequestBody ->
                          m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postTaxRatesTaxRateRaw config
                       taxRate
                       body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/tax_rates/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel taxRate)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postTaxRatesTaxRateM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        GHC.Base.String ->
                        PostTaxRatesTaxRateRequestBody ->
                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                           m
                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response PostTaxRatesTaxRateResponse))
postTaxRatesTaxRateM taxRate
                     body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostTaxRatesTaxRateResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTaxRatesTaxRateResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                            TaxRate)
                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTaxRatesTaxRateResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/tax_rates/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel taxRate)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postTaxRatesTaxRateRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                         StripeAPI.Common.SecurityScheme s) =>
                           GHC.Base.String ->
                           PostTaxRatesTaxRateRequestBody ->
                           Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                              m
                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postTaxRatesTaxRateRawM taxRate
                        body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/tax_rates/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel taxRate)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostTaxRatesTaxRateRequestBody
    = PostTaxRatesTaxRateRequestBody {postTaxRatesTaxRateRequestBodyActive :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                      postTaxRatesTaxRateRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String),
                                      postTaxRatesTaxRateRequestBodyDisplayName :: (GHC.Maybe.Maybe GHC.Base.String),
                                      postTaxRatesTaxRateRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                      postTaxRatesTaxRateRequestBodyJurisdiction :: (GHC.Maybe.Maybe GHC.Base.String),
                                      postTaxRatesTaxRateRequestBodyMetadata :: (GHC.Maybe.Maybe PostTaxRatesTaxRateRequestBodyMetadata')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostTaxRatesTaxRateRequestBodyMetadata'
    = PostTaxRatesTaxRateRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTaxRatesTaxRateRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostTaxRatesTaxRateRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTaxRatesTaxRateRequestBodyMetadata'" (\obj -> GHC.Base.pure PostTaxRatesTaxRateRequestBodyMetadata')
instance Data.Aeson.ToJSON PostTaxRatesTaxRateRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "active" (postTaxRatesTaxRateRequestBodyActive obj) : (Data.Aeson..=) "description" (postTaxRatesTaxRateRequestBodyDescription obj) : (Data.Aeson..=) "display_name" (postTaxRatesTaxRateRequestBodyDisplayName obj) : (Data.Aeson..=) "expand" (postTaxRatesTaxRateRequestBodyExpand obj) : (Data.Aeson..=) "jurisdiction" (postTaxRatesTaxRateRequestBodyJurisdiction obj) : (Data.Aeson..=) "metadata" (postTaxRatesTaxRateRequestBodyMetadata obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "active" (postTaxRatesTaxRateRequestBodyActive obj) GHC.Base.<> ((Data.Aeson..=) "description" (postTaxRatesTaxRateRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "display_name" (postTaxRatesTaxRateRequestBodyDisplayName obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postTaxRatesTaxRateRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "jurisdiction" (postTaxRatesTaxRateRequestBodyJurisdiction obj) GHC.Base.<> (Data.Aeson..=) "metadata" (postTaxRatesTaxRateRequestBodyMetadata obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostTaxRatesTaxRateRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTaxRatesTaxRateRequestBody" (\obj -> (((((GHC.Base.pure PostTaxRatesTaxRateRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "display_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "jurisdiction")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata"))

data PostTaxRatesTaxRateResponse
    = PostTaxRatesTaxRateResponseError GHC.Base.String
    | PostTaxRatesTaxRateResponse200 TaxRate
    | PostTaxRatesTaxRateResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
