{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postEphemeralKeys
module StripeAPI.Operations.PostEphemeralKeys where

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

-- | > POST /v1/ephemeral_keys
-- 
-- \<p>Creates a short-lived API key for a given resource.\<\/p>
postEphemeralKeys :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Maybe.Maybe PostEphemeralKeysRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostEphemeralKeysResponse)) -- ^ Monad containing the result of the operation
postEphemeralKeys config
                  body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostEphemeralKeysResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostEphemeralKeysResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                     EphemeralKey)
                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostEphemeralKeysResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/ephemeral_keys") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/ephemeral_keys
-- 
-- The same as 'postEphemeralKeys' but returns the raw 'Data.ByteString.Char8.ByteString'
postEphemeralKeysRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        StripeAPI.Common.Configuration s ->
                        GHC.Maybe.Maybe PostEphemeralKeysRequestBody ->
                        m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postEphemeralKeysRaw config
                     body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/ephemeral_keys") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/ephemeral_keys
-- 
-- Monadic version of 'postEphemeralKeys' (use with 'StripeAPI.Common.runWithConfiguration')
postEphemeralKeysM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                    StripeAPI.Common.SecurityScheme s) =>
                      GHC.Maybe.Maybe PostEphemeralKeysRequestBody ->
                      Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                         m
                                                         (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                             (Network.HTTP.Client.Types.Response PostEphemeralKeysResponse))
postEphemeralKeysM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostEphemeralKeysResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostEphemeralKeysResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                      EphemeralKey)
                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostEphemeralKeysResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/ephemeral_keys") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/ephemeral_keys
-- 
-- Monadic version of 'postEphemeralKeysRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postEphemeralKeysRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                       StripeAPI.Common.SecurityScheme s) =>
                         GHC.Maybe.Maybe PostEphemeralKeysRequestBody ->
                         Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                            m
                                                            (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postEphemeralKeysRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/ephemeral_keys") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postEphemeralKeysRequestBody
-- 
-- 
data PostEphemeralKeysRequestBody = PostEphemeralKeysRequestBody {
  -- | customer: The ID of the Customer you\'d like to modify using the resulting ephemeral key.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postEphemeralKeysRequestBodyCustomer :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | expand: Specifies which fields in the response should be expanded.
  , postEphemeralKeysRequestBodyExpand :: (GHC.Maybe.Maybe ([] Data.Text.Internal.Text))
  -- | issuing_card: The ID of the Issuing Card you\'d like to access using the resulting ephemeral key.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postEphemeralKeysRequestBodyIssuingCard :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostEphemeralKeysRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "customer" (postEphemeralKeysRequestBodyCustomer obj) : (Data.Aeson..=) "expand" (postEphemeralKeysRequestBodyExpand obj) : (Data.Aeson..=) "issuing_card" (postEphemeralKeysRequestBodyIssuingCard obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "customer" (postEphemeralKeysRequestBodyCustomer obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postEphemeralKeysRequestBodyExpand obj) GHC.Base.<> (Data.Aeson..=) "issuing_card" (postEphemeralKeysRequestBodyIssuingCard obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostEphemeralKeysRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostEphemeralKeysRequestBody" (\obj -> ((GHC.Base.pure PostEphemeralKeysRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "issuing_card"))
-- | Represents a response of the operation 'postEphemeralKeys'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostEphemeralKeysResponseError' is used.
data PostEphemeralKeysResponse =                   
   PostEphemeralKeysResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostEphemeralKeysResponse200 EphemeralKey      -- ^ Successful response.
  | PostEphemeralKeysResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
