{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Card
module StripeAPI.Types.Card where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
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
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias
import {-# SOURCE #-} StripeAPI.Types.Account
import {-# SOURCE #-} StripeAPI.Types.Customer
import {-# SOURCE #-} StripeAPI.Types.DeletedCustomer
import {-# SOURCE #-} StripeAPI.Types.Recipient
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.card@ in the specification.
--
-- You can store multiple cards on a customer in order to charge the customer
-- later. You can also store multiple debit cards on a recipient in order to
-- transfer to those cards later.
--
-- Related guide: [Card Payments with Sources](https:\/\/stripe.com\/docs\/sources\/cards).
data Card = Card
  { -- | account: The account this card belongs to. This attribute will not be in the card object if the card belongs to a customer or recipient instead.
    cardAccount :: (GHC.Maybe.Maybe CardAccount'Variants),
    -- | address_city: City\/District\/Suburb\/Town\/Village.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    cardAddressCity :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_country: Billing address country, if provided when creating card.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    cardAddressCountry :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_line1: Address line 1 (Street address\/PO Box\/Company name).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    cardAddressLine1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_line1_check: If \`address_line1\` was provided, results of the check: \`pass\`, \`fail\`, \`unavailable\`, or \`unchecked\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    cardAddressLine1Check :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_line2: Address line 2 (Apartment\/Suite\/Unit\/Building).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    cardAddressLine2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_state: State\/County\/Province\/Region.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    cardAddressState :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_zip: ZIP or postal code.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    cardAddressZip :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_zip_check: If \`address_zip\` was provided, results of the check: \`pass\`, \`fail\`, \`unavailable\`, or \`unchecked\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    cardAddressZipCheck :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | available_payout_methods: A set of available payout methods for this card. Only values from this set should be passed as the \`method\` when creating a payout.
    cardAvailablePayoutMethods :: (GHC.Maybe.Maybe ([CardAvailablePayoutMethods'])),
    -- | brand: Card brand. Can be \`American Express\`, \`Diners Club\`, \`Discover\`, \`JCB\`, \`MasterCard\`, \`UnionPay\`, \`Visa\`, or \`Unknown\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    cardBrand :: Data.Text.Internal.Text,
    -- | country: Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you\'ve collected.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    cardCountry :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | currency: Three-letter [ISO code for currency](https:\/\/stripe.com\/docs\/payouts). Only applicable on accounts (not customers or recipients). The card can be used as a transfer destination for funds in this currency.
    cardCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | customer: The customer that this card belongs to. This attribute will not be in the card object if the card belongs to an account or recipient instead.
    cardCustomer :: (GHC.Maybe.Maybe CardCustomer'Variants),
    -- | cvc_check: If a CVC was provided, results of the check: \`pass\`, \`fail\`, \`unavailable\`, or \`unchecked\`. A result of unchecked indicates that CVC was provided but hasn\'t been checked yet. Checks are typically performed when attaching a card to a Customer object, or when creating a charge. For more details, see [Check if a card is valid without a charge](https:\/\/support.stripe.com\/questions\/check-if-a-card-is-valid-without-a-charge).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    cardCvcCheck :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | default_for_currency: Whether this card is the default external account for its currency.
    cardDefaultForCurrency :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | dynamic_last4: (For tokenized numbers only.) The last four digits of the device account number.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    cardDynamicLast4 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | exp_month: Two-digit number representing the card\'s expiration month.
    cardExpMonth :: GHC.Types.Int,
    -- | exp_year: Four-digit number representing the card\'s expiration year.
    cardExpYear :: GHC.Types.Int,
    -- | fingerprint: Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.
    --
    -- *Starting May 1, 2021, card fingerprint in India for Connect will change to allow two fingerprints for the same card --- one for India and one for the rest of the world.*
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    cardFingerprint :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | funding: Card funding type. Can be \`credit\`, \`debit\`, \`prepaid\`, or \`unknown\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    cardFunding :: Data.Text.Internal.Text,
    -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    cardId :: Data.Text.Internal.Text,
    -- | last4: The last four digits of the card.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    cardLast4 :: Data.Text.Internal.Text,
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    cardMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | name: Cardholder name.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    cardName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | recipient: The recipient that this card belongs to. This attribute will not be in the card object if the card belongs to a customer or account instead.
    cardRecipient :: (GHC.Maybe.Maybe CardRecipient'Variants),
    -- | tokenization_method: If the card number is tokenized, this is the method that was used. Can be \`android_pay\` (includes Google Pay), \`apple_pay\`, \`masterpass\`, \`visa_checkout\`, or null.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    cardTokenizationMethod :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Card where
  toJSON obj = Data.Aeson.Types.Internal.object ("account" Data.Aeson.Types.ToJSON..= cardAccount obj : "address_city" Data.Aeson.Types.ToJSON..= cardAddressCity obj : "address_country" Data.Aeson.Types.ToJSON..= cardAddressCountry obj : "address_line1" Data.Aeson.Types.ToJSON..= cardAddressLine1 obj : "address_line1_check" Data.Aeson.Types.ToJSON..= cardAddressLine1Check obj : "address_line2" Data.Aeson.Types.ToJSON..= cardAddressLine2 obj : "address_state" Data.Aeson.Types.ToJSON..= cardAddressState obj : "address_zip" Data.Aeson.Types.ToJSON..= cardAddressZip obj : "address_zip_check" Data.Aeson.Types.ToJSON..= cardAddressZipCheck obj : "available_payout_methods" Data.Aeson.Types.ToJSON..= cardAvailablePayoutMethods obj : "brand" Data.Aeson.Types.ToJSON..= cardBrand obj : "country" Data.Aeson.Types.ToJSON..= cardCountry obj : "currency" Data.Aeson.Types.ToJSON..= cardCurrency obj : "customer" Data.Aeson.Types.ToJSON..= cardCustomer obj : "cvc_check" Data.Aeson.Types.ToJSON..= cardCvcCheck obj : "default_for_currency" Data.Aeson.Types.ToJSON..= cardDefaultForCurrency obj : "dynamic_last4" Data.Aeson.Types.ToJSON..= cardDynamicLast4 obj : "exp_month" Data.Aeson.Types.ToJSON..= cardExpMonth obj : "exp_year" Data.Aeson.Types.ToJSON..= cardExpYear obj : "fingerprint" Data.Aeson.Types.ToJSON..= cardFingerprint obj : "funding" Data.Aeson.Types.ToJSON..= cardFunding obj : "id" Data.Aeson.Types.ToJSON..= cardId obj : "last4" Data.Aeson.Types.ToJSON..= cardLast4 obj : "metadata" Data.Aeson.Types.ToJSON..= cardMetadata obj : "name" Data.Aeson.Types.ToJSON..= cardName obj : "recipient" Data.Aeson.Types.ToJSON..= cardRecipient obj : "tokenization_method" Data.Aeson.Types.ToJSON..= cardTokenizationMethod obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "card" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("account" Data.Aeson.Types.ToJSON..= cardAccount obj) GHC.Base.<> (("address_city" Data.Aeson.Types.ToJSON..= cardAddressCity obj) GHC.Base.<> (("address_country" Data.Aeson.Types.ToJSON..= cardAddressCountry obj) GHC.Base.<> (("address_line1" Data.Aeson.Types.ToJSON..= cardAddressLine1 obj) GHC.Base.<> (("address_line1_check" Data.Aeson.Types.ToJSON..= cardAddressLine1Check obj) GHC.Base.<> (("address_line2" Data.Aeson.Types.ToJSON..= cardAddressLine2 obj) GHC.Base.<> (("address_state" Data.Aeson.Types.ToJSON..= cardAddressState obj) GHC.Base.<> (("address_zip" Data.Aeson.Types.ToJSON..= cardAddressZip obj) GHC.Base.<> (("address_zip_check" Data.Aeson.Types.ToJSON..= cardAddressZipCheck obj) GHC.Base.<> (("available_payout_methods" Data.Aeson.Types.ToJSON..= cardAvailablePayoutMethods obj) GHC.Base.<> (("brand" Data.Aeson.Types.ToJSON..= cardBrand obj) GHC.Base.<> (("country" Data.Aeson.Types.ToJSON..= cardCountry obj) GHC.Base.<> (("currency" Data.Aeson.Types.ToJSON..= cardCurrency obj) GHC.Base.<> (("customer" Data.Aeson.Types.ToJSON..= cardCustomer obj) GHC.Base.<> (("cvc_check" Data.Aeson.Types.ToJSON..= cardCvcCheck obj) GHC.Base.<> (("default_for_currency" Data.Aeson.Types.ToJSON..= cardDefaultForCurrency obj) GHC.Base.<> (("dynamic_last4" Data.Aeson.Types.ToJSON..= cardDynamicLast4 obj) GHC.Base.<> (("exp_month" Data.Aeson.Types.ToJSON..= cardExpMonth obj) GHC.Base.<> (("exp_year" Data.Aeson.Types.ToJSON..= cardExpYear obj) GHC.Base.<> (("fingerprint" Data.Aeson.Types.ToJSON..= cardFingerprint obj) GHC.Base.<> (("funding" Data.Aeson.Types.ToJSON..= cardFunding obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= cardId obj) GHC.Base.<> (("last4" Data.Aeson.Types.ToJSON..= cardLast4 obj) GHC.Base.<> (("metadata" Data.Aeson.Types.ToJSON..= cardMetadata obj) GHC.Base.<> (("name" Data.Aeson.Types.ToJSON..= cardName obj) GHC.Base.<> (("recipient" Data.Aeson.Types.ToJSON..= cardRecipient obj) GHC.Base.<> (("tokenization_method" Data.Aeson.Types.ToJSON..= cardTokenizationMethod obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "card"))))))))))))))))))))))))))))

instance Data.Aeson.Types.FromJSON.FromJSON Card where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Card" (\obj -> ((((((((((((((((((((((((((GHC.Base.pure Card GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "available_payout_methods")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "brand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_for_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dynamic_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "funding")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recipient")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tokenization_method"))

-- | Create a new 'Card' with all required fields.
mkCard ::
  -- | 'cardBrand'
  Data.Text.Internal.Text ->
  -- | 'cardExpMonth'
  GHC.Types.Int ->
  -- | 'cardExpYear'
  GHC.Types.Int ->
  -- | 'cardFunding'
  Data.Text.Internal.Text ->
  -- | 'cardId'
  Data.Text.Internal.Text ->
  -- | 'cardLast4'
  Data.Text.Internal.Text ->
  Card
mkCard cardBrand cardExpMonth cardExpYear cardFunding cardId cardLast4 =
  Card
    { cardAccount = GHC.Maybe.Nothing,
      cardAddressCity = GHC.Maybe.Nothing,
      cardAddressCountry = GHC.Maybe.Nothing,
      cardAddressLine1 = GHC.Maybe.Nothing,
      cardAddressLine1Check = GHC.Maybe.Nothing,
      cardAddressLine2 = GHC.Maybe.Nothing,
      cardAddressState = GHC.Maybe.Nothing,
      cardAddressZip = GHC.Maybe.Nothing,
      cardAddressZipCheck = GHC.Maybe.Nothing,
      cardAvailablePayoutMethods = GHC.Maybe.Nothing,
      cardBrand = cardBrand,
      cardCountry = GHC.Maybe.Nothing,
      cardCurrency = GHC.Maybe.Nothing,
      cardCustomer = GHC.Maybe.Nothing,
      cardCvcCheck = GHC.Maybe.Nothing,
      cardDefaultForCurrency = GHC.Maybe.Nothing,
      cardDynamicLast4 = GHC.Maybe.Nothing,
      cardExpMonth = cardExpMonth,
      cardExpYear = cardExpYear,
      cardFingerprint = GHC.Maybe.Nothing,
      cardFunding = cardFunding,
      cardId = cardId,
      cardLast4 = cardLast4,
      cardMetadata = GHC.Maybe.Nothing,
      cardName = GHC.Maybe.Nothing,
      cardRecipient = GHC.Maybe.Nothing,
      cardTokenizationMethod = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @components.schemas.card.properties.account.anyOf@ in the specification.
--
-- The account this card belongs to. This attribute will not be in the card object if the card belongs to a customer or recipient instead.
data CardAccount'Variants
  = CardAccount'Text Data.Text.Internal.Text
  | CardAccount'Account Account
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON CardAccount'Variants where
  toJSON (CardAccount'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (CardAccount'Account a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON CardAccount'Variants where
  parseJSON val = case (CardAccount'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((CardAccount'Account Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the enum schema located at @components.schemas.card.properties.available_payout_methods.items@ in the specification.
data CardAvailablePayoutMethods'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    CardAvailablePayoutMethods'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    CardAvailablePayoutMethods'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"instant"@
    CardAvailablePayoutMethods'EnumInstant
  | -- | Represents the JSON value @"standard"@
    CardAvailablePayoutMethods'EnumStandard
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON CardAvailablePayoutMethods' where
  toJSON (CardAvailablePayoutMethods'Other val) = val
  toJSON (CardAvailablePayoutMethods'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (CardAvailablePayoutMethods'EnumInstant) = "instant"
  toJSON (CardAvailablePayoutMethods'EnumStandard) = "standard"

instance Data.Aeson.Types.FromJSON.FromJSON CardAvailablePayoutMethods' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "instant" -> CardAvailablePayoutMethods'EnumInstant
            | val GHC.Classes.== "standard" -> CardAvailablePayoutMethods'EnumStandard
            | GHC.Base.otherwise -> CardAvailablePayoutMethods'Other val
      )

-- | Defines the oneOf schema located at @components.schemas.card.properties.customer.anyOf@ in the specification.
--
-- The customer that this card belongs to. This attribute will not be in the card object if the card belongs to an account or recipient instead.
data CardCustomer'Variants
  = CardCustomer'Text Data.Text.Internal.Text
  | CardCustomer'Customer Customer
  | CardCustomer'DeletedCustomer DeletedCustomer
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON CardCustomer'Variants where
  toJSON (CardCustomer'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (CardCustomer'Customer a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (CardCustomer'DeletedCustomer a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON CardCustomer'Variants where
  parseJSON val = case (CardCustomer'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((CardCustomer'Customer Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((CardCustomer'DeletedCustomer Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched")) of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.card.properties.recipient.anyOf@ in the specification.
--
-- The recipient that this card belongs to. This attribute will not be in the card object if the card belongs to a customer or account instead.
data CardRecipient'Variants
  = CardRecipient'Text Data.Text.Internal.Text
  | CardRecipient'Recipient Recipient
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON CardRecipient'Variants where
  toJSON (CardRecipient'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (CardRecipient'Recipient a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON CardRecipient'Variants where
  parseJSON val = case (CardRecipient'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((CardRecipient'Recipient Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
