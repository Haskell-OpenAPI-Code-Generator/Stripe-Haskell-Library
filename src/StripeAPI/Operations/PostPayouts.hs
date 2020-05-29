{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postPayouts
module StripeAPI.Operations.PostPayouts where

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

-- | > POST /v1/payouts
-- 
-- \<p>To send funds to your own bank account, you create a new payout object. Your \<a href=\"\#balance\">Stripe balance\<\/a> must be able to cover the payout amount, or you’ll receive an “Insufficient Funds” error.\<\/p>
-- 
-- \<p>If your API key is in test mode, money won’t actually be sent, though everything else will occur as if in live mode.\<\/p>
-- 
-- \<p>If you are creating a manual payout on a Stripe account that uses multiple payment source types, you’ll need to specify the source type balance that the payout should draw from. The \<a href=\"\#balance_object\">balance object\<\/a> details available and pending amounts by source type.\<\/p>
postPayouts :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> PostPayoutsRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostPayoutsResponse)) -- ^ Monad containing the result of the operation
postPayouts config
            body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostPayoutsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPayoutsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                   Payout)
                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPayoutsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/payouts") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/payouts
-- 
-- The same as 'postPayouts' but returns the raw 'Data.ByteString.Char8.ByteString'
postPayoutsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                StripeAPI.Common.SecurityScheme s) =>
                  StripeAPI.Common.Configuration s ->
                  PostPayoutsRequestBody ->
                  m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPayoutsRaw config
               body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/payouts") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/payouts
-- 
-- Monadic version of 'postPayouts' (use with 'StripeAPI.Common.runWithConfiguration')
postPayoutsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                              StripeAPI.Common.SecurityScheme s) =>
                PostPayoutsRequestBody ->
                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                   m
                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                       (Network.HTTP.Client.Types.Response PostPayoutsResponse))
postPayoutsM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostPayoutsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPayoutsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                    Payout)
                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPayoutsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/payouts") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/payouts
