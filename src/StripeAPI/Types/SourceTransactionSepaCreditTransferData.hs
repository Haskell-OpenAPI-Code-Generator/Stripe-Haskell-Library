{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.SourceTransactionSepaCreditTransferData where

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

data SourceTransactionSepaCreditTransferData
    = SourceTransactionSepaCreditTransferData {sourceTransactionSepaCreditTransferDataReference :: (GHC.Maybe.Maybe GHC.Base.String),
                                               sourceTransactionSepaCreditTransferDataSenderIban :: (GHC.Maybe.Maybe GHC.Base.String),
                                               sourceTransactionSepaCreditTransferDataSenderName :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceTransactionSepaCreditTransferData
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "reference" (sourceTransactionSepaCreditTransferDataReference obj) : (Data.Aeson..=) "sender_iban" (sourceTransactionSepaCreditTransferDataSenderIban obj) : (Data.Aeson..=) "sender_name" (sourceTransactionSepaCreditTransferDataSenderName obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "reference" (sourceTransactionSepaCreditTransferDataReference obj) GHC.Base.<> ((Data.Aeson..=) "sender_iban" (sourceTransactionSepaCreditTransferDataSenderIban obj) GHC.Base.<> (Data.Aeson..=) "sender_name" (sourceTransactionSepaCreditTransferDataSenderName obj)))
instance Data.Aeson.Types.FromJSON.FromJSON SourceTransactionSepaCreditTransferData
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTransactionSepaCreditTransferData" (\obj -> ((GHC.Base.pure SourceTransactionSepaCreditTransferData GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reference")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sender_iban")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sender_name"))