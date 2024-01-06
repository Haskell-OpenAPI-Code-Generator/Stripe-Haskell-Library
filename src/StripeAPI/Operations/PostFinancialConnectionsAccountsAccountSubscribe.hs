{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postFinancialConnectionsAccountsAccountSubscribe
module StripeAPI.Operations.PostFinancialConnectionsAccountsAccountSubscribe where

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
import qualified Data.Text.Internal
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

-- | > POST /v1/financial_connections/accounts/{account}/subscribe
--
-- \<p>Subscribes to periodic refreshes of data associated with a Financial Connections \<code>Account\<\/code>.\<\/p>
postFinancialConnectionsAccountsAccountSubscribe ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | account | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  PostFinancialConnectionsAccountsAccountSubscribeRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostFinancialConnectionsAccountsAccountSubscribeResponse)
postFinancialConnectionsAccountsAccountSubscribe
  account
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostFinancialConnectionsAccountsAccountSubscribeResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                       PostFinancialConnectionsAccountsAccountSubscribeResponse200
                                         Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                              Data.Either.Either
                                                                GHC.Base.String
                                                                FinancialConnections'account
                                                          )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                       PostFinancialConnectionsAccountsAccountSubscribeResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/v1/financial_connections/accounts/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.<> "/subscribe")) GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/financial_connections\/accounts\/{account}\/subscribe.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostFinancialConnectionsAccountsAccountSubscribeRequestBody = PostFinancialConnectionsAccountsAccountSubscribeRequestBody
  { -- | expand: Specifies which fields in the response should be expanded.
    postFinancialConnectionsAccountsAccountSubscribeRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | features: The list of account features to which you would like to subscribe.\`.
    postFinancialConnectionsAccountsAccountSubscribeRequestBodyFeatures :: ([PostFinancialConnectionsAccountsAccountSubscribeRequestBodyFeatures'])
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostFinancialConnectionsAccountsAccountSubscribeRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postFinancialConnectionsAccountsAccountSubscribeRequestBodyExpand obj) : ["features" Data.Aeson.Types.ToJSON..= postFinancialConnectionsAccountsAccountSubscribeRequestBodyFeatures obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postFinancialConnectionsAccountsAccountSubscribeRequestBodyExpand obj) : ["features" Data.Aeson.Types.ToJSON..= postFinancialConnectionsAccountsAccountSubscribeRequestBodyFeatures obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostFinancialConnectionsAccountsAccountSubscribeRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFinancialConnectionsAccountsAccountSubscribeRequestBody" (\obj -> (GHC.Base.pure PostFinancialConnectionsAccountsAccountSubscribeRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "features"))

-- | Create a new 'PostFinancialConnectionsAccountsAccountSubscribeRequestBody' with all required fields.
mkPostFinancialConnectionsAccountsAccountSubscribeRequestBody ::
  -- | 'postFinancialConnectionsAccountsAccountSubscribeRequestBodyFeatures'
  [PostFinancialConnectionsAccountsAccountSubscribeRequestBodyFeatures'] ->
  PostFinancialConnectionsAccountsAccountSubscribeRequestBody
mkPostFinancialConnectionsAccountsAccountSubscribeRequestBody postFinancialConnectionsAccountsAccountSubscribeRequestBodyFeatures =
  PostFinancialConnectionsAccountsAccountSubscribeRequestBody
    { postFinancialConnectionsAccountsAccountSubscribeRequestBodyExpand = GHC.Maybe.Nothing,
      postFinancialConnectionsAccountsAccountSubscribeRequestBodyFeatures = postFinancialConnectionsAccountsAccountSubscribeRequestBodyFeatures
    }

-- | Defines the enum schema located at @paths.\/v1\/financial_connections\/accounts\/{account}\/subscribe.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.features.items@ in the specification.
data PostFinancialConnectionsAccountsAccountSubscribeRequestBodyFeatures'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostFinancialConnectionsAccountsAccountSubscribeRequestBodyFeatures'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostFinancialConnectionsAccountsAccountSubscribeRequestBodyFeatures'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"transactions"@
    PostFinancialConnectionsAccountsAccountSubscribeRequestBodyFeatures'EnumTransactions
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostFinancialConnectionsAccountsAccountSubscribeRequestBodyFeatures' where
  toJSON (PostFinancialConnectionsAccountsAccountSubscribeRequestBodyFeatures'Other val) = val
  toJSON (PostFinancialConnectionsAccountsAccountSubscribeRequestBodyFeatures'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostFinancialConnectionsAccountsAccountSubscribeRequestBodyFeatures'EnumTransactions) = "transactions"

instance Data.Aeson.Types.FromJSON.FromJSON PostFinancialConnectionsAccountsAccountSubscribeRequestBodyFeatures' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "transactions" -> PostFinancialConnectionsAccountsAccountSubscribeRequestBodyFeatures'EnumTransactions
            | GHC.Base.otherwise -> PostFinancialConnectionsAccountsAccountSubscribeRequestBodyFeatures'Other val
      )

-- | Represents a response of the operation 'postFinancialConnectionsAccountsAccountSubscribe'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostFinancialConnectionsAccountsAccountSubscribeResponseError' is used.
data PostFinancialConnectionsAccountsAccountSubscribeResponse
  = -- | Means either no matching case available or a parse error
    PostFinancialConnectionsAccountsAccountSubscribeResponseError GHC.Base.String
  | -- | Successful response.
    PostFinancialConnectionsAccountsAccountSubscribeResponse200 FinancialConnections'account
  | -- | Error response.
    PostFinancialConnectionsAccountsAccountSubscribeResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
