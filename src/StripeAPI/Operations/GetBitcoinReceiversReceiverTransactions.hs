{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.GetBitcoinReceiversReceiverTransactions where

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
-- GET /v1/bitcoin/receivers/{receiver}/transactions
getBitcoinReceiversReceiverTransactions :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                         StripeAPI.Common.SecurityScheme s) =>
                                           StripeAPI.Common.Configuration s ->
                                           GHC.Maybe.Maybe GHC.Base.String ->
                                           GHC.Maybe.Maybe GHC.Base.String ->
                                           GHC.Maybe.Maybe GHC.Base.String ->
                                           GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                                           GHC.Base.String ->
                                           GHC.Maybe.Maybe GHC.Base.String ->
                                           GetBitcoinReceiversReceiverTransactionsRequestBody ->
                                           m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                 (Network.HTTP.Client.Types.Response GetBitcoinReceiversReceiverTransactionsResponse))
getBitcoinReceiversReceiverTransactions config
                                        customer
                                        endingBefore
                                        expand
                                        limit
                                        receiver
                                        startingAfter
                                        body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetBitcoinReceiversReceiverTransactionsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetBitcoinReceiversReceiverTransactionsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       GetBitcoinReceiversReceiverTransactionsResponseBody200)
                                                                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetBitcoinReceiversReceiverTransactionsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/bitcoin/receivers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel receiver)) GHC.Base.++ "/transactions"))) ((Data.Text.pack "customer",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> customer) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : []))))) body StripeAPI.Common.RequestBodyEncodingFormData)
getBitcoinReceiversReceiverTransactionsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                            StripeAPI.Common.SecurityScheme s) =>
                                              StripeAPI.Common.Configuration s ->
                                              GHC.Maybe.Maybe GHC.Base.String ->
                                              GHC.Maybe.Maybe GHC.Base.String ->
                                              GHC.Maybe.Maybe GHC.Base.String ->
                                              GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                                              GHC.Base.String ->
                                              GHC.Maybe.Maybe GHC.Base.String ->
                                              GetBitcoinReceiversReceiverTransactionsRequestBody ->
                                              m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                    (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getBitcoinReceiversReceiverTransactionsRaw config
                                           customer
                                           endingBefore
                                           expand
                                           limit
                                           receiver
                                           startingAfter
                                           body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/bitcoin/receivers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel receiver)) GHC.Base.++ "/transactions"))) ((Data.Text.pack "customer",
                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> customer) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : []))))) body StripeAPI.Common.RequestBodyEncodingFormData)
getBitcoinReceiversReceiverTransactionsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                          StripeAPI.Common.SecurityScheme s) =>
                                            GHC.Maybe.Maybe GHC.Base.String ->
                                            GHC.Maybe.Maybe GHC.Base.String ->
                                            GHC.Maybe.Maybe GHC.Base.String ->
                                            GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                                            GHC.Base.String ->
                                            GHC.Maybe.Maybe GHC.Base.String ->
                                            GetBitcoinReceiversReceiverTransactionsRequestBody ->
                                            Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                               m
                                                                               (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                   (Network.HTTP.Client.Types.Response GetBitcoinReceiversReceiverTransactionsResponse))
getBitcoinReceiversReceiverTransactionsM customer
                                         endingBefore
                                         expand
                                         limit
                                         receiver
                                         startingAfter
                                         body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetBitcoinReceiversReceiverTransactionsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetBitcoinReceiversReceiverTransactionsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        GetBitcoinReceiversReceiverTransactionsResponseBody200)
                                                                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetBitcoinReceiversReceiverTransactionsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/bitcoin/receivers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel receiver)) GHC.Base.++ "/transactions"))) ((Data.Text.pack "customer",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> customer) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : []))))) body StripeAPI.Common.RequestBodyEncodingFormData)
getBitcoinReceiversReceiverTransactionsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                             StripeAPI.Common.SecurityScheme s) =>
                                               GHC.Maybe.Maybe GHC.Base.String ->
                                               GHC.Maybe.Maybe GHC.Base.String ->
                                               GHC.Maybe.Maybe GHC.Base.String ->
                                               GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                                               GHC.Base.String ->
                                               GHC.Maybe.Maybe GHC.Base.String ->
                                               GetBitcoinReceiversReceiverTransactionsRequestBody ->
                                               Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                  m
                                                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getBitcoinReceiversReceiverTransactionsRawM customer
                                            endingBefore
                                            expand
                                            limit
                                            receiver
                                            startingAfter
                                            body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/bitcoin/receivers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel receiver)) GHC.Base.++ "/transactions"))) ((Data.Text.pack "customer",
                                                                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> customer) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : []))))) body StripeAPI.Common.RequestBodyEncodingFormData)
data GetBitcoinReceiversReceiverTransactionsRequestBody
    = GetBitcoinReceiversReceiverTransactionsRequestBody {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetBitcoinReceiversReceiverTransactionsRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetBitcoinReceiversReceiverTransactionsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetBitcoinReceiversReceiverTransactionsRequestBody" (\obj -> GHC.Base.pure GetBitcoinReceiversReceiverTransactionsRequestBody)

data GetBitcoinReceiversReceiverTransactionsResponse
    = GetBitcoinReceiversReceiverTransactionsResponseError GHC.Base.String
    | GetBitcoinReceiversReceiverTransactionsResponse200 GetBitcoinReceiversReceiverTransactionsResponseBody200
    | GetBitcoinReceiversReceiverTransactionsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetBitcoinReceiversReceiverTransactionsResponseBody200
    = GetBitcoinReceiversReceiverTransactionsResponseBody200 {getBitcoinReceiversReceiverTransactionsResponseBody200Data :: ([] BitcoinTransaction),
                                                              getBitcoinReceiversReceiverTransactionsResponseBody200HasMore :: GHC.Types.Bool,
                                                              getBitcoinReceiversReceiverTransactionsResponseBody200Object :: GetBitcoinReceiversReceiverTransactionsResponseBody200Object',
                                                              getBitcoinReceiversReceiverTransactionsResponseBody200Url :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetBitcoinReceiversReceiverTransactionsResponseBody200Object'
    = GetBitcoinReceiversReceiverTransactionsResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetBitcoinReceiversReceiverTransactionsResponseBody200Object'EnumTyped GHC.Base.String
    | GetBitcoinReceiversReceiverTransactionsResponseBody200Object'EnumStringList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetBitcoinReceiversReceiverTransactionsResponseBody200Object'
    where toJSON (GetBitcoinReceiversReceiverTransactionsResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetBitcoinReceiversReceiverTransactionsResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetBitcoinReceiversReceiverTransactionsResponseBody200Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"
instance Data.Aeson.FromJSON GetBitcoinReceiversReceiverTransactionsResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
                                          then GetBitcoinReceiversReceiverTransactionsResponseBody200Object'EnumStringList
                                          else GetBitcoinReceiversReceiverTransactionsResponseBody200Object'EnumOther val)
instance Data.Aeson.ToJSON GetBitcoinReceiversReceiverTransactionsResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getBitcoinReceiversReceiverTransactionsResponseBody200Data obj) : (Data.Aeson..=) "has_more" (getBitcoinReceiversReceiverTransactionsResponseBody200HasMore obj) : (Data.Aeson..=) "object" (getBitcoinReceiversReceiverTransactionsResponseBody200Object obj) : (Data.Aeson..=) "url" (getBitcoinReceiversReceiverTransactionsResponseBody200Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getBitcoinReceiversReceiverTransactionsResponseBody200Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (getBitcoinReceiversReceiverTransactionsResponseBody200HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (getBitcoinReceiversReceiverTransactionsResponseBody200Object obj) GHC.Base.<> (Data.Aeson..=) "url" (getBitcoinReceiversReceiverTransactionsResponseBody200Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetBitcoinReceiversReceiverTransactionsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetBitcoinReceiversReceiverTransactionsResponseBody200" (\obj -> (((GHC.Base.pure GetBitcoinReceiversReceiverTransactionsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
