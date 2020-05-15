{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.EphemeralKey where

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

data EphemeralKey
    = EphemeralKey {ephemeralKeyCreated :: GHC.Integer.Type.Integer,
                    ephemeralKeyExpires :: GHC.Integer.Type.Integer,
                    ephemeralKeyId :: GHC.Base.String,
                    ephemeralKeyLivemode :: GHC.Types.Bool,
                    ephemeralKeyObject :: EphemeralKeyObject',
                    ephemeralKeySecret :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data EphemeralKeyObject'
    = EphemeralKeyObject'EnumOther Data.Aeson.Types.Internal.Value
    | EphemeralKeyObject'EnumTyped GHC.Base.String
    | EphemeralKeyObject'EnumStringEphemeralKey
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON EphemeralKeyObject'
    where toJSON (EphemeralKeyObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (EphemeralKeyObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (EphemeralKeyObject'EnumStringEphemeralKey) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ephemeral_key"
instance Data.Aeson.FromJSON EphemeralKeyObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ephemeral_key")
                                          then EphemeralKeyObject'EnumStringEphemeralKey
                                          else EphemeralKeyObject'EnumOther val)
instance Data.Aeson.ToJSON EphemeralKey
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "created" (ephemeralKeyCreated obj) : (Data.Aeson..=) "expires" (ephemeralKeyExpires obj) : (Data.Aeson..=) "id" (ephemeralKeyId obj) : (Data.Aeson..=) "livemode" (ephemeralKeyLivemode obj) : (Data.Aeson..=) "object" (ephemeralKeyObject obj) : (Data.Aeson..=) "secret" (ephemeralKeySecret obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "created" (ephemeralKeyCreated obj) GHC.Base.<> ((Data.Aeson..=) "expires" (ephemeralKeyExpires obj) GHC.Base.<> ((Data.Aeson..=) "id" (ephemeralKeyId obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (ephemeralKeyLivemode obj) GHC.Base.<> ((Data.Aeson..=) "object" (ephemeralKeyObject obj) GHC.Base.<> (Data.Aeson..=) "secret" (ephemeralKeySecret obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON EphemeralKey
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "EphemeralKey" (\obj -> (((((GHC.Base.pure EphemeralKey GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "expires")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "secret"))