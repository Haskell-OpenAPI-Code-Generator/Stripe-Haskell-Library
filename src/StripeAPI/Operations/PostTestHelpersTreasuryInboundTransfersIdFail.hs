{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postTestHelpersTreasuryInboundTransfersIdFail
module StripeAPI.Operations.PostTestHelpersTreasuryInboundTransfersIdFail where

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

-- | > POST /v1/test_helpers/treasury/inbound_transfers/{id}/fail
--
-- \<p>Transitions a test mode created InboundTransfer to the \<code>failed\<\/code> status. The InboundTransfer must already be in the \<code>processing\<\/code> state.\<\/p>
postTestHelpersTreasuryInboundTransfersIdFail ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | id | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe PostTestHelpersTreasuryInboundTransfersIdFailRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostTestHelpersTreasuryInboundTransfersIdFailResponse)
postTestHelpersTreasuryInboundTransfersIdFail
  id
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostTestHelpersTreasuryInboundTransfersIdFailResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                       PostTestHelpersTreasuryInboundTransfersIdFailResponse200
                                         Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                              Data.Either.Either
                                                                GHC.Base.String
                                                                Treasury'inboundTransfer
                                                          )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                       PostTestHelpersTreasuryInboundTransfersIdFailResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/v1/test_helpers/treasury/inbound_transfers/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.<> "/fail")) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/test_helpers\/treasury\/inbound_transfers\/{id}\/fail.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostTestHelpersTreasuryInboundTransfersIdFailRequestBody = PostTestHelpersTreasuryInboundTransfersIdFailRequestBody
  { -- | expand: Specifies which fields in the response should be expanded.
    postTestHelpersTreasuryInboundTransfersIdFailRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | failure_details: Details about a failed InboundTransfer.
    postTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails :: (GHC.Maybe.Maybe PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostTestHelpersTreasuryInboundTransfersIdFailRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTestHelpersTreasuryInboundTransfersIdFailRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("failure_details" Data.Aeson.Types.ToJSON..=)) (postTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTestHelpersTreasuryInboundTransfersIdFailRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("failure_details" Data.Aeson.Types.ToJSON..=)) (postTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostTestHelpersTreasuryInboundTransfersIdFailRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTestHelpersTreasuryInboundTransfersIdFailRequestBody" (\obj -> (GHC.Base.pure PostTestHelpersTreasuryInboundTransfersIdFailRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "failure_details"))

-- | Create a new 'PostTestHelpersTreasuryInboundTransfersIdFailRequestBody' with all required fields.
mkPostTestHelpersTreasuryInboundTransfersIdFailRequestBody :: PostTestHelpersTreasuryInboundTransfersIdFailRequestBody
mkPostTestHelpersTreasuryInboundTransfersIdFailRequestBody =
  PostTestHelpersTreasuryInboundTransfersIdFailRequestBody
    { postTestHelpersTreasuryInboundTransfersIdFailRequestBodyExpand = GHC.Maybe.Nothing,
      postTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/test_helpers\/treasury\/inbound_transfers\/{id}\/fail.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.failure_details@ in the specification.
--
-- Details about a failed InboundTransfer.
data PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails' = PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'
  { -- | code
    postTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code :: (GHC.Maybe.Maybe PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (postTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (postTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'" (\obj -> GHC.Base.pure PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "code"))

-- | Create a new 'PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'' with all required fields.
mkPostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails' :: PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'
mkPostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails' = PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails' {postTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code = GHC.Maybe.Nothing}

-- | Defines the enum schema located at @paths.\/v1\/test_helpers\/treasury\/inbound_transfers\/{id}\/fail.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.failure_details.properties.code@ in the specification.
data PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"account_closed"@
    PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumAccountClosed
  | -- | Represents the JSON value @"account_frozen"@
    PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumAccountFrozen
  | -- | Represents the JSON value @"bank_account_restricted"@
    PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumBankAccountRestricted
  | -- | Represents the JSON value @"bank_ownership_changed"@
    PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumBankOwnershipChanged
  | -- | Represents the JSON value @"debit_not_authorized"@
    PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumDebitNotAuthorized
  | -- | Represents the JSON value @"incorrect_account_holder_address"@
    PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumIncorrectAccountHolderAddress
  | -- | Represents the JSON value @"incorrect_account_holder_name"@
    PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumIncorrectAccountHolderName
  | -- | Represents the JSON value @"incorrect_account_holder_tax_id"@
    PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumIncorrectAccountHolderTaxId
  | -- | Represents the JSON value @"insufficient_funds"@
    PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumInsufficientFunds
  | -- | Represents the JSON value @"invalid_account_number"@
    PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumInvalidAccountNumber
  | -- | Represents the JSON value @"invalid_currency"@
    PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumInvalidCurrency
  | -- | Represents the JSON value @"no_account"@
    PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumNoAccount
  | -- | Represents the JSON value @"other"@
    PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumOther
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code' where
  toJSON (PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'Other val) = val
  toJSON (PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumAccountClosed) = "account_closed"
  toJSON (PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumAccountFrozen) = "account_frozen"
  toJSON (PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumBankAccountRestricted) = "bank_account_restricted"
  toJSON (PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumBankOwnershipChanged) = "bank_ownership_changed"
  toJSON (PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumDebitNotAuthorized) = "debit_not_authorized"
  toJSON (PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumIncorrectAccountHolderAddress) = "incorrect_account_holder_address"
  toJSON (PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumIncorrectAccountHolderName) = "incorrect_account_holder_name"
  toJSON (PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumIncorrectAccountHolderTaxId) = "incorrect_account_holder_tax_id"
  toJSON (PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumInsufficientFunds) = "insufficient_funds"
  toJSON (PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumInvalidAccountNumber) = "invalid_account_number"
  toJSON (PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumInvalidCurrency) = "invalid_currency"
  toJSON (PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumNoAccount) = "no_account"
  toJSON (PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumOther) = "other"

instance Data.Aeson.Types.FromJSON.FromJSON PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "account_closed" -> PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumAccountClosed
            | val GHC.Classes.== "account_frozen" -> PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumAccountFrozen
            | val GHC.Classes.== "bank_account_restricted" -> PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumBankAccountRestricted
            | val GHC.Classes.== "bank_ownership_changed" -> PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumBankOwnershipChanged
            | val GHC.Classes.== "debit_not_authorized" -> PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumDebitNotAuthorized
            | val GHC.Classes.== "incorrect_account_holder_address" -> PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumIncorrectAccountHolderAddress
            | val GHC.Classes.== "incorrect_account_holder_name" -> PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumIncorrectAccountHolderName
            | val GHC.Classes.== "incorrect_account_holder_tax_id" -> PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumIncorrectAccountHolderTaxId
            | val GHC.Classes.== "insufficient_funds" -> PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumInsufficientFunds
            | val GHC.Classes.== "invalid_account_number" -> PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumInvalidAccountNumber
            | val GHC.Classes.== "invalid_currency" -> PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumInvalidCurrency
            | val GHC.Classes.== "no_account" -> PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumNoAccount
            | val GHC.Classes.== "other" -> PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'EnumOther
            | GHC.Base.otherwise -> PostTestHelpersTreasuryInboundTransfersIdFailRequestBodyFailureDetails'Code'Other val
      )

-- | Represents a response of the operation 'postTestHelpersTreasuryInboundTransfersIdFail'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostTestHelpersTreasuryInboundTransfersIdFailResponseError' is used.
data PostTestHelpersTreasuryInboundTransfersIdFailResponse
  = -- | Means either no matching case available or a parse error
    PostTestHelpersTreasuryInboundTransfersIdFailResponseError GHC.Base.String
  | -- | Successful response.
    PostTestHelpersTreasuryInboundTransfersIdFailResponse200 Treasury'inboundTransfer
  | -- | Error response.
    PostTestHelpersTreasuryInboundTransfersIdFailResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
