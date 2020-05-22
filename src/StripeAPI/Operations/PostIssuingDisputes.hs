{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postIssuingDisputes
module StripeAPI.Operations.PostIssuingDisputes where

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

-- | > POST /v1/issuing/disputes
-- 
-- \<p>Creates an Issuing \<code>Dispute\<\/code> object.\<\/p>
postIssuingDisputes :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> PostIssuingDisputesRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostIssuingDisputesResponse)) -- ^ Monad containing the result of the operation
postIssuingDisputes config
                    body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostIssuingDisputesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostIssuingDisputesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                           Issuing'dispute)
                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostIssuingDisputesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/issuing/disputes") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/issuing/disputes
-- 
-- The same as 'postIssuingDisputes' but returns the raw 'Data.ByteString.Char8.ByteString'
postIssuingDisputesRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          StripeAPI.Common.Configuration s ->
                          PostIssuingDisputesRequestBody ->
                          m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postIssuingDisputesRaw config
                       body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/issuing/disputes") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/issuing/disputes
-- 
-- Monadic version of 'postIssuingDisputes' (use with 'StripeAPI.Common.runWithConfiguration')
postIssuingDisputesM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        PostIssuingDisputesRequestBody ->
                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                           m
                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response PostIssuingDisputesResponse))
postIssuingDisputesM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostIssuingDisputesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostIssuingDisputesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                            Issuing'dispute)
                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostIssuingDisputesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/issuing/disputes") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/issuing/disputes
-- 
-- Monadic version of 'postIssuingDisputesRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postIssuingDisputesRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                         StripeAPI.Common.SecurityScheme s) =>
                           PostIssuingDisputesRequestBody ->
                           Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                              m
                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postIssuingDisputesRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/issuing/disputes") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postIssuingDisputesRequestBody
