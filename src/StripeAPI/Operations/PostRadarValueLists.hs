{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postRadarValueLists
module StripeAPI.Operations.PostRadarValueLists where

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

-- | > POST /v1/radar/value_lists
-- 
-- \<p>Creates a new \<code>ValueList\<\/code> object, which can then be referenced in rules.\<\/p>
postRadarValueLists :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> PostRadarValueListsRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostRadarValueListsResponse)) -- ^ Monad containing the result of the operation
postRadarValueLists config
                    body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostRadarValueListsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostRadarValueListsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                           Radar'valueList)
                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostRadarValueListsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/radar/value_lists") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/radar/value_lists
-- 
-- The same as 'postRadarValueLists' but returns the raw 'Data.ByteString.Char8.ByteString'
postRadarValueListsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          StripeAPI.Common.Configuration s ->
                          PostRadarValueListsRequestBody ->
                          m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postRadarValueListsRaw config
                       body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/radar/value_lists") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/radar/value_lists
-- 
-- Monadic version of 'postRadarValueLists' (use with 'StripeAPI.Common.runWithConfiguration')
postRadarValueListsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        PostRadarValueListsRequestBody ->
                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                           m
                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response PostRadarValueListsResponse))
postRadarValueListsM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostRadarValueListsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostRadarValueListsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                            Radar'valueList)
                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostRadarValueListsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/radar/value_lists") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/radar/value_lists
-- 
-- Monadic version of 'postRadarValueListsRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postRadarValueListsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                         StripeAPI.Common.SecurityScheme s) =>
                           PostRadarValueListsRequestBody ->
                           Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                              m
                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postRadarValueListsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/radar/value_lists") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postRadarValueListsRequestBody
-- 
-- 
data PostRadarValueListsRequestBody = PostRadarValueListsRequestBody {
  -- | alias: The name of the value list for use in rules.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 100
  postRadarValueListsRequestBodyAlias :: Data.Text.Internal.Text
  -- | expand: Specifies which fields in the response should be expanded.
  , postRadarValueListsRequestBodyExpand :: (GHC.Maybe.Maybe ([] Data.Text.Internal.Text))
  -- | item_type: Type of the items in the value list. One of \`card_fingerprint\`, \`card_bin\`, \`email\`, \`ip_address\`, \`country\`, \`string\`, or \`case_sensitive_string\`. Use \`string\` if the item type is unknown or mixed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postRadarValueListsRequestBodyItemType :: (GHC.Maybe.Maybe PostRadarValueListsRequestBodyItemType')
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postRadarValueListsRequestBodyMetadata :: (GHC.Maybe.Maybe PostRadarValueListsRequestBodyMetadata')
  -- | name: The human-readable name of the value list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 100
  , postRadarValueListsRequestBodyName :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostRadarValueListsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "alias" (postRadarValueListsRequestBodyAlias obj) : (Data.Aeson..=) "expand" (postRadarValueListsRequestBodyExpand obj) : (Data.Aeson..=) "item_type" (postRadarValueListsRequestBodyItemType obj) : (Data.Aeson..=) "metadata" (postRadarValueListsRequestBodyMetadata obj) : (Data.Aeson..=) "name" (postRadarValueListsRequestBodyName obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "alias" (postRadarValueListsRequestBodyAlias obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postRadarValueListsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "item_type" (postRadarValueListsRequestBodyItemType obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postRadarValueListsRequestBodyMetadata obj) GHC.Base.<> (Data.Aeson..=) "name" (postRadarValueListsRequestBodyName obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostRadarValueListsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostRadarValueListsRequestBody" (\obj -> ((((GHC.Base.pure PostRadarValueListsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "alias")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "item_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name"))
-- | Defines the enum schema postRadarValueListsRequestBodyItem_type\'
-- 
-- Type of the items in the value list. One of \`card_fingerprint\`, \`card_bin\`, \`email\`, \`ip_address\`, \`country\`, \`string\`, or \`case_sensitive_string\`. Use \`string\` if the item type is unknown or mixed.
data PostRadarValueListsRequestBodyItemType'
    = PostRadarValueListsRequestBodyItemType'EnumOther Data.Aeson.Types.Internal.Value
    | PostRadarValueListsRequestBodyItemType'EnumTyped Data.Text.Internal.Text
    | PostRadarValueListsRequestBodyItemType'EnumStringCardBin
    | PostRadarValueListsRequestBodyItemType'EnumStringCardFingerprint
    | PostRadarValueListsRequestBodyItemType'EnumStringCaseSensitiveString
    | PostRadarValueListsRequestBodyItemType'EnumStringCountry
    | PostRadarValueListsRequestBodyItemType'EnumStringEmail
    | PostRadarValueListsRequestBodyItemType'EnumStringIpAddress
    | PostRadarValueListsRequestBodyItemType'EnumStringString
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostRadarValueListsRequestBodyItemType'
    where toJSON (PostRadarValueListsRequestBodyItemType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostRadarValueListsRequestBodyItemType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostRadarValueListsRequestBodyItemType'EnumStringCardBin) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_bin"
          toJSON (PostRadarValueListsRequestBodyItemType'EnumStringCardFingerprint) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_fingerprint"
          toJSON (PostRadarValueListsRequestBodyItemType'EnumStringCaseSensitiveString) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "case_sensitive_string"
          toJSON (PostRadarValueListsRequestBodyItemType'EnumStringCountry) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "country"
          toJSON (PostRadarValueListsRequestBodyItemType'EnumStringEmail) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "email"
          toJSON (PostRadarValueListsRequestBodyItemType'EnumStringIpAddress) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ip_address"
          toJSON (PostRadarValueListsRequestBodyItemType'EnumStringString) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "string"
instance Data.Aeson.FromJSON PostRadarValueListsRequestBodyItemType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_bin")
                                          then PostRadarValueListsRequestBodyItemType'EnumStringCardBin
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_fingerprint")
                                                then PostRadarValueListsRequestBodyItemType'EnumStringCardFingerprint
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "case_sensitive_string")
                                                      then PostRadarValueListsRequestBodyItemType'EnumStringCaseSensitiveString
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "country")
                                                            then PostRadarValueListsRequestBodyItemType'EnumStringCountry
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "email")
                                                                  then PostRadarValueListsRequestBodyItemType'EnumStringEmail
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ip_address")
                                                                        then PostRadarValueListsRequestBodyItemType'EnumStringIpAddress
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "string")
                                                                              then PostRadarValueListsRequestBodyItemType'EnumStringString
                                                                              else PostRadarValueListsRequestBodyItemType'EnumOther val)
-- | Defines the data type for the schema postRadarValueListsRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostRadarValueListsRequestBodyMetadata' = PostRadarValueListsRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostRadarValueListsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostRadarValueListsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostRadarValueListsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostRadarValueListsRequestBodyMetadata')
-- | Represents a response of the operation 'postRadarValueLists'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostRadarValueListsResponseError' is used.
data PostRadarValueListsResponse =                   
   PostRadarValueListsResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostRadarValueListsResponse200 Radar'valueList   -- ^ Successful response.
  | PostRadarValueListsResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
