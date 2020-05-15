{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostIssuingVerifications where

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
-- POST /v1/issuing/verifications
postIssuingVerifications :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                          StripeAPI.Common.SecurityScheme s) =>
                            StripeAPI.Common.Configuration s ->
                            PostIssuingVerificationsRequestBody ->
                            m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                  (Network.HTTP.Client.Types.Response PostIssuingVerificationsResponse))
postIssuingVerifications config
                         body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostIssuingVerificationsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostIssuingVerificationsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                          Issuing'verification)
                                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostIssuingVerificationsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/issuing/verifications") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postIssuingVerificationsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                             StripeAPI.Common.SecurityScheme s) =>
                               StripeAPI.Common.Configuration s ->
                               PostIssuingVerificationsRequestBody ->
                               m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postIssuingVerificationsRaw config
                            body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/issuing/verifications") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postIssuingVerificationsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             PostIssuingVerificationsRequestBody ->
                             Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                m
                                                                (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                    (Network.HTTP.Client.Types.Response PostIssuingVerificationsResponse))
postIssuingVerificationsM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostIssuingVerificationsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostIssuingVerificationsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                           Issuing'verification)
                                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostIssuingVerificationsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/issuing/verifications") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postIssuingVerificationsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                PostIssuingVerificationsRequestBody ->
                                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                   m
                                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postIssuingVerificationsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/issuing/verifications") [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostIssuingVerificationsRequestBody
    = PostIssuingVerificationsRequestBody {postIssuingVerificationsRequestBodyCard :: GHC.Base.String,
                                           postIssuingVerificationsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                           postIssuingVerificationsRequestBodyScope :: PostIssuingVerificationsRequestBodyScope',
                                           postIssuingVerificationsRequestBodyVerificationMethod :: PostIssuingVerificationsRequestBodyVerificationMethod'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostIssuingVerificationsRequestBodyScope'
    = PostIssuingVerificationsRequestBodyScope'EnumOther Data.Aeson.Types.Internal.Value
    | PostIssuingVerificationsRequestBodyScope'EnumTyped GHC.Base.String
    | PostIssuingVerificationsRequestBodyScope'EnumStringCardPinRetrieve
    | PostIssuingVerificationsRequestBodyScope'EnumStringCardPinUpdate
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostIssuingVerificationsRequestBodyScope'
    where toJSON (PostIssuingVerificationsRequestBodyScope'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostIssuingVerificationsRequestBodyScope'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostIssuingVerificationsRequestBodyScope'EnumStringCardPinRetrieve) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_pin_retrieve"
          toJSON (PostIssuingVerificationsRequestBodyScope'EnumStringCardPinUpdate) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_pin_update"
instance Data.Aeson.FromJSON PostIssuingVerificationsRequestBodyScope'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_pin_retrieve")
                                          then PostIssuingVerificationsRequestBodyScope'EnumStringCardPinRetrieve
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_pin_update")
                                                then PostIssuingVerificationsRequestBodyScope'EnumStringCardPinUpdate
                                                else PostIssuingVerificationsRequestBodyScope'EnumOther val)
data PostIssuingVerificationsRequestBodyVerificationMethod'
    = PostIssuingVerificationsRequestBodyVerificationMethod'EnumOther Data.Aeson.Types.Internal.Value
    | PostIssuingVerificationsRequestBodyVerificationMethod'EnumTyped GHC.Base.String
    | PostIssuingVerificationsRequestBodyVerificationMethod'EnumStringEmail
    | PostIssuingVerificationsRequestBodyVerificationMethod'EnumStringSms
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostIssuingVerificationsRequestBodyVerificationMethod'
    where toJSON (PostIssuingVerificationsRequestBodyVerificationMethod'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostIssuingVerificationsRequestBodyVerificationMethod'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostIssuingVerificationsRequestBodyVerificationMethod'EnumStringEmail) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "email"
          toJSON (PostIssuingVerificationsRequestBodyVerificationMethod'EnumStringSms) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sms"
instance Data.Aeson.FromJSON PostIssuingVerificationsRequestBodyVerificationMethod'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "email")
                                          then PostIssuingVerificationsRequestBodyVerificationMethod'EnumStringEmail
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sms")
                                                then PostIssuingVerificationsRequestBodyVerificationMethod'EnumStringSms
                                                else PostIssuingVerificationsRequestBodyVerificationMethod'EnumOther val)
instance Data.Aeson.ToJSON PostIssuingVerificationsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "card" (postIssuingVerificationsRequestBodyCard obj) : (Data.Aeson..=) "expand" (postIssuingVerificationsRequestBodyExpand obj) : (Data.Aeson..=) "scope" (postIssuingVerificationsRequestBodyScope obj) : (Data.Aeson..=) "verification_method" (postIssuingVerificationsRequestBodyVerificationMethod obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "card" (postIssuingVerificationsRequestBodyCard obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postIssuingVerificationsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "scope" (postIssuingVerificationsRequestBodyScope obj) GHC.Base.<> (Data.Aeson..=) "verification_method" (postIssuingVerificationsRequestBodyVerificationMethod obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostIssuingVerificationsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostIssuingVerificationsRequestBody" (\obj -> (((GHC.Base.pure PostIssuingVerificationsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "scope")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verification_method"))

data PostIssuingVerificationsResponse
    = PostIssuingVerificationsResponseError GHC.Base.String
    | PostIssuingVerificationsResponse200 Issuing'verification
    | PostIssuingVerificationsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
