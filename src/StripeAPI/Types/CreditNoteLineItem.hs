{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.CreditNoteLineItem where

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
import StripeAPI.Types.CreditNoteTaxAmount
import StripeAPI.Types.TaxRate

data CreditNoteLineItem
    = CreditNoteLineItem {creditNoteLineItemAmount :: GHC.Integer.Type.Integer,
                          creditNoteLineItemDescription :: (GHC.Maybe.Maybe GHC.Base.String),
                          creditNoteLineItemDiscountAmount :: GHC.Integer.Type.Integer,
                          creditNoteLineItemId :: GHC.Base.String,
                          creditNoteLineItemInvoiceLineItem :: (GHC.Maybe.Maybe GHC.Base.String),
                          creditNoteLineItemLivemode :: GHC.Types.Bool,
                          creditNoteLineItemObject :: CreditNoteLineItemObject',
                          creditNoteLineItemQuantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                          creditNoteLineItemTaxAmounts :: ([] CreditNoteTaxAmount),
                          creditNoteLineItemTaxRates :: ([] TaxRate),
                          creditNoteLineItemType :: CreditNoteLineItemType',
                          creditNoteLineItemUnitAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                          creditNoteLineItemUnitAmountDecimal :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data CreditNoteLineItemObject'
    = CreditNoteLineItemObject'EnumOther Data.Aeson.Types.Internal.Value
    | CreditNoteLineItemObject'EnumTyped GHC.Base.String
    | CreditNoteLineItemObject'EnumStringCreditNoteLineItem
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON CreditNoteLineItemObject'
    where toJSON (CreditNoteLineItemObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (CreditNoteLineItemObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (CreditNoteLineItemObject'EnumStringCreditNoteLineItem) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "credit_note_line_item"
instance Data.Aeson.FromJSON CreditNoteLineItemObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "credit_note_line_item")
                                          then CreditNoteLineItemObject'EnumStringCreditNoteLineItem
                                          else CreditNoteLineItemObject'EnumOther val)
data CreditNoteLineItemType'
    = CreditNoteLineItemType'EnumOther Data.Aeson.Types.Internal.Value
    | CreditNoteLineItemType'EnumTyped GHC.Base.String
    | CreditNoteLineItemType'EnumStringCustomLineItem
    | CreditNoteLineItemType'EnumStringInvoiceLineItem
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON CreditNoteLineItemType'
    where toJSON (CreditNoteLineItemType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (CreditNoteLineItemType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (CreditNoteLineItemType'EnumStringCustomLineItem) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "custom_line_item"
          toJSON (CreditNoteLineItemType'EnumStringInvoiceLineItem) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "invoice_line_item"
instance Data.Aeson.FromJSON CreditNoteLineItemType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "custom_line_item")
                                          then CreditNoteLineItemType'EnumStringCustomLineItem
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "invoice_line_item")
                                                then CreditNoteLineItemType'EnumStringInvoiceLineItem
                                                else CreditNoteLineItemType'EnumOther val)
instance Data.Aeson.ToJSON CreditNoteLineItem
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (creditNoteLineItemAmount obj) : (Data.Aeson..=) "description" (creditNoteLineItemDescription obj) : (Data.Aeson..=) "discount_amount" (creditNoteLineItemDiscountAmount obj) : (Data.Aeson..=) "id" (creditNoteLineItemId obj) : (Data.Aeson..=) "invoice_line_item" (creditNoteLineItemInvoiceLineItem obj) : (Data.Aeson..=) "livemode" (creditNoteLineItemLivemode obj) : (Data.Aeson..=) "object" (creditNoteLineItemObject obj) : (Data.Aeson..=) "quantity" (creditNoteLineItemQuantity obj) : (Data.Aeson..=) "tax_amounts" (creditNoteLineItemTaxAmounts obj) : (Data.Aeson..=) "tax_rates" (creditNoteLineItemTaxRates obj) : (Data.Aeson..=) "type" (creditNoteLineItemType obj) : (Data.Aeson..=) "unit_amount" (creditNoteLineItemUnitAmount obj) : (Data.Aeson..=) "unit_amount_decimal" (creditNoteLineItemUnitAmountDecimal obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (creditNoteLineItemAmount obj) GHC.Base.<> ((Data.Aeson..=) "description" (creditNoteLineItemDescription obj) GHC.Base.<> ((Data.Aeson..=) "discount_amount" (creditNoteLineItemDiscountAmount obj) GHC.Base.<> ((Data.Aeson..=) "id" (creditNoteLineItemId obj) GHC.Base.<> ((Data.Aeson..=) "invoice_line_item" (creditNoteLineItemInvoiceLineItem obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (creditNoteLineItemLivemode obj) GHC.Base.<> ((Data.Aeson..=) "object" (creditNoteLineItemObject obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (creditNoteLineItemQuantity obj) GHC.Base.<> ((Data.Aeson..=) "tax_amounts" (creditNoteLineItemTaxAmounts obj) GHC.Base.<> ((Data.Aeson..=) "tax_rates" (creditNoteLineItemTaxRates obj) GHC.Base.<> ((Data.Aeson..=) "type" (creditNoteLineItemType obj) GHC.Base.<> ((Data.Aeson..=) "unit_amount" (creditNoteLineItemUnitAmount obj) GHC.Base.<> (Data.Aeson..=) "unit_amount_decimal" (creditNoteLineItemUnitAmountDecimal obj)))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON CreditNoteLineItem
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CreditNoteLineItem" (\obj -> ((((((((((((GHC.Base.pure CreditNoteLineItem GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "discount_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoice_line_item")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tax_amounts")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tax_rates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unit_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unit_amount_decimal"))