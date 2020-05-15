{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.SourceTypeMultibanco where

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

data SourceTypeMultibanco
    = SourceTypeMultibanco {sourceTypeMultibancoEntity :: (GHC.Maybe.Maybe GHC.Base.String),
                            sourceTypeMultibancoReference :: (GHC.Maybe.Maybe GHC.Base.String),
                            sourceTypeMultibancoRefundAccountHolderAddressCity :: (GHC.Maybe.Maybe GHC.Base.String),
                            sourceTypeMultibancoRefundAccountHolderAddressCountry :: (GHC.Maybe.Maybe GHC.Base.String),
                            sourceTypeMultibancoRefundAccountHolderAddressLine1 :: (GHC.Maybe.Maybe GHC.Base.String),
                            sourceTypeMultibancoRefundAccountHolderAddressLine2 :: (GHC.Maybe.Maybe GHC.Base.String),
                            sourceTypeMultibancoRefundAccountHolderAddressPostalCode :: (GHC.Maybe.Maybe GHC.Base.String),
                            sourceTypeMultibancoRefundAccountHolderAddressState :: (GHC.Maybe.Maybe GHC.Base.String),
                            sourceTypeMultibancoRefundAccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String),
                            sourceTypeMultibancoRefundIban :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceTypeMultibanco
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "entity" (sourceTypeMultibancoEntity obj) : (Data.Aeson..=) "reference" (sourceTypeMultibancoReference obj) : (Data.Aeson..=) "refund_account_holder_address_city" (sourceTypeMultibancoRefundAccountHolderAddressCity obj) : (Data.Aeson..=) "refund_account_holder_address_country" (sourceTypeMultibancoRefundAccountHolderAddressCountry obj) : (Data.Aeson..=) "refund_account_holder_address_line1" (sourceTypeMultibancoRefundAccountHolderAddressLine1 obj) : (Data.Aeson..=) "refund_account_holder_address_line2" (sourceTypeMultibancoRefundAccountHolderAddressLine2 obj) : (Data.Aeson..=) "refund_account_holder_address_postal_code" (sourceTypeMultibancoRefundAccountHolderAddressPostalCode obj) : (Data.Aeson..=) "refund_account_holder_address_state" (sourceTypeMultibancoRefundAccountHolderAddressState obj) : (Data.Aeson..=) "refund_account_holder_name" (sourceTypeMultibancoRefundAccountHolderName obj) : (Data.Aeson..=) "refund_iban" (sourceTypeMultibancoRefundIban obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "entity" (sourceTypeMultibancoEntity obj) GHC.Base.<> ((Data.Aeson..=) "reference" (sourceTypeMultibancoReference obj) GHC.Base.<> ((Data.Aeson..=) "refund_account_holder_address_city" (sourceTypeMultibancoRefundAccountHolderAddressCity obj) GHC.Base.<> ((Data.Aeson..=) "refund_account_holder_address_country" (sourceTypeMultibancoRefundAccountHolderAddressCountry obj) GHC.Base.<> ((Data.Aeson..=) "refund_account_holder_address_line1" (sourceTypeMultibancoRefundAccountHolderAddressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "refund_account_holder_address_line2" (sourceTypeMultibancoRefundAccountHolderAddressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "refund_account_holder_address_postal_code" (sourceTypeMultibancoRefundAccountHolderAddressPostalCode obj) GHC.Base.<> ((Data.Aeson..=) "refund_account_holder_address_state" (sourceTypeMultibancoRefundAccountHolderAddressState obj) GHC.Base.<> ((Data.Aeson..=) "refund_account_holder_name" (sourceTypeMultibancoRefundAccountHolderName obj) GHC.Base.<> (Data.Aeson..=) "refund_iban" (sourceTypeMultibancoRefundIban obj))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON SourceTypeMultibanco
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTypeMultibanco" (\obj -> (((((((((GHC.Base.pure SourceTypeMultibanco GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "entity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reference")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_account_holder_address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_account_holder_address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_account_holder_address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_account_holder_address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_account_holder_address_postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_account_holder_address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_iban"))