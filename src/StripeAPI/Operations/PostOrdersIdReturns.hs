{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.PostOrdersIdReturns where

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
-- POST /v1/orders/{id}/returns
postOrdersIdReturns :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                     StripeAPI.Common.SecurityScheme s) =>
                       StripeAPI.Common.Configuration s ->
                       GHC.Base.String ->
                       PostOrdersIdReturnsRequestBody ->
                       m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                             (Network.HTTP.Client.Types.Response PostOrdersIdReturnsResponse))
postOrdersIdReturns config
                    id
                    body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostOrdersIdReturnsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostOrdersIdReturnsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                           OrderReturn)
                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostOrdersIdReturnsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/orders/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ "/returns"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postOrdersIdReturnsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          StripeAPI.Common.Configuration s ->
                          GHC.Base.String ->
                          PostOrdersIdReturnsRequestBody ->
                          m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postOrdersIdReturnsRaw config
                       id
                       body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/orders/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ "/returns"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postOrdersIdReturnsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        GHC.Base.String ->
                        PostOrdersIdReturnsRequestBody ->
                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                           m
                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response PostOrdersIdReturnsResponse))
postOrdersIdReturnsM id
                     body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostOrdersIdReturnsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostOrdersIdReturnsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                            OrderReturn)
                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostOrdersIdReturnsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/orders/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ "/returns"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
postOrdersIdReturnsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                         StripeAPI.Common.SecurityScheme s) =>
                           GHC.Base.String ->
                           PostOrdersIdReturnsRequestBody ->
                           Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                              m
                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postOrdersIdReturnsRawM id
                        body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/orders/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ "/returns"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
data PostOrdersIdReturnsRequestBody
    = PostOrdersIdReturnsRequestBody {postOrdersIdReturnsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                      postOrdersIdReturnsRequestBodyItems :: (GHC.Maybe.Maybe PostOrdersIdReturnsRequestBodyItems'Variants)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostOrdersIdReturnsRequestBodyItems'OneOf1
    = PostOrdersIdReturnsRequestBodyItems'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostOrdersIdReturnsRequestBodyItems'OneOf1EnumTyped GHC.Base.String
    | PostOrdersIdReturnsRequestBodyItems'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostOrdersIdReturnsRequestBodyItems'OneOf1
    where toJSON (PostOrdersIdReturnsRequestBodyItems'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostOrdersIdReturnsRequestBodyItems'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostOrdersIdReturnsRequestBodyItems'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostOrdersIdReturnsRequestBodyItems'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostOrdersIdReturnsRequestBodyItems'OneOf1EnumString_
                                          else PostOrdersIdReturnsRequestBodyItems'OneOf1EnumOther val)
data PostOrdersIdReturnsRequestBodyItems'OneOf2
    = PostOrdersIdReturnsRequestBodyItems'OneOf2 {postOrdersIdReturnsRequestBodyItems'OneOf2Amount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                  postOrdersIdReturnsRequestBodyItems'OneOf2Description :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postOrdersIdReturnsRequestBodyItems'OneOf2Parent :: (GHC.Maybe.Maybe GHC.Base.String),
                                                  postOrdersIdReturnsRequestBodyItems'OneOf2Quantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                                  postOrdersIdReturnsRequestBodyItems'OneOf2Type :: (GHC.Maybe.Maybe PostOrdersIdReturnsRequestBodyItems'OneOf2Type')}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PostOrdersIdReturnsRequestBodyItems'OneOf2Type'
    = PostOrdersIdReturnsRequestBodyItems'OneOf2Type'EnumOther Data.Aeson.Types.Internal.Value
    | PostOrdersIdReturnsRequestBodyItems'OneOf2Type'EnumTyped GHC.Base.String
    | PostOrdersIdReturnsRequestBodyItems'OneOf2Type'EnumStringDiscount
    | PostOrdersIdReturnsRequestBodyItems'OneOf2Type'EnumStringShipping
    | PostOrdersIdReturnsRequestBodyItems'OneOf2Type'EnumStringSku
    | PostOrdersIdReturnsRequestBodyItems'OneOf2Type'EnumStringTax
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostOrdersIdReturnsRequestBodyItems'OneOf2Type'
    where toJSON (PostOrdersIdReturnsRequestBodyItems'OneOf2Type'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostOrdersIdReturnsRequestBodyItems'OneOf2Type'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostOrdersIdReturnsRequestBodyItems'OneOf2Type'EnumStringDiscount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "discount"
          toJSON (PostOrdersIdReturnsRequestBodyItems'OneOf2Type'EnumStringShipping) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "shipping"
          toJSON (PostOrdersIdReturnsRequestBodyItems'OneOf2Type'EnumStringSku) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sku"
          toJSON (PostOrdersIdReturnsRequestBodyItems'OneOf2Type'EnumStringTax) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tax"
instance Data.Aeson.FromJSON PostOrdersIdReturnsRequestBodyItems'OneOf2Type'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "discount")
                                          then PostOrdersIdReturnsRequestBodyItems'OneOf2Type'EnumStringDiscount
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "shipping")
                                                then PostOrdersIdReturnsRequestBodyItems'OneOf2Type'EnumStringShipping
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sku")
                                                      then PostOrdersIdReturnsRequestBodyItems'OneOf2Type'EnumStringSku
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tax")
                                                            then PostOrdersIdReturnsRequestBodyItems'OneOf2Type'EnumStringTax
                                                            else PostOrdersIdReturnsRequestBodyItems'OneOf2Type'EnumOther val)
