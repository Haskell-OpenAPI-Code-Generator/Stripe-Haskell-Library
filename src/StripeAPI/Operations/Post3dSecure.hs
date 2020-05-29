{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation post3dSecure
module StripeAPI.Operations.Post3dSecure where

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

-- | > POST /v1/3d_secure
-- 
-- \<p>Initiate 3D Secure authentication.\<\/p>
post3dSecure :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> Post3dSecureRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response Post3dSecureResponse)) -- ^ Monad containing the result of the operation
post3dSecure config
             body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Post3dSecureResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Post3dSecureResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      ThreeDSecure)
                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> Post3dSecureResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/3d_secure") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/3d_secure
-- 
-- The same as 'post3dSecure' but returns the raw 'Data.ByteString.Char8.ByteString'
post3dSecureRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                 StripeAPI.Common.SecurityScheme s) =>
                   StripeAPI.Common.Configuration s ->
                   Post3dSecureRequestBody ->
                   m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
post3dSecureRaw config
                body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/3d_secure") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/3d_secure
-- 
-- Monadic version of 'post3dSecure' (use with 'StripeAPI.Common.runWithConfiguration')
post3dSecureM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                               StripeAPI.Common.SecurityScheme s) =>
                 Post3dSecureRequestBody ->
                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                    m
                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                        (Network.HTTP.Client.Types.Response Post3dSecureResponse))
post3dSecureM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Post3dSecureResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Post3dSecureResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                       ThreeDSecure)
                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> Post3dSecureResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/3d_secure") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/3d_secure
-- 
-- Monadic version of 'post3dSecureRaw' (use with 'StripeAPI.Common.runWithConfiguration')
post3dSecureRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                  StripeAPI.Common.SecurityScheme s) =>
                    Post3dSecureRequestBody ->
                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                       m
                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
post3dSecureRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/3d_secure") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema post3dSecureRequestBody
-- 
-- 
data Post3dSecureRequestBody = Post3dSecureRequestBody {
  -- | amount: Amount of the charge that you will create when authentication completes.
  post3dSecureRequestBodyAmount :: GHC.Integer.Type.Integer
  -- | card: The ID of a card token, or the ID of a card belonging to the given customer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , post3dSecureRequestBodyCard :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  , post3dSecureRequestBodyCurrency :: GHC.Base.String
  -- | customer: The customer associated with this 3D secure authentication.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , post3dSecureRequestBodyCustomer :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | expand: Specifies which fields in the response should be expanded.
  , post3dSecureRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | return_url: The URL that the cardholder\'s browser will be returned to when authentication completes.
  , post3dSecureRequestBodyReturnUrl :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON Post3dSecureRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (post3dSecureRequestBodyAmount obj) : (Data.Aeson..=) "card" (post3dSecureRequestBodyCard obj) : (Data.Aeson..=) "currency" (post3dSecureRequestBodyCurrency obj) : (Data.Aeson..=) "customer" (post3dSecureRequestBodyCustomer obj) : (Data.Aeson..=) "expand" (post3dSecureRequestBodyExpand obj) : (Data.Aeson..=) "return_url" (post3dSecureRequestBodyReturnUrl obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (post3dSecureRequestBodyAmount obj) GHC.Base.<> ((Data.Aeson..=) "card" (post3dSecureRequestBodyCard obj) GHC.Base.<> ((Data.Aeson..=) "currency" (post3dSecureRequestBodyCurrency obj) GHC.Base.<> ((Data.Aeson..=) "customer" (post3dSecureRequestBodyCustomer obj) GHC.Base.<> ((Data.Aeson..=) "expand" (post3dSecureRequestBodyExpand obj) GHC.Base.<> (Data.Aeson..=) "return_url" (post3dSecureRequestBodyReturnUrl obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON Post3dSecureRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Post3dSecureRequestBody" (\obj -> (((((GHC.Base.pure Post3dSecureRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "return_url"))
-- | Represents a response of the operation 'post3dSecure'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Post3dSecureResponseError' is used.
data Post3dSecureResponse =                   
   Post3dSecureResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | Post3dSecureResponse200 ThreeDSecure      -- ^ Successful response.
  | Post3dSecureResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
