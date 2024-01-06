{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getTopups
module StripeAPI.Operations.GetTopups where

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

-- | > GET /v1/topups
--
-- \<p>Returns a list of top-ups.\<\/p>
getTopups ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetTopupsParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetTopupsResponse)
getTopups parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetTopupsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetTopupsResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetTopupsResponseBody200
                                                        )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetTopupsResponseDefault
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
        "/v1/topups"
        [ StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "amount") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTopupsParametersQueryAmount parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "created") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTopupsParametersQueryCreated parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTopupsParametersQueryEndingBefore parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTopupsParametersQueryExpand parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTopupsParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTopupsParametersQueryStartingAfter parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "status") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTopupsParametersQueryStatus parameters) (Data.Text.Internal.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/topups.GET.parameters@ in the specification.
data GetTopupsParameters = GetTopupsParameters
  { -- | queryAmount: Represents the parameter named \'amount\'
    --
    -- A positive integer representing how much to transfer.
    getTopupsParametersQueryAmount :: (GHC.Maybe.Maybe GetTopupsParametersQueryAmount'Variants),
    -- | queryCreated: Represents the parameter named \'created\'
    --
    -- A filter on the list, based on the object \`created\` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
    getTopupsParametersQueryCreated :: (GHC.Maybe.Maybe GetTopupsParametersQueryCreated'Variants),
    -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getTopupsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getTopupsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getTopupsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getTopupsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryStatus: Represents the parameter named \'status\'
    --
    -- Only return top-ups that have the given status. One of \`canceled\`, \`failed\`, \`pending\` or \`succeeded\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getTopupsParametersQueryStatus :: (GHC.Maybe.Maybe GetTopupsParametersQueryStatus')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetTopupsParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAmount" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCreated" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryStartingAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStatus" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryStatus obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAmount" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCreated" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryStartingAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStatus" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryStatus obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetTopupsParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTopupsParameters" (\obj -> ((((((GHC.Base.pure GetTopupsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryAmount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCreated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStatus"))

-- | Create a new 'GetTopupsParameters' with all required fields.
mkGetTopupsParameters :: GetTopupsParameters
mkGetTopupsParameters =
  GetTopupsParameters
    { getTopupsParametersQueryAmount = GHC.Maybe.Nothing,
      getTopupsParametersQueryCreated = GHC.Maybe.Nothing,
      getTopupsParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getTopupsParametersQueryExpand = GHC.Maybe.Nothing,
      getTopupsParametersQueryLimit = GHC.Maybe.Nothing,
      getTopupsParametersQueryStartingAfter = GHC.Maybe.Nothing,
      getTopupsParametersQueryStatus = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/topups.GET.parameters.properties.queryAmount.anyOf@ in the specification.
data GetTopupsParametersQueryAmount'OneOf1 = GetTopupsParametersQueryAmount'OneOf1
  { -- | gt
    getTopupsParametersQueryAmount'OneOf1Gt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | gte
    getTopupsParametersQueryAmount'OneOf1Gte :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lt
    getTopupsParametersQueryAmount'OneOf1Lt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lte
    getTopupsParametersQueryAmount'OneOf1Lte :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetTopupsParametersQueryAmount'OneOf1 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryAmount'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryAmount'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryAmount'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryAmount'OneOf1Lte obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryAmount'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryAmount'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryAmount'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryAmount'OneOf1Lte obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetTopupsParametersQueryAmount'OneOf1 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTopupsParametersQueryAmount'OneOf1" (\obj -> (((GHC.Base.pure GetTopupsParametersQueryAmount'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lte"))

-- | Create a new 'GetTopupsParametersQueryAmount'OneOf1' with all required fields.
mkGetTopupsParametersQueryAmount'OneOf1 :: GetTopupsParametersQueryAmount'OneOf1
mkGetTopupsParametersQueryAmount'OneOf1 =
  GetTopupsParametersQueryAmount'OneOf1
    { getTopupsParametersQueryAmount'OneOf1Gt = GHC.Maybe.Nothing,
      getTopupsParametersQueryAmount'OneOf1Gte = GHC.Maybe.Nothing,
      getTopupsParametersQueryAmount'OneOf1Lt = GHC.Maybe.Nothing,
      getTopupsParametersQueryAmount'OneOf1Lte = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @paths.\/v1\/topups.GET.parameters.properties.queryAmount.anyOf@ in the specification.
--
-- Represents the parameter named \'amount\'
--
-- A positive integer representing how much to transfer.
data GetTopupsParametersQueryAmount'Variants
  = GetTopupsParametersQueryAmount'GetTopupsParametersQueryAmount'OneOf1 GetTopupsParametersQueryAmount'OneOf1
  | GetTopupsParametersQueryAmount'Int GHC.Types.Int
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetTopupsParametersQueryAmount'Variants where
  toJSON (GetTopupsParametersQueryAmount'GetTopupsParametersQueryAmount'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (GetTopupsParametersQueryAmount'Int a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON GetTopupsParametersQueryAmount'Variants where
  parseJSON val = case (GetTopupsParametersQueryAmount'GetTopupsParametersQueryAmount'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetTopupsParametersQueryAmount'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the object schema located at @paths.\/v1\/topups.GET.parameters.properties.queryCreated.anyOf@ in the specification.
data GetTopupsParametersQueryCreated'OneOf1 = GetTopupsParametersQueryCreated'OneOf1
  { -- | gt
    getTopupsParametersQueryCreated'OneOf1Gt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | gte
    getTopupsParametersQueryCreated'OneOf1Gte :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lt
    getTopupsParametersQueryCreated'OneOf1Lt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lte
    getTopupsParametersQueryCreated'OneOf1Lte :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetTopupsParametersQueryCreated'OneOf1 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryCreated'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryCreated'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryCreated'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryCreated'OneOf1Lte obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryCreated'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryCreated'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryCreated'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getTopupsParametersQueryCreated'OneOf1Lte obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetTopupsParametersQueryCreated'OneOf1 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTopupsParametersQueryCreated'OneOf1" (\obj -> (((GHC.Base.pure GetTopupsParametersQueryCreated'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lte"))

-- | Create a new 'GetTopupsParametersQueryCreated'OneOf1' with all required fields.
mkGetTopupsParametersQueryCreated'OneOf1 :: GetTopupsParametersQueryCreated'OneOf1
mkGetTopupsParametersQueryCreated'OneOf1 =
  GetTopupsParametersQueryCreated'OneOf1
    { getTopupsParametersQueryCreated'OneOf1Gt = GHC.Maybe.Nothing,
      getTopupsParametersQueryCreated'OneOf1Gte = GHC.Maybe.Nothing,
      getTopupsParametersQueryCreated'OneOf1Lt = GHC.Maybe.Nothing,
      getTopupsParametersQueryCreated'OneOf1Lte = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @paths.\/v1\/topups.GET.parameters.properties.queryCreated.anyOf@ in the specification.
--
-- Represents the parameter named \'created\'
--
-- A filter on the list, based on the object \`created\` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
data GetTopupsParametersQueryCreated'Variants
  = GetTopupsParametersQueryCreated'GetTopupsParametersQueryCreated'OneOf1 GetTopupsParametersQueryCreated'OneOf1
  | GetTopupsParametersQueryCreated'Int GHC.Types.Int
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetTopupsParametersQueryCreated'Variants where
  toJSON (GetTopupsParametersQueryCreated'GetTopupsParametersQueryCreated'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (GetTopupsParametersQueryCreated'Int a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON GetTopupsParametersQueryCreated'Variants where
  parseJSON val = case (GetTopupsParametersQueryCreated'GetTopupsParametersQueryCreated'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetTopupsParametersQueryCreated'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the enum schema located at @paths.\/v1\/topups.GET.parameters.properties.queryStatus@ in the specification.
--
-- Represents the parameter named \'status\'
--
-- Only return top-ups that have the given status. One of \`canceled\`, \`failed\`, \`pending\` or \`succeeded\`.
data GetTopupsParametersQueryStatus'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GetTopupsParametersQueryStatus'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GetTopupsParametersQueryStatus'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"canceled"@
    GetTopupsParametersQueryStatus'EnumCanceled
  | -- | Represents the JSON value @"failed"@
    GetTopupsParametersQueryStatus'EnumFailed
  | -- | Represents the JSON value @"pending"@
    GetTopupsParametersQueryStatus'EnumPending
  | -- | Represents the JSON value @"succeeded"@
    GetTopupsParametersQueryStatus'EnumSucceeded
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetTopupsParametersQueryStatus' where
  toJSON (GetTopupsParametersQueryStatus'Other val) = val
  toJSON (GetTopupsParametersQueryStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GetTopupsParametersQueryStatus'EnumCanceled) = "canceled"
  toJSON (GetTopupsParametersQueryStatus'EnumFailed) = "failed"
  toJSON (GetTopupsParametersQueryStatus'EnumPending) = "pending"
  toJSON (GetTopupsParametersQueryStatus'EnumSucceeded) = "succeeded"

instance Data.Aeson.Types.FromJSON.FromJSON GetTopupsParametersQueryStatus' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "canceled" -> GetTopupsParametersQueryStatus'EnumCanceled
            | val GHC.Classes.== "failed" -> GetTopupsParametersQueryStatus'EnumFailed
            | val GHC.Classes.== "pending" -> GetTopupsParametersQueryStatus'EnumPending
            | val GHC.Classes.== "succeeded" -> GetTopupsParametersQueryStatus'EnumSucceeded
            | GHC.Base.otherwise -> GetTopupsParametersQueryStatus'Other val
      )

-- | Represents a response of the operation 'getTopups'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetTopupsResponseError' is used.
data GetTopupsResponse
  = -- | Means either no matching case available or a parse error
    GetTopupsResponseError GHC.Base.String
  | -- | Successful response.
    GetTopupsResponse200 GetTopupsResponseBody200
  | -- | Error response.
    GetTopupsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/topups.GET.responses.200.content.application\/json.schema@ in the specification.
data GetTopupsResponseBody200 = GetTopupsResponseBody200
  { -- | data
    getTopupsResponseBody200Data :: ([Topup]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getTopupsResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    -- * Must match pattern \'^\/v1\/topups\'
    getTopupsResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetTopupsResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getTopupsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getTopupsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getTopupsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getTopupsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getTopupsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getTopupsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetTopupsResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTopupsResponseBody200" (\obj -> ((GHC.Base.pure GetTopupsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetTopupsResponseBody200' with all required fields.
mkGetTopupsResponseBody200 ::
  -- | 'getTopupsResponseBody200Data'
  [Topup] ->
  -- | 'getTopupsResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getTopupsResponseBody200Url'
  Data.Text.Internal.Text ->
  GetTopupsResponseBody200
mkGetTopupsResponseBody200 getTopupsResponseBody200Data getTopupsResponseBody200HasMore getTopupsResponseBody200Url =
  GetTopupsResponseBody200
    { getTopupsResponseBody200Data = getTopupsResponseBody200Data,
      getTopupsResponseBody200HasMore = getTopupsResponseBody200HasMore,
      getTopupsResponseBody200Url = getTopupsResponseBody200Url
    }