instance Data.Aeson.ToJSON PostOrdersIdReturnsRequestBodyItems'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postOrdersIdReturnsRequestBodyItems'OneOf2Amount obj) : (Data.Aeson..=) "description" (postOrdersIdReturnsRequestBodyItems'OneOf2Description obj) : (Data.Aeson..=) "parent" (postOrdersIdReturnsRequestBodyItems'OneOf2Parent obj) : (Data.Aeson..=) "quantity" (postOrdersIdReturnsRequestBodyItems'OneOf2Quantity obj) : (Data.Aeson..=) "type" (postOrdersIdReturnsRequestBodyItems'OneOf2Type obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postOrdersIdReturnsRequestBodyItems'OneOf2Amount obj) GHC.Base.<> ((Data.Aeson..=) "description" (postOrdersIdReturnsRequestBodyItems'OneOf2Description obj) GHC.Base.<> ((Data.Aeson..=) "parent" (postOrdersIdReturnsRequestBodyItems'OneOf2Parent obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (postOrdersIdReturnsRequestBodyItems'OneOf2Quantity obj) GHC.Base.<> (Data.Aeson..=) "type" (postOrdersIdReturnsRequestBodyItems'OneOf2Type obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostOrdersIdReturnsRequestBodyItems'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostOrdersIdReturnsRequestBodyItems'OneOf2" (\obj -> ((((GHC.Base.pure PostOrdersIdReturnsRequestBodyItems'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type"))
data PostOrdersIdReturnsRequestBodyItems'Variants
    = PostOrdersIdReturnsRequestBodyItems'Variant1 PostOrdersIdReturnsRequestBodyItems'OneOf1
    | PostOrdersIdReturnsRequestBodyItems'Variant2 ([] PostOrdersIdReturnsRequestBodyItems'OneOf2)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostOrdersIdReturnsRequestBodyItems'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostOrdersIdReturnsRequestBodyItems'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.ToJSON PostOrdersIdReturnsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "expand" (postOrdersIdReturnsRequestBodyExpand obj) : (Data.Aeson..=) "items" (postOrdersIdReturnsRequestBodyItems obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "expand" (postOrdersIdReturnsRequestBodyExpand obj) GHC.Base.<> (Data.Aeson..=) "items" (postOrdersIdReturnsRequestBodyItems obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostOrdersIdReturnsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostOrdersIdReturnsRequestBody" (\obj -> (GHC.Base.pure PostOrdersIdReturnsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "items"))

data PostOrdersIdReturnsResponse
    = PostOrdersIdReturnsResponseError GHC.Base.String
    | PostOrdersIdReturnsResponse200 OrderReturn
    | PostOrdersIdReturnsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
