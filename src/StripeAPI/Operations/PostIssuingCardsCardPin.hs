{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostIssuingCardsCardPin where

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
-- POST /v1/issuing/cards/{card}/pin
postIssuingCardsCardPin :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                         StripeAPI.Common.SecurityScheme s) =>
                           StripeAPI.Common.Configuration s ->
                           GHC.Base.String ->
                           PostIssuingCardsCardPinRequestBody ->
                           m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                 (Network.HTTP.Client.Types.Response PostIssuingCardsCardPinResponse))
postIssuingCardsCardPin config
                        card
                        body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostIssuingCardsCardPinResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostIssuingCardsCardPinResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                       Issuing'cardPin)
                                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostIssuingCardsCardPinResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/issuing/cards/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel card)) GHC.Base.++ "/pin"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postIssuingCardsCardPinRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                            StripeAPI.Common.SecurityScheme s) =>
                              StripeAPI.Common.Configuration s ->
                              GHC.Base.String ->
                              PostIssuingCardsCardPinRequestBody ->
                              m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                    (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postIssuingCardsCardPinRaw config
                           card
                           body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/issuing/cards/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel card)) GHC.Base.++ "/pin"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postIssuingCardsCardPinM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                          StripeAPI.Common.SecurityScheme s) =>
                            GHC.Base.String ->
                            PostIssuingCardsCardPinRequestBody ->
                            Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                               m
                                                               (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                   (Network.HTTP.Client.Types.Response PostIssuingCardsCardPinResponse))
postIssuingCardsCardPinM card
                         body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostIssuingCardsCardPinResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostIssuingCardsCardPinResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                        Issuing'cardPin)
                                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostIssuingCardsCardPinResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/issuing/cards/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel card)) GHC.Base.++ "/pin"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postIssuingCardsCardPinRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                             StripeAPI.Common.SecurityScheme s) =>
                               GHC.Base.String ->
                               PostIssuingCardsCardPinRequestBody ->
                               Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                  m
                                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postIssuingCardsCardPinRawM card
                            body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/issuing/cards/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel card)) GHC.Base.++ "/pin"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostIssuingCardsCardPinRequestBody
    = PostIssuingCardsCardPinRequestBody {postIssuingCardsCardPinRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                          postIssuingCardsCardPinRequestBodyPin :: GHC.Base.String,
                                          postIssuingCardsCardPinRequestBodyVerification :: PostIssuingCardsCardPinRequestBodyVerification'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostIssuingCardsCardPinRequestBodyVerification'
    = PostIssuingCardsCardPinRequestBodyVerification' {postIssuingCardsCardPinRequestBodyVerification'Id :: GHC.Base.String,
                                                       postIssuingCardsCardPinRequestBodyVerification'OneTimeCode :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostIssuingCardsCardPinRequestBodyVerification'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "id" (postIssuingCardsCardPinRequestBodyVerification'Id obj) : (Data.Aeson..=) "one_time_code" (postIssuingCardsCardPinRequestBodyVerification'OneTimeCode obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "id" (postIssuingCardsCardPinRequestBodyVerification'Id obj) GHC.Base.<> (Data.Aeson..=) "one_time_code" (postIssuingCardsCardPinRequestBodyVerification'OneTimeCode obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostIssuingCardsCardPinRequestBodyVerification'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostIssuingCardsCardPinRequestBodyVerification'" (\obj -> (GHC.Base.pure PostIssuingCardsCardPinRequestBodyVerification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "one_time_code"))
instance Data.Aeson.ToJSON PostIssuingCardsCardPinRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "expand" (postIssuingCardsCardPinRequestBodyExpand obj) : (Data.Aeson..=) "pin" (postIssuingCardsCardPinRequestBodyPin obj) : (Data.Aeson..=) "verification" (postIssuingCardsCardPinRequestBodyVerification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "expand" (postIssuingCardsCardPinRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "pin" (postIssuingCardsCardPinRequestBodyPin obj) GHC.Base.<> (Data.Aeson..=) "verification" (postIssuingCardsCardPinRequestBodyVerification obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostIssuingCardsCardPinRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostIssuingCardsCardPinRequestBody" (\obj -> ((GHC.Base.pure PostIssuingCardsCardPinRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pin")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verification"))

data PostIssuingCardsCardPinResponse
    = PostIssuingCardsCardPinResponseError GHC.Base.String
    | PostIssuingCardsCardPinResponse200 Issuing'cardPin
    | PostIssuingCardsCardPinResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
