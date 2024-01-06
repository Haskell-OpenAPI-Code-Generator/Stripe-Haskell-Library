{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postPayouts
module StripeAPI.Operations.PostPayouts where

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

-- | > POST /v1/payouts
--
-- \<p>To send funds to your own bank account, create a new payout object. Your \<a href=\"\#balance\">Stripe balance\<\/a> must cover the payout amount. If it doesn’t, you receive an “Insufficient Funds” error.\<\/p>
--
-- \<p>If your API key is in test mode, money won’t actually be sent, though every other action occurs as if you’re in live mode.\<\/p>
--
-- \<p>If you create a manual payout on a Stripe account that uses multiple payment source types, you need to specify the source type balance that the payout draws from. The \<a href=\"\#balance_object\">balance object\<\/a> details available and pending amounts by source type.\<\/p>
postPayouts ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | The request body to send
  PostPayoutsRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostPayoutsResponse)
postPayouts body =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostPayoutsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostPayoutsResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Payout
                                                        )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostPayoutsResponseDefault
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
    (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/v1/payouts" GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/payouts.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostPayoutsRequestBody = PostPayoutsRequestBody
  { -- | amount: A positive integer in cents representing how much to payout.
    postPayoutsRequestBodyAmount :: GHC.Types.Int,
    -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
    postPayoutsRequestBodyCurrency :: Data.Text.Internal.Text,
    -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postPayoutsRequestBodyDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | destination: The ID of a bank account or a card to send the payout to. If you don\'t provide a destination, we use the default external account for the specified currency.
    postPayoutsRequestBodyDestination :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | expand: Specifies which fields in the response should be expanded.
    postPayoutsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
    postPayoutsRequestBodyMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | method: The method used to send this payout, which is \`standard\` or \`instant\`. We support \`instant\` for payouts to debit cards and bank accounts in certain countries. Learn more about [bank support for Instant Payouts](https:\/\/stripe.com\/docs\/payouts\/instant-payouts-banks).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postPayoutsRequestBodyMethod :: (GHC.Maybe.Maybe PostPayoutsRequestBodyMethod'),
    -- | source_type: The balance type of your Stripe balance to draw this payout from. Balances for different payment sources are kept separately. You can find the amounts with the Balances API. One of \`bank_account\`, \`card\`, or \`fpx\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postPayoutsRequestBodySourceType :: (GHC.Maybe.Maybe PostPayoutsRequestBodySourceType'),
    -- | statement_descriptor: A string that displays on the recipient\'s bank or card statement (up to 22 characters). A \`statement_descriptor\` that\'s longer than 22 characters return an error. Most banks truncate this information and display it inconsistently. Some banks might not display it at all.
    --
    -- Constraints:
    --
    -- * Maximum length of 22
    postPayoutsRequestBodyStatementDescriptor :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostPayoutsRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= postPayoutsRequestBodyAmount obj] : ["currency" Data.Aeson.Types.ToJSON..= postPayoutsRequestBodyCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (postPayoutsRequestBodyDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("destination" Data.Aeson.Types.ToJSON..=)) (postPayoutsRequestBodyDestination obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postPayoutsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postPayoutsRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("method" Data.Aeson.Types.ToJSON..=)) (postPayoutsRequestBodyMethod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("source_type" Data.Aeson.Types.ToJSON..=)) (postPayoutsRequestBodySourceType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor" Data.Aeson.Types.ToJSON..=)) (postPayoutsRequestBodyStatementDescriptor obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= postPayoutsRequestBodyAmount obj] : ["currency" Data.Aeson.Types.ToJSON..= postPayoutsRequestBodyCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (postPayoutsRequestBodyDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("destination" Data.Aeson.Types.ToJSON..=)) (postPayoutsRequestBodyDestination obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postPayoutsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postPayoutsRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("method" Data.Aeson.Types.ToJSON..=)) (postPayoutsRequestBodyMethod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("source_type" Data.Aeson.Types.ToJSON..=)) (postPayoutsRequestBodySourceType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor" Data.Aeson.Types.ToJSON..=)) (postPayoutsRequestBodyStatementDescriptor obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostPayoutsRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPayoutsRequestBody" (\obj -> ((((((((GHC.Base.pure PostPayoutsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "destination")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "source_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "statement_descriptor"))

-- | Create a new 'PostPayoutsRequestBody' with all required fields.
mkPostPayoutsRequestBody ::
  -- | 'postPayoutsRequestBodyAmount'
  GHC.Types.Int ->
  -- | 'postPayoutsRequestBodyCurrency'
  Data.Text.Internal.Text ->
  PostPayoutsRequestBody
mkPostPayoutsRequestBody postPayoutsRequestBodyAmount postPayoutsRequestBodyCurrency =
  PostPayoutsRequestBody
    { postPayoutsRequestBodyAmount = postPayoutsRequestBodyAmount,
      postPayoutsRequestBodyCurrency = postPayoutsRequestBodyCurrency,
      postPayoutsRequestBodyDescription = GHC.Maybe.Nothing,
      postPayoutsRequestBodyDestination = GHC.Maybe.Nothing,
      postPayoutsRequestBodyExpand = GHC.Maybe.Nothing,
      postPayoutsRequestBodyMetadata = GHC.Maybe.Nothing,
      postPayoutsRequestBodyMethod = GHC.Maybe.Nothing,
      postPayoutsRequestBodySourceType = GHC.Maybe.Nothing,
      postPayoutsRequestBodyStatementDescriptor = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @paths.\/v1\/payouts.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.method@ in the specification.
--
-- The method used to send this payout, which is \`standard\` or \`instant\`. We support \`instant\` for payouts to debit cards and bank accounts in certain countries. Learn more about [bank support for Instant Payouts](https:\/\/stripe.com\/docs\/payouts\/instant-payouts-banks).
data PostPayoutsRequestBodyMethod'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostPayoutsRequestBodyMethod'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostPayoutsRequestBodyMethod'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"instant"@
    PostPayoutsRequestBodyMethod'EnumInstant
  | -- | Represents the JSON value @"standard"@
    PostPayoutsRequestBodyMethod'EnumStandard
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostPayoutsRequestBodyMethod' where
  toJSON (PostPayoutsRequestBodyMethod'Other val) = val
  toJSON (PostPayoutsRequestBodyMethod'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostPayoutsRequestBodyMethod'EnumInstant) = "instant"
  toJSON (PostPayoutsRequestBodyMethod'EnumStandard) = "standard"

instance Data.Aeson.Types.FromJSON.FromJSON PostPayoutsRequestBodyMethod' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "instant" -> PostPayoutsRequestBodyMethod'EnumInstant
            | val GHC.Classes.== "standard" -> PostPayoutsRequestBodyMethod'EnumStandard
            | GHC.Base.otherwise -> PostPayoutsRequestBodyMethod'Other val
      )

-- | Defines the enum schema located at @paths.\/v1\/payouts.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.source_type@ in the specification.
--
-- The balance type of your Stripe balance to draw this payout from. Balances for different payment sources are kept separately. You can find the amounts with the Balances API. One of \`bank_account\`, \`card\`, or \`fpx\`.
data PostPayoutsRequestBodySourceType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostPayoutsRequestBodySourceType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostPayoutsRequestBodySourceType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"bank_account"@
    PostPayoutsRequestBodySourceType'EnumBankAccount
  | -- | Represents the JSON value @"card"@
    PostPayoutsRequestBodySourceType'EnumCard
  | -- | Represents the JSON value @"fpx"@
    PostPayoutsRequestBodySourceType'EnumFpx
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostPayoutsRequestBodySourceType' where
  toJSON (PostPayoutsRequestBodySourceType'Other val) = val
  toJSON (PostPayoutsRequestBodySourceType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostPayoutsRequestBodySourceType'EnumBankAccount) = "bank_account"
  toJSON (PostPayoutsRequestBodySourceType'EnumCard) = "card"
  toJSON (PostPayoutsRequestBodySourceType'EnumFpx) = "fpx"

instance Data.Aeson.Types.FromJSON.FromJSON PostPayoutsRequestBodySourceType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "bank_account" -> PostPayoutsRequestBodySourceType'EnumBankAccount
            | val GHC.Classes.== "card" -> PostPayoutsRequestBodySourceType'EnumCard
            | val GHC.Classes.== "fpx" -> PostPayoutsRequestBodySourceType'EnumFpx
            | GHC.Base.otherwise -> PostPayoutsRequestBodySourceType'Other val
      )

-- | Represents a response of the operation 'postPayouts'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostPayoutsResponseError' is used.
data PostPayoutsResponse
  = -- | Means either no matching case available or a parse error
    PostPayoutsResponseError GHC.Base.String
  | -- | Successful response.
    PostPayoutsResponse200 Payout
  | -- | Error response.
    PostPayoutsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
