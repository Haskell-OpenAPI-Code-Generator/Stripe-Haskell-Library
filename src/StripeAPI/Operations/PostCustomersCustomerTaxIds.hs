{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostCustomersCustomerTaxIds where

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
-- POST /v1/customers/{customer}/tax_ids
postCustomersCustomerTaxIds :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                             StripeAPI.Common.SecurityScheme s) =>
                               StripeAPI.Common.Configuration s ->
                               GHC.Base.String ->
                               PostCustomersCustomerTaxIdsRequestBody ->
                               m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                     (Network.HTTP.Client.Types.Response PostCustomersCustomerTaxIdsResponse))
postCustomersCustomerTaxIds config
                            customer
                            body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerTaxIdsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerTaxIdsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                   TaxId)
                                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerTaxIdsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/tax_ids"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersCustomerTaxIdsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                StripeAPI.Common.SecurityScheme s) =>
                                  StripeAPI.Common.Configuration s ->
                                  GHC.Base.String ->
                                  PostCustomersCustomerTaxIdsRequestBody ->
                                  m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerTaxIdsRaw config
                               customer
                               body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/tax_ids"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersCustomerTaxIdsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                GHC.Base.String ->
                                PostCustomersCustomerTaxIdsRequestBody ->
                                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                   m
                                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                       (Network.HTTP.Client.Types.Response PostCustomersCustomerTaxIdsResponse))
