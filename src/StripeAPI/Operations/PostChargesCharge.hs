{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postChargesCharge
module StripeAPI.Operations.PostChargesCharge where

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

-- | > POST /v1/charges/{charge}
-- 
-- \<p>Updates the specified charge by setting the values of the parameters passed. Any parameters not provided will be left unchanged.\<\/p>
postChargesCharge :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                               -- ^ charge | Constraints: Maximum length of 5000
  -> PostChargesChargeRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostChargesChargeResponse)) -- ^ Monad containing the result of the operation
postChargesCharge config
                  charge
                  body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostChargesChargeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostChargesChargeResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                     Charge)
                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostChargesChargeResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/charges/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel charge)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/charges/{charge}
-- 
-- The same as 'postChargesCharge' but returns the raw 'Data.ByteString.Char8.ByteString'
postChargesChargeRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        StripeAPI.Common.Configuration s ->
                        GHC.Base.String ->
                        PostChargesChargeRequestBody ->
                        m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postChargesChargeRaw config
                     charge
                     body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/charges/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel charge)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/charges/{charge}
-- 
-- Monadic version of 'postChargesCharge' (use with 'StripeAPI.Common.runWithConfiguration')
postChargesChargeM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                    StripeAPI.Common.SecurityScheme s) =>
                      GHC.Base.String ->
                      PostChargesChargeRequestBody ->
                      Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                         m
                                                         (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                             (Network.HTTP.Client.Types.Response PostChargesChargeResponse))
postChargesChargeM charge
                   body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostChargesChargeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostChargesChargeResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                      Charge)
                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostChargesChargeResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/charges/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel charge)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/charges/{charge}
-- 
-- Monadic version of 'postChargesChargeRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postChargesChargeRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                       StripeAPI.Common.SecurityScheme s) =>
                         GHC.Base.String ->
                         PostChargesChargeRequestBody ->
                         Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                            m
                                                            (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postChargesChargeRawM charge
                      body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/charges/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel charge)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postChargesChargeRequestBody
