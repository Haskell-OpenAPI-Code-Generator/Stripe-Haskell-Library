{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema AlipayAccount
module StripeAPI.Types.AlipayAccount where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
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
import {-# SOURCE #-} StripeAPI.Types.Customer
import {-# SOURCE #-} StripeAPI.Types.DeletedCustomer
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.alipay_account@ in the specification.
data AlipayAccount = AlipayAccount
  { -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
    alipayAccountCreated :: GHC.Types.Int,
    -- | customer: The ID of the customer associated with this Alipay Account.
    alipayAccountCustomer :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable AlipayAccountCustomer'NonNullableVariants)),
    -- | fingerprint: Uniquely identifies the account and will be the same across all Alipay account objects that are linked to the same Alipay account.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    alipayAccountFingerprint :: Data.Text.Internal.Text,
    -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    alipayAccountId :: Data.Text.Internal.Text,
    -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
    alipayAccountLivemode :: GHC.Types.Bool,
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    alipayAccountMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | payment_amount: If the Alipay account object is not reusable, the exact amount that you can create a charge for.
    alipayAccountPaymentAmount :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | payment_currency: If the Alipay account object is not reusable, the exact currency that you can create a charge for.
    alipayAccountPaymentCurrency :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | reusable: True if you can create multiple payments using this account. If the account is reusable, then you can freely choose the amount of each payment.
    alipayAccountReusable :: GHC.Types.Bool,
    -- | used: Whether this Alipay account object has ever been used for a payment.
    alipayAccountUsed :: GHC.Types.Bool,
    -- | username: The username for the Alipay account.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    alipayAccountUsername :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON AlipayAccount where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["created" Data.Aeson.Types.ToJSON..= alipayAccountCreated obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer" Data.Aeson.Types.ToJSON..=)) (alipayAccountCustomer obj) : ["fingerprint" Data.Aeson.Types.ToJSON..= alipayAccountFingerprint obj] : ["id" Data.Aeson.Types.ToJSON..= alipayAccountId obj] : ["livemode" Data.Aeson.Types.ToJSON..= alipayAccountLivemode obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (alipayAccountMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_amount" Data.Aeson.Types.ToJSON..=)) (alipayAccountPaymentAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_currency" Data.Aeson.Types.ToJSON..=)) (alipayAccountPaymentCurrency obj) : ["reusable" Data.Aeson.Types.ToJSON..= alipayAccountReusable obj] : ["used" Data.Aeson.Types.ToJSON..= alipayAccountUsed obj] : ["username" Data.Aeson.Types.ToJSON..= alipayAccountUsername obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "alipay_account"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["created" Data.Aeson.Types.ToJSON..= alipayAccountCreated obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer" Data.Aeson.Types.ToJSON..=)) (alipayAccountCustomer obj) : ["fingerprint" Data.Aeson.Types.ToJSON..= alipayAccountFingerprint obj] : ["id" Data.Aeson.Types.ToJSON..= alipayAccountId obj] : ["livemode" Data.Aeson.Types.ToJSON..= alipayAccountLivemode obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (alipayAccountMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_amount" Data.Aeson.Types.ToJSON..=)) (alipayAccountPaymentAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_currency" Data.Aeson.Types.ToJSON..=)) (alipayAccountPaymentCurrency obj) : ["reusable" Data.Aeson.Types.ToJSON..= alipayAccountReusable obj] : ["used" Data.Aeson.Types.ToJSON..= alipayAccountUsed obj] : ["username" Data.Aeson.Types.ToJSON..= alipayAccountUsername obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "alipay_account"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON AlipayAccount where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "AlipayAccount" (\obj -> ((((((((((GHC.Base.pure AlipayAccount GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "payment_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "payment_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "reusable")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "used")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "username"))

-- | Create a new 'AlipayAccount' with all required fields.
mkAlipayAccount ::
  -- | 'alipayAccountCreated'
  GHC.Types.Int ->
  -- | 'alipayAccountFingerprint'
  Data.Text.Internal.Text ->
  -- | 'alipayAccountId'
  Data.Text.Internal.Text ->
  -- | 'alipayAccountLivemode'
  GHC.Types.Bool ->
  -- | 'alipayAccountReusable'
  GHC.Types.Bool ->
  -- | 'alipayAccountUsed'
  GHC.Types.Bool ->
  -- | 'alipayAccountUsername'
  Data.Text.Internal.Text ->
  AlipayAccount
mkAlipayAccount alipayAccountCreated alipayAccountFingerprint alipayAccountId alipayAccountLivemode alipayAccountReusable alipayAccountUsed alipayAccountUsername =
  AlipayAccount
    { alipayAccountCreated = alipayAccountCreated,
      alipayAccountCustomer = GHC.Maybe.Nothing,
      alipayAccountFingerprint = alipayAccountFingerprint,
      alipayAccountId = alipayAccountId,
      alipayAccountLivemode = alipayAccountLivemode,
      alipayAccountMetadata = GHC.Maybe.Nothing,
      alipayAccountPaymentAmount = GHC.Maybe.Nothing,
      alipayAccountPaymentCurrency = GHC.Maybe.Nothing,
      alipayAccountReusable = alipayAccountReusable,
      alipayAccountUsed = alipayAccountUsed,
      alipayAccountUsername = alipayAccountUsername
    }

-- | Defines the oneOf schema located at @components.schemas.alipay_account.properties.customer.anyOf@ in the specification.
--
-- The ID of the customer associated with this Alipay Account.
data AlipayAccountCustomer'NonNullableVariants
  = AlipayAccountCustomer'NonNullableText Data.Text.Internal.Text
  | AlipayAccountCustomer'NonNullableCustomer Customer
  | AlipayAccountCustomer'NonNullableDeletedCustomer DeletedCustomer
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON AlipayAccountCustomer'NonNullableVariants where
  toJSON (AlipayAccountCustomer'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (AlipayAccountCustomer'NonNullableCustomer a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (AlipayAccountCustomer'NonNullableDeletedCustomer a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON AlipayAccountCustomer'NonNullableVariants where
  parseJSON val = case (AlipayAccountCustomer'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((AlipayAccountCustomer'NonNullableCustomer Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((AlipayAccountCustomer'NonNullableDeletedCustomer Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched")) of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
