{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.GetBalanceTransactions where

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
-- GET /v1/balance_transactions
getBalanceTransactions :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          StripeAPI.Common.Configuration s ->
                          GHC.Maybe.Maybe GHC.Base.String ->
                          GHC.Maybe.Maybe GHC.Base.String ->
                          GHC.Maybe.Maybe GHC.Base.String ->
                          GHC.Maybe.Maybe GHC.Base.String ->
                          GHC.Maybe.Maybe GHC.Base.String ->
                          GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                          GHC.Maybe.Maybe GHC.Base.String ->
                          GHC.Maybe.Maybe GHC.Base.String ->
                          GHC.Maybe.Maybe GHC.Base.String ->
                          GHC.Maybe.Maybe GHC.Base.String ->
                          GetBalanceTransactionsRequestBody ->
                          m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                (Network.HTTP.Client.Types.Response GetBalanceTransactionsResponse))
getBalanceTransactions config
                       availableOn
                       created
                       currency
                       endingBefore
                       expand
                       limit
                       payout
                       source
                       startingAfter
                       type'
                       body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetBalanceTransactionsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetBalanceTransactionsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                    GetBalanceTransactionsResponseBody200)
                                                                                                                                                                                              | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetBalanceTransactionsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/balance_transactions") ((Data.Text.pack "available_on",
                                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> availableOn) : ((Data.Text.pack "created",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> created) : ((Data.Text.pack "currency",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> currency) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "payout",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            StripeAPI.Common.stringifyModel Data.Functor.<$> payout) : ((Data.Text.pack "source",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> source) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : ((Data.Text.pack "type",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> type') : [])))))))))) body StripeAPI.Common.RequestBodyEncodingFormData)
getBalanceTransactionsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             StripeAPI.Common.Configuration s ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GetBalanceTransactionsRequestBody ->
                             m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                   (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getBalanceTransactionsRaw config
                          availableOn
                          created
                          currency
                          endingBefore
                          expand
                          limit
                          payout
                          source
                          startingAfter
                          type'
                          body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/balance_transactions") ((Data.Text.pack "available_on",
                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> availableOn) : ((Data.Text.pack "created",
                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> created) : ((Data.Text.pack "currency",
                                                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> currency) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "payout",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> payout) : ((Data.Text.pack "source",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> source) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : ((Data.Text.pack "type",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> type') : [])))))))))) body StripeAPI.Common.RequestBodyEncodingFormData)
getBalanceTransactionsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                         StripeAPI.Common.SecurityScheme s) =>
                           GHC.Maybe.Maybe GHC.Base.String ->
                           GHC.Maybe.Maybe GHC.Base.String ->
                           GHC.Maybe.Maybe GHC.Base.String ->
                           GHC.Maybe.Maybe GHC.Base.String ->
                           GHC.Maybe.Maybe GHC.Base.String ->
                           GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                           GHC.Maybe.Maybe GHC.Base.String ->
                           GHC.Maybe.Maybe GHC.Base.String ->
                           GHC.Maybe.Maybe GHC.Base.String ->
                           GHC.Maybe.Maybe GHC.Base.String ->
                           GetBalanceTransactionsRequestBody ->
                           Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                              m
                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                  (Network.HTTP.Client.Types.Response GetBalanceTransactionsResponse))
getBalanceTransactionsM availableOn
                        created
                        currency
                        endingBefore
                        expand
                        limit
                        payout
                        source
                        startingAfter
                        type'
                        body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetBalanceTransactionsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetBalanceTransactionsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                     GetBalanceTransactionsResponseBody200)
                                                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetBalanceTransactionsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/balance_transactions") ((Data.Text.pack "available_on",
                                                                                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> availableOn) : ((Data.Text.pack "created",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> created) : ((Data.Text.pack "currency",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> currency) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "payout",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> payout) : ((Data.Text.pack "source",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> source) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : ((Data.Text.pack "type",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> type') : [])))))))))) body StripeAPI.Common.RequestBodyEncodingFormData)
getBalanceTransactionsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                            StripeAPI.Common.SecurityScheme s) =>
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GetBalanceTransactionsRequestBody ->
                              Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                 m
                                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getBalanceTransactionsRawM availableOn
                           created
                           currency
                           endingBefore
                           expand
                           limit
                           payout
                           source
                           startingAfter
                           type'
                           body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/balance_transactions") ((Data.Text.pack "available_on",
                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> availableOn) : ((Data.Text.pack "created",
                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> created) : ((Data.Text.pack "currency",
                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> currency) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "payout",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> payout) : ((Data.Text.pack "source",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> source) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : ((Data.Text.pack "type",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> type') : [])))))))))) body StripeAPI.Common.RequestBodyEncodingFormData)
data GetBalanceTransactionsRequestBody
    = GetBalanceTransactionsRequestBody {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetBalanceTransactionsRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetBalanceTransactionsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetBalanceTransactionsRequestBody" (\obj -> GHC.Base.pure GetBalanceTransactionsRequestBody)

data GetBalanceTransactionsResponse
    = GetBalanceTransactionsResponseError GHC.Base.String
    | GetBalanceTransactionsResponse200 GetBalanceTransactionsResponseBody200
    | GetBalanceTransactionsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetBalanceTransactionsResponseBody200
    = GetBalanceTransactionsResponseBody200 {getBalanceTransactionsResponseBody200Data :: ([] BalanceTransaction),
                                             getBalanceTransactionsResponseBody200HasMore :: GHC.Types.Bool,
                                             getBalanceTransactionsResponseBody200Object :: GetBalanceTransactionsResponseBody200Object',
                                             getBalanceTransactionsResponseBody200Url :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetBalanceTransactionsResponseBody200Object'
    = GetBalanceTransactionsResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetBalanceTransactionsResponseBody200Object'EnumTyped GHC.Base.String
    | GetBalanceTransactionsResponseBody200Object'EnumStringList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetBalanceTransactionsResponseBody200Object'
    where toJSON (GetBalanceTransactionsResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetBalanceTransactionsResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetBalanceTransactionsResponseBody200Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"
instance Data.Aeson.FromJSON GetBalanceTransactionsResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
                                          then GetBalanceTransactionsResponseBody200Object'EnumStringList
                                          else GetBalanceTransactionsResponseBody200Object'EnumOther val)
instance Data.Aeson.ToJSON GetBalanceTransactionsResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getBalanceTransactionsResponseBody200Data obj) : (Data.Aeson..=) "has_more" (getBalanceTransactionsResponseBody200HasMore obj) : (Data.Aeson..=) "object" (getBalanceTransactionsResponseBody200Object obj) : (Data.Aeson..=) "url" (getBalanceTransactionsResponseBody200Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getBalanceTransactionsResponseBody200Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (getBalanceTransactionsResponseBody200HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (getBalanceTransactionsResponseBody200Object obj) GHC.Base.<> (Data.Aeson..=) "url" (getBalanceTransactionsResponseBody200Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetBalanceTransactionsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetBalanceTransactionsResponseBody200" (\obj -> (((GHC.Base.pure GetBalanceTransactionsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