-- 
-- 
data PostChargesChargeRequestBody = PostChargesChargeRequestBody {
  -- | customer: The ID of an existing customer that will be associated with this request. This field may only be updated if there is no existing associated customer with this charge.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postChargesChargeRequestBodyCustomer :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | description: An arbitrary string which you can attach to a charge object. It is displayed when in the web interface alongside the charge. Note that if you use Stripe to send automatic email receipts to your customers, your receipt emails will include the \`description\` of the charge(s) that they are describing.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 40000
  , postChargesChargeRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | expand: Specifies which fields in the response should be expanded.
  , postChargesChargeRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | fraud_details: A set of key-value pairs you can attach to a charge giving information about its riskiness. If you believe a charge is fraudulent, include a \`user_report\` key with a value of \`fraudulent\`. If you believe a charge is safe, include a \`user_report\` key with a value of \`safe\`. Stripe will use the information you send to improve our fraud detection algorithms.
  , postChargesChargeRequestBodyFraudDetails :: (GHC.Maybe.Maybe PostChargesChargeRequestBodyFraudDetails')
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postChargesChargeRequestBodyMetadata :: (GHC.Maybe.Maybe PostChargesChargeRequestBodyMetadata')
  -- | receipt_email: This is the email address that the receipt for this charge will be sent to. If this field is updated, then a new email receipt will be sent to the updated address.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesChargeRequestBodyReceiptEmail :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | shipping: Shipping information for the charge. Helps prevent fraud on charges for physical goods.
  , postChargesChargeRequestBodyShipping :: (GHC.Maybe.Maybe PostChargesChargeRequestBodyShipping')
  -- | transfer_group: A string that identifies this transaction as part of a group. \`transfer_group\` may only be provided if it has not been set. See the [Connect documentation](https:\/\/stripe.com\/docs\/connect\/charges-transfers\#transfer-options) for details.
  , postChargesChargeRequestBodyTransferGroup :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesChargeRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "customer" (postChargesChargeRequestBodyCustomer obj) : (Data.Aeson..=) "description" (postChargesChargeRequestBodyDescription obj) : (Data.Aeson..=) "expand" (postChargesChargeRequestBodyExpand obj) : (Data.Aeson..=) "fraud_details" (postChargesChargeRequestBodyFraudDetails obj) : (Data.Aeson..=) "metadata" (postChargesChargeRequestBodyMetadata obj) : (Data.Aeson..=) "receipt_email" (postChargesChargeRequestBodyReceiptEmail obj) : (Data.Aeson..=) "shipping" (postChargesChargeRequestBodyShipping obj) : (Data.Aeson..=) "transfer_group" (postChargesChargeRequestBodyTransferGroup obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "customer" (postChargesChargeRequestBodyCustomer obj) GHC.Base.<> ((Data.Aeson..=) "description" (postChargesChargeRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postChargesChargeRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "fraud_details" (postChargesChargeRequestBodyFraudDetails obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postChargesChargeRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "receipt_email" (postChargesChargeRequestBodyReceiptEmail obj) GHC.Base.<> ((Data.Aeson..=) "shipping" (postChargesChargeRequestBodyShipping obj) GHC.Base.<> (Data.Aeson..=) "transfer_group" (postChargesChargeRequestBodyTransferGroup obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesChargeRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesChargeRequestBody" (\obj -> (((((((GHC.Base.pure PostChargesChargeRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fraud_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "receipt_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transfer_group"))
-- | Defines the data type for the schema postChargesChargeRequestBodyFraud_details\'
-- 
-- A set of key-value pairs you can attach to a charge giving information about its riskiness. If you believe a charge is fraudulent, include a \`user_report\` key with a value of \`fraudulent\`. If you believe a charge is safe, include a \`user_report\` key with a value of \`safe\`. Stripe will use the information you send to improve our fraud detection algorithms.
data PostChargesChargeRequestBodyFraudDetails' = PostChargesChargeRequestBodyFraudDetails' {
  -- | user_report
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postChargesChargeRequestBodyFraudDetails'UserReport :: PostChargesChargeRequestBodyFraudDetails'UserReport'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesChargeRequestBodyFraudDetails'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "user_report" (postChargesChargeRequestBodyFraudDetails'UserReport obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "user_report" (postChargesChargeRequestBodyFraudDetails'UserReport obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesChargeRequestBodyFraudDetails'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesChargeRequestBodyFraudDetails'" (\obj -> GHC.Base.pure PostChargesChargeRequestBodyFraudDetails' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "user_report"))
-- | Defines the enum schema postChargesChargeRequestBodyFraud_details\'User_report\'
-- 
-- 
data PostChargesChargeRequestBodyFraudDetails'UserReport'
    = PostChargesChargeRequestBodyFraudDetails'UserReport'EnumOther Data.Aeson.Types.Internal.Value
    | PostChargesChargeRequestBodyFraudDetails'UserReport'EnumTyped GHC.Base.String
    | PostChargesChargeRequestBodyFraudDetails'UserReport'EnumString_
    | PostChargesChargeRequestBodyFraudDetails'UserReport'EnumStringFraudulent
    | PostChargesChargeRequestBodyFraudDetails'UserReport'EnumStringSafe
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesChargeRequestBodyFraudDetails'UserReport'
    where toJSON (PostChargesChargeRequestBodyFraudDetails'UserReport'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostChargesChargeRequestBodyFraudDetails'UserReport'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostChargesChargeRequestBodyFraudDetails'UserReport'EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
          toJSON (PostChargesChargeRequestBodyFraudDetails'UserReport'EnumStringFraudulent) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fraudulent"
          toJSON (PostChargesChargeRequestBodyFraudDetails'UserReport'EnumStringSafe) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "safe"
instance Data.Aeson.FromJSON PostChargesChargeRequestBodyFraudDetails'UserReport'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostChargesChargeRequestBodyFraudDetails'UserReport'EnumString_
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fraudulent")
                                                then PostChargesChargeRequestBodyFraudDetails'UserReport'EnumStringFraudulent
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "safe")
                                                      then PostChargesChargeRequestBodyFraudDetails'UserReport'EnumStringSafe
                                                      else PostChargesChargeRequestBodyFraudDetails'UserReport'EnumOther val)
-- | Defines the data type for the schema postChargesChargeRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostChargesChargeRequestBodyMetadata' = PostChargesChargeRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesChargeRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesChargeRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesChargeRequestBodyMetadata'" (\obj -> GHC.Base.pure PostChargesChargeRequestBodyMetadata')
-- | Defines the data type for the schema postChargesChargeRequestBodyShipping\'
-- 
-- Shipping information for the charge. Helps prevent fraud on charges for physical goods.
data PostChargesChargeRequestBodyShipping' = PostChargesChargeRequestBodyShipping' {
  -- | address
  postChargesChargeRequestBodyShipping'Address :: PostChargesChargeRequestBodyShipping'Address'
  -- | carrier
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesChargeRequestBodyShipping'Carrier :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesChargeRequestBodyShipping'Name :: GHC.Base.String
  -- | phone
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesChargeRequestBodyShipping'Phone :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | tracking_number
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesChargeRequestBodyShipping'TrackingNumber :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesChargeRequestBodyShipping'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postChargesChargeRequestBodyShipping'Address obj) : (Data.Aeson..=) "carrier" (postChargesChargeRequestBodyShipping'Carrier obj) : (Data.Aeson..=) "name" (postChargesChargeRequestBodyShipping'Name obj) : (Data.Aeson..=) "phone" (postChargesChargeRequestBodyShipping'Phone obj) : (Data.Aeson..=) "tracking_number" (postChargesChargeRequestBodyShipping'TrackingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postChargesChargeRequestBodyShipping'Address obj) GHC.Base.<> ((Data.Aeson..=) "carrier" (postChargesChargeRequestBodyShipping'Carrier obj) GHC.Base.<> ((Data.Aeson..=) "name" (postChargesChargeRequestBodyShipping'Name obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postChargesChargeRequestBodyShipping'Phone obj) GHC.Base.<> (Data.Aeson..=) "tracking_number" (postChargesChargeRequestBodyShipping'TrackingNumber obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesChargeRequestBodyShipping'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesChargeRequestBodyShipping'" (\obj -> ((((GHC.Base.pure PostChargesChargeRequestBodyShipping' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "carrier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tracking_number"))
-- | Defines the data type for the schema postChargesChargeRequestBodyShipping\'Address\'
-- 
-- 
data PostChargesChargeRequestBodyShipping'Address' = PostChargesChargeRequestBodyShipping'Address' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postChargesChargeRequestBodyShipping'Address'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesChargeRequestBodyShipping'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesChargeRequestBodyShipping'Address'Line1 :: GHC.Base.String
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesChargeRequestBodyShipping'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesChargeRequestBodyShipping'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postChargesChargeRequestBodyShipping'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesChargeRequestBodyShipping'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postChargesChargeRequestBodyShipping'Address'City obj) : (Data.Aeson..=) "country" (postChargesChargeRequestBodyShipping'Address'Country obj) : (Data.Aeson..=) "line1" (postChargesChargeRequestBodyShipping'Address'Line1 obj) : (Data.Aeson..=) "line2" (postChargesChargeRequestBodyShipping'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postChargesChargeRequestBodyShipping'Address'PostalCode obj) : (Data.Aeson..=) "state" (postChargesChargeRequestBodyShipping'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postChargesChargeRequestBodyShipping'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postChargesChargeRequestBodyShipping'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postChargesChargeRequestBodyShipping'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postChargesChargeRequestBodyShipping'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postChargesChargeRequestBodyShipping'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postChargesChargeRequestBodyShipping'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesChargeRequestBodyShipping'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesChargeRequestBodyShipping'Address'" (\obj -> (((((GHC.Base.pure PostChargesChargeRequestBodyShipping'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
-- | Represents a response of the operation 'postChargesCharge'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostChargesChargeResponseError' is used.
data PostChargesChargeResponse =                   
   PostChargesChargeResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostChargesChargeResponse200 Charge            -- ^ Successful response.
  | PostChargesChargeResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
