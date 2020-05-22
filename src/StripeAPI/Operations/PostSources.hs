{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postSources
module StripeAPI.Operations.PostSources where

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

-- | > POST /v1/sources
-- 
-- \<p>Creates a new source object.\<\/p>
postSources :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> PostSourcesRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostSourcesResponse)) -- ^ Monad containing the result of the operation
postSources config
            body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSourcesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSourcesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                   Source)
                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSourcesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/sources") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/sources
-- 
-- The same as 'postSources' but returns the raw 'Data.ByteString.Char8.ByteString'
postSourcesRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                StripeAPI.Common.SecurityScheme s) =>
                  StripeAPI.Common.Configuration s ->
                  PostSourcesRequestBody ->
                  m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSourcesRaw config
               body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/sources") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/sources
-- 
-- Monadic version of 'postSources' (use with 'StripeAPI.Common.runWithConfiguration')
postSourcesM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                              StripeAPI.Common.SecurityScheme s) =>
                PostSourcesRequestBody ->
                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                   m
                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                       (Network.HTTP.Client.Types.Response PostSourcesResponse))
postSourcesM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSourcesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSourcesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                    Source)
                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSourcesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/sources") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/sources
-- 
-- Monadic version of 'postSourcesRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postSourcesRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                 StripeAPI.Common.SecurityScheme s) =>
                   PostSourcesRequestBody ->
                   Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                      m
                                                      (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSourcesRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/sources") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postSourcesRequestBody
-- 
-- 
data PostSourcesRequestBody = PostSourcesRequestBody {
  -- | amount: Amount associated with the source. This is the amount for which the source will be chargeable once ready. Required for \`single_use\` sources. Not supported for \`receiver\` type sources, where charge amount may not be specified until funds land.
  postSourcesRequestBodyAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | currency: Three-letter [ISO code for the currency](https:\/\/stripe.com\/docs\/currencies) associated with the source. This is the currency for which the source will be chargeable once ready.
  , postSourcesRequestBodyCurrency :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | customer: The \`Customer\` to whom the original source is attached to. Must be set when the original source is not a \`Source\` (e.g., \`Card\`).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  , postSourcesRequestBodyCustomer :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | expand: Specifies which fields in the response should be expanded.
  , postSourcesRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | flow: The authentication \`flow\` of the source to create. \`flow\` is one of \`redirect\`, \`receiver\`, \`code_verification\`, \`none\`. It is generally inferred unless a type supports multiple flows.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodyFlow :: (GHC.Maybe.Maybe PostSourcesRequestBodyFlow')
  -- | mandate: Information about a mandate possibility attached to a source object (generally for bank debits) as well as its acceptance status.
  , postSourcesRequestBodyMandate :: (GHC.Maybe.Maybe PostSourcesRequestBodyMandate')
  -- | metadata
  , postSourcesRequestBodyMetadata :: (GHC.Maybe.Maybe PostSourcesRequestBodyMetadata')
  -- | original_source: The source to share.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodyOriginalSource :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | owner: Information about the owner of the payment instrument that may be used or required by particular source types.
  , postSourcesRequestBodyOwner :: (GHC.Maybe.Maybe PostSourcesRequestBodyOwner')
  -- | receiver: Optional parameters for the receiver flow. Can be set only if the source is a receiver (\`flow\` is \`receiver\`).
  , postSourcesRequestBodyReceiver :: (GHC.Maybe.Maybe PostSourcesRequestBodyReceiver')
  -- | redirect: Parameters required for the redirect flow. Required if the source is authenticated by a redirect (\`flow\` is \`redirect\`).
  , postSourcesRequestBodyRedirect :: (GHC.Maybe.Maybe PostSourcesRequestBodyRedirect')
  -- | source_order: Information about the items and shipping associated with the source. Required for transactional credit (for example Klarna) sources before you can charge it.
  , postSourcesRequestBodySourceOrder :: (GHC.Maybe.Maybe PostSourcesRequestBodySourceOrder')
  -- | statement_descriptor: An arbitrary string to be displayed on your customer\'s statement. As an example, if your website is \`RunClub\` and the item you\'re charging for is a race ticket, you may want to specify a \`statement_descriptor\` of \`RunClub 5K race ticket.\` While many payment types will display this information, some may not display it at all.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodyStatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | token: An optional token used to create the source. When passed, token properties will override source parameters.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodyToken :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | type: The \`type\` of the source to create. Required unless \`customer\` and \`original_source\` are specified (see the [Cloning card Sources](https:\/\/stripe.com\/docs\/sources\/connect\#cloning-card-sources) guide)
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodyType :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | usage
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodyUsage :: (GHC.Maybe.Maybe PostSourcesRequestBodyUsage')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postSourcesRequestBodyAmount obj) : (Data.Aeson..=) "currency" (postSourcesRequestBodyCurrency obj) : (Data.Aeson..=) "customer" (postSourcesRequestBodyCustomer obj) : (Data.Aeson..=) "expand" (postSourcesRequestBodyExpand obj) : (Data.Aeson..=) "flow" (postSourcesRequestBodyFlow obj) : (Data.Aeson..=) "mandate" (postSourcesRequestBodyMandate obj) : (Data.Aeson..=) "metadata" (postSourcesRequestBodyMetadata obj) : (Data.Aeson..=) "original_source" (postSourcesRequestBodyOriginalSource obj) : (Data.Aeson..=) "owner" (postSourcesRequestBodyOwner obj) : (Data.Aeson..=) "receiver" (postSourcesRequestBodyReceiver obj) : (Data.Aeson..=) "redirect" (postSourcesRequestBodyRedirect obj) : (Data.Aeson..=) "source_order" (postSourcesRequestBodySourceOrder obj) : (Data.Aeson..=) "statement_descriptor" (postSourcesRequestBodyStatementDescriptor obj) : (Data.Aeson..=) "token" (postSourcesRequestBodyToken obj) : (Data.Aeson..=) "type" (postSourcesRequestBodyType obj) : (Data.Aeson..=) "usage" (postSourcesRequestBodyUsage obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postSourcesRequestBodyAmount obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postSourcesRequestBodyCurrency obj) GHC.Base.<> ((Data.Aeson..=) "customer" (postSourcesRequestBodyCustomer obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postSourcesRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "flow" (postSourcesRequestBodyFlow obj) GHC.Base.<> ((Data.Aeson..=) "mandate" (postSourcesRequestBodyMandate obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postSourcesRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "original_source" (postSourcesRequestBodyOriginalSource obj) GHC.Base.<> ((Data.Aeson..=) "owner" (postSourcesRequestBodyOwner obj) GHC.Base.<> ((Data.Aeson..=) "receiver" (postSourcesRequestBodyReceiver obj) GHC.Base.<> ((Data.Aeson..=) "redirect" (postSourcesRequestBodyRedirect obj) GHC.Base.<> ((Data.Aeson..=) "source_order" (postSourcesRequestBodySourceOrder obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor" (postSourcesRequestBodyStatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "token" (postSourcesRequestBodyToken obj) GHC.Base.<> ((Data.Aeson..=) "type" (postSourcesRequestBodyType obj) GHC.Base.<> (Data.Aeson..=) "usage" (postSourcesRequestBodyUsage obj))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSourcesRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSourcesRequestBody" (\obj -> (((((((((((((((GHC.Base.pure PostSourcesRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mandate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "original_source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owner")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "receiver")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "redirect")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source_order")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "usage"))
-- | Defines the enum schema postSourcesRequestBodyFlow\'
-- 
-- The authentication \`flow\` of the source to create. \`flow\` is one of \`redirect\`, \`receiver\`, \`code_verification\`, \`none\`. It is generally inferred unless a type supports multiple flows.
data PostSourcesRequestBodyFlow'
    = PostSourcesRequestBodyFlow'EnumOther Data.Aeson.Types.Internal.Value
    | PostSourcesRequestBodyFlow'EnumTyped GHC.Base.String
    | PostSourcesRequestBodyFlow'EnumStringCodeVerification
    | PostSourcesRequestBodyFlow'EnumStringNone
    | PostSourcesRequestBodyFlow'EnumStringReceiver
    | PostSourcesRequestBodyFlow'EnumStringRedirect
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesRequestBodyFlow'
    where toJSON (PostSourcesRequestBodyFlow'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesRequestBodyFlow'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesRequestBodyFlow'EnumStringCodeVerification) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "code_verification"
          toJSON (PostSourcesRequestBodyFlow'EnumStringNone) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none"
          toJSON (PostSourcesRequestBodyFlow'EnumStringReceiver) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "receiver"
          toJSON (PostSourcesRequestBodyFlow'EnumStringRedirect) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "redirect"
instance Data.Aeson.FromJSON PostSourcesRequestBodyFlow'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "code_verification")
                                          then PostSourcesRequestBodyFlow'EnumStringCodeVerification
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none")
                                                then PostSourcesRequestBodyFlow'EnumStringNone
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "receiver")
                                                      then PostSourcesRequestBodyFlow'EnumStringReceiver
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "redirect")
                                                            then PostSourcesRequestBodyFlow'EnumStringRedirect
                                                            else PostSourcesRequestBodyFlow'EnumOther val)
-- | Defines the data type for the schema postSourcesRequestBodyMandate\'
-- 
-- Information about a mandate possibility attached to a source object (generally for bank debits) as well as its acceptance status.
data PostSourcesRequestBodyMandate' = PostSourcesRequestBodyMandate' {
  -- | acceptance
  postSourcesRequestBodyMandate'Acceptance :: (GHC.Maybe.Maybe PostSourcesRequestBodyMandate'Acceptance')
  -- | amount
  , postSourcesRequestBodyMandate'Amount :: (GHC.Maybe.Maybe PostSourcesRequestBodyMandate'Amount'Variants)
  -- | currency
  , postSourcesRequestBodyMandate'Currency :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | interval
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodyMandate'Interval :: (GHC.Maybe.Maybe PostSourcesRequestBodyMandate'Interval')
  -- | notification_method
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodyMandate'NotificationMethod :: (GHC.Maybe.Maybe PostSourcesRequestBodyMandate'NotificationMethod')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesRequestBodyMandate'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "acceptance" (postSourcesRequestBodyMandate'Acceptance obj) : (Data.Aeson..=) "amount" (postSourcesRequestBodyMandate'Amount obj) : (Data.Aeson..=) "currency" (postSourcesRequestBodyMandate'Currency obj) : (Data.Aeson..=) "interval" (postSourcesRequestBodyMandate'Interval obj) : (Data.Aeson..=) "notification_method" (postSourcesRequestBodyMandate'NotificationMethod obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "acceptance" (postSourcesRequestBodyMandate'Acceptance obj) GHC.Base.<> ((Data.Aeson..=) "amount" (postSourcesRequestBodyMandate'Amount obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postSourcesRequestBodyMandate'Currency obj) GHC.Base.<> ((Data.Aeson..=) "interval" (postSourcesRequestBodyMandate'Interval obj) GHC.Base.<> (Data.Aeson..=) "notification_method" (postSourcesRequestBodyMandate'NotificationMethod obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSourcesRequestBodyMandate'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSourcesRequestBodyMandate'" (\obj -> ((((GHC.Base.pure PostSourcesRequestBodyMandate' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "acceptance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "notification_method"))
-- | Defines the data type for the schema postSourcesRequestBodyMandate\'Acceptance\'
-- 
-- 
data PostSourcesRequestBodyMandate'Acceptance' = PostSourcesRequestBodyMandate'Acceptance' {
  -- | date
  postSourcesRequestBodyMandate'Acceptance'Date :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | ip
  , postSourcesRequestBodyMandate'Acceptance'Ip :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | offline
  , postSourcesRequestBodyMandate'Acceptance'Offline :: (GHC.Maybe.Maybe PostSourcesRequestBodyMandate'Acceptance'Offline')
  -- | online
  , postSourcesRequestBodyMandate'Acceptance'Online :: (GHC.Maybe.Maybe PostSourcesRequestBodyMandate'Acceptance'Online')
  -- | status
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodyMandate'Acceptance'Status :: PostSourcesRequestBodyMandate'Acceptance'Status'
  -- | type
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodyMandate'Acceptance'Type :: (GHC.Maybe.Maybe PostSourcesRequestBodyMandate'Acceptance'Type')
  -- | user_agent
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodyMandate'Acceptance'UserAgent :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesRequestBodyMandate'Acceptance'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "date" (postSourcesRequestBodyMandate'Acceptance'Date obj) : (Data.Aeson..=) "ip" (postSourcesRequestBodyMandate'Acceptance'Ip obj) : (Data.Aeson..=) "offline" (postSourcesRequestBodyMandate'Acceptance'Offline obj) : (Data.Aeson..=) "online" (postSourcesRequestBodyMandate'Acceptance'Online obj) : (Data.Aeson..=) "status" (postSourcesRequestBodyMandate'Acceptance'Status obj) : (Data.Aeson..=) "type" (postSourcesRequestBodyMandate'Acceptance'Type obj) : (Data.Aeson..=) "user_agent" (postSourcesRequestBodyMandate'Acceptance'UserAgent obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "date" (postSourcesRequestBodyMandate'Acceptance'Date obj) GHC.Base.<> ((Data.Aeson..=) "ip" (postSourcesRequestBodyMandate'Acceptance'Ip obj) GHC.Base.<> ((Data.Aeson..=) "offline" (postSourcesRequestBodyMandate'Acceptance'Offline obj) GHC.Base.<> ((Data.Aeson..=) "online" (postSourcesRequestBodyMandate'Acceptance'Online obj) GHC.Base.<> ((Data.Aeson..=) "status" (postSourcesRequestBodyMandate'Acceptance'Status obj) GHC.Base.<> ((Data.Aeson..=) "type" (postSourcesRequestBodyMandate'Acceptance'Type obj) GHC.Base.<> (Data.Aeson..=) "user_agent" (postSourcesRequestBodyMandate'Acceptance'UserAgent obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSourcesRequestBodyMandate'Acceptance'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSourcesRequestBodyMandate'Acceptance'" (\obj -> ((((((GHC.Base.pure PostSourcesRequestBodyMandate'Acceptance' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "offline")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "online")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "user_agent"))
-- | Defines the data type for the schema postSourcesRequestBodyMandate\'Acceptance\'Offline\'
-- 
-- 
data PostSourcesRequestBodyMandate'Acceptance'Offline' = PostSourcesRequestBodyMandate'Acceptance'Offline' {
  -- | contact_email
  postSourcesRequestBodyMandate'Acceptance'Offline'ContactEmail :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesRequestBodyMandate'Acceptance'Offline'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "contact_email" (postSourcesRequestBodyMandate'Acceptance'Offline'ContactEmail obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "contact_email" (postSourcesRequestBodyMandate'Acceptance'Offline'ContactEmail obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSourcesRequestBodyMandate'Acceptance'Offline'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSourcesRequestBodyMandate'Acceptance'Offline'" (\obj -> GHC.Base.pure PostSourcesRequestBodyMandate'Acceptance'Offline' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "contact_email"))
-- | Defines the data type for the schema postSourcesRequestBodyMandate\'Acceptance\'Online\'
-- 
-- 
data PostSourcesRequestBodyMandate'Acceptance'Online' = PostSourcesRequestBodyMandate'Acceptance'Online' {
  -- | date
  postSourcesRequestBodyMandate'Acceptance'Online'Date :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | ip
  , postSourcesRequestBodyMandate'Acceptance'Online'Ip :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | user_agent
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodyMandate'Acceptance'Online'UserAgent :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesRequestBodyMandate'Acceptance'Online'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "date" (postSourcesRequestBodyMandate'Acceptance'Online'Date obj) : (Data.Aeson..=) "ip" (postSourcesRequestBodyMandate'Acceptance'Online'Ip obj) : (Data.Aeson..=) "user_agent" (postSourcesRequestBodyMandate'Acceptance'Online'UserAgent obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "date" (postSourcesRequestBodyMandate'Acceptance'Online'Date obj) GHC.Base.<> ((Data.Aeson..=) "ip" (postSourcesRequestBodyMandate'Acceptance'Online'Ip obj) GHC.Base.<> (Data.Aeson..=) "user_agent" (postSourcesRequestBodyMandate'Acceptance'Online'UserAgent obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostSourcesRequestBodyMandate'Acceptance'Online'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSourcesRequestBodyMandate'Acceptance'Online'" (\obj -> ((GHC.Base.pure PostSourcesRequestBodyMandate'Acceptance'Online' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "user_agent"))
-- | Defines the enum schema postSourcesRequestBodyMandate\'Acceptance\'Status\'
-- 
-- 
data PostSourcesRequestBodyMandate'Acceptance'Status'
    = PostSourcesRequestBodyMandate'Acceptance'Status'EnumOther Data.Aeson.Types.Internal.Value
    | PostSourcesRequestBodyMandate'Acceptance'Status'EnumTyped GHC.Base.String
    | PostSourcesRequestBodyMandate'Acceptance'Status'EnumStringAccepted
    | PostSourcesRequestBodyMandate'Acceptance'Status'EnumStringPending
    | PostSourcesRequestBodyMandate'Acceptance'Status'EnumStringRefused
    | PostSourcesRequestBodyMandate'Acceptance'Status'EnumStringRevoked
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesRequestBodyMandate'Acceptance'Status'
    where toJSON (PostSourcesRequestBodyMandate'Acceptance'Status'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesRequestBodyMandate'Acceptance'Status'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesRequestBodyMandate'Acceptance'Status'EnumStringAccepted) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "accepted"
          toJSON (PostSourcesRequestBodyMandate'Acceptance'Status'EnumStringPending) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending"
          toJSON (PostSourcesRequestBodyMandate'Acceptance'Status'EnumStringRefused) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "refused"
          toJSON (PostSourcesRequestBodyMandate'Acceptance'Status'EnumStringRevoked) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "revoked"
instance Data.Aeson.FromJSON PostSourcesRequestBodyMandate'Acceptance'Status'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "accepted")
                                          then PostSourcesRequestBodyMandate'Acceptance'Status'EnumStringAccepted
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending")
                                                then PostSourcesRequestBodyMandate'Acceptance'Status'EnumStringPending
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "refused")
                                                      then PostSourcesRequestBodyMandate'Acceptance'Status'EnumStringRefused
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "revoked")
                                                            then PostSourcesRequestBodyMandate'Acceptance'Status'EnumStringRevoked
                                                            else PostSourcesRequestBodyMandate'Acceptance'Status'EnumOther val)
-- | Defines the enum schema postSourcesRequestBodyMandate\'Acceptance\'Type\'
-- 
-- 
data PostSourcesRequestBodyMandate'Acceptance'Type'
    = PostSourcesRequestBodyMandate'Acceptance'Type'EnumOther Data.Aeson.Types.Internal.Value
    | PostSourcesRequestBodyMandate'Acceptance'Type'EnumTyped GHC.Base.String
    | PostSourcesRequestBodyMandate'Acceptance'Type'EnumStringOffline
    | PostSourcesRequestBodyMandate'Acceptance'Type'EnumStringOnline
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesRequestBodyMandate'Acceptance'Type'
    where toJSON (PostSourcesRequestBodyMandate'Acceptance'Type'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesRequestBodyMandate'Acceptance'Type'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesRequestBodyMandate'Acceptance'Type'EnumStringOffline) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "offline"
          toJSON (PostSourcesRequestBodyMandate'Acceptance'Type'EnumStringOnline) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "online"
instance Data.Aeson.FromJSON PostSourcesRequestBodyMandate'Acceptance'Type'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "offline")
                                          then PostSourcesRequestBodyMandate'Acceptance'Type'EnumStringOffline
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "online")
                                                then PostSourcesRequestBodyMandate'Acceptance'Type'EnumStringOnline
                                                else PostSourcesRequestBodyMandate'Acceptance'Type'EnumOther val)
-- | Defines the enum schema postSourcesRequestBodyMandate\'Amount\'OneOf1
-- 
-- 
data PostSourcesRequestBodyMandate'Amount'OneOf1
    = PostSourcesRequestBodyMandate'Amount'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSourcesRequestBodyMandate'Amount'OneOf1EnumTyped GHC.Base.String
    | PostSourcesRequestBodyMandate'Amount'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesRequestBodyMandate'Amount'OneOf1
    where toJSON (PostSourcesRequestBodyMandate'Amount'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesRequestBodyMandate'Amount'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesRequestBodyMandate'Amount'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSourcesRequestBodyMandate'Amount'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSourcesRequestBodyMandate'Amount'OneOf1EnumString_
                                          else PostSourcesRequestBodyMandate'Amount'OneOf1EnumOther val)
-- | Define the one-of schema postSourcesRequestBodyMandate\'Amount\'
-- 
-- 
data PostSourcesRequestBodyMandate'Amount'Variants
    = PostSourcesRequestBodyMandate'Amount'PostSourcesRequestBodyMandate'Amount'OneOf1 PostSourcesRequestBodyMandate'Amount'OneOf1
    | PostSourcesRequestBodyMandate'Amount'Integer GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSourcesRequestBodyMandate'Amount'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSourcesRequestBodyMandate'Amount'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postSourcesRequestBodyMandate\'Interval\'
-- 
-- 
data PostSourcesRequestBodyMandate'Interval'
    = PostSourcesRequestBodyMandate'Interval'EnumOther Data.Aeson.Types.Internal.Value
    | PostSourcesRequestBodyMandate'Interval'EnumTyped GHC.Base.String
    | PostSourcesRequestBodyMandate'Interval'EnumStringOneTime
    | PostSourcesRequestBodyMandate'Interval'EnumStringScheduled
    | PostSourcesRequestBodyMandate'Interval'EnumStringVariable
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesRequestBodyMandate'Interval'
    where toJSON (PostSourcesRequestBodyMandate'Interval'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesRequestBodyMandate'Interval'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesRequestBodyMandate'Interval'EnumStringOneTime) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "one_time"
          toJSON (PostSourcesRequestBodyMandate'Interval'EnumStringScheduled) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "scheduled"
          toJSON (PostSourcesRequestBodyMandate'Interval'EnumStringVariable) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "variable"
instance Data.Aeson.FromJSON PostSourcesRequestBodyMandate'Interval'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "one_time")
                                          then PostSourcesRequestBodyMandate'Interval'EnumStringOneTime
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "scheduled")
                                                then PostSourcesRequestBodyMandate'Interval'EnumStringScheduled
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "variable")
                                                      then PostSourcesRequestBodyMandate'Interval'EnumStringVariable
                                                      else PostSourcesRequestBodyMandate'Interval'EnumOther val)
-- | Defines the enum schema postSourcesRequestBodyMandate\'Notification_method\'
-- 
-- 
data PostSourcesRequestBodyMandate'NotificationMethod'
    = PostSourcesRequestBodyMandate'NotificationMethod'EnumOther Data.Aeson.Types.Internal.Value
    | PostSourcesRequestBodyMandate'NotificationMethod'EnumTyped GHC.Base.String
    | PostSourcesRequestBodyMandate'NotificationMethod'EnumStringDeprecatedNone
    | PostSourcesRequestBodyMandate'NotificationMethod'EnumStringEmail
    | PostSourcesRequestBodyMandate'NotificationMethod'EnumStringManual
    | PostSourcesRequestBodyMandate'NotificationMethod'EnumStringNone
    | PostSourcesRequestBodyMandate'NotificationMethod'EnumStringStripeEmail
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesRequestBodyMandate'NotificationMethod'
    where toJSON (PostSourcesRequestBodyMandate'NotificationMethod'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesRequestBodyMandate'NotificationMethod'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesRequestBodyMandate'NotificationMethod'EnumStringDeprecatedNone) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "deprecated_none"
          toJSON (PostSourcesRequestBodyMandate'NotificationMethod'EnumStringEmail) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "email"
          toJSON (PostSourcesRequestBodyMandate'NotificationMethod'EnumStringManual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "manual"
          toJSON (PostSourcesRequestBodyMandate'NotificationMethod'EnumStringNone) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none"
          toJSON (PostSourcesRequestBodyMandate'NotificationMethod'EnumStringStripeEmail) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "stripe_email"
instance Data.Aeson.FromJSON PostSourcesRequestBodyMandate'NotificationMethod'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "deprecated_none")
                                          then PostSourcesRequestBodyMandate'NotificationMethod'EnumStringDeprecatedNone
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "email")
                                                then PostSourcesRequestBodyMandate'NotificationMethod'EnumStringEmail
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "manual")
                                                      then PostSourcesRequestBodyMandate'NotificationMethod'EnumStringManual
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none")
                                                            then PostSourcesRequestBodyMandate'NotificationMethod'EnumStringNone
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "stripe_email")
                                                                  then PostSourcesRequestBodyMandate'NotificationMethod'EnumStringStripeEmail
                                                                  else PostSourcesRequestBodyMandate'NotificationMethod'EnumOther val)
-- | Defines the data type for the schema postSourcesRequestBodyMetadata\'
-- 
-- 
data PostSourcesRequestBodyMetadata' = PostSourcesRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostSourcesRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSourcesRequestBodyMetadata'" (\obj -> GHC.Base.pure PostSourcesRequestBodyMetadata')
-- | Defines the data type for the schema postSourcesRequestBodyOwner\'
-- 
-- Information about the owner of the payment instrument that may be used or required by particular source types.
data PostSourcesRequestBodyOwner' = PostSourcesRequestBodyOwner' {
  -- | address
  postSourcesRequestBodyOwner'Address :: (GHC.Maybe.Maybe PostSourcesRequestBodyOwner'Address')
  -- | email
  , postSourcesRequestBodyOwner'Email :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodyOwner'Name :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | phone
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodyOwner'Phone :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesRequestBodyOwner'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postSourcesRequestBodyOwner'Address obj) : (Data.Aeson..=) "email" (postSourcesRequestBodyOwner'Email obj) : (Data.Aeson..=) "name" (postSourcesRequestBodyOwner'Name obj) : (Data.Aeson..=) "phone" (postSourcesRequestBodyOwner'Phone obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postSourcesRequestBodyOwner'Address obj) GHC.Base.<> ((Data.Aeson..=) "email" (postSourcesRequestBodyOwner'Email obj) GHC.Base.<> ((Data.Aeson..=) "name" (postSourcesRequestBodyOwner'Name obj) GHC.Base.<> (Data.Aeson..=) "phone" (postSourcesRequestBodyOwner'Phone obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSourcesRequestBodyOwner'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSourcesRequestBodyOwner'" (\obj -> (((GHC.Base.pure PostSourcesRequestBodyOwner' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone"))
-- | Defines the data type for the schema postSourcesRequestBodyOwner\'Address\'
-- 
-- 
data PostSourcesRequestBodyOwner'Address' = PostSourcesRequestBodyOwner'Address' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postSourcesRequestBodyOwner'Address'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodyOwner'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodyOwner'Address'Line1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodyOwner'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodyOwner'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodyOwner'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesRequestBodyOwner'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postSourcesRequestBodyOwner'Address'City obj) : (Data.Aeson..=) "country" (postSourcesRequestBodyOwner'Address'Country obj) : (Data.Aeson..=) "line1" (postSourcesRequestBodyOwner'Address'Line1 obj) : (Data.Aeson..=) "line2" (postSourcesRequestBodyOwner'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postSourcesRequestBodyOwner'Address'PostalCode obj) : (Data.Aeson..=) "state" (postSourcesRequestBodyOwner'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postSourcesRequestBodyOwner'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postSourcesRequestBodyOwner'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postSourcesRequestBodyOwner'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postSourcesRequestBodyOwner'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postSourcesRequestBodyOwner'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postSourcesRequestBodyOwner'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSourcesRequestBodyOwner'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSourcesRequestBodyOwner'Address'" (\obj -> (((((GHC.Base.pure PostSourcesRequestBodyOwner'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
-- | Defines the data type for the schema postSourcesRequestBodyReceiver\'
-- 
-- Optional parameters for the receiver flow. Can be set only if the source is a receiver (\`flow\` is \`receiver\`).
data PostSourcesRequestBodyReceiver' = PostSourcesRequestBodyReceiver' {
  -- | refund_attributes_method
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postSourcesRequestBodyReceiver'RefundAttributesMethod :: (GHC.Maybe.Maybe PostSourcesRequestBodyReceiver'RefundAttributesMethod')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesRequestBodyReceiver'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "refund_attributes_method" (postSourcesRequestBodyReceiver'RefundAttributesMethod obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "refund_attributes_method" (postSourcesRequestBodyReceiver'RefundAttributesMethod obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSourcesRequestBodyReceiver'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSourcesRequestBodyReceiver'" (\obj -> GHC.Base.pure PostSourcesRequestBodyReceiver' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_attributes_method"))
-- | Defines the enum schema postSourcesRequestBodyReceiver\'Refund_attributes_method\'
-- 
-- 
data PostSourcesRequestBodyReceiver'RefundAttributesMethod'
    = PostSourcesRequestBodyReceiver'RefundAttributesMethod'EnumOther Data.Aeson.Types.Internal.Value
    | PostSourcesRequestBodyReceiver'RefundAttributesMethod'EnumTyped GHC.Base.String
    | PostSourcesRequestBodyReceiver'RefundAttributesMethod'EnumStringEmail
    | PostSourcesRequestBodyReceiver'RefundAttributesMethod'EnumStringManual
    | PostSourcesRequestBodyReceiver'RefundAttributesMethod'EnumStringNone
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesRequestBodyReceiver'RefundAttributesMethod'
    where toJSON (PostSourcesRequestBodyReceiver'RefundAttributesMethod'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesRequestBodyReceiver'RefundAttributesMethod'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesRequestBodyReceiver'RefundAttributesMethod'EnumStringEmail) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "email"
          toJSON (PostSourcesRequestBodyReceiver'RefundAttributesMethod'EnumStringManual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "manual"
          toJSON (PostSourcesRequestBodyReceiver'RefundAttributesMethod'EnumStringNone) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none"
instance Data.Aeson.FromJSON PostSourcesRequestBodyReceiver'RefundAttributesMethod'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "email")
                                          then PostSourcesRequestBodyReceiver'RefundAttributesMethod'EnumStringEmail
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "manual")
                                                then PostSourcesRequestBodyReceiver'RefundAttributesMethod'EnumStringManual
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none")
                                                      then PostSourcesRequestBodyReceiver'RefundAttributesMethod'EnumStringNone
                                                      else PostSourcesRequestBodyReceiver'RefundAttributesMethod'EnumOther val)
-- | Defines the data type for the schema postSourcesRequestBodyRedirect\'
-- 
-- Parameters required for the redirect flow. Required if the source is authenticated by a redirect (\`flow\` is \`redirect\`).
data PostSourcesRequestBodyRedirect' = PostSourcesRequestBodyRedirect' {
  -- | return_url
  postSourcesRequestBodyRedirect'ReturnUrl :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesRequestBodyRedirect'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "return_url" (postSourcesRequestBodyRedirect'ReturnUrl obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "return_url" (postSourcesRequestBodyRedirect'ReturnUrl obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSourcesRequestBodyRedirect'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSourcesRequestBodyRedirect'" (\obj -> GHC.Base.pure PostSourcesRequestBodyRedirect' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "return_url"))
-- | Defines the data type for the schema postSourcesRequestBodySource_order\'
-- 
-- Information about the items and shipping associated with the source. Required for transactional credit (for example Klarna) sources before you can charge it.
data PostSourcesRequestBodySourceOrder' = PostSourcesRequestBodySourceOrder' {
  -- | items
  postSourcesRequestBodySourceOrder'Items :: (GHC.Maybe.Maybe ([] PostSourcesRequestBodySourceOrder'Items'))
  -- | shipping
  , postSourcesRequestBodySourceOrder'Shipping :: (GHC.Maybe.Maybe PostSourcesRequestBodySourceOrder'Shipping')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesRequestBodySourceOrder'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "items" (postSourcesRequestBodySourceOrder'Items obj) : (Data.Aeson..=) "shipping" (postSourcesRequestBodySourceOrder'Shipping obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "items" (postSourcesRequestBodySourceOrder'Items obj) GHC.Base.<> (Data.Aeson..=) "shipping" (postSourcesRequestBodySourceOrder'Shipping obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSourcesRequestBodySourceOrder'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSourcesRequestBodySourceOrder'" (\obj -> (GHC.Base.pure PostSourcesRequestBodySourceOrder' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "items")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping"))
-- | Defines the data type for the schema postSourcesRequestBodySource_order\'Items\'
-- 
-- 
data PostSourcesRequestBodySourceOrder'Items' = PostSourcesRequestBodySourceOrder'Items' {
  -- | amount
  postSourcesRequestBodySourceOrder'Items'Amount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | currency
  , postSourcesRequestBodySourceOrder'Items'Currency :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | description
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 1000
  , postSourcesRequestBodySourceOrder'Items'Description :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | parent
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodySourceOrder'Items'Parent :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | quantity
  , postSourcesRequestBodySourceOrder'Items'Quantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | type
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodySourceOrder'Items'Type :: (GHC.Maybe.Maybe PostSourcesRequestBodySourceOrder'Items'Type')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesRequestBodySourceOrder'Items'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postSourcesRequestBodySourceOrder'Items'Amount obj) : (Data.Aeson..=) "currency" (postSourcesRequestBodySourceOrder'Items'Currency obj) : (Data.Aeson..=) "description" (postSourcesRequestBodySourceOrder'Items'Description obj) : (Data.Aeson..=) "parent" (postSourcesRequestBodySourceOrder'Items'Parent obj) : (Data.Aeson..=) "quantity" (postSourcesRequestBodySourceOrder'Items'Quantity obj) : (Data.Aeson..=) "type" (postSourcesRequestBodySourceOrder'Items'Type obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postSourcesRequestBodySourceOrder'Items'Amount obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postSourcesRequestBodySourceOrder'Items'Currency obj) GHC.Base.<> ((Data.Aeson..=) "description" (postSourcesRequestBodySourceOrder'Items'Description obj) GHC.Base.<> ((Data.Aeson..=) "parent" (postSourcesRequestBodySourceOrder'Items'Parent obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (postSourcesRequestBodySourceOrder'Items'Quantity obj) GHC.Base.<> (Data.Aeson..=) "type" (postSourcesRequestBodySourceOrder'Items'Type obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSourcesRequestBodySourceOrder'Items'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSourcesRequestBodySourceOrder'Items'" (\obj -> (((((GHC.Base.pure PostSourcesRequestBodySourceOrder'Items' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type"))
-- | Defines the enum schema postSourcesRequestBodySource_order\'Items\'Type\'
-- 
-- 
data PostSourcesRequestBodySourceOrder'Items'Type'
    = PostSourcesRequestBodySourceOrder'Items'Type'EnumOther Data.Aeson.Types.Internal.Value
    | PostSourcesRequestBodySourceOrder'Items'Type'EnumTyped GHC.Base.String
    | PostSourcesRequestBodySourceOrder'Items'Type'EnumStringDiscount
    | PostSourcesRequestBodySourceOrder'Items'Type'EnumStringShipping
    | PostSourcesRequestBodySourceOrder'Items'Type'EnumStringSku
    | PostSourcesRequestBodySourceOrder'Items'Type'EnumStringTax
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesRequestBodySourceOrder'Items'Type'
    where toJSON (PostSourcesRequestBodySourceOrder'Items'Type'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesRequestBodySourceOrder'Items'Type'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesRequestBodySourceOrder'Items'Type'EnumStringDiscount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "discount"
          toJSON (PostSourcesRequestBodySourceOrder'Items'Type'EnumStringShipping) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "shipping"
          toJSON (PostSourcesRequestBodySourceOrder'Items'Type'EnumStringSku) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sku"
          toJSON (PostSourcesRequestBodySourceOrder'Items'Type'EnumStringTax) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tax"
instance Data.Aeson.FromJSON PostSourcesRequestBodySourceOrder'Items'Type'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "discount")
                                          then PostSourcesRequestBodySourceOrder'Items'Type'EnumStringDiscount
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "shipping")
                                                then PostSourcesRequestBodySourceOrder'Items'Type'EnumStringShipping
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sku")
                                                      then PostSourcesRequestBodySourceOrder'Items'Type'EnumStringSku
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tax")
                                                            then PostSourcesRequestBodySourceOrder'Items'Type'EnumStringTax
                                                            else PostSourcesRequestBodySourceOrder'Items'Type'EnumOther val)
-- | Defines the data type for the schema postSourcesRequestBodySource_order\'Shipping\'
-- 
-- 
data PostSourcesRequestBodySourceOrder'Shipping' = PostSourcesRequestBodySourceOrder'Shipping' {
  -- | address
  postSourcesRequestBodySourceOrder'Shipping'Address :: PostSourcesRequestBodySourceOrder'Shipping'Address'
  -- | carrier
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodySourceOrder'Shipping'Carrier :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodySourceOrder'Shipping'Name :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | phone
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodySourceOrder'Shipping'Phone :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | tracking_number
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodySourceOrder'Shipping'TrackingNumber :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesRequestBodySourceOrder'Shipping'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postSourcesRequestBodySourceOrder'Shipping'Address obj) : (Data.Aeson..=) "carrier" (postSourcesRequestBodySourceOrder'Shipping'Carrier obj) : (Data.Aeson..=) "name" (postSourcesRequestBodySourceOrder'Shipping'Name obj) : (Data.Aeson..=) "phone" (postSourcesRequestBodySourceOrder'Shipping'Phone obj) : (Data.Aeson..=) "tracking_number" (postSourcesRequestBodySourceOrder'Shipping'TrackingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postSourcesRequestBodySourceOrder'Shipping'Address obj) GHC.Base.<> ((Data.Aeson..=) "carrier" (postSourcesRequestBodySourceOrder'Shipping'Carrier obj) GHC.Base.<> ((Data.Aeson..=) "name" (postSourcesRequestBodySourceOrder'Shipping'Name obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postSourcesRequestBodySourceOrder'Shipping'Phone obj) GHC.Base.<> (Data.Aeson..=) "tracking_number" (postSourcesRequestBodySourceOrder'Shipping'TrackingNumber obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSourcesRequestBodySourceOrder'Shipping'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSourcesRequestBodySourceOrder'Shipping'" (\obj -> ((((GHC.Base.pure PostSourcesRequestBodySourceOrder'Shipping' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "carrier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tracking_number"))
-- | Defines the data type for the schema postSourcesRequestBodySource_order\'Shipping\'Address\'
-- 
-- 
data PostSourcesRequestBodySourceOrder'Shipping'Address' = PostSourcesRequestBodySourceOrder'Shipping'Address' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postSourcesRequestBodySourceOrder'Shipping'Address'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodySourceOrder'Shipping'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodySourceOrder'Shipping'Address'Line1 :: GHC.Base.String
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodySourceOrder'Shipping'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodySourceOrder'Shipping'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesRequestBodySourceOrder'Shipping'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesRequestBodySourceOrder'Shipping'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postSourcesRequestBodySourceOrder'Shipping'Address'City obj) : (Data.Aeson..=) "country" (postSourcesRequestBodySourceOrder'Shipping'Address'Country obj) : (Data.Aeson..=) "line1" (postSourcesRequestBodySourceOrder'Shipping'Address'Line1 obj) : (Data.Aeson..=) "line2" (postSourcesRequestBodySourceOrder'Shipping'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postSourcesRequestBodySourceOrder'Shipping'Address'PostalCode obj) : (Data.Aeson..=) "state" (postSourcesRequestBodySourceOrder'Shipping'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postSourcesRequestBodySourceOrder'Shipping'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postSourcesRequestBodySourceOrder'Shipping'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postSourcesRequestBodySourceOrder'Shipping'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postSourcesRequestBodySourceOrder'Shipping'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postSourcesRequestBodySourceOrder'Shipping'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postSourcesRequestBodySourceOrder'Shipping'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSourcesRequestBodySourceOrder'Shipping'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSourcesRequestBodySourceOrder'Shipping'Address'" (\obj -> (((((GHC.Base.pure PostSourcesRequestBodySourceOrder'Shipping'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
-- | Defines the enum schema postSourcesRequestBodyUsage\'
-- 
-- 
data PostSourcesRequestBodyUsage'
    = PostSourcesRequestBodyUsage'EnumOther Data.Aeson.Types.Internal.Value
    | PostSourcesRequestBodyUsage'EnumTyped GHC.Base.String
    | PostSourcesRequestBodyUsage'EnumStringReusable
    | PostSourcesRequestBodyUsage'EnumStringSingleUse
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesRequestBodyUsage'
    where toJSON (PostSourcesRequestBodyUsage'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesRequestBodyUsage'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesRequestBodyUsage'EnumStringReusable) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "reusable"
          toJSON (PostSourcesRequestBodyUsage'EnumStringSingleUse) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "single_use"
instance Data.Aeson.FromJSON PostSourcesRequestBodyUsage'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "reusable")
                                          then PostSourcesRequestBodyUsage'EnumStringReusable
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "single_use")
                                                then PostSourcesRequestBodyUsage'EnumStringSingleUse
                                                else PostSourcesRequestBodyUsage'EnumOther val)
-- | Represents a response of the operation 'postSources'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSourcesResponseError' is used.
data PostSourcesResponse =                   
   PostSourcesResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostSourcesResponse200 Source            -- ^ Successful response.
  | PostSourcesResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
