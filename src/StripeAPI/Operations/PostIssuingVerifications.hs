{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postIssuingVerifications
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

-- | > POST /v1/issuing/verifications
-- 
-- \<p>Some actions (eg: updating a PIN) need confirmation from the cardholder\<\/p>
postIssuingVerifications :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> PostIssuingVerificationsRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostIssuingVerificationsResponse)) -- ^ Monad containing the result of the operation
postIssuingVerifications config
                         body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostIssuingVerificationsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostIssuingVerificationsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                          Issuing'verification)
                                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostIssuingVerificationsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/issuing/verifications") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/issuing/verifications
-- 
-- The same as 'postIssuingVerifications' but returns the raw 'Data.ByteString.Char8.ByteString'
postIssuingVerificationsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                             StripeAPI.Common.SecurityScheme s) =>
                               StripeAPI.Common.Configuration s ->
                               PostIssuingVerificationsRequestBody ->
                               m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postIssuingVerificationsRaw config
                            body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/issuing/verifications") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/issuing/verifications
-- 
-- Monadic version of 'postIssuingVerifications' (use with 'StripeAPI.Common.runWithConfiguration')
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
-- | > POST /v1/issuing/verifications
-- 
-- Monadic version of 'postIssuingVerificationsRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postIssuingVerificationsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                PostIssuingVerificationsRequestBody ->
                                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                   m
                                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postIssuingVerificationsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/issuing/verifications") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postIssuingVerificationsRequestBody
-- 
-- 
data PostIssuingVerificationsRequestBody = PostIssuingVerificationsRequestBody {
  -- | card: The \`Card\` for which a verification is requested
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postIssuingVerificationsRequestBodyCard :: GHC.Base.String
  -- | expand: Specifies which fields in the response should be expanded.
  , postIssuingVerificationsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | scope: The scope of the verification (one of \`card_pin_retrieve\` or \`card_pin_update\`)
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postIssuingVerificationsRequestBodyScope :: PostIssuingVerificationsRequestBodyScope'
  -- | verification_method: The method used to send the cardholder the verification (one of \`email\` or \`sms\`)
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postIssuingVerificationsRequestBodyVerificationMethod :: PostIssuingVerificationsRequestBodyVerificationMethod'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostIssuingVerificationsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "card" (postIssuingVerificationsRequestBodyCard obj) : (Data.Aeson..=) "expand" (postIssuingVerificationsRequestBodyExpand obj) : (Data.Aeson..=) "scope" (postIssuingVerificationsRequestBodyScope obj) : (Data.Aeson..=) "verification_method" (postIssuingVerificationsRequestBodyVerificationMethod obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "card" (postIssuingVerificationsRequestBodyCard obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postIssuingVerificationsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "scope" (postIssuingVerificationsRequestBodyScope obj) GHC.Base.<> (Data.Aeson..=) "verification_method" (postIssuingVerificationsRequestBodyVerificationMethod obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostIssuingVerificationsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostIssuingVerificationsRequestBody" (\obj -> (((GHC.Base.pure PostIssuingVerificationsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "scope")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verification_method"))
-- | Defines the enum schema postIssuingVerificationsRequestBodyScope\'
-- 
-- The scope of the verification (one of \`card_pin_retrieve\` or \`card_pin_update\`)
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
-- | Defines the enum schema postIssuingVerificationsRequestBodyVerification_method\'
-- 
-- The method used to send the cardholder the verification (one of \`email\` or \`sms\`)
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
-- | Represents a response of the operation 'postIssuingVerifications'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostIssuingVerificationsResponseError' is used.
data PostIssuingVerificationsResponse =                       
   PostIssuingVerificationsResponseError GHC.Base.String      -- ^ Means either no matching case available or a parse error
  | PostIssuingVerificationsResponse200 Issuing'verification  -- ^ Successful response.
  | PostIssuingVerificationsResponseDefault Error             -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
