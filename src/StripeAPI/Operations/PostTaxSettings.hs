{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postTaxSettings
module StripeAPI.Operations.PostTaxSettings where

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

-- | > POST /v1/tax/settings
--
-- \<p>Updates Tax \<code>Settings\<\/code> parameters used in tax calculations. All parameters are editable but none can be removed once set.\<\/p>
postTaxSettings ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | The request body to send
  GHC.Maybe.Maybe PostTaxSettingsRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostTaxSettingsResponse)
postTaxSettings body =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostTaxSettingsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostTaxSettingsResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Tax'settings
                                                        )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostTaxSettingsResponseDefault
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
    (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/v1/tax/settings" GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/tax\/settings.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostTaxSettingsRequestBody = PostTaxSettingsRequestBody
  { -- | defaults: Default configuration to be used on Stripe Tax calculations.
    postTaxSettingsRequestBodyDefaults :: (GHC.Maybe.Maybe PostTaxSettingsRequestBodyDefaults'),
    -- | expand: Specifies which fields in the response should be expanded.
    postTaxSettingsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | head_office: The place where your business is located.
    postTaxSettingsRequestBodyHeadOffice :: (GHC.Maybe.Maybe PostTaxSettingsRequestBodyHeadOffice')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostTaxSettingsRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("defaults" Data.Aeson.Types.ToJSON..=)) (postTaxSettingsRequestBodyDefaults obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTaxSettingsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("head_office" Data.Aeson.Types.ToJSON..=)) (postTaxSettingsRequestBodyHeadOffice obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("defaults" Data.Aeson.Types.ToJSON..=)) (postTaxSettingsRequestBodyDefaults obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTaxSettingsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("head_office" Data.Aeson.Types.ToJSON..=)) (postTaxSettingsRequestBodyHeadOffice obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostTaxSettingsRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTaxSettingsRequestBody" (\obj -> ((GHC.Base.pure PostTaxSettingsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "defaults")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "head_office"))

-- | Create a new 'PostTaxSettingsRequestBody' with all required fields.
mkPostTaxSettingsRequestBody :: PostTaxSettingsRequestBody
mkPostTaxSettingsRequestBody =
  PostTaxSettingsRequestBody
    { postTaxSettingsRequestBodyDefaults = GHC.Maybe.Nothing,
      postTaxSettingsRequestBodyExpand = GHC.Maybe.Nothing,
      postTaxSettingsRequestBodyHeadOffice = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/tax\/settings.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.defaults@ in the specification.
--
-- Default configuration to be used on Stripe Tax calculations.
data PostTaxSettingsRequestBodyDefaults' = PostTaxSettingsRequestBodyDefaults'
  { -- | tax_behavior
    postTaxSettingsRequestBodyDefaults'TaxBehavior :: (GHC.Maybe.Maybe PostTaxSettingsRequestBodyDefaults'TaxBehavior'),
    -- | tax_code
    postTaxSettingsRequestBodyDefaults'TaxCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostTaxSettingsRequestBodyDefaults' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_behavior" Data.Aeson.Types.ToJSON..=)) (postTaxSettingsRequestBodyDefaults'TaxBehavior obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_code" Data.Aeson.Types.ToJSON..=)) (postTaxSettingsRequestBodyDefaults'TaxCode obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_behavior" Data.Aeson.Types.ToJSON..=)) (postTaxSettingsRequestBodyDefaults'TaxBehavior obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_code" Data.Aeson.Types.ToJSON..=)) (postTaxSettingsRequestBodyDefaults'TaxCode obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostTaxSettingsRequestBodyDefaults' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTaxSettingsRequestBodyDefaults'" (\obj -> (GHC.Base.pure PostTaxSettingsRequestBodyDefaults' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "tax_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "tax_code"))

-- | Create a new 'PostTaxSettingsRequestBodyDefaults'' with all required fields.
mkPostTaxSettingsRequestBodyDefaults' :: PostTaxSettingsRequestBodyDefaults'
mkPostTaxSettingsRequestBodyDefaults' =
  PostTaxSettingsRequestBodyDefaults'
    { postTaxSettingsRequestBodyDefaults'TaxBehavior = GHC.Maybe.Nothing,
      postTaxSettingsRequestBodyDefaults'TaxCode = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @paths.\/v1\/tax\/settings.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.defaults.properties.tax_behavior@ in the specification.
data PostTaxSettingsRequestBodyDefaults'TaxBehavior'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostTaxSettingsRequestBodyDefaults'TaxBehavior'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostTaxSettingsRequestBodyDefaults'TaxBehavior'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"exclusive"@
    PostTaxSettingsRequestBodyDefaults'TaxBehavior'EnumExclusive
  | -- | Represents the JSON value @"inclusive"@
    PostTaxSettingsRequestBodyDefaults'TaxBehavior'EnumInclusive
  | -- | Represents the JSON value @"inferred_by_currency"@
    PostTaxSettingsRequestBodyDefaults'TaxBehavior'EnumInferredByCurrency
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostTaxSettingsRequestBodyDefaults'TaxBehavior' where
  toJSON (PostTaxSettingsRequestBodyDefaults'TaxBehavior'Other val) = val
  toJSON (PostTaxSettingsRequestBodyDefaults'TaxBehavior'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostTaxSettingsRequestBodyDefaults'TaxBehavior'EnumExclusive) = "exclusive"
  toJSON (PostTaxSettingsRequestBodyDefaults'TaxBehavior'EnumInclusive) = "inclusive"
  toJSON (PostTaxSettingsRequestBodyDefaults'TaxBehavior'EnumInferredByCurrency) = "inferred_by_currency"

instance Data.Aeson.Types.FromJSON.FromJSON PostTaxSettingsRequestBodyDefaults'TaxBehavior' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "exclusive" -> PostTaxSettingsRequestBodyDefaults'TaxBehavior'EnumExclusive
            | val GHC.Classes.== "inclusive" -> PostTaxSettingsRequestBodyDefaults'TaxBehavior'EnumInclusive
            | val GHC.Classes.== "inferred_by_currency" -> PostTaxSettingsRequestBodyDefaults'TaxBehavior'EnumInferredByCurrency
            | GHC.Base.otherwise -> PostTaxSettingsRequestBodyDefaults'TaxBehavior'Other val
      )

-- | Defines the object schema located at @paths.\/v1\/tax\/settings.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.head_office@ in the specification.
--
-- The place where your business is located.
data PostTaxSettingsRequestBodyHeadOffice' = PostTaxSettingsRequestBodyHeadOffice'
  { -- | address
    postTaxSettingsRequestBodyHeadOffice'Address :: PostTaxSettingsRequestBodyHeadOffice'Address'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostTaxSettingsRequestBodyHeadOffice' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["address" Data.Aeson.Types.ToJSON..= postTaxSettingsRequestBodyHeadOffice'Address obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["address" Data.Aeson.Types.ToJSON..= postTaxSettingsRequestBodyHeadOffice'Address obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostTaxSettingsRequestBodyHeadOffice' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTaxSettingsRequestBodyHeadOffice'" (\obj -> GHC.Base.pure PostTaxSettingsRequestBodyHeadOffice' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address"))

-- | Create a new 'PostTaxSettingsRequestBodyHeadOffice'' with all required fields.
mkPostTaxSettingsRequestBodyHeadOffice' ::
  -- | 'postTaxSettingsRequestBodyHeadOffice'Address'
  PostTaxSettingsRequestBodyHeadOffice'Address' ->
  PostTaxSettingsRequestBodyHeadOffice'
mkPostTaxSettingsRequestBodyHeadOffice' postTaxSettingsRequestBodyHeadOffice'Address = PostTaxSettingsRequestBodyHeadOffice' {postTaxSettingsRequestBodyHeadOffice'Address = postTaxSettingsRequestBodyHeadOffice'Address}

-- | Defines the object schema located at @paths.\/v1\/tax\/settings.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.head_office.properties.address@ in the specification.
data PostTaxSettingsRequestBodyHeadOffice'Address' = PostTaxSettingsRequestBodyHeadOffice'Address'
  { -- | city
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postTaxSettingsRequestBodyHeadOffice'Address'City :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | country
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postTaxSettingsRequestBodyHeadOffice'Address'Country :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | line1
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postTaxSettingsRequestBodyHeadOffice'Address'Line1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | line2
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postTaxSettingsRequestBodyHeadOffice'Address'Line2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | postal_code
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postTaxSettingsRequestBodyHeadOffice'Address'PostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | state
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postTaxSettingsRequestBodyHeadOffice'Address'State :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostTaxSettingsRequestBodyHeadOffice'Address' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (postTaxSettingsRequestBodyHeadOffice'Address'City obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (postTaxSettingsRequestBodyHeadOffice'Address'Country obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line1" Data.Aeson.Types.ToJSON..=)) (postTaxSettingsRequestBodyHeadOffice'Address'Line1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line2" Data.Aeson.Types.ToJSON..=)) (postTaxSettingsRequestBodyHeadOffice'Address'Line2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (postTaxSettingsRequestBodyHeadOffice'Address'PostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (postTaxSettingsRequestBodyHeadOffice'Address'State obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (postTaxSettingsRequestBodyHeadOffice'Address'City obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (postTaxSettingsRequestBodyHeadOffice'Address'Country obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line1" Data.Aeson.Types.ToJSON..=)) (postTaxSettingsRequestBodyHeadOffice'Address'Line1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line2" Data.Aeson.Types.ToJSON..=)) (postTaxSettingsRequestBodyHeadOffice'Address'Line2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (postTaxSettingsRequestBodyHeadOffice'Address'PostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (postTaxSettingsRequestBodyHeadOffice'Address'State obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostTaxSettingsRequestBodyHeadOffice'Address' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTaxSettingsRequestBodyHeadOffice'Address'" (\obj -> (((((GHC.Base.pure PostTaxSettingsRequestBodyHeadOffice'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "state"))

-- | Create a new 'PostTaxSettingsRequestBodyHeadOffice'Address'' with all required fields.
mkPostTaxSettingsRequestBodyHeadOffice'Address' :: PostTaxSettingsRequestBodyHeadOffice'Address'
mkPostTaxSettingsRequestBodyHeadOffice'Address' =
  PostTaxSettingsRequestBodyHeadOffice'Address'
    { postTaxSettingsRequestBodyHeadOffice'Address'City = GHC.Maybe.Nothing,
      postTaxSettingsRequestBodyHeadOffice'Address'Country = GHC.Maybe.Nothing,
      postTaxSettingsRequestBodyHeadOffice'Address'Line1 = GHC.Maybe.Nothing,
      postTaxSettingsRequestBodyHeadOffice'Address'Line2 = GHC.Maybe.Nothing,
      postTaxSettingsRequestBodyHeadOffice'Address'PostalCode = GHC.Maybe.Nothing,
      postTaxSettingsRequestBodyHeadOffice'Address'State = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'postTaxSettings'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostTaxSettingsResponseError' is used.
data PostTaxSettingsResponse
  = -- | Means either no matching case available or a parse error
    PostTaxSettingsResponseError GHC.Base.String
  | -- | Successful response.
    PostTaxSettingsResponse200 Tax'settings
  | -- | Error response.
    PostTaxSettingsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
