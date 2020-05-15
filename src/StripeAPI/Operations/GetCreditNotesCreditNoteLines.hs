{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.GetCreditNotesCreditNoteLines where

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
-- GET /v1/credit_notes/{credit_note}/lines
getCreditNotesCreditNoteLines :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                               StripeAPI.Common.SecurityScheme s) =>
                                 StripeAPI.Common.Configuration s ->
                                 GHC.Base.String ->
                                 GHC.Maybe.Maybe GHC.Base.String ->
                                 GHC.Maybe.Maybe GHC.Base.String ->
                                 GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                                 GHC.Maybe.Maybe GHC.Base.String ->
                                 GetCreditNotesCreditNoteLinesRequestBody ->
                                 m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                       (Network.HTTP.Client.Types.Response GetCreditNotesCreditNoteLinesResponse))
getCreditNotesCreditNoteLines config
                              creditNote
                              endingBefore
                              expand
                              limit
                              startingAfter
                              body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetCreditNotesCreditNoteLinesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetCreditNotesCreditNoteLinesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                         GetCreditNotesCreditNoteLinesResponseBody200)
                                                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetCreditNotesCreditNoteLinesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/credit_notes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel creditNote)) GHC.Base.++ "/lines"))) ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : [])))) body StripeAPI.Common.RequestBodyEncodingFormData)
getCreditNotesCreditNoteLinesRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                  StripeAPI.Common.SecurityScheme s) =>
                                    StripeAPI.Common.Configuration s ->
                                    GHC.Base.String ->
                                    GHC.Maybe.Maybe GHC.Base.String ->
                                    GHC.Maybe.Maybe GHC.Base.String ->
                                    GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                                    GHC.Maybe.Maybe GHC.Base.String ->
                                    GetCreditNotesCreditNoteLinesRequestBody ->
                                    m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getCreditNotesCreditNoteLinesRaw config
                                 creditNote
                                 endingBefore
                                 expand
                                 limit
                                 startingAfter
                                 body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/credit_notes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel creditNote)) GHC.Base.++ "/lines"))) ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : [])))) body StripeAPI.Common.RequestBodyEncodingFormData)
getCreditNotesCreditNoteLinesM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                StripeAPI.Common.SecurityScheme s) =>
                                  GHC.Base.String ->
                                  GHC.Maybe.Maybe GHC.Base.String ->
                                  GHC.Maybe.Maybe GHC.Base.String ->
                                  GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                                  GHC.Maybe.Maybe GHC.Base.String ->
                                  GetCreditNotesCreditNoteLinesRequestBody ->
                                  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                     m
                                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                         (Network.HTTP.Client.Types.Response GetCreditNotesCreditNoteLinesResponse))
getCreditNotesCreditNoteLinesM creditNote
                               endingBefore
                               expand
                               limit
                               startingAfter
                               body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetCreditNotesCreditNoteLinesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetCreditNotesCreditNoteLinesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          GetCreditNotesCreditNoteLinesResponseBody200)
                                                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetCreditNotesCreditNoteLinesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/credit_notes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel creditNote)) GHC.Base.++ "/lines"))) ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : [])))) body StripeAPI.Common.RequestBodyEncodingFormData)
getCreditNotesCreditNoteLinesRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                   StripeAPI.Common.SecurityScheme s) =>
                                     GHC.Base.String ->
                                     GHC.Maybe.Maybe GHC.Base.String ->
                                     GHC.Maybe.Maybe GHC.Base.String ->
                                     GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                                     GHC.Maybe.Maybe GHC.Base.String ->
                                     GetCreditNotesCreditNoteLinesRequestBody ->
                                     Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                        m
                                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getCreditNotesCreditNoteLinesRawM creditNote
                                  endingBefore
                                  expand
                                  limit
                                  startingAfter
                                  body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/credit_notes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel creditNote)) GHC.Base.++ "/lines"))) ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : [])))) body StripeAPI.Common.RequestBodyEncodingFormData)
data GetCreditNotesCreditNoteLinesRequestBody
    = GetCreditNotesCreditNoteLinesRequestBody {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCreditNotesCreditNoteLinesRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetCreditNotesCreditNoteLinesRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCreditNotesCreditNoteLinesRequestBody" (\obj -> GHC.Base.pure GetCreditNotesCreditNoteLinesRequestBody)

data GetCreditNotesCreditNoteLinesResponse
    = GetCreditNotesCreditNoteLinesResponseError GHC.Base.String
    | GetCreditNotesCreditNoteLinesResponse200 GetCreditNotesCreditNoteLinesResponseBody200
    | GetCreditNotesCreditNoteLinesResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetCreditNotesCreditNoteLinesResponseBody200
    = GetCreditNotesCreditNoteLinesResponseBody200 {getCreditNotesCreditNoteLinesResponseBody200Data :: ([] CreditNoteLineItem),
                                                    getCreditNotesCreditNoteLinesResponseBody200HasMore :: GHC.Types.Bool,
                                                    getCreditNotesCreditNoteLinesResponseBody200Object :: GetCreditNotesCreditNoteLinesResponseBody200Object',
                                                    getCreditNotesCreditNoteLinesResponseBody200Url :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetCreditNotesCreditNoteLinesResponseBody200Object'
    = GetCreditNotesCreditNoteLinesResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetCreditNotesCreditNoteLinesResponseBody200Object'EnumTyped GHC.Base.String
    | GetCreditNotesCreditNoteLinesResponseBody200Object'EnumStringList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCreditNotesCreditNoteLinesResponseBody200Object'
    where toJSON (GetCreditNotesCreditNoteLinesResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCreditNotesCreditNoteLinesResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCreditNotesCreditNoteLinesResponseBody200Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"
instance Data.Aeson.FromJSON GetCreditNotesCreditNoteLinesResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
                                          then GetCreditNotesCreditNoteLinesResponseBody200Object'EnumStringList
                                          else GetCreditNotesCreditNoteLinesResponseBody200Object'EnumOther val)
instance Data.Aeson.ToJSON GetCreditNotesCreditNoteLinesResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getCreditNotesCreditNoteLinesResponseBody200Data obj) : (Data.Aeson..=) "has_more" (getCreditNotesCreditNoteLinesResponseBody200HasMore obj) : (Data.Aeson..=) "object" (getCreditNotesCreditNoteLinesResponseBody200Object obj) : (Data.Aeson..=) "url" (getCreditNotesCreditNoteLinesResponseBody200Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getCreditNotesCreditNoteLinesResponseBody200Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (getCreditNotesCreditNoteLinesResponseBody200HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (getCreditNotesCreditNoteLinesResponseBody200Object obj) GHC.Base.<> (Data.Aeson..=) "url" (getCreditNotesCreditNoteLinesResponseBody200Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetCreditNotesCreditNoteLinesResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCreditNotesCreditNoteLinesResponseBody200" (\obj -> (((GHC.Base.pure GetCreditNotesCreditNoteLinesResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
