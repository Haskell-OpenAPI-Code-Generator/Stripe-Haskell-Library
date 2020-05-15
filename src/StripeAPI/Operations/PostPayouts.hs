{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostPayouts where

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
-- POST /v1/payouts
postPayouts :: forall m s . (StripeAPI.Common.MonadHTTP m,
                             StripeAPI.Common.SecurityScheme s) =>
               StripeAPI.Common.Configuration s ->
               PostPayoutsRequestBody ->
               m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                     (Network.HTTP.Client.Types.Response PostPayoutsResponse))
postPayouts config
            body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostPayoutsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPayoutsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                   Payout)
                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPayoutsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/payouts") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postPayoutsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                StripeAPI.Common.SecurityScheme s) =>
                  StripeAPI.Common.Configuration s ->
                  PostPayoutsRequestBody ->
                  m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPayoutsRaw config
               body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/payouts") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postPayoutsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                              StripeAPI.Common.SecurityScheme s) =>
                PostPayoutsRequestBody ->
                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                   m
                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                       (Network.HTTP.Client.Types.Response PostPayoutsResponse))
postPayoutsM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostPayoutsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPayoutsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                    Payout)
                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPayoutsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/payouts") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postPayoutsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                 StripeAPI.Common.SecurityScheme s) =>
                   PostPayoutsRequestBody ->
                   Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                      m
                                                      (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPayoutsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/payouts") [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostPayoutsRequestBody
    = PostPayoutsRequestBody {postPayoutsRequestBodyAmount :: GHC.Integer.Type.Integer,
                              postPayoutsRequestBodyCurrency :: GHC.Base.String,
                              postPayoutsRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String),
                              postPayoutsRequestBodyDestination :: (GHC.Maybe.Maybe GHC.Base.String),
                              postPayoutsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                              postPayoutsRequestBodyMetadata :: (GHC.Maybe.Maybe PostPayoutsRequestBodyMetadata'),
                              postPayoutsRequestBodyMethod :: (GHC.Maybe.Maybe PostPayoutsRequestBodyMethod'),
                              postPayoutsRequestBodySourceType :: (GHC.Maybe.Maybe PostPayoutsRequestBodySourceType'),
                              postPayoutsRequestBodyStatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostPayoutsRequestBodyMetadata'
    = PostPayoutsRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPayoutsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostPayoutsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPayoutsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostPayoutsRequestBodyMetadata')
data PostPayoutsRequestBodyMethod'
    = PostPayoutsRequestBodyMethod'EnumOther Data.Aeson.Types.Internal.Value
    | PostPayoutsRequestBodyMethod'EnumTyped GHC.Base.String
    | PostPayoutsRequestBodyMethod'EnumStringInstant
    | PostPayoutsRequestBodyMethod'EnumStringStandard
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPayoutsRequestBodyMethod'
    where toJSON (PostPayoutsRequestBodyMethod'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPayoutsRequestBodyMethod'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPayoutsRequestBodyMethod'EnumStringInstant) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "instant"
          toJSON (PostPayoutsRequestBodyMethod'EnumStringStandard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard"
instance Data.Aeson.FromJSON PostPayoutsRequestBodyMethod'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "instant")
                                          then PostPayoutsRequestBodyMethod'EnumStringInstant
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard")
                                                then PostPayoutsRequestBodyMethod'EnumStringStandard
                                                else PostPayoutsRequestBodyMethod'EnumOther val)
data PostPayoutsRequestBodySourceType'
    = PostPayoutsRequestBodySourceType'EnumOther Data.Aeson.Types.Internal.Value
    | PostPayoutsRequestBodySourceType'EnumTyped GHC.Base.String
    | PostPayoutsRequestBodySourceType'EnumStringBankAccount
    | PostPayoutsRequestBodySourceType'EnumStringCard
    | PostPayoutsRequestBodySourceType'EnumStringFpx
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPayoutsRequestBodySourceType'
    where toJSON (PostPayoutsRequestBodySourceType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPayoutsRequestBodySourceType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPayoutsRequestBodySourceType'EnumStringBankAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account"
          toJSON (PostPayoutsRequestBodySourceType'EnumStringCard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card"
          toJSON (PostPayoutsRequestBodySourceType'EnumStringFpx) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fpx"
instance Data.Aeson.FromJSON PostPayoutsRequestBodySourceType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account")
                                          then PostPayoutsRequestBodySourceType'EnumStringBankAccount
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card")
                                                then PostPayoutsRequestBodySourceType'EnumStringCard
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fpx")
                                                      then PostPayoutsRequestBodySourceType'EnumStringFpx
                                                      else PostPayoutsRequestBodySourceType'EnumOther val)
instance Data.Aeson.ToJSON PostPayoutsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postPayoutsRequestBodyAmount obj) : (Data.Aeson..=) "currency" (postPayoutsRequestBodyCurrency obj) : (Data.Aeson..=) "description" (postPayoutsRequestBodyDescription obj) : (Data.Aeson..=) "destination" (postPayoutsRequestBodyDestination obj) : (Data.Aeson..=) "expand" (postPayoutsRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postPayoutsRequestBodyMetadata obj) : (Data.Aeson..=) "method" (postPayoutsRequestBodyMethod obj) : (Data.Aeson..=) "source_type" (postPayoutsRequestBodySourceType obj) : (Data.Aeson..=) "statement_descriptor" (postPayoutsRequestBodyStatementDescriptor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postPayoutsRequestBodyAmount obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postPayoutsRequestBodyCurrency obj) GHC.Base.<> ((Data.Aeson..=) "description" (postPayoutsRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "destination" (postPayoutsRequestBodyDestination obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postPayoutsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postPayoutsRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "method" (postPayoutsRequestBodyMethod obj) GHC.Base.<> ((Data.Aeson..=) "source_type" (postPayoutsRequestBodySourceType obj) GHC.Base.<> (Data.Aeson..=) "statement_descriptor" (postPayoutsRequestBodyStatementDescriptor obj)))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPayoutsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPayoutsRequestBody" (\obj -> ((((((((GHC.Base.pure PostPayoutsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "destination")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor"))

data PostPayoutsResponse
    = PostPayoutsResponseError GHC.Base.String
    | PostPayoutsResponse200 Payout
    | PostPayoutsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
