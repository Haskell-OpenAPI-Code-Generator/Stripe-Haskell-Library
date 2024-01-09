{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema DeletedDiscount
module StripeAPI.Types.DeletedDiscount where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text as Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias
import {-# SOURCE #-} StripeAPI.Types.Coupon
import {-# SOURCE #-} StripeAPI.Types.Customer
import {-# SOURCE #-} StripeAPI.Types.DeletedCustomer
import {-# SOURCE #-} StripeAPI.Types.PromotionCode
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.deleted_discount@ in the specification.
data DeletedDiscount = DeletedDiscount
  { -- | checkout_session: The Checkout session that this coupon is applied to, if it is applied to a particular session in payment mode. Will not be present for subscription mode.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    deletedDiscountCheckoutSession :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | coupon: A coupon contains information about a percent-off or amount-off discount you
    -- might want to apply to a customer. Coupons may be applied to [subscriptions](https:\/\/stripe.com\/docs\/api\#subscriptions), [invoices](https:\/\/stripe.com\/docs\/api\#invoices),
    -- [checkout sessions](https:\/\/stripe.com\/docs\/api\/checkout\/sessions), [quotes](https:\/\/stripe.com\/docs\/api\#quotes), and more. Coupons do not work with conventional one-off [charges](https:\/\/stripe.com\/docs\/api\#create_charge) or [payment intents](https:\/\/stripe.com\/docs\/api\/payment_intents).
    deletedDiscountCoupon :: Coupon,
    -- | customer: The ID of the customer associated with this discount.
    deletedDiscountCustomer :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable DeletedDiscountCustomer'NonNullableVariants)),
    -- | id: The ID of the discount object. Discounts cannot be fetched by ID. Use \`expand[]=discounts\` in API calls to expand discount IDs in an array.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    deletedDiscountId :: Data.Text.Internal.Text,
    -- | invoice: The invoice that the discount\'s coupon was applied to, if it was applied directly to a particular invoice.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    deletedDiscountInvoice :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | invoice_item: The invoice item \`id\` (or invoice line item \`id\` for invoice line items of type=\'subscription\') that the discount\'s coupon was applied to, if it was applied directly to a particular invoice item or invoice line item.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    deletedDiscountInvoiceItem :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | promotion_code: The promotion code applied to create this discount.
    deletedDiscountPromotionCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable DeletedDiscountPromotionCode'NonNullableVariants)),
    -- | start: Date that the coupon was applied.
    deletedDiscountStart :: GHC.Types.Int,
    -- | subscription: The subscription that this coupon is applied to, if it is applied to a particular subscription.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    deletedDiscountSubscription :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON DeletedDiscount where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("checkout_session" Data.Aeson.Types.ToJSON..=)) (deletedDiscountCheckoutSession obj) : ["coupon" Data.Aeson.Types.ToJSON..= deletedDiscountCoupon obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer" Data.Aeson.Types.ToJSON..=)) (deletedDiscountCustomer obj) : ["id" Data.Aeson.Types.ToJSON..= deletedDiscountId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("invoice" Data.Aeson.Types.ToJSON..=)) (deletedDiscountInvoice obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("invoice_item" Data.Aeson.Types.ToJSON..=)) (deletedDiscountInvoiceItem obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("promotion_code" Data.Aeson.Types.ToJSON..=)) (deletedDiscountPromotionCode obj) : ["start" Data.Aeson.Types.ToJSON..= deletedDiscountStart obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("subscription" Data.Aeson.Types.ToJSON..=)) (deletedDiscountSubscription obj) : ["deleted" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.Bool GHC.Types.True] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "discount"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("checkout_session" Data.Aeson.Types.ToJSON..=)) (deletedDiscountCheckoutSession obj) : ["coupon" Data.Aeson.Types.ToJSON..= deletedDiscountCoupon obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer" Data.Aeson.Types.ToJSON..=)) (deletedDiscountCustomer obj) : ["id" Data.Aeson.Types.ToJSON..= deletedDiscountId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("invoice" Data.Aeson.Types.ToJSON..=)) (deletedDiscountInvoice obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("invoice_item" Data.Aeson.Types.ToJSON..=)) (deletedDiscountInvoiceItem obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("promotion_code" Data.Aeson.Types.ToJSON..=)) (deletedDiscountPromotionCode obj) : ["start" Data.Aeson.Types.ToJSON..= deletedDiscountStart obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("subscription" Data.Aeson.Types.ToJSON..=)) (deletedDiscountSubscription obj) : ["deleted" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.Bool GHC.Types.True] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "discount"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON DeletedDiscount where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedDiscount" (\obj -> ((((((((GHC.Base.pure DeletedDiscount GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "checkout_session")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "coupon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "invoice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "invoice_item")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "promotion_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "start")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "subscription"))

-- | Create a new 'DeletedDiscount' with all required fields.
mkDeletedDiscount ::
  -- | 'deletedDiscountCoupon'
  Coupon ->
  -- | 'deletedDiscountId'
  Data.Text.Internal.Text ->
  -- | 'deletedDiscountStart'
  GHC.Types.Int ->
  DeletedDiscount
mkDeletedDiscount deletedDiscountCoupon deletedDiscountId deletedDiscountStart =
  DeletedDiscount
    { deletedDiscountCheckoutSession = GHC.Maybe.Nothing,
      deletedDiscountCoupon = deletedDiscountCoupon,
      deletedDiscountCustomer = GHC.Maybe.Nothing,
      deletedDiscountId = deletedDiscountId,
      deletedDiscountInvoice = GHC.Maybe.Nothing,
      deletedDiscountInvoiceItem = GHC.Maybe.Nothing,
      deletedDiscountPromotionCode = GHC.Maybe.Nothing,
      deletedDiscountStart = deletedDiscountStart,
      deletedDiscountSubscription = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @components.schemas.deleted_discount.properties.customer.anyOf@ in the specification.
--
-- The ID of the customer associated with this discount.
data DeletedDiscountCustomer'NonNullableVariants
  = DeletedDiscountCustomer'NonNullableText Data.Text.Internal.Text
  | DeletedDiscountCustomer'NonNullableCustomer Customer
  | DeletedDiscountCustomer'NonNullableDeletedCustomer DeletedCustomer
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON DeletedDiscountCustomer'NonNullableVariants where
  toJSON (DeletedDiscountCustomer'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (DeletedDiscountCustomer'NonNullableCustomer a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (DeletedDiscountCustomer'NonNullableDeletedCustomer a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON DeletedDiscountCustomer'NonNullableVariants where
  parseJSON val = case (DeletedDiscountCustomer'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((DeletedDiscountCustomer'NonNullableCustomer Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((DeletedDiscountCustomer'NonNullableDeletedCustomer Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched")) of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.deleted_discount.properties.promotion_code.anyOf@ in the specification.
--
-- The promotion code applied to create this discount.
data DeletedDiscountPromotionCode'NonNullableVariants
  = DeletedDiscountPromotionCode'NonNullableText Data.Text.Internal.Text
  | DeletedDiscountPromotionCode'NonNullablePromotionCode PromotionCode
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON DeletedDiscountPromotionCode'NonNullableVariants where
  toJSON (DeletedDiscountPromotionCode'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (DeletedDiscountPromotionCode'NonNullablePromotionCode a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON DeletedDiscountPromotionCode'NonNullableVariants where
  parseJSON val = case (DeletedDiscountPromotionCode'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((DeletedDiscountPromotionCode'NonNullablePromotionCode Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
