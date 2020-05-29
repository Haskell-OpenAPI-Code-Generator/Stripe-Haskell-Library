{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postIssuingCardsCardPin
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

-- | > POST /v1/issuing/cards/{card}/pin
-- 
-- \<p>Updates the PIN for a card, subject to cardholder verification. See \<a href=\"\/docs\/issuing\/pin_management\">Retrieve and update cardholder PIN\<\/a>\<\/p>
postIssuingCardsCardPin :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text                                                                                                             -- ^ card | Constraints: Maximum length of 5000
  -> PostIssuingCardsCardPinRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostIssuingCardsCardPinResponse)) -- ^ Monad containing the result of the operation
postIssuingCardsCardPin config
                        card
                        body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostIssuingCardsCardPinResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostIssuingCardsCardPinResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                       Issuing'cardPin)
                                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostIssuingCardsCardPinResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/issuing/cards/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel card)) GHC.Base.++ "/pin"))) [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/issuing/cards/{card}/pin
-- 
-- The same as 'postIssuingCardsCardPin' but returns the raw 'Data.ByteString.Char8.ByteString'
postIssuingCardsCardPinRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                            StripeAPI.Common.SecurityScheme s) =>
                              StripeAPI.Common.Configuration s ->
                              Data.Text.Internal.Text ->
                              PostIssuingCardsCardPinRequestBody ->
                              m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                    (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postIssuingCardsCardPinRaw config
                           card
                           body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/issuing/cards/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel card)) GHC.Base.++ "/pin"))) [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/issuing/cards/{card}/pin
-- 
-- Monadic version of 'postIssuingCardsCardPin' (use with 'StripeAPI.Common.runWithConfiguration')
postIssuingCardsCardPinM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                          StripeAPI.Common.SecurityScheme s) =>
                            Data.Text.Internal.Text ->
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
                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/issuing/cards/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel card)) GHC.Base.++ "/pin"))) [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/issuing/cards/{card}/pin
-- 
-- Monadic version of 'postIssuingCardsCardPinRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postIssuingCardsCardPinRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                             StripeAPI.Common.SecurityScheme s) =>
                               Data.Text.Internal.Text ->
                               PostIssuingCardsCardPinRequestBody ->
                               Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                  m
                                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postIssuingCardsCardPinRawM card
                            body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/issuing/cards/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel card)) GHC.Base.++ "/pin"))) [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postIssuingCardsCardPinRequestBody
-- 
-- 
data PostIssuingCardsCardPinRequestBody = PostIssuingCardsCardPinRequestBody {
  -- | expand: Specifies which fields in the response should be expanded.
  postIssuingCardsCardPinRequestBodyExpand :: (GHC.Maybe.Maybe ([] Data.Text.Internal.Text))
  -- | pin: The new desired PIN
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postIssuingCardsCardPinRequestBodyPin :: Data.Text.Internal.Text
  -- | verification: The id of the \`Verification\` that was sent and the code entered by the cardholder
  , postIssuingCardsCardPinRequestBodyVerification :: PostIssuingCardsCardPinRequestBodyVerification'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostIssuingCardsCardPinRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "expand" (postIssuingCardsCardPinRequestBodyExpand obj) : (Data.Aeson..=) "pin" (postIssuingCardsCardPinRequestBodyPin obj) : (Data.Aeson..=) "verification" (postIssuingCardsCardPinRequestBodyVerification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "expand" (postIssuingCardsCardPinRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "pin" (postIssuingCardsCardPinRequestBodyPin obj) GHC.Base.<> (Data.Aeson..=) "verification" (postIssuingCardsCardPinRequestBodyVerification obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostIssuingCardsCardPinRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostIssuingCardsCardPinRequestBody" (\obj -> ((GHC.Base.pure PostIssuingCardsCardPinRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pin")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verification"))
-- | Defines the data type for the schema postIssuingCardsCardPinRequestBodyVerification\'
-- 
-- The id of the \`Verification\` that was sent and the code entered by the cardholder
data PostIssuingCardsCardPinRequestBodyVerification' = PostIssuingCardsCardPinRequestBodyVerification' {
  -- | id
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postIssuingCardsCardPinRequestBodyVerification'Id :: Data.Text.Internal.Text
  -- | one_time_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postIssuingCardsCardPinRequestBodyVerification'OneTimeCode :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostIssuingCardsCardPinRequestBodyVerification'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "id" (postIssuingCardsCardPinRequestBodyVerification'Id obj) : (Data.Aeson..=) "one_time_code" (postIssuingCardsCardPinRequestBodyVerification'OneTimeCode obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "id" (postIssuingCardsCardPinRequestBodyVerification'Id obj) GHC.Base.<> (Data.Aeson..=) "one_time_code" (postIssuingCardsCardPinRequestBodyVerification'OneTimeCode obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostIssuingCardsCardPinRequestBodyVerification'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostIssuingCardsCardPinRequestBodyVerification'" (\obj -> (GHC.Base.pure PostIssuingCardsCardPinRequestBodyVerification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "one_time_code"))
-- | Represents a response of the operation 'postIssuingCardsCardPin'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostIssuingCardsCardPinResponseError' is used.
data PostIssuingCardsCardPinResponse =                   
   PostIssuingCardsCardPinResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostIssuingCardsCardPinResponse200 Issuing'cardPin   -- ^ Successful response.
  | PostIssuingCardsCardPinResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