postCustomersCustomerTaxIdsM customer
                             body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerTaxIdsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerTaxIdsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    TaxId)
                                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerTaxIdsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/tax_ids"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postCustomersCustomerTaxIdsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                 StripeAPI.Common.SecurityScheme s) =>
                                   GHC.Base.String ->
                                   PostCustomersCustomerTaxIdsRequestBody ->
                                   Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                      m
                                                                      (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerTaxIdsRawM customer
                                body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/tax_ids"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostCustomersCustomerTaxIdsRequestBody
    = PostCustomersCustomerTaxIdsRequestBody {postCustomersCustomerTaxIdsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                              postCustomersCustomerTaxIdsRequestBodyType :: PostCustomersCustomerTaxIdsRequestBodyType',
                                              postCustomersCustomerTaxIdsRequestBodyValue :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostCustomersCustomerTaxIdsRequestBodyType'
    = PostCustomersCustomerTaxIdsRequestBodyType'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerTaxIdsRequestBodyType'EnumTyped GHC.Base.String
    | PostCustomersCustomerTaxIdsRequestBodyType'EnumStringAuAbn
    | PostCustomersCustomerTaxIdsRequestBodyType'EnumStringCaBn
    | PostCustomersCustomerTaxIdsRequestBodyType'EnumStringCaQst
    | PostCustomersCustomerTaxIdsRequestBodyType'EnumStringChVat
    | PostCustomersCustomerTaxIdsRequestBodyType'EnumStringEsCif
    | PostCustomersCustomerTaxIdsRequestBodyType'EnumStringEuVat
    | PostCustomersCustomerTaxIdsRequestBodyType'EnumStringHkBr
    | PostCustomersCustomerTaxIdsRequestBodyType'EnumStringInGst
    | PostCustomersCustomerTaxIdsRequestBodyType'EnumStringJpCn
    | PostCustomersCustomerTaxIdsRequestBodyType'EnumStringKrBrn
    | PostCustomersCustomerTaxIdsRequestBodyType'EnumStringLiUid
    | PostCustomersCustomerTaxIdsRequestBodyType'EnumStringMxRfc
    | PostCustomersCustomerTaxIdsRequestBodyType'EnumStringMyItn
    | PostCustomersCustomerTaxIdsRequestBodyType'EnumStringMySst
    | PostCustomersCustomerTaxIdsRequestBodyType'EnumStringNoVat
    | PostCustomersCustomerTaxIdsRequestBodyType'EnumStringNzGst
    | PostCustomersCustomerTaxIdsRequestBodyType'EnumStringRuInn
    | PostCustomersCustomerTaxIdsRequestBodyType'EnumStringSgUen
    | PostCustomersCustomerTaxIdsRequestBodyType'EnumStringThVat
    | PostCustomersCustomerTaxIdsRequestBodyType'EnumStringTwVat
    | PostCustomersCustomerTaxIdsRequestBodyType'EnumStringUsEin
    | PostCustomersCustomerTaxIdsRequestBodyType'EnumStringZaVat
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerTaxIdsRequestBodyType'
    where toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumStringAuAbn) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "au_abn"
          toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumStringCaBn) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ca_bn"
          toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumStringCaQst) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ca_qst"
          toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumStringChVat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ch_vat"
          toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumStringEsCif) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "es_cif"
          toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumStringEuVat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "eu_vat"
          toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumStringHkBr) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "hk_br"
          toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumStringInGst) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "in_gst"
          toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumStringJpCn) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "jp_cn"
          toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumStringKrBrn) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "kr_brn"
          toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumStringLiUid) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "li_uid"
          toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumStringMxRfc) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "mx_rfc"
          toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumStringMyItn) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "my_itn"
          toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumStringMySst) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "my_sst"
          toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumStringNoVat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "no_vat"
          toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumStringNzGst) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "nz_gst"
          toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumStringRuInn) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ru_inn"
          toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumStringSgUen) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sg_uen"
          toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumStringThVat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "th_vat"
          toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumStringTwVat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tw_vat"
          toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumStringUsEin) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "us_ein"
          toJSON (PostCustomersCustomerTaxIdsRequestBodyType'EnumStringZaVat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "za_vat"
instance Data.Aeson.FromJSON PostCustomersCustomerTaxIdsRequestBodyType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "au_abn")
                                          then PostCustomersCustomerTaxIdsRequestBodyType'EnumStringAuAbn
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ca_bn")
                                                then PostCustomersCustomerTaxIdsRequestBodyType'EnumStringCaBn
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ca_qst")
                                                      then PostCustomersCustomerTaxIdsRequestBodyType'EnumStringCaQst
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ch_vat")
                                                            then PostCustomersCustomerTaxIdsRequestBodyType'EnumStringChVat
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "es_cif")
                                                                  then PostCustomersCustomerTaxIdsRequestBodyType'EnumStringEsCif
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "eu_vat")
                                                                        then PostCustomersCustomerTaxIdsRequestBodyType'EnumStringEuVat
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "hk_br")
                                                                              then PostCustomersCustomerTaxIdsRequestBodyType'EnumStringHkBr
                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "in_gst")
                                                                                    then PostCustomersCustomerTaxIdsRequestBodyType'EnumStringInGst
                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "jp_cn")
                                                                                          then PostCustomersCustomerTaxIdsRequestBodyType'EnumStringJpCn
                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "kr_brn")
                                                                                                then PostCustomersCustomerTaxIdsRequestBodyType'EnumStringKrBrn
                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "li_uid")
                                                                                                      then PostCustomersCustomerTaxIdsRequestBodyType'EnumStringLiUid
                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "mx_rfc")
                                                                                                            then PostCustomersCustomerTaxIdsRequestBodyType'EnumStringMxRfc
                                                                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "my_itn")
                                                                                                                  then PostCustomersCustomerTaxIdsRequestBodyType'EnumStringMyItn
                                                                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "my_sst")
                                                                                                                        then PostCustomersCustomerTaxIdsRequestBodyType'EnumStringMySst
                                                                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "no_vat")
                                                                                                                              then PostCustomersCustomerTaxIdsRequestBodyType'EnumStringNoVat
                                                                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "nz_gst")
                                                                                                                                    then PostCustomersCustomerTaxIdsRequestBodyType'EnumStringNzGst
                                                                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ru_inn")
                                                                                                                                          then PostCustomersCustomerTaxIdsRequestBodyType'EnumStringRuInn
                                                                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sg_uen")
                                                                                                                                                then PostCustomersCustomerTaxIdsRequestBodyType'EnumStringSgUen
                                                                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "th_vat")
                                                                                                                                                      then PostCustomersCustomerTaxIdsRequestBodyType'EnumStringThVat
                                                                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tw_vat")
                                                                                                                                                            then PostCustomersCustomerTaxIdsRequestBodyType'EnumStringTwVat
                                                                                                                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "us_ein")
                                                                                                                                                                  then PostCustomersCustomerTaxIdsRequestBodyType'EnumStringUsEin
                                                                                                                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "za_vat")
                                                                                                                                                                        then PostCustomersCustomerTaxIdsRequestBodyType'EnumStringZaVat
                                                                                                                                                                        else PostCustomersCustomerTaxIdsRequestBodyType'EnumOther val)
instance Data.Aeson.ToJSON PostCustomersCustomerTaxIdsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "expand" (postCustomersCustomerTaxIdsRequestBodyExpand obj) : (Data.Aeson..=) "type" (postCustomersCustomerTaxIdsRequestBodyType obj) : (Data.Aeson..=) "value" (postCustomersCustomerTaxIdsRequestBodyValue obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "expand" (postCustomersCustomerTaxIdsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "type" (postCustomersCustomerTaxIdsRequestBodyType obj) GHC.Base.<> (Data.Aeson..=) "value" (postCustomersCustomerTaxIdsRequestBodyValue obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerTaxIdsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerTaxIdsRequestBody" (\obj -> ((GHC.Base.pure PostCustomersCustomerTaxIdsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "value"))

data PostCustomersCustomerTaxIdsResponse
    = PostCustomersCustomerTaxIdsResponseError GHC.Base.String
    | PostCustomersCustomerTaxIdsResponse200 TaxId
    | PostCustomersCustomerTaxIdsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
