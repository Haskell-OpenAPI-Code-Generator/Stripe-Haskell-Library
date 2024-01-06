{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SubscriptionSchedule
module StripeAPI.Types.SubscriptionSchedule where

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
import {-# SOURCE #-} StripeAPI.Types.Application
import {-# SOURCE #-} StripeAPI.Types.Customer
import {-# SOURCE #-} StripeAPI.Types.DeletedApplication
import {-# SOURCE #-} StripeAPI.Types.DeletedCustomer
import {-# SOURCE #-} StripeAPI.Types.Subscription
import {-# SOURCE #-} StripeAPI.Types.SubscriptionScheduleCurrentPhase
import {-# SOURCE #-} StripeAPI.Types.SubscriptionSchedulePhaseConfiguration
import {-# SOURCE #-} StripeAPI.Types.SubscriptionSchedulesResourceDefaultSettings
import {-# SOURCE #-} StripeAPI.Types.TestHelpers_TestClock
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.subscription_schedule@ in the specification.
--
-- A subscription schedule allows you to create and manage the lifecycle of a subscription by predefining expected changes.
--
-- Related guide: [Subscription schedules](https:\/\/stripe.com\/docs\/billing\/subscriptions\/subscription-schedules)
data SubscriptionSchedule = SubscriptionSchedule
  { -- | application: ID of the Connect Application that created the schedule.
    subscriptionScheduleApplication :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable SubscriptionScheduleApplication'NonNullableVariants)),
    -- | canceled_at: Time at which the subscription schedule was canceled. Measured in seconds since the Unix epoch.
    subscriptionScheduleCanceledAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | completed_at: Time at which the subscription schedule was completed. Measured in seconds since the Unix epoch.
    subscriptionScheduleCompletedAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
    subscriptionScheduleCreated :: GHC.Types.Int,
    -- | current_phase: Object representing the start and end dates for the current phase of the subscription schedule, if it is \`active\`.
    subscriptionScheduleCurrentPhase :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable SubscriptionScheduleCurrentPhase'NonNullable)),
    -- | customer: ID of the customer who owns the subscription schedule.
    subscriptionScheduleCustomer :: SubscriptionScheduleCustomer'Variants,
    -- | default_settings:
    subscriptionScheduleDefaultSettings :: SubscriptionSchedulesResourceDefaultSettings,
    -- | end_behavior: Behavior of the subscription schedule and underlying subscription when it ends. Possible values are \`release\` or \`cancel\` with the default being \`release\`. \`release\` will end the subscription schedule and keep the underlying subscription running. \`cancel\` will end the subscription schedule and cancel the underlying subscription.
    subscriptionScheduleEndBehavior :: SubscriptionScheduleEndBehavior',
    -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    subscriptionScheduleId :: Data.Text.Internal.Text,
    -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
    subscriptionScheduleLivemode :: GHC.Types.Bool,
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    subscriptionScheduleMetadata :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Aeson.Types.Internal.Object)),
    -- | phases: Configuration for the subscription schedule\'s phases.
    subscriptionSchedulePhases :: ([SubscriptionSchedulePhaseConfiguration]),
    -- | released_at: Time at which the subscription schedule was released. Measured in seconds since the Unix epoch.
    subscriptionScheduleReleasedAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | released_subscription: ID of the subscription once managed by the subscription schedule (if it is released).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    subscriptionScheduleReleasedSubscription :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | status: The present status of the subscription schedule. Possible values are \`not_started\`, \`active\`, \`completed\`, \`released\`, and \`canceled\`. You can read more about the different states in our [behavior guide](https:\/\/stripe.com\/docs\/billing\/subscriptions\/subscription-schedules).
    subscriptionScheduleStatus :: SubscriptionScheduleStatus',
    -- | subscription: ID of the subscription managed by the subscription schedule.
    subscriptionScheduleSubscription :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable SubscriptionScheduleSubscription'NonNullableVariants)),
    -- | test_clock: ID of the test clock this subscription schedule belongs to.
    subscriptionScheduleTestClock :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable SubscriptionScheduleTestClock'NonNullableVariants))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionSchedule where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("application" Data.Aeson.Types.ToJSON..=)) (subscriptionScheduleApplication obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("canceled_at" Data.Aeson.Types.ToJSON..=)) (subscriptionScheduleCanceledAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("completed_at" Data.Aeson.Types.ToJSON..=)) (subscriptionScheduleCompletedAt obj) : ["created" Data.Aeson.Types.ToJSON..= subscriptionScheduleCreated obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("current_phase" Data.Aeson.Types.ToJSON..=)) (subscriptionScheduleCurrentPhase obj) : ["customer" Data.Aeson.Types.ToJSON..= subscriptionScheduleCustomer obj] : ["default_settings" Data.Aeson.Types.ToJSON..= subscriptionScheduleDefaultSettings obj] : ["end_behavior" Data.Aeson.Types.ToJSON..= subscriptionScheduleEndBehavior obj] : ["id" Data.Aeson.Types.ToJSON..= subscriptionScheduleId obj] : ["livemode" Data.Aeson.Types.ToJSON..= subscriptionScheduleLivemode obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (subscriptionScheduleMetadata obj) : ["phases" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhases obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("released_at" Data.Aeson.Types.ToJSON..=)) (subscriptionScheduleReleasedAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("released_subscription" Data.Aeson.Types.ToJSON..=)) (subscriptionScheduleReleasedSubscription obj) : ["status" Data.Aeson.Types.ToJSON..= subscriptionScheduleStatus obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("subscription" Data.Aeson.Types.ToJSON..=)) (subscriptionScheduleSubscription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("test_clock" Data.Aeson.Types.ToJSON..=)) (subscriptionScheduleTestClock obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "subscription_schedule"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("application" Data.Aeson.Types.ToJSON..=)) (subscriptionScheduleApplication obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("canceled_at" Data.Aeson.Types.ToJSON..=)) (subscriptionScheduleCanceledAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("completed_at" Data.Aeson.Types.ToJSON..=)) (subscriptionScheduleCompletedAt obj) : ["created" Data.Aeson.Types.ToJSON..= subscriptionScheduleCreated obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("current_phase" Data.Aeson.Types.ToJSON..=)) (subscriptionScheduleCurrentPhase obj) : ["customer" Data.Aeson.Types.ToJSON..= subscriptionScheduleCustomer obj] : ["default_settings" Data.Aeson.Types.ToJSON..= subscriptionScheduleDefaultSettings obj] : ["end_behavior" Data.Aeson.Types.ToJSON..= subscriptionScheduleEndBehavior obj] : ["id" Data.Aeson.Types.ToJSON..= subscriptionScheduleId obj] : ["livemode" Data.Aeson.Types.ToJSON..= subscriptionScheduleLivemode obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (subscriptionScheduleMetadata obj) : ["phases" Data.Aeson.Types.ToJSON..= subscriptionSchedulePhases obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("released_at" Data.Aeson.Types.ToJSON..=)) (subscriptionScheduleReleasedAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("released_subscription" Data.Aeson.Types.ToJSON..=)) (subscriptionScheduleReleasedSubscription obj) : ["status" Data.Aeson.Types.ToJSON..= subscriptionScheduleStatus obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("subscription" Data.Aeson.Types.ToJSON..=)) (subscriptionScheduleSubscription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("test_clock" Data.Aeson.Types.ToJSON..=)) (subscriptionScheduleTestClock obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "subscription_schedule"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionSchedule where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SubscriptionSchedule" (\obj -> ((((((((((((((((GHC.Base.pure SubscriptionSchedule GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "application")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "canceled_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "completed_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "current_phase")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "default_settings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "end_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "phases")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "released_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "released_subscription")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "subscription")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "test_clock"))

-- | Create a new 'SubscriptionSchedule' with all required fields.
mkSubscriptionSchedule ::
  -- | 'subscriptionScheduleCreated'
  GHC.Types.Int ->
  -- | 'subscriptionScheduleCustomer'
  SubscriptionScheduleCustomer'Variants ->
  -- | 'subscriptionScheduleDefaultSettings'
  SubscriptionSchedulesResourceDefaultSettings ->
  -- | 'subscriptionScheduleEndBehavior'
  SubscriptionScheduleEndBehavior' ->
  -- | 'subscriptionScheduleId'
  Data.Text.Internal.Text ->
  -- | 'subscriptionScheduleLivemode'
  GHC.Types.Bool ->
  -- | 'subscriptionSchedulePhases'
  [SubscriptionSchedulePhaseConfiguration] ->
  -- | 'subscriptionScheduleStatus'
  SubscriptionScheduleStatus' ->
  SubscriptionSchedule
mkSubscriptionSchedule subscriptionScheduleCreated subscriptionScheduleCustomer subscriptionScheduleDefaultSettings subscriptionScheduleEndBehavior subscriptionScheduleId subscriptionScheduleLivemode subscriptionSchedulePhases subscriptionScheduleStatus =
  SubscriptionSchedule
    { subscriptionScheduleApplication = GHC.Maybe.Nothing,
      subscriptionScheduleCanceledAt = GHC.Maybe.Nothing,
      subscriptionScheduleCompletedAt = GHC.Maybe.Nothing,
      subscriptionScheduleCreated = subscriptionScheduleCreated,
      subscriptionScheduleCurrentPhase = GHC.Maybe.Nothing,
      subscriptionScheduleCustomer = subscriptionScheduleCustomer,
      subscriptionScheduleDefaultSettings = subscriptionScheduleDefaultSettings,
      subscriptionScheduleEndBehavior = subscriptionScheduleEndBehavior,
      subscriptionScheduleId = subscriptionScheduleId,
      subscriptionScheduleLivemode = subscriptionScheduleLivemode,
      subscriptionScheduleMetadata = GHC.Maybe.Nothing,
      subscriptionSchedulePhases = subscriptionSchedulePhases,
      subscriptionScheduleReleasedAt = GHC.Maybe.Nothing,
      subscriptionScheduleReleasedSubscription = GHC.Maybe.Nothing,
      subscriptionScheduleStatus = subscriptionScheduleStatus,
      subscriptionScheduleSubscription = GHC.Maybe.Nothing,
      subscriptionScheduleTestClock = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @components.schemas.subscription_schedule.properties.application.anyOf@ in the specification.
--
-- ID of the Connect Application that created the schedule.
data SubscriptionScheduleApplication'NonNullableVariants
  = SubscriptionScheduleApplication'NonNullableText Data.Text.Internal.Text
  | SubscriptionScheduleApplication'NonNullableApplication Application
  | SubscriptionScheduleApplication'NonNullableDeletedApplication DeletedApplication
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionScheduleApplication'NonNullableVariants where
  toJSON (SubscriptionScheduleApplication'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (SubscriptionScheduleApplication'NonNullableApplication a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (SubscriptionScheduleApplication'NonNullableDeletedApplication a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionScheduleApplication'NonNullableVariants where
  parseJSON val = case (SubscriptionScheduleApplication'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((SubscriptionScheduleApplication'NonNullableApplication Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((SubscriptionScheduleApplication'NonNullableDeletedApplication Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched")) of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the object schema located at @components.schemas.subscription_schedule.properties.current_phase.anyOf@ in the specification.
--
-- Object representing the start and end dates for the current phase of the subscription schedule, if it is \\\`active\\\`.
data SubscriptionScheduleCurrentPhase'NonNullable = SubscriptionScheduleCurrentPhase'NonNullable
  { -- | end_date: The end of this phase of the subscription schedule.
    subscriptionScheduleCurrentPhase'NonNullableEndDate :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | start_date: The start of this phase of the subscription schedule.
    subscriptionScheduleCurrentPhase'NonNullableStartDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionScheduleCurrentPhase'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("end_date" Data.Aeson.Types.ToJSON..=)) (subscriptionScheduleCurrentPhase'NonNullableEndDate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("start_date" Data.Aeson.Types.ToJSON..=)) (subscriptionScheduleCurrentPhase'NonNullableStartDate obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("end_date" Data.Aeson.Types.ToJSON..=)) (subscriptionScheduleCurrentPhase'NonNullableEndDate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("start_date" Data.Aeson.Types.ToJSON..=)) (subscriptionScheduleCurrentPhase'NonNullableStartDate obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionScheduleCurrentPhase'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SubscriptionScheduleCurrentPhase'NonNullable" (\obj -> (GHC.Base.pure SubscriptionScheduleCurrentPhase'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "end_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "start_date"))

-- | Create a new 'SubscriptionScheduleCurrentPhase'NonNullable' with all required fields.
mkSubscriptionScheduleCurrentPhase'NonNullable :: SubscriptionScheduleCurrentPhase'NonNullable
mkSubscriptionScheduleCurrentPhase'NonNullable =
  SubscriptionScheduleCurrentPhase'NonNullable
    { subscriptionScheduleCurrentPhase'NonNullableEndDate = GHC.Maybe.Nothing,
      subscriptionScheduleCurrentPhase'NonNullableStartDate = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @components.schemas.subscription_schedule.properties.customer.anyOf@ in the specification.
--
-- ID of the customer who owns the subscription schedule.
data SubscriptionScheduleCustomer'Variants
  = SubscriptionScheduleCustomer'Text Data.Text.Internal.Text
  | SubscriptionScheduleCustomer'Customer Customer
  | SubscriptionScheduleCustomer'DeletedCustomer DeletedCustomer
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionScheduleCustomer'Variants where
  toJSON (SubscriptionScheduleCustomer'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (SubscriptionScheduleCustomer'Customer a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (SubscriptionScheduleCustomer'DeletedCustomer a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionScheduleCustomer'Variants where
  parseJSON val = case (SubscriptionScheduleCustomer'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((SubscriptionScheduleCustomer'Customer Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((SubscriptionScheduleCustomer'DeletedCustomer Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched")) of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the enum schema located at @components.schemas.subscription_schedule.properties.end_behavior@ in the specification.
--
-- Behavior of the subscription schedule and underlying subscription when it ends. Possible values are \`release\` or \`cancel\` with the default being \`release\`. \`release\` will end the subscription schedule and keep the underlying subscription running. \`cancel\` will end the subscription schedule and cancel the underlying subscription.
data SubscriptionScheduleEndBehavior'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    SubscriptionScheduleEndBehavior'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    SubscriptionScheduleEndBehavior'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"cancel"@
    SubscriptionScheduleEndBehavior'EnumCancel
  | -- | Represents the JSON value @"none"@
    SubscriptionScheduleEndBehavior'EnumNone
  | -- | Represents the JSON value @"release"@
    SubscriptionScheduleEndBehavior'EnumRelease
  | -- | Represents the JSON value @"renew"@
    SubscriptionScheduleEndBehavior'EnumRenew
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionScheduleEndBehavior' where
  toJSON (SubscriptionScheduleEndBehavior'Other val) = val
  toJSON (SubscriptionScheduleEndBehavior'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (SubscriptionScheduleEndBehavior'EnumCancel) = "cancel"
  toJSON (SubscriptionScheduleEndBehavior'EnumNone) = "none"
  toJSON (SubscriptionScheduleEndBehavior'EnumRelease) = "release"
  toJSON (SubscriptionScheduleEndBehavior'EnumRenew) = "renew"

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionScheduleEndBehavior' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "cancel" -> SubscriptionScheduleEndBehavior'EnumCancel
            | val GHC.Classes.== "none" -> SubscriptionScheduleEndBehavior'EnumNone
            | val GHC.Classes.== "release" -> SubscriptionScheduleEndBehavior'EnumRelease
            | val GHC.Classes.== "renew" -> SubscriptionScheduleEndBehavior'EnumRenew
            | GHC.Base.otherwise -> SubscriptionScheduleEndBehavior'Other val
      )

-- | Defines the enum schema located at @components.schemas.subscription_schedule.properties.status@ in the specification.
--
-- The present status of the subscription schedule. Possible values are \`not_started\`, \`active\`, \`completed\`, \`released\`, and \`canceled\`. You can read more about the different states in our [behavior guide](https:\/\/stripe.com\/docs\/billing\/subscriptions\/subscription-schedules).
data SubscriptionScheduleStatus'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    SubscriptionScheduleStatus'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    SubscriptionScheduleStatus'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"active"@
    SubscriptionScheduleStatus'EnumActive
  | -- | Represents the JSON value @"canceled"@
    SubscriptionScheduleStatus'EnumCanceled
  | -- | Represents the JSON value @"completed"@
    SubscriptionScheduleStatus'EnumCompleted
  | -- | Represents the JSON value @"not_started"@
    SubscriptionScheduleStatus'EnumNotStarted
  | -- | Represents the JSON value @"released"@
    SubscriptionScheduleStatus'EnumReleased
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionScheduleStatus' where
  toJSON (SubscriptionScheduleStatus'Other val) = val
  toJSON (SubscriptionScheduleStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (SubscriptionScheduleStatus'EnumActive) = "active"
  toJSON (SubscriptionScheduleStatus'EnumCanceled) = "canceled"
  toJSON (SubscriptionScheduleStatus'EnumCompleted) = "completed"
  toJSON (SubscriptionScheduleStatus'EnumNotStarted) = "not_started"
  toJSON (SubscriptionScheduleStatus'EnumReleased) = "released"

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionScheduleStatus' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "active" -> SubscriptionScheduleStatus'EnumActive
            | val GHC.Classes.== "canceled" -> SubscriptionScheduleStatus'EnumCanceled
            | val GHC.Classes.== "completed" -> SubscriptionScheduleStatus'EnumCompleted
            | val GHC.Classes.== "not_started" -> SubscriptionScheduleStatus'EnumNotStarted
            | val GHC.Classes.== "released" -> SubscriptionScheduleStatus'EnumReleased
            | GHC.Base.otherwise -> SubscriptionScheduleStatus'Other val
      )

-- | Defines the oneOf schema located at @components.schemas.subscription_schedule.properties.subscription.anyOf@ in the specification.
--
-- ID of the subscription managed by the subscription schedule.
data SubscriptionScheduleSubscription'NonNullableVariants
  = SubscriptionScheduleSubscription'NonNullableText Data.Text.Internal.Text
  | SubscriptionScheduleSubscription'NonNullableSubscription Subscription
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionScheduleSubscription'NonNullableVariants where
  toJSON (SubscriptionScheduleSubscription'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (SubscriptionScheduleSubscription'NonNullableSubscription a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionScheduleSubscription'NonNullableVariants where
  parseJSON val = case (SubscriptionScheduleSubscription'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((SubscriptionScheduleSubscription'NonNullableSubscription Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.subscription_schedule.properties.test_clock.anyOf@ in the specification.
--
-- ID of the test clock this subscription schedule belongs to.
data SubscriptionScheduleTestClock'NonNullableVariants
  = SubscriptionScheduleTestClock'NonNullableText Data.Text.Internal.Text
  | SubscriptionScheduleTestClock'NonNullableTestHelpers'testClock TestHelpers'testClock
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionScheduleTestClock'NonNullableVariants where
  toJSON (SubscriptionScheduleTestClock'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (SubscriptionScheduleTestClock'NonNullableTestHelpers'testClock a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionScheduleTestClock'NonNullableVariants where
  parseJSON val = case (SubscriptionScheduleTestClock'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((SubscriptionScheduleTestClock'NonNullableTestHelpers'testClock Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
