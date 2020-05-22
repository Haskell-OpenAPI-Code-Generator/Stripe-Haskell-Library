{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema ReserveTransaction
module StripeAPI.Types.ReserveTransaction where

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

-- | Defines the data type for the schema reserve_transaction
-- 
-- 
data ReserveTransaction = ReserveTransaction {
  -- | amount
  reserveTransactionAmount :: GHC.Integer.Type.Integer
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  , reserveTransactionCurrency :: GHC.Base.String
  -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , reserveTransactionDescription :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , reserveTransactionId :: GHC.Base.String
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , reserveTransactionObject :: ReserveTransactionObject'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON ReserveTransaction
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (reserveTransactionAmount obj) : (Data.Aeson..=) "currency" (reserveTransactionCurrency obj) : (Data.Aeson..=) "description" (reserveTransactionDescription obj) : (Data.Aeson..=) "id" (reserveTransactionId obj) : (Data.Aeson..=) "object" (reserveTransactionObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (reserveTransactionAmount obj) GHC.Base.<> ((Data.Aeson..=) "currency" (reserveTransactionCurrency obj) GHC.Base.<> ((Data.Aeson..=) "description" (reserveTransactionDescription obj) GHC.Base.<> ((Data.Aeson..=) "id" (reserveTransactionId obj) GHC.Base.<> (Data.Aeson..=) "object" (reserveTransactionObject obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON ReserveTransaction
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ReserveTransaction" (\obj -> ((((GHC.Base.pure ReserveTransaction GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))
-- | Defines the enum schema reserve_transactionObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data ReserveTransactionObject'
    = ReserveTransactionObject'EnumOther Data.Aeson.Types.Internal.Value
    | ReserveTransactionObject'EnumTyped GHC.Base.String
    | ReserveTransactionObject'EnumStringReserveTransaction
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON ReserveTransactionObject'
    where toJSON (ReserveTransactionObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (ReserveTransactionObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (ReserveTransactionObject'EnumStringReserveTransaction) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "reserve_transaction"
instance Data.Aeson.FromJSON ReserveTransactionObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "reserve_transaction")
                                          then ReserveTransactionObject'EnumStringReserveTransaction
                                          else ReserveTransactionObject'EnumOther val)