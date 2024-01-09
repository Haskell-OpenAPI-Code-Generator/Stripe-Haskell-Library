{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postPaymentMethodDomains
module StripeAPI.Operations.PostPaymentMethodDomains where

import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.ByteString as Data.ByteString.Internal.Type
import qualified Data.Either
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text as Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | > POST /v1/payment_method_domains
--
-- \<p>Creates a payment method domain.\<\/p>
postPaymentMethodDomains ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | The request body to send
  PostPaymentMethodDomainsRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostPaymentMethodDomainsResponse)
postPaymentMethodDomains body =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostPaymentMethodDomainsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostPaymentMethodDomainsResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              PaymentMethodDomain
                                                        )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostPaymentMethodDomainsResponseDefault
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                         )
                response_0
          )
          response_0
    )
    (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/v1/payment_method_domains" GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/payment_method_domains.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostPaymentMethodDomainsRequestBody = PostPaymentMethodDomainsRequestBody
  { -- | domain_name: The domain name that this payment method domain object represents.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postPaymentMethodDomainsRequestBodyDomainName :: Data.Text.Internal.Text,
    -- | enabled: Whether this payment method domain is enabled. If the domain is not enabled, payment methods that require a payment method domain will not appear in Elements.
    postPaymentMethodDomainsRequestBodyEnabled :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | expand: Specifies which fields in the response should be expanded.
    postPaymentMethodDomainsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostPaymentMethodDomainsRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["domain_name" Data.Aeson.Types.ToJSON..= postPaymentMethodDomainsRequestBodyDomainName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enabled" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodDomainsRequestBodyEnabled obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodDomainsRequestBodyExpand obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["domain_name" Data.Aeson.Types.ToJSON..= postPaymentMethodDomainsRequestBodyDomainName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enabled" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodDomainsRequestBodyEnabled obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodDomainsRequestBodyExpand obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodDomainsRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodDomainsRequestBody" (\obj -> ((GHC.Base.pure PostPaymentMethodDomainsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "domain_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "enabled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand"))

-- | Create a new 'PostPaymentMethodDomainsRequestBody' with all required fields.
mkPostPaymentMethodDomainsRequestBody ::
  -- | 'postPaymentMethodDomainsRequestBodyDomainName'
  Data.Text.Internal.Text ->
  PostPaymentMethodDomainsRequestBody
mkPostPaymentMethodDomainsRequestBody postPaymentMethodDomainsRequestBodyDomainName =
  PostPaymentMethodDomainsRequestBody
    { postPaymentMethodDomainsRequestBodyDomainName = postPaymentMethodDomainsRequestBodyDomainName,
      postPaymentMethodDomainsRequestBodyEnabled = GHC.Maybe.Nothing,
      postPaymentMethodDomainsRequestBodyExpand = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'postPaymentMethodDomains'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostPaymentMethodDomainsResponseError' is used.
data PostPaymentMethodDomainsResponse
  = -- | Means either no matching case available or a parse error
    PostPaymentMethodDomainsResponseError GHC.Base.String
  | -- | Successful response.
    PostPaymentMethodDomainsResponse200 PaymentMethodDomain
  | -- | Error response.
    PostPaymentMethodDomainsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
