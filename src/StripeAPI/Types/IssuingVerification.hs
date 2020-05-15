{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.IssuingVerification where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
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
import qualified StripeAPI.Common

data Issuing'verification
    = Issuing'verification {issuing'verificationCard :: GHC.Base.String,
                            issuing'verificationCreated :: GHC.Integer.Type.Integer,
                            issuing'verificationExpiresAt :: GHC.Integer.Type.Integer,
                            issuing'verificationId :: GHC.Base.String,
                            issuing'verificationObject :: Issuing'verificationObject',
                            issuing'verificationScope :: Issuing'verificationScope',
                            issuing'verificationVerificationMethod :: Issuing'verificationVerificationMethod'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data Issuing'verificationObject'
    = Issuing'verificationObject'EnumOther Data.Aeson.Types.Internal.Value
    | Issuing'verificationObject'EnumTyped GHC.Base.String
    | Issuing'verificationObject'EnumStringIssuing'verification
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON Issuing'verificationObject'
    where toJSON (Issuing'verificationObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Issuing'verificationObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Issuing'verificationObject'EnumStringIssuing'verification) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "issuing.verification"
instance Data.Aeson.FromJSON Issuing'verificationObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "issuing.verification")
                                          then Issuing'verificationObject'EnumStringIssuing'verification
                                          else Issuing'verificationObject'EnumOther val)
data Issuing'verificationScope'
    = Issuing'verificationScope'EnumOther Data.Aeson.Types.Internal.Value
    | Issuing'verificationScope'EnumTyped GHC.Base.String
    | Issuing'verificationScope'EnumStringCardPinRetrieve
    | Issuing'verificationScope'EnumStringCardPinUpdate
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON Issuing'verificationScope'
    where toJSON (Issuing'verificationScope'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Issuing'verificationScope'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Issuing'verificationScope'EnumStringCardPinRetrieve) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_pin_retrieve"
          toJSON (Issuing'verificationScope'EnumStringCardPinUpdate) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_pin_update"
instance Data.Aeson.FromJSON Issuing'verificationScope'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_pin_retrieve")
                                          then Issuing'verificationScope'EnumStringCardPinRetrieve
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_pin_update")
                                                then Issuing'verificationScope'EnumStringCardPinUpdate
                                                else Issuing'verificationScope'EnumOther val)
data Issuing'verificationVerificationMethod'
    = Issuing'verificationVerificationMethod'EnumOther Data.Aeson.Types.Internal.Value
    | Issuing'verificationVerificationMethod'EnumTyped GHC.Base.String
    | Issuing'verificationVerificationMethod'EnumStringEmail
    | Issuing'verificationVerificationMethod'EnumStringSms
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON Issuing'verificationVerificationMethod'
    where toJSON (Issuing'verificationVerificationMethod'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Issuing'verificationVerificationMethod'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Issuing'verificationVerificationMethod'EnumStringEmail) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "email"
          toJSON (Issuing'verificationVerificationMethod'EnumStringSms) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sms"
instance Data.Aeson.FromJSON Issuing'verificationVerificationMethod'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "email")
                                          then Issuing'verificationVerificationMethod'EnumStringEmail
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sms")
                                                then Issuing'verificationVerificationMethod'EnumStringSms
                                                else Issuing'verificationVerificationMethod'EnumOther val)
instance Data.Aeson.ToJSON Issuing'verification
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "card" (issuing'verificationCard obj) : (Data.Aeson..=) "created" (issuing'verificationCreated obj) : (Data.Aeson..=) "expires_at" (issuing'verificationExpiresAt obj) : (Data.Aeson..=) "id" (issuing'verificationId obj) : (Data.Aeson..=) "object" (issuing'verificationObject obj) : (Data.Aeson..=) "scope" (issuing'verificationScope obj) : (Data.Aeson..=) "verification_method" (issuing'verificationVerificationMethod obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "card" (issuing'verificationCard obj) GHC.Base.<> ((Data.Aeson..=) "created" (issuing'verificationCreated obj) GHC.Base.<> ((Data.Aeson..=) "expires_at" (issuing'verificationExpiresAt obj) GHC.Base.<> ((Data.Aeson..=) "id" (issuing'verificationId obj) GHC.Base.<> ((Data.Aeson..=) "object" (issuing'verificationObject obj) GHC.Base.<> ((Data.Aeson..=) "scope" (issuing'verificationScope obj) GHC.Base.<> (Data.Aeson..=) "verification_method" (issuing'verificationVerificationMethod obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON Issuing'verification
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Issuing'verification" (\obj -> ((((((GHC.Base.pure Issuing'verification GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "expires_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "scope")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verification_method"))