-- 
-- 
data PostIssuingDisputesRequestBody = PostIssuingDisputesRequestBody {
  -- | amount: Amount to dispute, defaults to full value, given in the currency the transaction was made in.
  postIssuingDisputesRequestBodyAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | disputed_transaction: The ID of the issuing transaction to create a dispute for.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postIssuingDisputesRequestBodyDisputedTransaction :: GHC.Base.String
  -- | evidence: A hash containing all the evidence related to the dispute. This should have a single key, equal to the provided \`reason\`, mapping to an appropriate evidence object.
  , postIssuingDisputesRequestBodyEvidence :: (GHC.Maybe.Maybe PostIssuingDisputesRequestBodyEvidence')
  -- | expand: Specifies which fields in the response should be expanded.
  , postIssuingDisputesRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postIssuingDisputesRequestBodyMetadata :: (GHC.Maybe.Maybe PostIssuingDisputesRequestBodyMetadata')
  -- | reason: The reason for the dispute.
  , postIssuingDisputesRequestBodyReason :: PostIssuingDisputesRequestBodyReason'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostIssuingDisputesRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postIssuingDisputesRequestBodyAmount obj) : (Data.Aeson..=) "disputed_transaction" (postIssuingDisputesRequestBodyDisputedTransaction obj) : (Data.Aeson..=) "evidence" (postIssuingDisputesRequestBodyEvidence obj) : (Data.Aeson..=) "expand" (postIssuingDisputesRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postIssuingDisputesRequestBodyMetadata obj) : (Data.Aeson..=) "reason" (postIssuingDisputesRequestBodyReason obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postIssuingDisputesRequestBodyAmount obj) GHC.Base.<> ((Data.Aeson..=) "disputed_transaction" (postIssuingDisputesRequestBodyDisputedTransaction obj) GHC.Base.<> ((Data.Aeson..=) "evidence" (postIssuingDisputesRequestBodyEvidence obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postIssuingDisputesRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postIssuingDisputesRequestBodyMetadata obj) GHC.Base.<> (Data.Aeson..=) "reason" (postIssuingDisputesRequestBodyReason obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostIssuingDisputesRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostIssuingDisputesRequestBody" (\obj -> (((((GHC.Base.pure PostIssuingDisputesRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "disputed_transaction")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "evidence")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "reason"))
-- | Defines the data type for the schema postIssuingDisputesRequestBodyEvidence\'
-- 
-- A hash containing all the evidence related to the dispute. This should have a single key, equal to the provided \`reason\`, mapping to an appropriate evidence object.
data PostIssuingDisputesRequestBodyEvidence' = PostIssuingDisputesRequestBodyEvidence' {
  -- | duplicate
  postIssuingDisputesRequestBodyEvidence'Duplicate :: (GHC.Maybe.Maybe PostIssuingDisputesRequestBodyEvidence'Duplicate')
  -- | fraudulent
  , postIssuingDisputesRequestBodyEvidence'Fraudulent :: (GHC.Maybe.Maybe PostIssuingDisputesRequestBodyEvidence'Fraudulent')
  -- | other
  , postIssuingDisputesRequestBodyEvidence'Other :: (GHC.Maybe.Maybe PostIssuingDisputesRequestBodyEvidence'Other')
  -- | product_not_received
  , postIssuingDisputesRequestBodyEvidence'ProductNotReceived :: (GHC.Maybe.Maybe PostIssuingDisputesRequestBodyEvidence'ProductNotReceived')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostIssuingDisputesRequestBodyEvidence'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "duplicate" (postIssuingDisputesRequestBodyEvidence'Duplicate obj) : (Data.Aeson..=) "fraudulent" (postIssuingDisputesRequestBodyEvidence'Fraudulent obj) : (Data.Aeson..=) "other" (postIssuingDisputesRequestBodyEvidence'Other obj) : (Data.Aeson..=) "product_not_received" (postIssuingDisputesRequestBodyEvidence'ProductNotReceived obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "duplicate" (postIssuingDisputesRequestBodyEvidence'Duplicate obj) GHC.Base.<> ((Data.Aeson..=) "fraudulent" (postIssuingDisputesRequestBodyEvidence'Fraudulent obj) GHC.Base.<> ((Data.Aeson..=) "other" (postIssuingDisputesRequestBodyEvidence'Other obj) GHC.Base.<> (Data.Aeson..=) "product_not_received" (postIssuingDisputesRequestBodyEvidence'ProductNotReceived obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostIssuingDisputesRequestBodyEvidence'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostIssuingDisputesRequestBodyEvidence'" (\obj -> (((GHC.Base.pure PostIssuingDisputesRequestBodyEvidence' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "duplicate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fraudulent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "other")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "product_not_received"))
-- | Defines the data type for the schema postIssuingDisputesRequestBodyEvidence\'Duplicate\'
-- 
-- 
data PostIssuingDisputesRequestBodyEvidence'Duplicate' = PostIssuingDisputesRequestBodyEvidence'Duplicate' {
  -- | dispute_explanation
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 10000
  postIssuingDisputesRequestBodyEvidence'Duplicate'DisputeExplanation :: GHC.Base.String
  -- | original_transaction
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postIssuingDisputesRequestBodyEvidence'Duplicate'OriginalTransaction :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | uncategorized_file
  , postIssuingDisputesRequestBodyEvidence'Duplicate'UncategorizedFile :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostIssuingDisputesRequestBodyEvidence'Duplicate'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "dispute_explanation" (postIssuingDisputesRequestBodyEvidence'Duplicate'DisputeExplanation obj) : (Data.Aeson..=) "original_transaction" (postIssuingDisputesRequestBodyEvidence'Duplicate'OriginalTransaction obj) : (Data.Aeson..=) "uncategorized_file" (postIssuingDisputesRequestBodyEvidence'Duplicate'UncategorizedFile obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "dispute_explanation" (postIssuingDisputesRequestBodyEvidence'Duplicate'DisputeExplanation obj) GHC.Base.<> ((Data.Aeson..=) "original_transaction" (postIssuingDisputesRequestBodyEvidence'Duplicate'OriginalTransaction obj) GHC.Base.<> (Data.Aeson..=) "uncategorized_file" (postIssuingDisputesRequestBodyEvidence'Duplicate'UncategorizedFile obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostIssuingDisputesRequestBodyEvidence'Duplicate'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostIssuingDisputesRequestBodyEvidence'Duplicate'" (\obj -> ((GHC.Base.pure PostIssuingDisputesRequestBodyEvidence'Duplicate' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "dispute_explanation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "original_transaction")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "uncategorized_file"))
-- | Defines the data type for the schema postIssuingDisputesRequestBodyEvidence\'Fraudulent\'
-- 
-- 
data PostIssuingDisputesRequestBodyEvidence'Fraudulent' = PostIssuingDisputesRequestBodyEvidence'Fraudulent' {
  -- | dispute_explanation
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 10000
  postIssuingDisputesRequestBodyEvidence'Fraudulent'DisputeExplanation :: GHC.Base.String
  -- | uncategorized_file
  , postIssuingDisputesRequestBodyEvidence'Fraudulent'UncategorizedFile :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostIssuingDisputesRequestBodyEvidence'Fraudulent'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "dispute_explanation" (postIssuingDisputesRequestBodyEvidence'Fraudulent'DisputeExplanation obj) : (Data.Aeson..=) "uncategorized_file" (postIssuingDisputesRequestBodyEvidence'Fraudulent'UncategorizedFile obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "dispute_explanation" (postIssuingDisputesRequestBodyEvidence'Fraudulent'DisputeExplanation obj) GHC.Base.<> (Data.Aeson..=) "uncategorized_file" (postIssuingDisputesRequestBodyEvidence'Fraudulent'UncategorizedFile obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostIssuingDisputesRequestBodyEvidence'Fraudulent'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostIssuingDisputesRequestBodyEvidence'Fraudulent'" (\obj -> (GHC.Base.pure PostIssuingDisputesRequestBodyEvidence'Fraudulent' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "dispute_explanation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "uncategorized_file"))
-- | Defines the data type for the schema postIssuingDisputesRequestBodyEvidence\'Other\'
-- 
-- 
data PostIssuingDisputesRequestBodyEvidence'Other' = PostIssuingDisputesRequestBodyEvidence'Other' {
  -- | dispute_explanation
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 10000
  postIssuingDisputesRequestBodyEvidence'Other'DisputeExplanation :: GHC.Base.String
  -- | uncategorized_file
  , postIssuingDisputesRequestBodyEvidence'Other'UncategorizedFile :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostIssuingDisputesRequestBodyEvidence'Other'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "dispute_explanation" (postIssuingDisputesRequestBodyEvidence'Other'DisputeExplanation obj) : (Data.Aeson..=) "uncategorized_file" (postIssuingDisputesRequestBodyEvidence'Other'UncategorizedFile obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "dispute_explanation" (postIssuingDisputesRequestBodyEvidence'Other'DisputeExplanation obj) GHC.Base.<> (Data.Aeson..=) "uncategorized_file" (postIssuingDisputesRequestBodyEvidence'Other'UncategorizedFile obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostIssuingDisputesRequestBodyEvidence'Other'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostIssuingDisputesRequestBodyEvidence'Other'" (\obj -> (GHC.Base.pure PostIssuingDisputesRequestBodyEvidence'Other' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "dispute_explanation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "uncategorized_file"))
-- | Defines the data type for the schema postIssuingDisputesRequestBodyEvidence\'Product_not_received\'
-- 
-- 
data PostIssuingDisputesRequestBodyEvidence'ProductNotReceived' = PostIssuingDisputesRequestBodyEvidence'ProductNotReceived' {
  -- | dispute_explanation
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 10000
  postIssuingDisputesRequestBodyEvidence'ProductNotReceived'DisputeExplanation :: GHC.Base.String
  -- | uncategorized_file
  , postIssuingDisputesRequestBodyEvidence'ProductNotReceived'UncategorizedFile :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostIssuingDisputesRequestBodyEvidence'ProductNotReceived'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "dispute_explanation" (postIssuingDisputesRequestBodyEvidence'ProductNotReceived'DisputeExplanation obj) : (Data.Aeson..=) "uncategorized_file" (postIssuingDisputesRequestBodyEvidence'ProductNotReceived'UncategorizedFile obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "dispute_explanation" (postIssuingDisputesRequestBodyEvidence'ProductNotReceived'DisputeExplanation obj) GHC.Base.<> (Data.Aeson..=) "uncategorized_file" (postIssuingDisputesRequestBodyEvidence'ProductNotReceived'UncategorizedFile obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostIssuingDisputesRequestBodyEvidence'ProductNotReceived'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostIssuingDisputesRequestBodyEvidence'ProductNotReceived'" (\obj -> (GHC.Base.pure PostIssuingDisputesRequestBodyEvidence'ProductNotReceived' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "dispute_explanation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "uncategorized_file"))
-- | Defines the data type for the schema postIssuingDisputesRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostIssuingDisputesRequestBodyMetadata' = PostIssuingDisputesRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostIssuingDisputesRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostIssuingDisputesRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostIssuingDisputesRequestBodyMetadata'" (\obj -> GHC.Base.pure PostIssuingDisputesRequestBodyMetadata')
-- | Defines the enum schema postIssuingDisputesRequestBodyReason\'
-- 
-- The reason for the dispute.
data PostIssuingDisputesRequestBodyReason'
    = PostIssuingDisputesRequestBodyReason'EnumOther Data.Aeson.Types.Internal.Value
    | PostIssuingDisputesRequestBodyReason'EnumTyped GHC.Base.String
    | PostIssuingDisputesRequestBodyReason'EnumStringDuplicate
    | PostIssuingDisputesRequestBodyReason'EnumStringFraudulent
    | PostIssuingDisputesRequestBodyReason'EnumStringOther
    | PostIssuingDisputesRequestBodyReason'EnumStringProductNotReceived
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostIssuingDisputesRequestBodyReason'
    where toJSON (PostIssuingDisputesRequestBodyReason'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostIssuingDisputesRequestBodyReason'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostIssuingDisputesRequestBodyReason'EnumStringDuplicate) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "duplicate"
          toJSON (PostIssuingDisputesRequestBodyReason'EnumStringFraudulent) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fraudulent"
          toJSON (PostIssuingDisputesRequestBodyReason'EnumStringOther) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "other"
          toJSON (PostIssuingDisputesRequestBodyReason'EnumStringProductNotReceived) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "product_not_received"
instance Data.Aeson.FromJSON PostIssuingDisputesRequestBodyReason'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "duplicate")
                                          then PostIssuingDisputesRequestBodyReason'EnumStringDuplicate
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fraudulent")
                                                then PostIssuingDisputesRequestBodyReason'EnumStringFraudulent
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "other")
                                                      then PostIssuingDisputesRequestBodyReason'EnumStringOther
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "product_not_received")
                                                            then PostIssuingDisputesRequestBodyReason'EnumStringProductNotReceived
                                                            else PostIssuingDisputesRequestBodyReason'EnumOther val)
-- | Represents a response of the operation 'postIssuingDisputes'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostIssuingDisputesResponseError' is used.
data PostIssuingDisputesResponse =                   
   PostIssuingDisputesResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostIssuingDisputesResponse200 Issuing'dispute   -- ^ Successful response.
  | PostIssuingDisputesResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
