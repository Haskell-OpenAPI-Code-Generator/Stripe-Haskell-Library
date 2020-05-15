{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostTokens where

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

-- | No summary provided
--
-- POST /v1/tokens
postTokens :: forall m s . (StripeAPI.Common.MonadHTTP m,
                            StripeAPI.Common.SecurityScheme s) =>
              StripeAPI.Common.Configuration s ->
              PostTokensRequestBody ->
              m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                    (Network.HTTP.Client.Types.Response PostTokensResponse))
postTokens config
           body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostTokensResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTokensResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                Token)
                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTokensResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/tokens") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postTokensRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                               StripeAPI.Common.SecurityScheme s) =>
                 StripeAPI.Common.Configuration s ->
                 PostTokensRequestBody ->
                 m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postTokensRaw config
              body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/tokens") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postTokensM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                             StripeAPI.Common.SecurityScheme s) =>
               PostTokensRequestBody ->
               Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                  m
                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                      (Network.HTTP.Client.Types.Response PostTokensResponse))
postTokensM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostTokensResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTokensResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                 Token)
                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTokensResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/tokens") [] body StripeAPI.Common.RequestBodyEncodingFormData)
postTokensRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                StripeAPI.Common.SecurityScheme s) =>
                  PostTokensRequestBody ->
                  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                     m
                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postTokensRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/tokens") [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostTokensRequestBody
    = PostTokensRequestBody {postTokensRequestBodyAccount :: (GHC.Maybe.Maybe PostTokensRequestBodyAccount'),
                             postTokensRequestBodyBankAccount :: (GHC.Maybe.Maybe PostTokensRequestBodyBankAccount'),
                             postTokensRequestBodyCard :: (GHC.Maybe.Maybe PostTokensRequestBodyCard'Variants),
                             postTokensRequestBodyCustomer :: (GHC.Maybe.Maybe GHC.Base.String),
                             postTokensRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                             postTokensRequestBodyPerson :: (GHC.Maybe.Maybe PostTokensRequestBodyPerson'),
                             postTokensRequestBodyPii :: (GHC.Maybe.Maybe PostTokensRequestBodyPii')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostTokensRequestBodyAccount'
    = PostTokensRequestBodyAccount' {postTokensRequestBodyAccount'BusinessType :: (GHC.Maybe.Maybe PostTokensRequestBodyAccount'BusinessType'),
                                     postTokensRequestBodyAccount'Company :: (GHC.Maybe.Maybe PostTokensRequestBodyAccount'Company'),
                                     postTokensRequestBodyAccount'Individual :: (GHC.Maybe.Maybe PostTokensRequestBodyAccount'Individual'),
                                     postTokensRequestBodyAccount'TosShownAndAccepted :: (GHC.Maybe.Maybe GHC.Types.Bool)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostTokensRequestBodyAccount'BusinessType'
    = PostTokensRequestBodyAccount'BusinessType'EnumOther Data.Aeson.Types.Internal.Value
    | PostTokensRequestBodyAccount'BusinessType'EnumTyped GHC.Base.String
    | PostTokensRequestBodyAccount'BusinessType'EnumStringCompany
    | PostTokensRequestBodyAccount'BusinessType'EnumStringGovernmentEntity
    | PostTokensRequestBodyAccount'BusinessType'EnumStringIndividual
    | PostTokensRequestBodyAccount'BusinessType'EnumStringNonProfit
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTokensRequestBodyAccount'BusinessType'
    where toJSON (PostTokensRequestBodyAccount'BusinessType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostTokensRequestBodyAccount'BusinessType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostTokensRequestBodyAccount'BusinessType'EnumStringCompany) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company"
          toJSON (PostTokensRequestBodyAccount'BusinessType'EnumStringGovernmentEntity) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "government_entity"
          toJSON (PostTokensRequestBodyAccount'BusinessType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
          toJSON (PostTokensRequestBodyAccount'BusinessType'EnumStringNonProfit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "non_profit"
instance Data.Aeson.FromJSON PostTokensRequestBodyAccount'BusinessType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company")
                                          then PostTokensRequestBodyAccount'BusinessType'EnumStringCompany
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "government_entity")
                                                then PostTokensRequestBodyAccount'BusinessType'EnumStringGovernmentEntity
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                      then PostTokensRequestBodyAccount'BusinessType'EnumStringIndividual
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "non_profit")
                                                            then PostTokensRequestBodyAccount'BusinessType'EnumStringNonProfit
                                                            else PostTokensRequestBodyAccount'BusinessType'EnumOther val)
data PostTokensRequestBodyAccount'Company'
    = PostTokensRequestBodyAccount'Company' {postTokensRequestBodyAccount'Company'Address :: (GHC.Maybe.Maybe PostTokensRequestBodyAccount'Company'Address'),
                                             postTokensRequestBodyAccount'Company'AddressKana :: (GHC.Maybe.Maybe PostTokensRequestBodyAccount'Company'AddressKana'),
                                             postTokensRequestBodyAccount'Company'AddressKanji :: (GHC.Maybe.Maybe PostTokensRequestBodyAccount'Company'AddressKanji'),
                                             postTokensRequestBodyAccount'Company'DirectorsProvided :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                             postTokensRequestBodyAccount'Company'ExecutivesProvided :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                             postTokensRequestBodyAccount'Company'Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                             postTokensRequestBodyAccount'Company'NameKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                             postTokensRequestBodyAccount'Company'NameKanji :: (GHC.Maybe.Maybe GHC.Base.String),
                                             postTokensRequestBodyAccount'Company'OwnersProvided :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                             postTokensRequestBodyAccount'Company'Phone :: (GHC.Maybe.Maybe GHC.Base.String),
                                             postTokensRequestBodyAccount'Company'Structure :: (GHC.Maybe.Maybe PostTokensRequestBodyAccount'Company'Structure'),
                                             postTokensRequestBodyAccount'Company'TaxId :: (GHC.Maybe.Maybe GHC.Base.String),
                                             postTokensRequestBodyAccount'Company'TaxIdRegistrar :: (GHC.Maybe.Maybe GHC.Base.String),
                                             postTokensRequestBodyAccount'Company'VatId :: (GHC.Maybe.Maybe GHC.Base.String),
                                             postTokensRequestBodyAccount'Company'Verification :: (GHC.Maybe.Maybe PostTokensRequestBodyAccount'Company'Verification')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostTokensRequestBodyAccount'Company'Address'
    = PostTokensRequestBodyAccount'Company'Address' {postTokensRequestBodyAccount'Company'Address'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postTokensRequestBodyAccount'Company'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postTokensRequestBodyAccount'Company'Address'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postTokensRequestBodyAccount'Company'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postTokensRequestBodyAccount'Company'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                     postTokensRequestBodyAccount'Company'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTokensRequestBodyAccount'Company'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postTokensRequestBodyAccount'Company'Address'City obj) : (Data.Aeson..=) "country" (postTokensRequestBodyAccount'Company'Address'Country obj) : (Data.Aeson..=) "line1" (postTokensRequestBodyAccount'Company'Address'Line1 obj) : (Data.Aeson..=) "line2" (postTokensRequestBodyAccount'Company'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postTokensRequestBodyAccount'Company'Address'PostalCode obj) : (Data.Aeson..=) "state" (postTokensRequestBodyAccount'Company'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postTokensRequestBodyAccount'Company'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postTokensRequestBodyAccount'Company'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postTokensRequestBodyAccount'Company'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postTokensRequestBodyAccount'Company'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postTokensRequestBodyAccount'Company'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postTokensRequestBodyAccount'Company'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyAccount'Company'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyAccount'Company'Address'" (\obj -> (((((GHC.Base.pure PostTokensRequestBodyAccount'Company'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
data PostTokensRequestBodyAccount'Company'AddressKana'
    = PostTokensRequestBodyAccount'Company'AddressKana' {postTokensRequestBodyAccount'Company'AddressKana'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postTokensRequestBodyAccount'Company'AddressKana'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postTokensRequestBodyAccount'Company'AddressKana'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postTokensRequestBodyAccount'Company'AddressKana'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postTokensRequestBodyAccount'Company'AddressKana'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postTokensRequestBodyAccount'Company'AddressKana'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                         postTokensRequestBodyAccount'Company'AddressKana'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTokensRequestBodyAccount'Company'AddressKana'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postTokensRequestBodyAccount'Company'AddressKana'City obj) : (Data.Aeson..=) "country" (postTokensRequestBodyAccount'Company'AddressKana'Country obj) : (Data.Aeson..=) "line1" (postTokensRequestBodyAccount'Company'AddressKana'Line1 obj) : (Data.Aeson..=) "line2" (postTokensRequestBodyAccount'Company'AddressKana'Line2 obj) : (Data.Aeson..=) "postal_code" (postTokensRequestBodyAccount'Company'AddressKana'PostalCode obj) : (Data.Aeson..=) "state" (postTokensRequestBodyAccount'Company'AddressKana'State obj) : (Data.Aeson..=) "town" (postTokensRequestBodyAccount'Company'AddressKana'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postTokensRequestBodyAccount'Company'AddressKana'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postTokensRequestBodyAccount'Company'AddressKana'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postTokensRequestBodyAccount'Company'AddressKana'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postTokensRequestBodyAccount'Company'AddressKana'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postTokensRequestBodyAccount'Company'AddressKana'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postTokensRequestBodyAccount'Company'AddressKana'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postTokensRequestBodyAccount'Company'AddressKana'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyAccount'Company'AddressKana'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyAccount'Company'AddressKana'" (\obj -> ((((((GHC.Base.pure PostTokensRequestBodyAccount'Company'AddressKana' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostTokensRequestBodyAccount'Company'AddressKanji'
    = PostTokensRequestBodyAccount'Company'AddressKanji' {postTokensRequestBodyAccount'Company'AddressKanji'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postTokensRequestBodyAccount'Company'AddressKanji'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postTokensRequestBodyAccount'Company'AddressKanji'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postTokensRequestBodyAccount'Company'AddressKanji'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postTokensRequestBodyAccount'Company'AddressKanji'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postTokensRequestBodyAccount'Company'AddressKanji'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postTokensRequestBodyAccount'Company'AddressKanji'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTokensRequestBodyAccount'Company'AddressKanji'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postTokensRequestBodyAccount'Company'AddressKanji'City obj) : (Data.Aeson..=) "country" (postTokensRequestBodyAccount'Company'AddressKanji'Country obj) : (Data.Aeson..=) "line1" (postTokensRequestBodyAccount'Company'AddressKanji'Line1 obj) : (Data.Aeson..=) "line2" (postTokensRequestBodyAccount'Company'AddressKanji'Line2 obj) : (Data.Aeson..=) "postal_code" (postTokensRequestBodyAccount'Company'AddressKanji'PostalCode obj) : (Data.Aeson..=) "state" (postTokensRequestBodyAccount'Company'AddressKanji'State obj) : (Data.Aeson..=) "town" (postTokensRequestBodyAccount'Company'AddressKanji'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postTokensRequestBodyAccount'Company'AddressKanji'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postTokensRequestBodyAccount'Company'AddressKanji'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postTokensRequestBodyAccount'Company'AddressKanji'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postTokensRequestBodyAccount'Company'AddressKanji'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postTokensRequestBodyAccount'Company'AddressKanji'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postTokensRequestBodyAccount'Company'AddressKanji'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postTokensRequestBodyAccount'Company'AddressKanji'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyAccount'Company'AddressKanji'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyAccount'Company'AddressKanji'" (\obj -> ((((((GHC.Base.pure PostTokensRequestBodyAccount'Company'AddressKanji' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostTokensRequestBodyAccount'Company'Structure'
    = PostTokensRequestBodyAccount'Company'Structure'EnumOther Data.Aeson.Types.Internal.Value
    | PostTokensRequestBodyAccount'Company'Structure'EnumTyped GHC.Base.String
    | PostTokensRequestBodyAccount'Company'Structure'EnumString_
    | PostTokensRequestBodyAccount'Company'Structure'EnumStringGovernmentInstrumentality
    | PostTokensRequestBodyAccount'Company'Structure'EnumStringGovernmentalUnit
    | PostTokensRequestBodyAccount'Company'Structure'EnumStringIncorporatedNonProfit
    | PostTokensRequestBodyAccount'Company'Structure'EnumStringMultiMemberLlc
    | PostTokensRequestBodyAccount'Company'Structure'EnumStringPrivateCorporation
    | PostTokensRequestBodyAccount'Company'Structure'EnumStringPrivatePartnership
    | PostTokensRequestBodyAccount'Company'Structure'EnumStringPublicCorporation
    | PostTokensRequestBodyAccount'Company'Structure'EnumStringPublicPartnership
    | PostTokensRequestBodyAccount'Company'Structure'EnumStringTaxExemptGovernmentInstrumentality
    | PostTokensRequestBodyAccount'Company'Structure'EnumStringUnincorporatedAssociation
    | PostTokensRequestBodyAccount'Company'Structure'EnumStringUnincorporatedNonProfit
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTokensRequestBodyAccount'Company'Structure'
    where toJSON (PostTokensRequestBodyAccount'Company'Structure'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostTokensRequestBodyAccount'Company'Structure'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostTokensRequestBodyAccount'Company'Structure'EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
          toJSON (PostTokensRequestBodyAccount'Company'Structure'EnumStringGovernmentInstrumentality) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "government_instrumentality"
          toJSON (PostTokensRequestBodyAccount'Company'Structure'EnumStringGovernmentalUnit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "governmental_unit"
          toJSON (PostTokensRequestBodyAccount'Company'Structure'EnumStringIncorporatedNonProfit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "incorporated_non_profit"
          toJSON (PostTokensRequestBodyAccount'Company'Structure'EnumStringMultiMemberLlc) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "multi_member_llc"
          toJSON (PostTokensRequestBodyAccount'Company'Structure'EnumStringPrivateCorporation) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "private_corporation"
          toJSON (PostTokensRequestBodyAccount'Company'Structure'EnumStringPrivatePartnership) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "private_partnership"
          toJSON (PostTokensRequestBodyAccount'Company'Structure'EnumStringPublicCorporation) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public_corporation"
          toJSON (PostTokensRequestBodyAccount'Company'Structure'EnumStringPublicPartnership) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public_partnership"
          toJSON (PostTokensRequestBodyAccount'Company'Structure'EnumStringTaxExemptGovernmentInstrumentality) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tax_exempt_government_instrumentality"
          toJSON (PostTokensRequestBodyAccount'Company'Structure'EnumStringUnincorporatedAssociation) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unincorporated_association"
          toJSON (PostTokensRequestBodyAccount'Company'Structure'EnumStringUnincorporatedNonProfit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unincorporated_non_profit"
instance Data.Aeson.FromJSON PostTokensRequestBodyAccount'Company'Structure'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostTokensRequestBodyAccount'Company'Structure'EnumString_
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "government_instrumentality")
                                                then PostTokensRequestBodyAccount'Company'Structure'EnumStringGovernmentInstrumentality
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "governmental_unit")
                                                      then PostTokensRequestBodyAccount'Company'Structure'EnumStringGovernmentalUnit
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "incorporated_non_profit")
                                                            then PostTokensRequestBodyAccount'Company'Structure'EnumStringIncorporatedNonProfit
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "multi_member_llc")
                                                                  then PostTokensRequestBodyAccount'Company'Structure'EnumStringMultiMemberLlc
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "private_corporation")
                                                                        then PostTokensRequestBodyAccount'Company'Structure'EnumStringPrivateCorporation
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "private_partnership")
                                                                              then PostTokensRequestBodyAccount'Company'Structure'EnumStringPrivatePartnership
                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public_corporation")
                                                                                    then PostTokensRequestBodyAccount'Company'Structure'EnumStringPublicCorporation
                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public_partnership")
                                                                                          then PostTokensRequestBodyAccount'Company'Structure'EnumStringPublicPartnership
                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tax_exempt_government_instrumentality")
                                                                                                then PostTokensRequestBodyAccount'Company'Structure'EnumStringTaxExemptGovernmentInstrumentality
                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unincorporated_association")
                                                                                                      then PostTokensRequestBodyAccount'Company'Structure'EnumStringUnincorporatedAssociation
                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unincorporated_non_profit")
                                                                                                            then PostTokensRequestBodyAccount'Company'Structure'EnumStringUnincorporatedNonProfit
                                                                                                            else PostTokensRequestBodyAccount'Company'Structure'EnumOther val)
data PostTokensRequestBodyAccount'Company'Verification'
    = PostTokensRequestBodyAccount'Company'Verification' {postTokensRequestBodyAccount'Company'Verification'Document :: (GHC.Maybe.Maybe PostTokensRequestBodyAccount'Company'Verification'Document')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostTokensRequestBodyAccount'Company'Verification'Document'
    = PostTokensRequestBodyAccount'Company'Verification'Document' {postTokensRequestBodyAccount'Company'Verification'Document'Back :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                   postTokensRequestBodyAccount'Company'Verification'Document'Front :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTokensRequestBodyAccount'Company'Verification'Document'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postTokensRequestBodyAccount'Company'Verification'Document'Back obj) : (Data.Aeson..=) "front" (postTokensRequestBodyAccount'Company'Verification'Document'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postTokensRequestBodyAccount'Company'Verification'Document'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postTokensRequestBodyAccount'Company'Verification'Document'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyAccount'Company'Verification'Document'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyAccount'Company'Verification'Document'" (\obj -> (GHC.Base.pure PostTokensRequestBodyAccount'Company'Verification'Document' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
instance Data.Aeson.ToJSON PostTokensRequestBodyAccount'Company'Verification'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "document" (postTokensRequestBodyAccount'Company'Verification'Document obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "document" (postTokensRequestBodyAccount'Company'Verification'Document obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyAccount'Company'Verification'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyAccount'Company'Verification'" (\obj -> GHC.Base.pure PostTokensRequestBodyAccount'Company'Verification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document"))
instance Data.Aeson.ToJSON PostTokensRequestBodyAccount'Company'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postTokensRequestBodyAccount'Company'Address obj) : (Data.Aeson..=) "address_kana" (postTokensRequestBodyAccount'Company'AddressKana obj) : (Data.Aeson..=) "address_kanji" (postTokensRequestBodyAccount'Company'AddressKanji obj) : (Data.Aeson..=) "directors_provided" (postTokensRequestBodyAccount'Company'DirectorsProvided obj) : (Data.Aeson..=) "executives_provided" (postTokensRequestBodyAccount'Company'ExecutivesProvided obj) : (Data.Aeson..=) "name" (postTokensRequestBodyAccount'Company'Name obj) : (Data.Aeson..=) "name_kana" (postTokensRequestBodyAccount'Company'NameKana obj) : (Data.Aeson..=) "name_kanji" (postTokensRequestBodyAccount'Company'NameKanji obj) : (Data.Aeson..=) "owners_provided" (postTokensRequestBodyAccount'Company'OwnersProvided obj) : (Data.Aeson..=) "phone" (postTokensRequestBodyAccount'Company'Phone obj) : (Data.Aeson..=) "structure" (postTokensRequestBodyAccount'Company'Structure obj) : (Data.Aeson..=) "tax_id" (postTokensRequestBodyAccount'Company'TaxId obj) : (Data.Aeson..=) "tax_id_registrar" (postTokensRequestBodyAccount'Company'TaxIdRegistrar obj) : (Data.Aeson..=) "vat_id" (postTokensRequestBodyAccount'Company'VatId obj) : (Data.Aeson..=) "verification" (postTokensRequestBodyAccount'Company'Verification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postTokensRequestBodyAccount'Company'Address obj) GHC.Base.<> ((Data.Aeson..=) "address_kana" (postTokensRequestBodyAccount'Company'AddressKana obj) GHC.Base.<> ((Data.Aeson..=) "address_kanji" (postTokensRequestBodyAccount'Company'AddressKanji obj) GHC.Base.<> ((Data.Aeson..=) "directors_provided" (postTokensRequestBodyAccount'Company'DirectorsProvided obj) GHC.Base.<> ((Data.Aeson..=) "executives_provided" (postTokensRequestBodyAccount'Company'ExecutivesProvided obj) GHC.Base.<> ((Data.Aeson..=) "name" (postTokensRequestBodyAccount'Company'Name obj) GHC.Base.<> ((Data.Aeson..=) "name_kana" (postTokensRequestBodyAccount'Company'NameKana obj) GHC.Base.<> ((Data.Aeson..=) "name_kanji" (postTokensRequestBodyAccount'Company'NameKanji obj) GHC.Base.<> ((Data.Aeson..=) "owners_provided" (postTokensRequestBodyAccount'Company'OwnersProvided obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postTokensRequestBodyAccount'Company'Phone obj) GHC.Base.<> ((Data.Aeson..=) "structure" (postTokensRequestBodyAccount'Company'Structure obj) GHC.Base.<> ((Data.Aeson..=) "tax_id" (postTokensRequestBodyAccount'Company'TaxId obj) GHC.Base.<> ((Data.Aeson..=) "tax_id_registrar" (postTokensRequestBodyAccount'Company'TaxIdRegistrar obj) GHC.Base.<> ((Data.Aeson..=) "vat_id" (postTokensRequestBodyAccount'Company'VatId obj) GHC.Base.<> (Data.Aeson..=) "verification" (postTokensRequestBodyAccount'Company'Verification obj)))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyAccount'Company'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyAccount'Company'" (\obj -> ((((((((((((((GHC.Base.pure PostTokensRequestBodyAccount'Company' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "directors_provided")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "executives_provided")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owners_provided")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "structure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_id_registrar")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "vat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verification"))
data PostTokensRequestBodyAccount'Individual'
    = PostTokensRequestBodyAccount'Individual' {postTokensRequestBodyAccount'Individual'Address :: (GHC.Maybe.Maybe PostTokensRequestBodyAccount'Individual'Address'),
                                                postTokensRequestBodyAccount'Individual'AddressKana :: (GHC.Maybe.Maybe PostTokensRequestBodyAccount'Individual'AddressKana'),
                                                postTokensRequestBodyAccount'Individual'AddressKanji :: (GHC.Maybe.Maybe PostTokensRequestBodyAccount'Individual'AddressKanji'),
                                                postTokensRequestBodyAccount'Individual'Dob :: (GHC.Maybe.Maybe PostTokensRequestBodyAccount'Individual'Dob'Variants),
                                                postTokensRequestBodyAccount'Individual'Email :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postTokensRequestBodyAccount'Individual'FirstName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postTokensRequestBodyAccount'Individual'FirstNameKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postTokensRequestBodyAccount'Individual'FirstNameKanji :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postTokensRequestBodyAccount'Individual'Gender :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postTokensRequestBodyAccount'Individual'IdNumber :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postTokensRequestBodyAccount'Individual'LastName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postTokensRequestBodyAccount'Individual'LastNameKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postTokensRequestBodyAccount'Individual'LastNameKanji :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postTokensRequestBodyAccount'Individual'MaidenName :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postTokensRequestBodyAccount'Individual'Metadata :: (GHC.Maybe.Maybe PostTokensRequestBodyAccount'Individual'Metadata'),
                                                postTokensRequestBodyAccount'Individual'Phone :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postTokensRequestBodyAccount'Individual'SsnLast_4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postTokensRequestBodyAccount'Individual'Verification :: (GHC.Maybe.Maybe PostTokensRequestBodyAccount'Individual'Verification')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostTokensRequestBodyAccount'Individual'Address'
    = PostTokensRequestBodyAccount'Individual'Address' {postTokensRequestBodyAccount'Individual'Address'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postTokensRequestBodyAccount'Individual'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postTokensRequestBodyAccount'Individual'Address'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postTokensRequestBodyAccount'Individual'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postTokensRequestBodyAccount'Individual'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                        postTokensRequestBodyAccount'Individual'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTokensRequestBodyAccount'Individual'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postTokensRequestBodyAccount'Individual'Address'City obj) : (Data.Aeson..=) "country" (postTokensRequestBodyAccount'Individual'Address'Country obj) : (Data.Aeson..=) "line1" (postTokensRequestBodyAccount'Individual'Address'Line1 obj) : (Data.Aeson..=) "line2" (postTokensRequestBodyAccount'Individual'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postTokensRequestBodyAccount'Individual'Address'PostalCode obj) : (Data.Aeson..=) "state" (postTokensRequestBodyAccount'Individual'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postTokensRequestBodyAccount'Individual'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postTokensRequestBodyAccount'Individual'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postTokensRequestBodyAccount'Individual'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postTokensRequestBodyAccount'Individual'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postTokensRequestBodyAccount'Individual'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postTokensRequestBodyAccount'Individual'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyAccount'Individual'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyAccount'Individual'Address'" (\obj -> (((((GHC.Base.pure PostTokensRequestBodyAccount'Individual'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
data PostTokensRequestBodyAccount'Individual'AddressKana'
    = PostTokensRequestBodyAccount'Individual'AddressKana' {postTokensRequestBodyAccount'Individual'AddressKana'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                            postTokensRequestBodyAccount'Individual'AddressKana'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                            postTokensRequestBodyAccount'Individual'AddressKana'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                            postTokensRequestBodyAccount'Individual'AddressKana'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                            postTokensRequestBodyAccount'Individual'AddressKana'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                            postTokensRequestBodyAccount'Individual'AddressKana'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                            postTokensRequestBodyAccount'Individual'AddressKana'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTokensRequestBodyAccount'Individual'AddressKana'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postTokensRequestBodyAccount'Individual'AddressKana'City obj) : (Data.Aeson..=) "country" (postTokensRequestBodyAccount'Individual'AddressKana'Country obj) : (Data.Aeson..=) "line1" (postTokensRequestBodyAccount'Individual'AddressKana'Line1 obj) : (Data.Aeson..=) "line2" (postTokensRequestBodyAccount'Individual'AddressKana'Line2 obj) : (Data.Aeson..=) "postal_code" (postTokensRequestBodyAccount'Individual'AddressKana'PostalCode obj) : (Data.Aeson..=) "state" (postTokensRequestBodyAccount'Individual'AddressKana'State obj) : (Data.Aeson..=) "town" (postTokensRequestBodyAccount'Individual'AddressKana'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postTokensRequestBodyAccount'Individual'AddressKana'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postTokensRequestBodyAccount'Individual'AddressKana'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postTokensRequestBodyAccount'Individual'AddressKana'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postTokensRequestBodyAccount'Individual'AddressKana'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postTokensRequestBodyAccount'Individual'AddressKana'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postTokensRequestBodyAccount'Individual'AddressKana'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postTokensRequestBodyAccount'Individual'AddressKana'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyAccount'Individual'AddressKana'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyAccount'Individual'AddressKana'" (\obj -> ((((((GHC.Base.pure PostTokensRequestBodyAccount'Individual'AddressKana' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostTokensRequestBodyAccount'Individual'AddressKanji'
    = PostTokensRequestBodyAccount'Individual'AddressKanji' {postTokensRequestBodyAccount'Individual'AddressKanji'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                             postTokensRequestBodyAccount'Individual'AddressKanji'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                             postTokensRequestBodyAccount'Individual'AddressKanji'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                             postTokensRequestBodyAccount'Individual'AddressKanji'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                             postTokensRequestBodyAccount'Individual'AddressKanji'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                             postTokensRequestBodyAccount'Individual'AddressKanji'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                             postTokensRequestBodyAccount'Individual'AddressKanji'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTokensRequestBodyAccount'Individual'AddressKanji'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postTokensRequestBodyAccount'Individual'AddressKanji'City obj) : (Data.Aeson..=) "country" (postTokensRequestBodyAccount'Individual'AddressKanji'Country obj) : (Data.Aeson..=) "line1" (postTokensRequestBodyAccount'Individual'AddressKanji'Line1 obj) : (Data.Aeson..=) "line2" (postTokensRequestBodyAccount'Individual'AddressKanji'Line2 obj) : (Data.Aeson..=) "postal_code" (postTokensRequestBodyAccount'Individual'AddressKanji'PostalCode obj) : (Data.Aeson..=) "state" (postTokensRequestBodyAccount'Individual'AddressKanji'State obj) : (Data.Aeson..=) "town" (postTokensRequestBodyAccount'Individual'AddressKanji'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postTokensRequestBodyAccount'Individual'AddressKanji'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postTokensRequestBodyAccount'Individual'AddressKanji'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postTokensRequestBodyAccount'Individual'AddressKanji'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postTokensRequestBodyAccount'Individual'AddressKanji'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postTokensRequestBodyAccount'Individual'AddressKanji'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postTokensRequestBodyAccount'Individual'AddressKanji'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postTokensRequestBodyAccount'Individual'AddressKanji'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyAccount'Individual'AddressKanji'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyAccount'Individual'AddressKanji'" (\obj -> ((((((GHC.Base.pure PostTokensRequestBodyAccount'Individual'AddressKanji' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostTokensRequestBodyAccount'Individual'Dob'OneOf1
    = PostTokensRequestBodyAccount'Individual'Dob'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostTokensRequestBodyAccount'Individual'Dob'OneOf1EnumTyped GHC.Base.String
    | PostTokensRequestBodyAccount'Individual'Dob'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTokensRequestBodyAccount'Individual'Dob'OneOf1
    where toJSON (PostTokensRequestBodyAccount'Individual'Dob'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostTokensRequestBodyAccount'Individual'Dob'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostTokensRequestBodyAccount'Individual'Dob'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostTokensRequestBodyAccount'Individual'Dob'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostTokensRequestBodyAccount'Individual'Dob'OneOf1EnumString_
                                          else PostTokensRequestBodyAccount'Individual'Dob'OneOf1EnumOther val)
data PostTokensRequestBodyAccount'Individual'Dob'OneOf2
    = PostTokensRequestBodyAccount'Individual'Dob'OneOf2 {postTokensRequestBodyAccount'Individual'Dob'OneOf2Day :: GHC.Integer.Type.Integer,
                                                          postTokensRequestBodyAccount'Individual'Dob'OneOf2Month :: GHC.Integer.Type.Integer,
                                                          postTokensRequestBodyAccount'Individual'Dob'OneOf2Year :: GHC.Integer.Type.Integer}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTokensRequestBodyAccount'Individual'Dob'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "day" (postTokensRequestBodyAccount'Individual'Dob'OneOf2Day obj) : (Data.Aeson..=) "month" (postTokensRequestBodyAccount'Individual'Dob'OneOf2Month obj) : (Data.Aeson..=) "year" (postTokensRequestBodyAccount'Individual'Dob'OneOf2Year obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "day" (postTokensRequestBodyAccount'Individual'Dob'OneOf2Day obj) GHC.Base.<> ((Data.Aeson..=) "month" (postTokensRequestBodyAccount'Individual'Dob'OneOf2Month obj) GHC.Base.<> (Data.Aeson..=) "year" (postTokensRequestBodyAccount'Individual'Dob'OneOf2Year obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyAccount'Individual'Dob'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyAccount'Individual'Dob'OneOf2" (\obj -> ((GHC.Base.pure PostTokensRequestBodyAccount'Individual'Dob'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "year"))
data PostTokensRequestBodyAccount'Individual'Dob'Variants
    = PostTokensRequestBodyAccount'Individual'Dob'Variant1 PostTokensRequestBodyAccount'Individual'Dob'OneOf1
    | PostTokensRequestBodyAccount'Individual'Dob'Variant2 PostTokensRequestBodyAccount'Individual'Dob'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostTokensRequestBodyAccount'Individual'Dob'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostTokensRequestBodyAccount'Individual'Dob'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostTokensRequestBodyAccount'Individual'Metadata'
    = PostTokensRequestBodyAccount'Individual'Metadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTokensRequestBodyAccount'Individual'Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyAccount'Individual'Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyAccount'Individual'Metadata'" (\obj -> GHC.Base.pure PostTokensRequestBodyAccount'Individual'Metadata')
data PostTokensRequestBodyAccount'Individual'Verification'
    = PostTokensRequestBodyAccount'Individual'Verification' {postTokensRequestBodyAccount'Individual'Verification'AdditionalDocument :: (GHC.Maybe.Maybe PostTokensRequestBodyAccount'Individual'Verification'AdditionalDocument'),
                                                             postTokensRequestBodyAccount'Individual'Verification'Document :: (GHC.Maybe.Maybe PostTokensRequestBodyAccount'Individual'Verification'Document')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostTokensRequestBodyAccount'Individual'Verification'AdditionalDocument'
    = PostTokensRequestBodyAccount'Individual'Verification'AdditionalDocument' {postTokensRequestBodyAccount'Individual'Verification'AdditionalDocument'Back :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                                postTokensRequestBodyAccount'Individual'Verification'AdditionalDocument'Front :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTokensRequestBodyAccount'Individual'Verification'AdditionalDocument'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postTokensRequestBodyAccount'Individual'Verification'AdditionalDocument'Back obj) : (Data.Aeson..=) "front" (postTokensRequestBodyAccount'Individual'Verification'AdditionalDocument'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postTokensRequestBodyAccount'Individual'Verification'AdditionalDocument'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postTokensRequestBodyAccount'Individual'Verification'AdditionalDocument'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyAccount'Individual'Verification'AdditionalDocument'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyAccount'Individual'Verification'AdditionalDocument'" (\obj -> (GHC.Base.pure PostTokensRequestBodyAccount'Individual'Verification'AdditionalDocument' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
data PostTokensRequestBodyAccount'Individual'Verification'Document'
    = PostTokensRequestBodyAccount'Individual'Verification'Document' {postTokensRequestBodyAccount'Individual'Verification'Document'Back :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                      postTokensRequestBodyAccount'Individual'Verification'Document'Front :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTokensRequestBodyAccount'Individual'Verification'Document'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postTokensRequestBodyAccount'Individual'Verification'Document'Back obj) : (Data.Aeson..=) "front" (postTokensRequestBodyAccount'Individual'Verification'Document'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postTokensRequestBodyAccount'Individual'Verification'Document'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postTokensRequestBodyAccount'Individual'Verification'Document'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyAccount'Individual'Verification'Document'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyAccount'Individual'Verification'Document'" (\obj -> (GHC.Base.pure PostTokensRequestBodyAccount'Individual'Verification'Document' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
instance Data.Aeson.ToJSON PostTokensRequestBodyAccount'Individual'Verification'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "additional_document" (postTokensRequestBodyAccount'Individual'Verification'AdditionalDocument obj) : (Data.Aeson..=) "document" (postTokensRequestBodyAccount'Individual'Verification'Document obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "additional_document" (postTokensRequestBodyAccount'Individual'Verification'AdditionalDocument obj) GHC.Base.<> (Data.Aeson..=) "document" (postTokensRequestBodyAccount'Individual'Verification'Document obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyAccount'Individual'Verification'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyAccount'Individual'Verification'" (\obj -> (GHC.Base.pure PostTokensRequestBodyAccount'Individual'Verification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "additional_document")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document"))
instance Data.Aeson.ToJSON PostTokensRequestBodyAccount'Individual'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postTokensRequestBodyAccount'Individual'Address obj) : (Data.Aeson..=) "address_kana" (postTokensRequestBodyAccount'Individual'AddressKana obj) : (Data.Aeson..=) "address_kanji" (postTokensRequestBodyAccount'Individual'AddressKanji obj) : (Data.Aeson..=) "dob" (postTokensRequestBodyAccount'Individual'Dob obj) : (Data.Aeson..=) "email" (postTokensRequestBodyAccount'Individual'Email obj) : (Data.Aeson..=) "first_name" (postTokensRequestBodyAccount'Individual'FirstName obj) : (Data.Aeson..=) "first_name_kana" (postTokensRequestBodyAccount'Individual'FirstNameKana obj) : (Data.Aeson..=) "first_name_kanji" (postTokensRequestBodyAccount'Individual'FirstNameKanji obj) : (Data.Aeson..=) "gender" (postTokensRequestBodyAccount'Individual'Gender obj) : (Data.Aeson..=) "id_number" (postTokensRequestBodyAccount'Individual'IdNumber obj) : (Data.Aeson..=) "last_name" (postTokensRequestBodyAccount'Individual'LastName obj) : (Data.Aeson..=) "last_name_kana" (postTokensRequestBodyAccount'Individual'LastNameKana obj) : (Data.Aeson..=) "last_name_kanji" (postTokensRequestBodyAccount'Individual'LastNameKanji obj) : (Data.Aeson..=) "maiden_name" (postTokensRequestBodyAccount'Individual'MaidenName obj) : (Data.Aeson..=) "metadata" (postTokensRequestBodyAccount'Individual'Metadata obj) : (Data.Aeson..=) "phone" (postTokensRequestBodyAccount'Individual'Phone obj) : (Data.Aeson..=) "ssn_last_4" (postTokensRequestBodyAccount'Individual'SsnLast_4 obj) : (Data.Aeson..=) "verification" (postTokensRequestBodyAccount'Individual'Verification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postTokensRequestBodyAccount'Individual'Address obj) GHC.Base.<> ((Data.Aeson..=) "address_kana" (postTokensRequestBodyAccount'Individual'AddressKana obj) GHC.Base.<> ((Data.Aeson..=) "address_kanji" (postTokensRequestBodyAccount'Individual'AddressKanji obj) GHC.Base.<> ((Data.Aeson..=) "dob" (postTokensRequestBodyAccount'Individual'Dob obj) GHC.Base.<> ((Data.Aeson..=) "email" (postTokensRequestBodyAccount'Individual'Email obj) GHC.Base.<> ((Data.Aeson..=) "first_name" (postTokensRequestBodyAccount'Individual'FirstName obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kana" (postTokensRequestBodyAccount'Individual'FirstNameKana obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kanji" (postTokensRequestBodyAccount'Individual'FirstNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "gender" (postTokensRequestBodyAccount'Individual'Gender obj) GHC.Base.<> ((Data.Aeson..=) "id_number" (postTokensRequestBodyAccount'Individual'IdNumber obj) GHC.Base.<> ((Data.Aeson..=) "last_name" (postTokensRequestBodyAccount'Individual'LastName obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kana" (postTokensRequestBodyAccount'Individual'LastNameKana obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kanji" (postTokensRequestBodyAccount'Individual'LastNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "maiden_name" (postTokensRequestBodyAccount'Individual'MaidenName obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postTokensRequestBodyAccount'Individual'Metadata obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postTokensRequestBodyAccount'Individual'Phone obj) GHC.Base.<> ((Data.Aeson..=) "ssn_last_4" (postTokensRequestBodyAccount'Individual'SsnLast_4 obj) GHC.Base.<> (Data.Aeson..=) "verification" (postTokensRequestBodyAccount'Individual'Verification obj))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyAccount'Individual'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyAccount'Individual'" (\obj -> (((((((((((((((((GHC.Base.pure PostTokensRequestBodyAccount'Individual' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dob")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gender")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "maiden_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ssn_last_4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verification"))
instance Data.Aeson.ToJSON PostTokensRequestBodyAccount'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "business_type" (postTokensRequestBodyAccount'BusinessType obj) : (Data.Aeson..=) "company" (postTokensRequestBodyAccount'Company obj) : (Data.Aeson..=) "individual" (postTokensRequestBodyAccount'Individual obj) : (Data.Aeson..=) "tos_shown_and_accepted" (postTokensRequestBodyAccount'TosShownAndAccepted obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "business_type" (postTokensRequestBodyAccount'BusinessType obj) GHC.Base.<> ((Data.Aeson..=) "company" (postTokensRequestBodyAccount'Company obj) GHC.Base.<> ((Data.Aeson..=) "individual" (postTokensRequestBodyAccount'Individual obj) GHC.Base.<> (Data.Aeson..=) "tos_shown_and_accepted" (postTokensRequestBodyAccount'TosShownAndAccepted obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyAccount'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyAccount'" (\obj -> (((GHC.Base.pure PostTokensRequestBodyAccount' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "business_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "company")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "individual")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tos_shown_and_accepted"))
data PostTokensRequestBodyBankAccount'
    = PostTokensRequestBodyBankAccount' {postTokensRequestBodyBankAccount'AccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String),
                                         postTokensRequestBodyBankAccount'AccountHolderType :: (GHC.Maybe.Maybe PostTokensRequestBodyBankAccount'AccountHolderType'),
                                         postTokensRequestBodyBankAccount'AccountNumber :: GHC.Base.String,
                                         postTokensRequestBodyBankAccount'Country :: GHC.Base.String,
                                         postTokensRequestBodyBankAccount'Currency :: (GHC.Maybe.Maybe GHC.Base.String),
                                         postTokensRequestBodyBankAccount'RoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostTokensRequestBodyBankAccount'AccountHolderType'
    = PostTokensRequestBodyBankAccount'AccountHolderType'EnumOther Data.Aeson.Types.Internal.Value
    | PostTokensRequestBodyBankAccount'AccountHolderType'EnumTyped GHC.Base.String
    | PostTokensRequestBodyBankAccount'AccountHolderType'EnumStringCompany
    | PostTokensRequestBodyBankAccount'AccountHolderType'EnumStringIndividual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTokensRequestBodyBankAccount'AccountHolderType'
    where toJSON (PostTokensRequestBodyBankAccount'AccountHolderType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostTokensRequestBodyBankAccount'AccountHolderType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostTokensRequestBodyBankAccount'AccountHolderType'EnumStringCompany) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company"
          toJSON (PostTokensRequestBodyBankAccount'AccountHolderType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
instance Data.Aeson.FromJSON PostTokensRequestBodyBankAccount'AccountHolderType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company")
                                          then PostTokensRequestBodyBankAccount'AccountHolderType'EnumStringCompany
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                then PostTokensRequestBodyBankAccount'AccountHolderType'EnumStringIndividual
                                                else PostTokensRequestBodyBankAccount'AccountHolderType'EnumOther val)
instance Data.Aeson.ToJSON PostTokensRequestBodyBankAccount'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_holder_name" (postTokensRequestBodyBankAccount'AccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (postTokensRequestBodyBankAccount'AccountHolderType obj) : (Data.Aeson..=) "account_number" (postTokensRequestBodyBankAccount'AccountNumber obj) : (Data.Aeson..=) "country" (postTokensRequestBodyBankAccount'Country obj) : (Data.Aeson..=) "currency" (postTokensRequestBodyBankAccount'Currency obj) : (Data.Aeson..=) "routing_number" (postTokensRequestBodyBankAccount'RoutingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_holder_name" (postTokensRequestBodyBankAccount'AccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (postTokensRequestBodyBankAccount'AccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "account_number" (postTokensRequestBodyBankAccount'AccountNumber obj) GHC.Base.<> ((Data.Aeson..=) "country" (postTokensRequestBodyBankAccount'Country obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postTokensRequestBodyBankAccount'Currency obj) GHC.Base.<> (Data.Aeson..=) "routing_number" (postTokensRequestBodyBankAccount'RoutingNumber obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyBankAccount'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyBankAccount'" (\obj -> (((((GHC.Base.pure PostTokensRequestBodyBankAccount' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number"))
data PostTokensRequestBodyCard'OneOf2
    = PostTokensRequestBodyCard'OneOf2 {postTokensRequestBodyCard'OneOf2AddressCity :: (GHC.Maybe.Maybe GHC.Base.String),
                                        postTokensRequestBodyCard'OneOf2AddressCountry :: (GHC.Maybe.Maybe GHC.Base.String),
                                        postTokensRequestBodyCard'OneOf2AddressLine1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                        postTokensRequestBodyCard'OneOf2AddressLine2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                        postTokensRequestBodyCard'OneOf2AddressState :: (GHC.Maybe.Maybe GHC.Base.String),
                                        postTokensRequestBodyCard'OneOf2AddressZip :: (GHC.Maybe.Maybe GHC.Base.String),
                                        postTokensRequestBodyCard'OneOf2Currency :: (GHC.Maybe.Maybe GHC.Base.String),
                                        postTokensRequestBodyCard'OneOf2Cvc :: (GHC.Maybe.Maybe GHC.Base.String),
                                        postTokensRequestBodyCard'OneOf2ExpMonth :: GHC.Base.String,
                                        postTokensRequestBodyCard'OneOf2ExpYear :: GHC.Base.String,
                                        postTokensRequestBodyCard'OneOf2Name :: (GHC.Maybe.Maybe GHC.Base.String),
                                        postTokensRequestBodyCard'OneOf2Number :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTokensRequestBodyCard'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address_city" (postTokensRequestBodyCard'OneOf2AddressCity obj) : (Data.Aeson..=) "address_country" (postTokensRequestBodyCard'OneOf2AddressCountry obj) : (Data.Aeson..=) "address_line1" (postTokensRequestBodyCard'OneOf2AddressLine1 obj) : (Data.Aeson..=) "address_line2" (postTokensRequestBodyCard'OneOf2AddressLine2 obj) : (Data.Aeson..=) "address_state" (postTokensRequestBodyCard'OneOf2AddressState obj) : (Data.Aeson..=) "address_zip" (postTokensRequestBodyCard'OneOf2AddressZip obj) : (Data.Aeson..=) "currency" (postTokensRequestBodyCard'OneOf2Currency obj) : (Data.Aeson..=) "cvc" (postTokensRequestBodyCard'OneOf2Cvc obj) : (Data.Aeson..=) "exp_month" (postTokensRequestBodyCard'OneOf2ExpMonth obj) : (Data.Aeson..=) "exp_year" (postTokensRequestBodyCard'OneOf2ExpYear obj) : (Data.Aeson..=) "name" (postTokensRequestBodyCard'OneOf2Name obj) : (Data.Aeson..=) "number" (postTokensRequestBodyCard'OneOf2Number obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address_city" (postTokensRequestBodyCard'OneOf2AddressCity obj) GHC.Base.<> ((Data.Aeson..=) "address_country" (postTokensRequestBodyCard'OneOf2AddressCountry obj) GHC.Base.<> ((Data.Aeson..=) "address_line1" (postTokensRequestBodyCard'OneOf2AddressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "address_line2" (postTokensRequestBodyCard'OneOf2AddressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "address_state" (postTokensRequestBodyCard'OneOf2AddressState obj) GHC.Base.<> ((Data.Aeson..=) "address_zip" (postTokensRequestBodyCard'OneOf2AddressZip obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postTokensRequestBodyCard'OneOf2Currency obj) GHC.Base.<> ((Data.Aeson..=) "cvc" (postTokensRequestBodyCard'OneOf2Cvc obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (postTokensRequestBodyCard'OneOf2ExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (postTokensRequestBodyCard'OneOf2ExpYear obj) GHC.Base.<> ((Data.Aeson..=) "name" (postTokensRequestBodyCard'OneOf2Name obj) GHC.Base.<> (Data.Aeson..=) "number" (postTokensRequestBodyCard'OneOf2Number obj))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyCard'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyCard'OneOf2" (\obj -> (((((((((((GHC.Base.pure PostTokensRequestBodyCard'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "number"))
data PostTokensRequestBodyCard'Variants
    = PostTokensRequestBodyCard'Variant1 GHC.Base.String
    | PostTokensRequestBodyCard'Variant2 PostTokensRequestBodyCard'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostTokensRequestBodyCard'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostTokensRequestBodyCard'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostTokensRequestBodyPerson'
    = PostTokensRequestBodyPerson' {postTokensRequestBodyPerson'Address :: (GHC.Maybe.Maybe PostTokensRequestBodyPerson'Address'),
                                    postTokensRequestBodyPerson'AddressKana :: (GHC.Maybe.Maybe PostTokensRequestBodyPerson'AddressKana'),
                                    postTokensRequestBodyPerson'AddressKanji :: (GHC.Maybe.Maybe PostTokensRequestBodyPerson'AddressKanji'),
                                    postTokensRequestBodyPerson'Dob :: (GHC.Maybe.Maybe PostTokensRequestBodyPerson'Dob'Variants),
                                    postTokensRequestBodyPerson'Email :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postTokensRequestBodyPerson'FirstName :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postTokensRequestBodyPerson'FirstNameKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postTokensRequestBodyPerson'FirstNameKanji :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postTokensRequestBodyPerson'Gender :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postTokensRequestBodyPerson'IdNumber :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postTokensRequestBodyPerson'LastName :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postTokensRequestBodyPerson'LastNameKana :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postTokensRequestBodyPerson'LastNameKanji :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postTokensRequestBodyPerson'MaidenName :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postTokensRequestBodyPerson'Metadata :: (GHC.Maybe.Maybe PostTokensRequestBodyPerson'Metadata'),
                                    postTokensRequestBodyPerson'Phone :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postTokensRequestBodyPerson'Relationship :: (GHC.Maybe.Maybe PostTokensRequestBodyPerson'Relationship'),
                                    postTokensRequestBodyPerson'SsnLast_4 :: (GHC.Maybe.Maybe GHC.Base.String),
                                    postTokensRequestBodyPerson'Verification :: (GHC.Maybe.Maybe PostTokensRequestBodyPerson'Verification')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostTokensRequestBodyPerson'Address'
    = PostTokensRequestBodyPerson'Address' {postTokensRequestBodyPerson'Address'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postTokensRequestBodyPerson'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postTokensRequestBodyPerson'Address'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postTokensRequestBodyPerson'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postTokensRequestBodyPerson'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                            postTokensRequestBodyPerson'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTokensRequestBodyPerson'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postTokensRequestBodyPerson'Address'City obj) : (Data.Aeson..=) "country" (postTokensRequestBodyPerson'Address'Country obj) : (Data.Aeson..=) "line1" (postTokensRequestBodyPerson'Address'Line1 obj) : (Data.Aeson..=) "line2" (postTokensRequestBodyPerson'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postTokensRequestBodyPerson'Address'PostalCode obj) : (Data.Aeson..=) "state" (postTokensRequestBodyPerson'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postTokensRequestBodyPerson'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postTokensRequestBodyPerson'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postTokensRequestBodyPerson'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postTokensRequestBodyPerson'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postTokensRequestBodyPerson'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postTokensRequestBodyPerson'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyPerson'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyPerson'Address'" (\obj -> (((((GHC.Base.pure PostTokensRequestBodyPerson'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
data PostTokensRequestBodyPerson'AddressKana'
    = PostTokensRequestBodyPerson'AddressKana' {postTokensRequestBodyPerson'AddressKana'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postTokensRequestBodyPerson'AddressKana'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postTokensRequestBodyPerson'AddressKana'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postTokensRequestBodyPerson'AddressKana'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postTokensRequestBodyPerson'AddressKana'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postTokensRequestBodyPerson'AddressKana'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                postTokensRequestBodyPerson'AddressKana'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTokensRequestBodyPerson'AddressKana'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postTokensRequestBodyPerson'AddressKana'City obj) : (Data.Aeson..=) "country" (postTokensRequestBodyPerson'AddressKana'Country obj) : (Data.Aeson..=) "line1" (postTokensRequestBodyPerson'AddressKana'Line1 obj) : (Data.Aeson..=) "line2" (postTokensRequestBodyPerson'AddressKana'Line2 obj) : (Data.Aeson..=) "postal_code" (postTokensRequestBodyPerson'AddressKana'PostalCode obj) : (Data.Aeson..=) "state" (postTokensRequestBodyPerson'AddressKana'State obj) : (Data.Aeson..=) "town" (postTokensRequestBodyPerson'AddressKana'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postTokensRequestBodyPerson'AddressKana'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postTokensRequestBodyPerson'AddressKana'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postTokensRequestBodyPerson'AddressKana'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postTokensRequestBodyPerson'AddressKana'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postTokensRequestBodyPerson'AddressKana'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postTokensRequestBodyPerson'AddressKana'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postTokensRequestBodyPerson'AddressKana'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyPerson'AddressKana'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyPerson'AddressKana'" (\obj -> ((((((GHC.Base.pure PostTokensRequestBodyPerson'AddressKana' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostTokensRequestBodyPerson'AddressKanji'
    = PostTokensRequestBodyPerson'AddressKanji' {postTokensRequestBodyPerson'AddressKanji'City :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postTokensRequestBodyPerson'AddressKanji'Country :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postTokensRequestBodyPerson'AddressKanji'Line1 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postTokensRequestBodyPerson'AddressKanji'Line2 :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postTokensRequestBodyPerson'AddressKanji'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postTokensRequestBodyPerson'AddressKanji'State :: (GHC.Maybe.Maybe GHC.Base.String),
                                                 postTokensRequestBodyPerson'AddressKanji'Town :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTokensRequestBodyPerson'AddressKanji'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postTokensRequestBodyPerson'AddressKanji'City obj) : (Data.Aeson..=) "country" (postTokensRequestBodyPerson'AddressKanji'Country obj) : (Data.Aeson..=) "line1" (postTokensRequestBodyPerson'AddressKanji'Line1 obj) : (Data.Aeson..=) "line2" (postTokensRequestBodyPerson'AddressKanji'Line2 obj) : (Data.Aeson..=) "postal_code" (postTokensRequestBodyPerson'AddressKanji'PostalCode obj) : (Data.Aeson..=) "state" (postTokensRequestBodyPerson'AddressKanji'State obj) : (Data.Aeson..=) "town" (postTokensRequestBodyPerson'AddressKanji'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postTokensRequestBodyPerson'AddressKanji'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postTokensRequestBodyPerson'AddressKanji'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postTokensRequestBodyPerson'AddressKanji'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postTokensRequestBodyPerson'AddressKanji'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postTokensRequestBodyPerson'AddressKanji'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postTokensRequestBodyPerson'AddressKanji'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postTokensRequestBodyPerson'AddressKanji'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyPerson'AddressKanji'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyPerson'AddressKanji'" (\obj -> ((((((GHC.Base.pure PostTokensRequestBodyPerson'AddressKanji' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
data PostTokensRequestBodyPerson'Dob'OneOf1
    = PostTokensRequestBodyPerson'Dob'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostTokensRequestBodyPerson'Dob'OneOf1EnumTyped GHC.Base.String
    | PostTokensRequestBodyPerson'Dob'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTokensRequestBodyPerson'Dob'OneOf1
    where toJSON (PostTokensRequestBodyPerson'Dob'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostTokensRequestBodyPerson'Dob'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostTokensRequestBodyPerson'Dob'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostTokensRequestBodyPerson'Dob'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostTokensRequestBodyPerson'Dob'OneOf1EnumString_
                                          else PostTokensRequestBodyPerson'Dob'OneOf1EnumOther val)
data PostTokensRequestBodyPerson'Dob'OneOf2
    = PostTokensRequestBodyPerson'Dob'OneOf2 {postTokensRequestBodyPerson'Dob'OneOf2Day :: GHC.Integer.Type.Integer,
                                              postTokensRequestBodyPerson'Dob'OneOf2Month :: GHC.Integer.Type.Integer,
                                              postTokensRequestBodyPerson'Dob'OneOf2Year :: GHC.Integer.Type.Integer}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTokensRequestBodyPerson'Dob'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "day" (postTokensRequestBodyPerson'Dob'OneOf2Day obj) : (Data.Aeson..=) "month" (postTokensRequestBodyPerson'Dob'OneOf2Month obj) : (Data.Aeson..=) "year" (postTokensRequestBodyPerson'Dob'OneOf2Year obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "day" (postTokensRequestBodyPerson'Dob'OneOf2Day obj) GHC.Base.<> ((Data.Aeson..=) "month" (postTokensRequestBodyPerson'Dob'OneOf2Month obj) GHC.Base.<> (Data.Aeson..=) "year" (postTokensRequestBodyPerson'Dob'OneOf2Year obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyPerson'Dob'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyPerson'Dob'OneOf2" (\obj -> ((GHC.Base.pure PostTokensRequestBodyPerson'Dob'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "year"))
data PostTokensRequestBodyPerson'Dob'Variants
    = PostTokensRequestBodyPerson'Dob'Variant1 PostTokensRequestBodyPerson'Dob'OneOf1
    | PostTokensRequestBodyPerson'Dob'Variant2 PostTokensRequestBodyPerson'Dob'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostTokensRequestBodyPerson'Dob'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostTokensRequestBodyPerson'Dob'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
data PostTokensRequestBodyPerson'Metadata'
    = PostTokensRequestBodyPerson'Metadata' {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTokensRequestBodyPerson'Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyPerson'Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyPerson'Metadata'" (\obj -> GHC.Base.pure PostTokensRequestBodyPerson'Metadata')
data PostTokensRequestBodyPerson'Relationship'
    = PostTokensRequestBodyPerson'Relationship' {postTokensRequestBodyPerson'Relationship'Director :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                 postTokensRequestBodyPerson'Relationship'Executive :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                 postTokensRequestBodyPerson'Relationship'Owner :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                 postTokensRequestBodyPerson'Relationship'PercentOwnership :: (GHC.Maybe.Maybe PostTokensRequestBodyPerson'Relationship'PercentOwnership'Variants),
                                                 postTokensRequestBodyPerson'Relationship'Representative :: (GHC.Maybe.Maybe GHC.Types.Bool),
                                                 postTokensRequestBodyPerson'Relationship'Title :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostTokensRequestBodyPerson'Relationship'PercentOwnership'OneOf1
    = PostTokensRequestBodyPerson'Relationship'PercentOwnership'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostTokensRequestBodyPerson'Relationship'PercentOwnership'OneOf1EnumTyped GHC.Base.String
    | PostTokensRequestBodyPerson'Relationship'PercentOwnership'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTokensRequestBodyPerson'Relationship'PercentOwnership'OneOf1
    where toJSON (PostTokensRequestBodyPerson'Relationship'PercentOwnership'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostTokensRequestBodyPerson'Relationship'PercentOwnership'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostTokensRequestBodyPerson'Relationship'PercentOwnership'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostTokensRequestBodyPerson'Relationship'PercentOwnership'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostTokensRequestBodyPerson'Relationship'PercentOwnership'OneOf1EnumString_
                                          else PostTokensRequestBodyPerson'Relationship'PercentOwnership'OneOf1EnumOther val)
data PostTokensRequestBodyPerson'Relationship'PercentOwnership'Variants
    = PostTokensRequestBodyPerson'Relationship'PercentOwnership'Variant1 PostTokensRequestBodyPerson'Relationship'PercentOwnership'OneOf1
    | PostTokensRequestBodyPerson'Relationship'PercentOwnership'Variant2 GHC.Types.Double
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostTokensRequestBodyPerson'Relationship'PercentOwnership'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostTokensRequestBodyPerson'Relationship'PercentOwnership'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostTokensRequestBodyPerson'Relationship'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "director" (postTokensRequestBodyPerson'Relationship'Director obj) : (Data.Aeson..=) "executive" (postTokensRequestBodyPerson'Relationship'Executive obj) : (Data.Aeson..=) "owner" (postTokensRequestBodyPerson'Relationship'Owner obj) : (Data.Aeson..=) "percent_ownership" (postTokensRequestBodyPerson'Relationship'PercentOwnership obj) : (Data.Aeson..=) "representative" (postTokensRequestBodyPerson'Relationship'Representative obj) : (Data.Aeson..=) "title" (postTokensRequestBodyPerson'Relationship'Title obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "director" (postTokensRequestBodyPerson'Relationship'Director obj) GHC.Base.<> ((Data.Aeson..=) "executive" (postTokensRequestBodyPerson'Relationship'Executive obj) GHC.Base.<> ((Data.Aeson..=) "owner" (postTokensRequestBodyPerson'Relationship'Owner obj) GHC.Base.<> ((Data.Aeson..=) "percent_ownership" (postTokensRequestBodyPerson'Relationship'PercentOwnership obj) GHC.Base.<> ((Data.Aeson..=) "representative" (postTokensRequestBodyPerson'Relationship'Representative obj) GHC.Base.<> (Data.Aeson..=) "title" (postTokensRequestBodyPerson'Relationship'Title obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyPerson'Relationship'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyPerson'Relationship'" (\obj -> (((((GHC.Base.pure PostTokensRequestBodyPerson'Relationship' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "director")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "executive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owner")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "percent_ownership")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "representative")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title"))
data PostTokensRequestBodyPerson'Verification'
    = PostTokensRequestBodyPerson'Verification' {postTokensRequestBodyPerson'Verification'AdditionalDocument :: (GHC.Maybe.Maybe PostTokensRequestBodyPerson'Verification'AdditionalDocument'),
                                                 postTokensRequestBodyPerson'Verification'Document :: (GHC.Maybe.Maybe PostTokensRequestBodyPerson'Verification'Document')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostTokensRequestBodyPerson'Verification'AdditionalDocument'
    = PostTokensRequestBodyPerson'Verification'AdditionalDocument' {postTokensRequestBodyPerson'Verification'AdditionalDocument'Back :: (GHC.Maybe.Maybe GHC.Base.String),
                                                                    postTokensRequestBodyPerson'Verification'AdditionalDocument'Front :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTokensRequestBodyPerson'Verification'AdditionalDocument'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postTokensRequestBodyPerson'Verification'AdditionalDocument'Back obj) : (Data.Aeson..=) "front" (postTokensRequestBodyPerson'Verification'AdditionalDocument'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postTokensRequestBodyPerson'Verification'AdditionalDocument'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postTokensRequestBodyPerson'Verification'AdditionalDocument'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyPerson'Verification'AdditionalDocument'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyPerson'Verification'AdditionalDocument'" (\obj -> (GHC.Base.pure PostTokensRequestBodyPerson'Verification'AdditionalDocument' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
data PostTokensRequestBodyPerson'Verification'Document'
    = PostTokensRequestBodyPerson'Verification'Document' {postTokensRequestBodyPerson'Verification'Document'Back :: (GHC.Maybe.Maybe GHC.Base.String),
                                                          postTokensRequestBodyPerson'Verification'Document'Front :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTokensRequestBodyPerson'Verification'Document'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postTokensRequestBodyPerson'Verification'Document'Back obj) : (Data.Aeson..=) "front" (postTokensRequestBodyPerson'Verification'Document'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postTokensRequestBodyPerson'Verification'Document'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postTokensRequestBodyPerson'Verification'Document'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyPerson'Verification'Document'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyPerson'Verification'Document'" (\obj -> (GHC.Base.pure PostTokensRequestBodyPerson'Verification'Document' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
instance Data.Aeson.ToJSON PostTokensRequestBodyPerson'Verification'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "additional_document" (postTokensRequestBodyPerson'Verification'AdditionalDocument obj) : (Data.Aeson..=) "document" (postTokensRequestBodyPerson'Verification'Document obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "additional_document" (postTokensRequestBodyPerson'Verification'AdditionalDocument obj) GHC.Base.<> (Data.Aeson..=) "document" (postTokensRequestBodyPerson'Verification'Document obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyPerson'Verification'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyPerson'Verification'" (\obj -> (GHC.Base.pure PostTokensRequestBodyPerson'Verification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "additional_document")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document"))
instance Data.Aeson.ToJSON PostTokensRequestBodyPerson'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postTokensRequestBodyPerson'Address obj) : (Data.Aeson..=) "address_kana" (postTokensRequestBodyPerson'AddressKana obj) : (Data.Aeson..=) "address_kanji" (postTokensRequestBodyPerson'AddressKanji obj) : (Data.Aeson..=) "dob" (postTokensRequestBodyPerson'Dob obj) : (Data.Aeson..=) "email" (postTokensRequestBodyPerson'Email obj) : (Data.Aeson..=) "first_name" (postTokensRequestBodyPerson'FirstName obj) : (Data.Aeson..=) "first_name_kana" (postTokensRequestBodyPerson'FirstNameKana obj) : (Data.Aeson..=) "first_name_kanji" (postTokensRequestBodyPerson'FirstNameKanji obj) : (Data.Aeson..=) "gender" (postTokensRequestBodyPerson'Gender obj) : (Data.Aeson..=) "id_number" (postTokensRequestBodyPerson'IdNumber obj) : (Data.Aeson..=) "last_name" (postTokensRequestBodyPerson'LastName obj) : (Data.Aeson..=) "last_name_kana" (postTokensRequestBodyPerson'LastNameKana obj) : (Data.Aeson..=) "last_name_kanji" (postTokensRequestBodyPerson'LastNameKanji obj) : (Data.Aeson..=) "maiden_name" (postTokensRequestBodyPerson'MaidenName obj) : (Data.Aeson..=) "metadata" (postTokensRequestBodyPerson'Metadata obj) : (Data.Aeson..=) "phone" (postTokensRequestBodyPerson'Phone obj) : (Data.Aeson..=) "relationship" (postTokensRequestBodyPerson'Relationship obj) : (Data.Aeson..=) "ssn_last_4" (postTokensRequestBodyPerson'SsnLast_4 obj) : (Data.Aeson..=) "verification" (postTokensRequestBodyPerson'Verification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postTokensRequestBodyPerson'Address obj) GHC.Base.<> ((Data.Aeson..=) "address_kana" (postTokensRequestBodyPerson'AddressKana obj) GHC.Base.<> ((Data.Aeson..=) "address_kanji" (postTokensRequestBodyPerson'AddressKanji obj) GHC.Base.<> ((Data.Aeson..=) "dob" (postTokensRequestBodyPerson'Dob obj) GHC.Base.<> ((Data.Aeson..=) "email" (postTokensRequestBodyPerson'Email obj) GHC.Base.<> ((Data.Aeson..=) "first_name" (postTokensRequestBodyPerson'FirstName obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kana" (postTokensRequestBodyPerson'FirstNameKana obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kanji" (postTokensRequestBodyPerson'FirstNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "gender" (postTokensRequestBodyPerson'Gender obj) GHC.Base.<> ((Data.Aeson..=) "id_number" (postTokensRequestBodyPerson'IdNumber obj) GHC.Base.<> ((Data.Aeson..=) "last_name" (postTokensRequestBodyPerson'LastName obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kana" (postTokensRequestBodyPerson'LastNameKana obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kanji" (postTokensRequestBodyPerson'LastNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "maiden_name" (postTokensRequestBodyPerson'MaidenName obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postTokensRequestBodyPerson'Metadata obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postTokensRequestBodyPerson'Phone obj) GHC.Base.<> ((Data.Aeson..=) "relationship" (postTokensRequestBodyPerson'Relationship obj) GHC.Base.<> ((Data.Aeson..=) "ssn_last_4" (postTokensRequestBodyPerson'SsnLast_4 obj) GHC.Base.<> (Data.Aeson..=) "verification" (postTokensRequestBodyPerson'Verification obj)))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyPerson'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyPerson'" (\obj -> ((((((((((((((((((GHC.Base.pure PostTokensRequestBodyPerson' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dob")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gender")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "maiden_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "relationship")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ssn_last_4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verification"))
data PostTokensRequestBodyPii'
    = PostTokensRequestBodyPii' {postTokensRequestBodyPii'IdNumber :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTokensRequestBodyPii'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "id_number" (postTokensRequestBodyPii'IdNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "id_number" (postTokensRequestBodyPii'IdNumber obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBodyPii'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBodyPii'" (\obj -> GHC.Base.pure PostTokensRequestBodyPii' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id_number"))
instance Data.Aeson.ToJSON PostTokensRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account" (postTokensRequestBodyAccount obj) : (Data.Aeson..=) "bank_account" (postTokensRequestBodyBankAccount obj) : (Data.Aeson..=) "card" (postTokensRequestBodyCard obj) : (Data.Aeson..=) "customer" (postTokensRequestBodyCustomer obj) : (Data.Aeson..=) "expand" (postTokensRequestBodyExpand obj) : (Data.Aeson..=) "person" (postTokensRequestBodyPerson obj) : (Data.Aeson..=) "pii" (postTokensRequestBodyPii obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account" (postTokensRequestBodyAccount obj) GHC.Base.<> ((Data.Aeson..=) "bank_account" (postTokensRequestBodyBankAccount obj) GHC.Base.<> ((Data.Aeson..=) "card" (postTokensRequestBodyCard obj) GHC.Base.<> ((Data.Aeson..=) "customer" (postTokensRequestBodyCustomer obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postTokensRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "person" (postTokensRequestBodyPerson obj) GHC.Base.<> (Data.Aeson..=) "pii" (postTokensRequestBodyPii obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostTokensRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTokensRequestBody" (\obj -> ((((((GHC.Base.pure PostTokensRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "person")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pii"))

data PostTokensResponse
    = PostTokensResponseError GHC.Base.String
    | PostTokensResponse200 Token
    | PostTokensResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
