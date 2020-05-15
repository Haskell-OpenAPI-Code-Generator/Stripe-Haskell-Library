{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostPlansPlan where

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
-- POST /v1/plans/{plan}
postPlansPlan :: forall m s . (StripeAPI.Common.MonadHTTP m,
                               StripeAPI.Common.SecurityScheme s) =>
                 StripeAPI.Common.Configuration s ->
                 GHC.Base.String ->
                 PostPlansPlanRequestBody ->
                 m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                       (Network.HTTP.Client.Types.Response PostPlansPlanResponse))
postPlansPlan config
              plan
              body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostPlansPlanResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPlansPlanResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                         Plan)
                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPlansPlanResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/plans/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel plan)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postPlansPlanRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                  StripeAPI.Common.SecurityScheme s) =>
                    StripeAPI.Common.Configuration s ->
                    GHC.Base.String ->
                    PostPlansPlanRequestBody ->
                    m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPlansPlanRaw config
                 plan
                 body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/plans/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel plan)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postPlansPlanM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                StripeAPI.Common.SecurityScheme s) =>
                  GHC.Base.String ->
                  PostPlansPlanRequestBody ->
                  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                     m
                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                         (Network.HTTP.Client.Types.Response PostPlansPlanResponse))
postPlansPlanM plan
               body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostPlansPlanResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPlansPlanResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                          Plan)
                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPlansPlanResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/plans/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel plan)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postPlansPlanRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                   StripeAPI.Common.SecurityScheme s) =>
                     GHC.Base.String ->
                     PostPlansPlanRequestBody ->
                     Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                        m
                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPlansPlanRawM plan
                  body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/plans/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel plan)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostPlansPlanRequestBody
    = PostPlansPlanRequestBody {postPlansPlanRequestBodyActive :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                postPlansPlanRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                postPlansPlanRequestBodyMetadata :: (GHC.Maybe.Maybe PostPlansPlanRequestBodyMetadata'),
                                postPlansPlanRequestBodyNickname :: (GHC.Maybe.Maybe GHC.Base.String),
                                postPlansPlanRequestBodyProduct :: (GHC.Maybe.Maybe GHC.Base.String),
                                postPlansPlanRequestBodyTrialPeriodDays :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostPlansPlanRequestBodyMetadata'
    = PostPlansPlanRequestBodyMetadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPlansPlanRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostPlansPlanRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPlansPlanRequestBodyMetadata'" (\obj -> GHC.Base.pure PostPlansPlanRequestBodyMetadata')
instance Data.Aeson.ToJSON PostPlansPlanRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "active" (postPlansPlanRequestBodyActive obj) : (Data.Aeson..=) "expand" (postPlansPlanRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postPlansPlanRequestBodyMetadata obj) : (Data.Aeson..=) "nickname" (postPlansPlanRequestBodyNickname obj) : (Data.Aeson..=) "product" (postPlansPlanRequestBodyProduct obj) : (Data.Aeson..=) "trial_period_days" (postPlansPlanRequestBodyTrialPeriodDays obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "active" (postPlansPlanRequestBodyActive obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postPlansPlanRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postPlansPlanRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "nickname" (postPlansPlanRequestBodyNickname obj) GHC.Base.<> ((Data.Aeson..=) "product" (postPlansPlanRequestBodyProduct obj) GHC.Base.<> (Data.Aeson..=) "trial_period_days" (postPlansPlanRequestBodyTrialPeriodDays obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPlansPlanRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPlansPlanRequestBody" (\obj -> (((((GHC.Base.pure PostPlansPlanRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "nickname")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "product")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_period_days"))

data PostPlansPlanResponse
    = PostPlansPlanResponseError GHC.Base.String
    | PostPlansPlanResponse200 Plan
    | PostPlansPlanResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