-- 
-- Monadic version of 'postPayoutsRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postPayoutsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                 StripeAPI.Common.SecurityScheme s) =>
                   PostPayoutsRequestBody ->
                   Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                      m
                                                      (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPayoutsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/payouts") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postPayoutsRequestBody
-- 
-- 
data PostPayoutsRequestBody = PostPayoutsRequestBody {
  -- | amount: A positive integer in cents representing how much to payout.
  postPayoutsRequestBodyAmount :: GHC.Integer.Type.Integer
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  , postPayoutsRequestBodyCurrency :: Data.Text.Internal.Text
  -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPayoutsRequestBodyDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | destination: The ID of a bank account or a card to send the payout to. If no destination is supplied, the default external account for the specified currency will be used.
  , postPayoutsRequestBodyDestination :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | expand: Specifies which fields in the response should be expanded.
  , postPayoutsRequestBodyExpand :: (GHC.Maybe.Maybe ([] Data.Text.Internal.Text))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postPayoutsRequestBodyMetadata :: (GHC.Maybe.Maybe PostPayoutsRequestBodyMetadata')
  -- | method: The method used to send this payout, which can be \`standard\` or \`instant\`. \`instant\` is only supported for payouts to debit cards. (See [Instant payouts for marketplaces for more information](https:\/\/stripe.com\/blog\/instant-payouts-for-marketplaces).)
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPayoutsRequestBodyMethod :: (GHC.Maybe.Maybe PostPayoutsRequestBodyMethod')
  -- | source_type: The balance type of your Stripe balance to draw this payout from. Balances for different payment sources are kept separately. You can find the amounts with the balances API. One of \`bank_account\`, \`card\`, or \`fpx\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPayoutsRequestBodySourceType :: (GHC.Maybe.Maybe PostPayoutsRequestBodySourceType')
  -- | statement_descriptor: A string to be displayed on the recipient\'s bank or card statement. This may be at most 22 characters. Attempting to use a \`statement_descriptor\` longer than 22 characters will return an error. Note: Most banks will truncate this information and\/or display it inconsistently. Some may not display it at all.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 22
  , postPayoutsRequestBodyStatementDescriptor :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPayoutsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postPayoutsRequestBodyAmount obj) : (Data.Aeson..=) "currency" (postPayoutsRequestBodyCurrency obj) : (Data.Aeson..=) "description" (postPayoutsRequestBodyDescription obj) : (Data.Aeson..=) "destination" (postPayoutsRequestBodyDestination obj) : (Data.Aeson..=) "expand" (postPayoutsRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postPayoutsRequestBodyMetadata obj) : (Data.Aeson..=) "method" (postPayoutsRequestBodyMethod obj) : (Data.Aeson..=) "source_type" (postPayoutsRequestBodySourceType obj) : (Data.Aeson..=) "statement_descriptor" (postPayoutsRequestBodyStatementDescriptor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postPayoutsRequestBodyAmount obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postPayoutsRequestBodyCurrency obj) GHC.Base.<> ((Data.Aeson..=) "description" (postPayoutsRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "destination" (postPayoutsRequestBodyDestination obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postPayoutsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postPayoutsRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "method" (postPayoutsRequestBodyMethod obj) GHC.Base.<> ((Data.Aeson..=) "source_type" (postPayoutsRequestBodySourceType obj) GHC.Base.<> (Data.Aeson..=) "statement_descriptor" (postPayoutsRequestBodyStatementDescriptor obj)))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPayoutsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPayoutsRequestBody" (\obj -> ((((((((GHC.Base.pure PostPayoutsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "destination")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor"))
-- | Defines the data type for the schema postPayoutsRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostPayoutsRequestBodyMetadata' = PostPayoutsRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPayoutsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostPayoutsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPayoutsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostPayoutsRequestBodyMetadata')
-- | Defines the enum schema postPayoutsRequestBodyMethod\'
-- 
-- The method used to send this payout, which can be \`standard\` or \`instant\`. \`instant\` is only supported for payouts to debit cards. (See [Instant payouts for marketplaces for more information](https:\/\/stripe.com\/blog\/instant-payouts-for-marketplaces).)
data PostPayoutsRequestBodyMethod'
    = PostPayoutsRequestBodyMethod'EnumOther Data.Aeson.Types.Internal.Value
    | PostPayoutsRequestBodyMethod'EnumTyped Data.Text.Internal.Text
    | PostPayoutsRequestBodyMethod'EnumStringInstant
    | PostPayoutsRequestBodyMethod'EnumStringStandard
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPayoutsRequestBodyMethod'
    where toJSON (PostPayoutsRequestBodyMethod'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPayoutsRequestBodyMethod'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPayoutsRequestBodyMethod'EnumStringInstant) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "instant"
          toJSON (PostPayoutsRequestBodyMethod'EnumStringStandard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard"
instance Data.Aeson.FromJSON PostPayoutsRequestBodyMethod'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "instant")
                                          then PostPayoutsRequestBodyMethod'EnumStringInstant
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard")
                                                then PostPayoutsRequestBodyMethod'EnumStringStandard
                                                else PostPayoutsRequestBodyMethod'EnumOther val)
-- | Defines the enum schema postPayoutsRequestBodySource_type\'
-- 
-- The balance type of your Stripe balance to draw this payout from. Balances for different payment sources are kept separately. You can find the amounts with the balances API. One of \`bank_account\`, \`card\`, or \`fpx\`.
data PostPayoutsRequestBodySourceType'
    = PostPayoutsRequestBodySourceType'EnumOther Data.Aeson.Types.Internal.Value
    | PostPayoutsRequestBodySourceType'EnumTyped Data.Text.Internal.Text
    | PostPayoutsRequestBodySourceType'EnumStringBankAccount
    | PostPayoutsRequestBodySourceType'EnumStringCard
    | PostPayoutsRequestBodySourceType'EnumStringFpx
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPayoutsRequestBodySourceType'
    where toJSON (PostPayoutsRequestBodySourceType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPayoutsRequestBodySourceType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPayoutsRequestBodySourceType'EnumStringBankAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account"
          toJSON (PostPayoutsRequestBodySourceType'EnumStringCard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card"
          toJSON (PostPayoutsRequestBodySourceType'EnumStringFpx) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fpx"
instance Data.Aeson.FromJSON PostPayoutsRequestBodySourceType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account")
                                          then PostPayoutsRequestBodySourceType'EnumStringBankAccount
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card")
                                                then PostPayoutsRequestBodySourceType'EnumStringCard
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fpx")
                                                      then PostPayoutsRequestBodySourceType'EnumStringFpx
                                                      else PostPayoutsRequestBodySourceType'EnumOther val)
-- | Represents a response of the operation 'postPayouts'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostPayoutsResponseError' is used.
data PostPayoutsResponse =                   
   PostPayoutsResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostPayoutsResponse200 Payout            -- ^ Successful response.
  | PostPayoutsResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
