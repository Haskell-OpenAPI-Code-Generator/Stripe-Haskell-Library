{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getCheckoutSessions
module StripeAPI.Operations.GetCheckoutSessions where

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

-- | > GET /v1/checkout/sessions
--
-- \<p>Returns a list of Checkout Sessions.\<\/p>
getCheckoutSessions ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetCheckoutSessionsParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetCheckoutSessionsResponse)
getCheckoutSessions parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetCheckoutSessionsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetCheckoutSessionsResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetCheckoutSessionsResponseBody200
                                                        )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetCheckoutSessionsResponseDefault
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
    ( StripeAPI.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET")
        "/v1/checkout/sessions"
        [ StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "created") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCheckoutSessionsParametersQueryCreated parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "customer") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCheckoutSessionsParametersQueryCustomer parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "customer_details") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCheckoutSessionsParametersQueryCustomerDetails parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCheckoutSessionsParametersQueryEndingBefore parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCheckoutSessionsParametersQueryExpand parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCheckoutSessionsParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "payment_intent") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCheckoutSessionsParametersQueryPaymentIntent parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "payment_link") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCheckoutSessionsParametersQueryPaymentLink parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCheckoutSessionsParametersQueryStartingAfter parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "status") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCheckoutSessionsParametersQueryStatus parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "subscription") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCheckoutSessionsParametersQuerySubscription parameters) (Data.Text.Internal.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/checkout\/sessions.GET.parameters@ in the specification.
data GetCheckoutSessionsParameters = GetCheckoutSessionsParameters
  { -- | queryCreated: Represents the parameter named \'created\'
    --
    -- Only return the Checkout Sessions that were created during the given date interval.
    getCheckoutSessionsParametersQueryCreated :: (GHC.Maybe.Maybe GetCheckoutSessionsParametersQueryCreated'Variants),
    -- | queryCustomer: Represents the parameter named \'customer\'
    --
    -- Only return the Checkout Sessions for the Customer specified.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getCheckoutSessionsParametersQueryCustomer :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryCustomer_details: Represents the parameter named \'customer_details\'
    --
    -- Only return the Checkout Sessions for the Customer details specified.
    getCheckoutSessionsParametersQueryCustomerDetails :: (GHC.Maybe.Maybe GetCheckoutSessionsParametersQueryCustomerDetails'),
    -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getCheckoutSessionsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getCheckoutSessionsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getCheckoutSessionsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryPayment_intent: Represents the parameter named \'payment_intent\'
    --
    -- Only return the Checkout Session for the PaymentIntent specified.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getCheckoutSessionsParametersQueryPaymentIntent :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryPayment_link: Represents the parameter named \'payment_link\'
    --
    -- Only return the Checkout Sessions for the Payment Link specified.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getCheckoutSessionsParametersQueryPaymentLink :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getCheckoutSessionsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryStatus: Represents the parameter named \'status\'
    --
    -- Only return the Checkout Sessions matching the given status.
    getCheckoutSessionsParametersQueryStatus :: (GHC.Maybe.Maybe GetCheckoutSessionsParametersQueryStatus'),
    -- | querySubscription: Represents the parameter named \'subscription\'
    --
    -- Only return the Checkout Session for the subscription specified.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getCheckoutSessionsParametersQuerySubscription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetCheckoutSessionsParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCreated" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQueryCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCustomer" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQueryCustomer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCustomer_details" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQueryCustomerDetails obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPayment_intent" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQueryPaymentIntent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPayment_link" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQueryPaymentLink obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQueryStartingAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStatus" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQueryStatus obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySubscription" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQuerySubscription obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCreated" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQueryCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCustomer" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQueryCustomer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCustomer_details" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQueryCustomerDetails obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPayment_intent" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQueryPaymentIntent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPayment_link" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQueryPaymentLink obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQueryStartingAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStatus" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQueryStatus obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySubscription" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQuerySubscription obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetCheckoutSessionsParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCheckoutSessionsParameters" (\obj -> ((((((((((GHC.Base.pure GetCheckoutSessionsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCreated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCustomer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCustomer_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPayment_intent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPayment_link")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStatus")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "querySubscription"))

-- | Create a new 'GetCheckoutSessionsParameters' with all required fields.
mkGetCheckoutSessionsParameters :: GetCheckoutSessionsParameters
mkGetCheckoutSessionsParameters =
  GetCheckoutSessionsParameters
    { getCheckoutSessionsParametersQueryCreated = GHC.Maybe.Nothing,
      getCheckoutSessionsParametersQueryCustomer = GHC.Maybe.Nothing,
      getCheckoutSessionsParametersQueryCustomerDetails = GHC.Maybe.Nothing,
      getCheckoutSessionsParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getCheckoutSessionsParametersQueryExpand = GHC.Maybe.Nothing,
      getCheckoutSessionsParametersQueryLimit = GHC.Maybe.Nothing,
      getCheckoutSessionsParametersQueryPaymentIntent = GHC.Maybe.Nothing,
      getCheckoutSessionsParametersQueryPaymentLink = GHC.Maybe.Nothing,
      getCheckoutSessionsParametersQueryStartingAfter = GHC.Maybe.Nothing,
      getCheckoutSessionsParametersQueryStatus = GHC.Maybe.Nothing,
      getCheckoutSessionsParametersQuerySubscription = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/checkout\/sessions.GET.parameters.properties.queryCreated.anyOf@ in the specification.
data GetCheckoutSessionsParametersQueryCreated'OneOf1 = GetCheckoutSessionsParametersQueryCreated'OneOf1
  { -- | gt
    getCheckoutSessionsParametersQueryCreated'OneOf1Gt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | gte
    getCheckoutSessionsParametersQueryCreated'OneOf1Gte :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lt
    getCheckoutSessionsParametersQueryCreated'OneOf1Lt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lte
    getCheckoutSessionsParametersQueryCreated'OneOf1Lte :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetCheckoutSessionsParametersQueryCreated'OneOf1 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQueryCreated'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQueryCreated'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQueryCreated'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQueryCreated'OneOf1Lte obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQueryCreated'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQueryCreated'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQueryCreated'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getCheckoutSessionsParametersQueryCreated'OneOf1Lte obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetCheckoutSessionsParametersQueryCreated'OneOf1 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCheckoutSessionsParametersQueryCreated'OneOf1" (\obj -> (((GHC.Base.pure GetCheckoutSessionsParametersQueryCreated'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lte"))

-- | Create a new 'GetCheckoutSessionsParametersQueryCreated'OneOf1' with all required fields.
mkGetCheckoutSessionsParametersQueryCreated'OneOf1 :: GetCheckoutSessionsParametersQueryCreated'OneOf1
mkGetCheckoutSessionsParametersQueryCreated'OneOf1 =
  GetCheckoutSessionsParametersQueryCreated'OneOf1
    { getCheckoutSessionsParametersQueryCreated'OneOf1Gt = GHC.Maybe.Nothing,
      getCheckoutSessionsParametersQueryCreated'OneOf1Gte = GHC.Maybe.Nothing,
      getCheckoutSessionsParametersQueryCreated'OneOf1Lt = GHC.Maybe.Nothing,
      getCheckoutSessionsParametersQueryCreated'OneOf1Lte = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @paths.\/v1\/checkout\/sessions.GET.parameters.properties.queryCreated.anyOf@ in the specification.
--
-- Represents the parameter named \'created\'
--
-- Only return the Checkout Sessions that were created during the given date interval.
data GetCheckoutSessionsParametersQueryCreated'Variants
  = GetCheckoutSessionsParametersQueryCreated'GetCheckoutSessionsParametersQueryCreated'OneOf1 GetCheckoutSessionsParametersQueryCreated'OneOf1
  | GetCheckoutSessionsParametersQueryCreated'Int GHC.Types.Int
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetCheckoutSessionsParametersQueryCreated'Variants where
  toJSON (GetCheckoutSessionsParametersQueryCreated'GetCheckoutSessionsParametersQueryCreated'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (GetCheckoutSessionsParametersQueryCreated'Int a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON GetCheckoutSessionsParametersQueryCreated'Variants where
  parseJSON val = case (GetCheckoutSessionsParametersQueryCreated'GetCheckoutSessionsParametersQueryCreated'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetCheckoutSessionsParametersQueryCreated'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the object schema located at @paths.\/v1\/checkout\/sessions.GET.parameters.properties.queryCustomer_details@ in the specification.
--
-- Represents the parameter named \'customer_details\'
--
-- Only return the Checkout Sessions for the Customer details specified.
data GetCheckoutSessionsParametersQueryCustomerDetails' = GetCheckoutSessionsParametersQueryCustomerDetails'
  { -- | email
    getCheckoutSessionsParametersQueryCustomerDetails'Email :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetCheckoutSessionsParametersQueryCustomerDetails' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["email" Data.Aeson.Types.ToJSON..= getCheckoutSessionsParametersQueryCustomerDetails'Email obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["email" Data.Aeson.Types.ToJSON..= getCheckoutSessionsParametersQueryCustomerDetails'Email obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetCheckoutSessionsParametersQueryCustomerDetails' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCheckoutSessionsParametersQueryCustomerDetails'" (\obj -> GHC.Base.pure GetCheckoutSessionsParametersQueryCustomerDetails' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "email"))

-- | Create a new 'GetCheckoutSessionsParametersQueryCustomerDetails'' with all required fields.
mkGetCheckoutSessionsParametersQueryCustomerDetails' ::
  -- | 'getCheckoutSessionsParametersQueryCustomerDetails'Email'
  Data.Text.Internal.Text ->
  GetCheckoutSessionsParametersQueryCustomerDetails'
mkGetCheckoutSessionsParametersQueryCustomerDetails' getCheckoutSessionsParametersQueryCustomerDetails'Email = GetCheckoutSessionsParametersQueryCustomerDetails' {getCheckoutSessionsParametersQueryCustomerDetails'Email = getCheckoutSessionsParametersQueryCustomerDetails'Email}

-- | Defines the enum schema located at @paths.\/v1\/checkout\/sessions.GET.parameters.properties.queryStatus@ in the specification.
--
-- Represents the parameter named \'status\'
--
-- Only return the Checkout Sessions matching the given status.
data GetCheckoutSessionsParametersQueryStatus'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GetCheckoutSessionsParametersQueryStatus'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GetCheckoutSessionsParametersQueryStatus'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"complete"@
    GetCheckoutSessionsParametersQueryStatus'EnumComplete
  | -- | Represents the JSON value @"expired"@
    GetCheckoutSessionsParametersQueryStatus'EnumExpired
  | -- | Represents the JSON value @"open"@
    GetCheckoutSessionsParametersQueryStatus'EnumOpen
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetCheckoutSessionsParametersQueryStatus' where
  toJSON (GetCheckoutSessionsParametersQueryStatus'Other val) = val
  toJSON (GetCheckoutSessionsParametersQueryStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GetCheckoutSessionsParametersQueryStatus'EnumComplete) = "complete"
  toJSON (GetCheckoutSessionsParametersQueryStatus'EnumExpired) = "expired"
  toJSON (GetCheckoutSessionsParametersQueryStatus'EnumOpen) = "open"

instance Data.Aeson.Types.FromJSON.FromJSON GetCheckoutSessionsParametersQueryStatus' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "complete" -> GetCheckoutSessionsParametersQueryStatus'EnumComplete
            | val GHC.Classes.== "expired" -> GetCheckoutSessionsParametersQueryStatus'EnumExpired
            | val GHC.Classes.== "open" -> GetCheckoutSessionsParametersQueryStatus'EnumOpen
            | GHC.Base.otherwise -> GetCheckoutSessionsParametersQueryStatus'Other val
      )

-- | Represents a response of the operation 'getCheckoutSessions'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetCheckoutSessionsResponseError' is used.
data GetCheckoutSessionsResponse
  = -- | Means either no matching case available or a parse error
    GetCheckoutSessionsResponseError GHC.Base.String
  | -- | Successful response.
    GetCheckoutSessionsResponse200 GetCheckoutSessionsResponseBody200
  | -- | Error response.
    GetCheckoutSessionsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/checkout\/sessions.GET.responses.200.content.application\/json.schema@ in the specification.
data GetCheckoutSessionsResponseBody200 = GetCheckoutSessionsResponseBody200
  { -- | data
    getCheckoutSessionsResponseBody200Data :: ([Checkout'session]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getCheckoutSessionsResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getCheckoutSessionsResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetCheckoutSessionsResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getCheckoutSessionsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getCheckoutSessionsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getCheckoutSessionsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getCheckoutSessionsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getCheckoutSessionsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getCheckoutSessionsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetCheckoutSessionsResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCheckoutSessionsResponseBody200" (\obj -> ((GHC.Base.pure GetCheckoutSessionsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetCheckoutSessionsResponseBody200' with all required fields.
mkGetCheckoutSessionsResponseBody200 ::
  -- | 'getCheckoutSessionsResponseBody200Data'
  [Checkout'session] ->
  -- | 'getCheckoutSessionsResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getCheckoutSessionsResponseBody200Url'
  Data.Text.Internal.Text ->
  GetCheckoutSessionsResponseBody200
mkGetCheckoutSessionsResponseBody200 getCheckoutSessionsResponseBody200Data getCheckoutSessionsResponseBody200HasMore getCheckoutSessionsResponseBody200Url =
  GetCheckoutSessionsResponseBody200
    { getCheckoutSessionsResponseBody200Data = getCheckoutSessionsResponseBody200Data,
      getCheckoutSessionsResponseBody200HasMore = getCheckoutSessionsResponseBody200HasMore,
      getCheckoutSessionsResponseBody200Url = getCheckoutSessionsResponseBody200Url
    }
