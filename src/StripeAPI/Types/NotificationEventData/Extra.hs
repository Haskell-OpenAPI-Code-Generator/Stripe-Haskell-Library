{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | Contains manually written helper code to ease the use of 'NotificationEventData'
module StripeAPI.Types.NotificationEventData.Extra
  ( getEventData,
    EventData (..),
  )
where

import qualified Data.Aeson as Aeson
import Data.Text (Text)
import StripeAPI.Types.Account
import StripeAPI.Types.Application
import StripeAPI.Types.ApplicationFee
import StripeAPI.Types.Balance
import StripeAPI.Types.BillingPortal_Configuration
import StripeAPI.Types.BillingPortal_Session
import StripeAPI.Types.Capability
import StripeAPI.Types.CashBalance
import StripeAPI.Types.Charge
import StripeAPI.Types.Checkout_Session
import StripeAPI.Types.Coupon
import StripeAPI.Types.CreditNote
import StripeAPI.Types.Customer
import StripeAPI.Types.Discount
import StripeAPI.Types.Dispute
import StripeAPI.Types.Event
import StripeAPI.Types.ExternalAccount
import StripeAPI.Types.FeeRefund
import StripeAPI.Types.File
import StripeAPI.Types.Identity_VerificationSession
import StripeAPI.Types.Invoice
import StripeAPI.Types.Invoiceitem
import StripeAPI.Types.Issuing_Authorization
import StripeAPI.Types.Issuing_Card
import StripeAPI.Types.Issuing_Cardholder
import StripeAPI.Types.Issuing_Dispute
import StripeAPI.Types.Issuing_Transaction
import StripeAPI.Types.Mandate
import StripeAPI.Types.NotificationEventData
import StripeAPI.Types.Order
import StripeAPI.Types.PaymentIntent
import StripeAPI.Types.PaymentLink
import StripeAPI.Types.PaymentMethod
import StripeAPI.Types.Payout
import StripeAPI.Types.Person
import StripeAPI.Types.Plan
import StripeAPI.Types.Price
import StripeAPI.Types.Product
import StripeAPI.Types.PromotionCode
import StripeAPI.Types.Quote
import StripeAPI.Types.Radar_EarlyFraudWarning
import StripeAPI.Types.Recipient
import StripeAPI.Types.Refund
import StripeAPI.Types.Reporting_ReportRun
import StripeAPI.Types.Reporting_ReportType
import StripeAPI.Types.Review
import StripeAPI.Types.ScheduledQueryRun
import StripeAPI.Types.SetupIntent
import StripeAPI.Types.Sku
import StripeAPI.Types.Source
import StripeAPI.Types.SourceTransaction
import StripeAPI.Types.Subscription
import StripeAPI.Types.SubscriptionSchedule
import StripeAPI.Types.TaxId
import StripeAPI.Types.TaxRate
import StripeAPI.Types.Terminal_Reader
import StripeAPI.Types.TestHelpers_TestClock
import StripeAPI.Types.Topup
import StripeAPI.Types.Transfer

-- This module is based on https://stripe.com/docs/api/events/types.
-- To help transform the following JavaScript snippets can be used:
--
-- // `input` is a variable with the lines from the webpage copied.
--
-- const toPascalCase = x => x.split(/[._ ]/).map(y => y[0].toUpperCase() + y.substr(1)).join('')
--
-- // To generate lines of getEventData
-- console.log(input.split('\n\n').map(y => {
--     const [eventName, t, comment] = y.split('\n')
--     return `  "${eventName}" -> convertEventData ${toPascalCase(eventName)}Event e`;
-- }).join('\n'));
--
-- // To generate lines of getEventData
-- console.log(input.split('\n\n').map(y => {
--     const [eventName, t, comment] = y.split('\n')
--     return '  | -- | ' + comment + '\n    ' + toPascalCase(eventName) + 'Event ' + toPascalCase(t);
-- }).join('\n'));

-- | Parse the 'NotificationEventData' of an 'Event' according to the 'eventType'
getEventData :: Event -> EventData
getEventData e = case eventType e of
  "account.updated" -> convertEventData AccountUpdatedEvent e
  "account.application.authorized" -> convertEventData AccountApplicationAuthorizedEvent e
  "account.application.deauthorized" -> convertEventData AccountApplicationDeauthorizedEvent e
  "account.external_account.created" -> convertEventData AccountExternalAccountCreatedEvent e
  "account.external_account.deleted" -> convertEventData AccountExternalAccountDeletedEvent e
  "account.external_account.updated" -> convertEventData AccountExternalAccountUpdatedEvent e
  "application_fee.created" -> convertEventData ApplicationFeeCreatedEvent e
  "application_fee.refunded" -> convertEventData ApplicationFeeRefundedEvent e
  "application_fee.refund.updated" -> convertEventData ApplicationFeeRefundUpdatedEvent e
  "balance.available" -> convertEventData BalanceAvailableEvent e
  "billing_portal.configuration.created" -> convertEventData BillingPortalConfigurationCreatedEvent e
  "billing_portal.configuration.updated" -> convertEventData BillingPortalConfigurationUpdatedEvent e
  "billing_portal.session.created" -> convertEventData BillingPortalSessionCreatedEvent e
  "capability.updated" -> convertEventData CapabilityUpdatedEvent e
  "cash_balance.funds_available" -> convertEventData CashBalanceFundsAvailableEvent e
  "charge.captured" -> convertEventData ChargeCapturedEvent e
  "charge.expired" -> convertEventData ChargeExpiredEvent e
  "charge.failed" -> convertEventData ChargeFailedEvent e
  "charge.pending" -> convertEventData ChargePendingEvent e
  "charge.refunded" -> convertEventData ChargeRefundedEvent e
  "charge.succeeded" -> convertEventData ChargeSucceededEvent e
  "charge.updated" -> convertEventData ChargeUpdatedEvent e
  "charge.dispute.closed" -> convertEventData ChargeDisputeClosedEvent e
  "charge.dispute.created" -> convertEventData ChargeDisputeCreatedEvent e
  "charge.dispute.funds_reinstated" -> convertEventData ChargeDisputeFundsReinstatedEvent e
  "charge.dispute.funds_withdrawn" -> convertEventData ChargeDisputeFundsWithdrawnEvent e
  "charge.dispute.updated" -> convertEventData ChargeDisputeUpdatedEvent e
  "charge.refund.updated" -> convertEventData ChargeRefundUpdatedEvent e
  "checkout.session.async_payment_failed" -> convertEventData CheckoutSessionAsyncPaymentFailedEvent e
  "checkout.session.async_payment_succeeded" -> convertEventData CheckoutSessionAsyncPaymentSucceededEvent e
  "checkout.session.completed" -> convertEventData CheckoutSessionCompletedEvent e
  "checkout.session.expired" -> convertEventData CheckoutSessionExpiredEvent e
  "coupon.created" -> convertEventData CouponCreatedEvent e
  "coupon.deleted" -> convertEventData CouponDeletedEvent e
  "coupon.updated" -> convertEventData CouponUpdatedEvent e
  "credit_note.created" -> convertEventData CreditNoteCreatedEvent e
  "credit_note.updated" -> convertEventData CreditNoteUpdatedEvent e
  "credit_note.voided" -> convertEventData CreditNoteVoidedEvent e
  "customer.created" -> convertEventData CustomerCreatedEvent e
  "customer.deleted" -> convertEventData CustomerDeletedEvent e
  "customer.updated" -> convertEventData CustomerUpdatedEvent e
  "customer.discount.created" -> convertEventData CustomerDiscountCreatedEvent e
  "customer.discount.deleted" -> convertEventData CustomerDiscountDeletedEvent e
  "customer.discount.updated" -> convertEventData CustomerDiscountUpdatedEvent e
  "customer.source.created" -> convertEventData CustomerSourceCreatedEvent e
  "customer.source.deleted" -> convertEventData CustomerSourceDeletedEvent e
  "customer.source.expiring" -> convertEventData CustomerSourceExpiringEvent e
  "customer.source.updated" -> convertEventData CustomerSourceUpdatedEvent e
  "customer.subscription.created" -> convertEventData CustomerSubscriptionCreatedEvent e
  "customer.subscription.deleted" -> convertEventData CustomerSubscriptionDeletedEvent e
  "customer.subscription.pending_update_applied" -> convertEventData CustomerSubscriptionPendingUpdateAppliedEvent e
  "customer.subscription.pending_update_expired" -> convertEventData CustomerSubscriptionPendingUpdateExpiredEvent e
  "customer.subscription.trial_will_end" -> convertEventData CustomerSubscriptionTrialWillEndEvent e
  "customer.subscription.updated" -> convertEventData CustomerSubscriptionUpdatedEvent e
  "customer.tax_id.created" -> convertEventData CustomerTaxIdCreatedEvent e
  "customer.tax_id.deleted" -> convertEventData CustomerTaxIdDeletedEvent e
  "customer.tax_id.updated" -> convertEventData CustomerTaxIdUpdatedEvent e
  "file.created" -> convertEventData FileCreatedEvent e
  "identity.verification_session.canceled" -> convertEventData IdentityVerificationSessionCanceledEvent e
  "identity.verification_session.created" -> convertEventData IdentityVerificationSessionCreatedEvent e
  "identity.verification_session.processing" -> convertEventData IdentityVerificationSessionProcessingEvent e
  "identity.verification_session.redacted" -> convertEventData IdentityVerificationSessionRedactedEvent e
  "identity.verification_session.requires_input" -> convertEventData IdentityVerificationSessionRequiresInputEvent e
  "identity.verification_session.verified" -> convertEventData IdentityVerificationSessionVerifiedEvent e
  "invoice.created" -> convertEventData InvoiceCreatedEvent e
  "invoice.deleted" -> convertEventData InvoiceDeletedEvent e
  "invoice.finalization_failed" -> convertEventData InvoiceFinalizationFailedEvent e
  "invoice.finalized" -> convertEventData InvoiceFinalizedEvent e
  "invoice.marked_uncollectible" -> convertEventData InvoiceMarkedUncollectibleEvent e
  "invoice.paid" -> convertEventData InvoicePaidEvent e
  "invoice.payment_action_required" -> convertEventData InvoicePaymentActionRequiredEvent e
  "invoice.payment_failed" -> convertEventData InvoicePaymentFailedEvent e
  "invoice.payment_succeeded" -> convertEventData InvoicePaymentSucceededEvent e
  "invoice.sent" -> convertEventData InvoiceSentEvent e
  "invoice.upcoming" -> convertEventData InvoiceUpcomingEvent e
  "invoice.updated" -> convertEventData InvoiceUpdatedEvent e
  "invoice.voided" -> convertEventData InvoiceVoidedEvent e
  "invoiceitem.created" -> convertEventData InvoiceitemCreatedEvent e
  "invoiceitem.deleted" -> convertEventData InvoiceitemDeletedEvent e
  "invoiceitem.updated" -> convertEventData InvoiceitemUpdatedEvent e
  "issuing_authorization.created" -> convertEventData IssuingAuthorizationCreatedEvent e
  "issuing_authorization.request" -> convertEventData IssuingAuthorizationRequestEvent e
  "issuing_authorization.updated" -> convertEventData IssuingAuthorizationUpdatedEvent e
  "issuing_card.created" -> convertEventData IssuingCardCreatedEvent e
  "issuing_card.updated" -> convertEventData IssuingCardUpdatedEvent e
  "issuing_cardholder.created" -> convertEventData IssuingCardholderCreatedEvent e
  "issuing_cardholder.updated" -> convertEventData IssuingCardholderUpdatedEvent e
  "issuing_dispute.closed" -> convertEventData IssuingDisputeClosedEvent e
  "issuing_dispute.created" -> convertEventData IssuingDisputeCreatedEvent e
  "issuing_dispute.funds_reinstated" -> convertEventData IssuingDisputeFundsReinstatedEvent e
  "issuing_dispute.submitted" -> convertEventData IssuingDisputeSubmittedEvent e
  "issuing_dispute.updated" -> convertEventData IssuingDisputeUpdatedEvent e
  "issuing_transaction.created" -> convertEventData IssuingTransactionCreatedEvent e
  "issuing_transaction.updated" -> convertEventData IssuingTransactionUpdatedEvent e
  "mandate.updated" -> convertEventData MandateUpdatedEvent e
  "order.created" -> convertEventData OrderCreatedEvent e
  "order.payment_failed" -> convertEventData OrderPaymentFailedEvent e
  "order.payment_succeeded" -> convertEventData OrderPaymentSucceededEvent e
  "order.updated" -> convertEventData OrderUpdatedEvent e
  "order_return.created" -> convertEventData OrderReturnCreatedEvent e
  "payment_intent.amount_capturable_updated" -> convertEventData PaymentIntentAmountCapturableUpdatedEvent e
  "payment_intent.canceled" -> convertEventData PaymentIntentCanceledEvent e
  "payment_intent.created" -> convertEventData PaymentIntentCreatedEvent e
  "payment_intent.partially_funded" -> convertEventData PaymentIntentPartiallyFundedEvent e
  "payment_intent.payment_failed" -> convertEventData PaymentIntentPaymentFailedEvent e
  "payment_intent.processing" -> convertEventData PaymentIntentProcessingEvent e
  "payment_intent.requires_action" -> convertEventData PaymentIntentRequiresActionEvent e
  "payment_intent.succeeded" -> convertEventData PaymentIntentSucceededEvent e
  "payment_link.created" -> convertEventData PaymentLinkCreatedEvent e
  "payment_link.updated" -> convertEventData PaymentLinkUpdatedEvent e
  "payment_method.attached" -> convertEventData PaymentMethodAttachedEvent e
  "payment_method.automatically_updated" -> convertEventData PaymentMethodAutomaticallyUpdatedEvent e
  "payment_method.detached" -> convertEventData PaymentMethodDetachedEvent e
  "payment_method.updated" -> convertEventData PaymentMethodUpdatedEvent e
  "payout.canceled" -> convertEventData PayoutCanceledEvent e
  "payout.created" -> convertEventData PayoutCreatedEvent e
  "payout.failed" -> convertEventData PayoutFailedEvent e
  "payout.paid" -> convertEventData PayoutPaidEvent e
  "payout.updated" -> convertEventData PayoutUpdatedEvent e
  "person.created" -> convertEventData PersonCreatedEvent e
  "person.deleted" -> convertEventData PersonDeletedEvent e
  "person.updated" -> convertEventData PersonUpdatedEvent e
  "plan.created" -> convertEventData PlanCreatedEvent e
  "plan.deleted" -> convertEventData PlanDeletedEvent e
  "plan.updated" -> convertEventData PlanUpdatedEvent e
  "price.created" -> convertEventData PriceCreatedEvent e
  "price.deleted" -> convertEventData PriceDeletedEvent e
  "price.updated" -> convertEventData PriceUpdatedEvent e
  "product.created" -> convertEventData ProductCreatedEvent e
  "product.deleted" -> convertEventData ProductDeletedEvent e
  "product.updated" -> convertEventData ProductUpdatedEvent e
  "promotion_code.created" -> convertEventData PromotionCodeCreatedEvent e
  "promotion_code.updated" -> convertEventData PromotionCodeUpdatedEvent e
  "quote.accepted" -> convertEventData QuoteAcceptedEvent e
  "quote.canceled" -> convertEventData QuoteCanceledEvent e
  "quote.created" -> convertEventData QuoteCreatedEvent e
  "quote.finalized" -> convertEventData QuoteFinalizedEvent e
  "radar.early_fraud_warning.created" -> convertEventData RadarEarlyFraudWarningCreatedEvent e
  "radar.early_fraud_warning.updated" -> convertEventData RadarEarlyFraudWarningUpdatedEvent e
  "recipient.created" -> convertEventData RecipientCreatedEvent e
  "recipient.deleted" -> convertEventData RecipientDeletedEvent e
  "recipient.updated" -> convertEventData RecipientUpdatedEvent e
  "reporting.report_run.failed" -> convertEventData ReportingReportRunFailedEvent e
  "reporting.report_run.succeeded" -> convertEventData ReportingReportRunSucceededEvent e
  "reporting.report_type.updated" -> convertEventData ReportingReportTypeUpdatedEvent e
  "review.closed" -> convertEventData ReviewClosedEvent e
  "review.opened" -> convertEventData ReviewOpenedEvent e
  "setup_intent.canceled" -> convertEventData SetupIntentCanceledEvent e
  "setup_intent.created" -> convertEventData SetupIntentCreatedEvent e
  "setup_intent.requires_action" -> convertEventData SetupIntentRequiresActionEvent e
  "setup_intent.setup_failed" -> convertEventData SetupIntentSetupFailedEvent e
  "setup_intent.succeeded" -> convertEventData SetupIntentSucceededEvent e
  "sigma.scheduled_query_run.created" -> convertEventData SigmaScheduledQueryRunCreatedEvent e
  "sku.created" -> convertEventData SkuCreatedEvent e
  "sku.deleted" -> convertEventData SkuDeletedEvent e
  "sku.updated" -> convertEventData SkuUpdatedEvent e
  "source.canceled" -> convertEventData SourceCanceledEvent e
  "source.chargeable" -> convertEventData SourceChargeableEvent e
  "source.failed" -> convertEventData SourceFailedEvent e
  "source.mandate_notification" -> convertEventData SourceMandateNotificationEvent e
  "source.refund_attributes_required" -> convertEventData SourceRefundAttributesRequiredEvent e
  "source.transaction.created" -> convertEventData SourceTransactionCreatedEvent e
  "source.transaction.updated" -> convertEventData SourceTransactionUpdatedEvent e
  "subscription_schedule.aborted" -> convertEventData SubscriptionScheduleAbortedEvent e
  "subscription_schedule.canceled" -> convertEventData SubscriptionScheduleCanceledEvent e
  "subscription_schedule.completed" -> convertEventData SubscriptionScheduleCompletedEvent e
  "subscription_schedule.created" -> convertEventData SubscriptionScheduleCreatedEvent e
  "subscription_schedule.expiring" -> convertEventData SubscriptionScheduleExpiringEvent e
  "subscription_schedule.released" -> convertEventData SubscriptionScheduleReleasedEvent e
  "subscription_schedule.updated" -> convertEventData SubscriptionScheduleUpdatedEvent e
  "tax_rate.created" -> convertEventData TaxRateCreatedEvent e
  "tax_rate.updated" -> convertEventData TaxRateUpdatedEvent e
  "terminal.reader.action_failed" -> convertEventData TerminalReaderActionFailedEvent e
  "terminal.reader.action_succeeded" -> convertEventData TerminalReaderActionSucceededEvent e
  "test_helpers.test_clock.advancing" -> convertEventData TestHelpersTestClockAdvancingEvent e
  "test_helpers.test_clock.created" -> convertEventData TestHelpersTestClockCreatedEvent e
  "test_helpers.test_clock.deleted" -> convertEventData TestHelpersTestClockDeletedEvent e
  "test_helpers.test_clock.internal_failure" -> convertEventData TestHelpersTestClockInternalFailureEvent e
  "test_helpers.test_clock.ready" -> convertEventData TestHelpersTestClockReadyEvent e
  "topup.canceled" -> convertEventData TopupCanceledEvent e
  "topup.created" -> convertEventData TopupCreatedEvent e
  "topup.failed" -> convertEventData TopupFailedEvent e
  "topup.reversed" -> convertEventData TopupReversedEvent e
  "topup.succeeded" -> convertEventData TopupSucceededEvent e
  "transfer.created" -> convertEventData TransferCreatedEvent e
  "transfer.failed" -> convertEventData TransferFailedEvent e
  "transfer.paid" -> convertEventData TransferPaidEvent e
  "transfer.reversed" -> convertEventData TransferReversedEvent e
  "transfer.updated" -> convertEventData TransferUpdatedEvent e
  t -> UnknownEvent t

convertEventData :: Aeson.FromJSON a => (a -> EventData) -> Event -> EventData
convertEventData constructor Event {..} = case Aeson.fromJSON (Aeson.Object $ notificationEventDataObject eventData) of
  Aeson.Success x -> constructor x
  Aeson.Error _ -> UnknownEvent eventType

-- | All events supported by Stripe (see https://stripe.com/docs/api/events/types)
data EventData
  = -- | Occurs whenever an account status or property has changed.
    AccountUpdatedEvent Account
  | -- | Occurs whenever a user authorizes an application. Sent to the related application only.
    AccountApplicationAuthorizedEvent Application
  | -- | Occurs whenever a user deauthorizes an application. Sent to the related application only.
    AccountApplicationDeauthorizedEvent Application
  | -- | Occurs whenever an external account is created.
    AccountExternalAccountCreatedEvent ExternalAccount
  | -- | Occurs whenever an external account is deleted.
    AccountExternalAccountDeletedEvent ExternalAccount
  | -- | Occurs whenever an external account is updated.
    AccountExternalAccountUpdatedEvent ExternalAccount
  | -- | Occurs whenever an application fee is created on a charge.
    ApplicationFeeCreatedEvent ApplicationFee
  | -- | Occurs whenever an application fee is refunded, whether from refunding a charge or from refunding the application fee directly. This includes partial refunds.
    ApplicationFeeRefundedEvent ApplicationFee
  | -- | Occurs whenever an application fee refund is updated.
    ApplicationFeeRefundUpdatedEvent FeeRefund
  | -- | Occurs whenever your Stripe balance has been updated (e.g., when a charge is available to be paid out). By default, Stripe automatically transfers funds in your balance to your bank account on a daily basis.
    BalanceAvailableEvent Balance
  | -- | Occurs whenever a portal configuration is created.
    BillingPortalConfigurationCreatedEvent BillingPortal'configuration
  | -- | Occurs whenever a portal configuration is updated.
    BillingPortalConfigurationUpdatedEvent BillingPortal'configuration
  | -- | Occurs whenever a portal session is created.
    BillingPortalSessionCreatedEvent BillingPortal'session
  | -- | Occurs whenever a capability has new requirements or a new status.
    CapabilityUpdatedEvent Capability
  | -- | Occurs whenever there is a positive remaining cash balance after Stripe automatically reconciles new funds into the cash balance. If you enabled manual reconciliation, this webhook will fire whenever there are new funds into the cash balance.
    CashBalanceFundsAvailableEvent CashBalance
  | -- | Occurs whenever a previously uncaptured charge is captured.
    ChargeCapturedEvent Charge
  | -- | Occurs whenever an uncaptured charge expires.
    ChargeExpiredEvent Charge
  | -- | Occurs whenever a failed charge attempt occurs.
    ChargeFailedEvent Charge
  | -- | Occurs whenever a pending charge is created.
    ChargePendingEvent Charge
  | -- | Occurs whenever a charge is refunded, including partial refunds.
    ChargeRefundedEvent Charge
  | -- | Occurs whenever a charge is successful.
    ChargeSucceededEvent Charge
  | -- | Occurs whenever a charge description or metadata is updated.
    ChargeUpdatedEvent Charge
  | -- | Occurs when a dispute is closed and the dispute status changes to lost, warning_closed, or won.
    ChargeDisputeClosedEvent Dispute
  | -- | Occurs whenever a customer disputes a charge with their bank.
    ChargeDisputeCreatedEvent Dispute
  | -- | Occurs when funds are reinstated to your account after a dispute is closed. This includes partially refunded payments.
    ChargeDisputeFundsReinstatedEvent Dispute
  | -- | Occurs when funds are removed from your account due to a dispute.
    ChargeDisputeFundsWithdrawnEvent Dispute
  | -- | Occurs when the dispute is updated (usually with evidence).
    ChargeDisputeUpdatedEvent Dispute
  | -- | Occurs whenever a refund is updated, on selected payment methods.
    ChargeRefundUpdatedEvent Refund
  | -- | Occurs when a payment intent using a delayed payment method fails.
    CheckoutSessionAsyncPaymentFailedEvent Checkout'session
  | -- | Occurs when a payment intent using a delayed payment method finally succeeds.
    CheckoutSessionAsyncPaymentSucceededEvent Checkout'session
  | -- | Occurs when a Checkout Session has been successfully completed.
    CheckoutSessionCompletedEvent Checkout'session
  | -- | Occurs when a Checkout Session is expired.
    CheckoutSessionExpiredEvent Checkout'session
  | -- | Occurs whenever a coupon is created.
    CouponCreatedEvent Coupon
  | -- | Occurs whenever a coupon is deleted.
    CouponDeletedEvent Coupon
  | -- | Occurs whenever a coupon is updated.
    CouponUpdatedEvent Coupon
  | -- | Occurs whenever a credit note is created.
    CreditNoteCreatedEvent CreditNote
  | -- | Occurs whenever a credit note is updated.
    CreditNoteUpdatedEvent CreditNote
  | -- | Occurs whenever a credit note is voided.
    CreditNoteVoidedEvent CreditNote
  | -- | Occurs whenever a new customer is created.
    CustomerCreatedEvent Customer
  | -- | Occurs whenever a customer is deleted.
    CustomerDeletedEvent Customer
  | -- | Occurs whenever any property of a customer changes.
    CustomerUpdatedEvent Customer
  | -- | Occurs whenever a coupon is attached to a customer.
    CustomerDiscountCreatedEvent Discount
  | -- | Occurs whenever a coupon is removed from a customer.
    CustomerDiscountDeletedEvent Discount
  | -- | Occurs whenever a customer is switched from one coupon to another.
    CustomerDiscountUpdatedEvent Discount
  | -- | Occurs whenever a new source is created for a customer.
    CustomerSourceCreatedEvent Source
  | -- | Occurs whenever a source is removed from a customer.
    CustomerSourceDeletedEvent Source
  | -- | Occurs whenever a card or source will expire at the end of the month.
    CustomerSourceExpiringEvent Source
  | -- | Occurs whenever a source’s details are changed.
    CustomerSourceUpdatedEvent Source
  | -- | Occurs whenever a customer is signed up for a new plan.
    CustomerSubscriptionCreatedEvent Subscription
  | -- | Occurs whenever a customer’s subscription ends.
    CustomerSubscriptionDeletedEvent Subscription
  | -- | Occurs whenever a customer’s subscription’s pending update is applied, and the subscription is updated.
    CustomerSubscriptionPendingUpdateAppliedEvent Subscription
  | -- | Occurs whenever a customer’s subscription’s pending update expires before the related invoice is paid.
    CustomerSubscriptionPendingUpdateExpiredEvent Subscription
  | -- | Occurs three days before a subscription’s trial period is scheduled to end, or when a trial is ended immediately (using trial_end=now).
    CustomerSubscriptionTrialWillEndEvent Subscription
  | -- | Occurs whenever a subscription changes (e.g., switching from one plan to another, or changing the status from trial to active).
    CustomerSubscriptionUpdatedEvent Subscription
  | -- | Occurs whenever a tax ID is created for a customer.
    CustomerTaxIdCreatedEvent TaxId
  | -- | Occurs whenever a tax ID is deleted from a customer.
    CustomerTaxIdDeletedEvent TaxId
  | -- | Occurs whenever a customer’s tax ID is updated.
    CustomerTaxIdUpdatedEvent TaxId
  | -- | Occurs whenever a new Stripe-generated file is available for your account.
    FileCreatedEvent File
  | -- | Occurs whenever a VerificationSession is canceled
    IdentityVerificationSessionCanceledEvent Identity'verificationSession
  | -- | Occurs whenever a VerificationSession is created
    IdentityVerificationSessionCreatedEvent Identity'verificationSession
  | -- | Occurs whenever a VerificationSession transitions to processing
    IdentityVerificationSessionProcessingEvent Identity'verificationSession
  | -- | Occurs whenever a VerificationSession is redacted. You must create a webhook endpoint which explicitly subscribes to this event type to access it. Webhook endpoints which subscribe to all events will not include this event type.
    IdentityVerificationSessionRedactedEvent Identity'verificationSession
  | -- | Occurs whenever a VerificationSession transitions to require user input
    IdentityVerificationSessionRequiresInputEvent Identity'verificationSession
  | -- | Occurs whenever a VerificationSession transitions to verified
    IdentityVerificationSessionVerifiedEvent Identity'verificationSession
  | -- | Occurs whenever a new invoice is created. To learn how webhooks can be used with this event, and how they can affect it, see Using Webhooks with Subscriptions.
    InvoiceCreatedEvent Invoice
  | -- | Occurs whenever a draft invoice is deleted.
    InvoiceDeletedEvent Invoice
  | -- | Occurs whenever a draft invoice cannot be finalized. See the invoice’s last finalization error for details.
    InvoiceFinalizationFailedEvent Invoice
  | -- | Occurs whenever a draft invoice is finalized and updated to be an open invoice.
    InvoiceFinalizedEvent Invoice
  | -- | Occurs whenever an invoice is marked uncollectible.
    InvoiceMarkedUncollectibleEvent Invoice
  | -- | Occurs whenever an invoice payment attempt succeeds or an invoice is marked as paid out-of-band.
    InvoicePaidEvent Invoice
  | -- | Occurs whenever an invoice payment attempt requires further user action to complete.
    InvoicePaymentActionRequiredEvent Invoice
  | -- | Occurs whenever an invoice payment attempt fails, due either to a declined payment or to the lack of a stored payment method.
    InvoicePaymentFailedEvent Invoice
  | -- | Occurs whenever an invoice payment attempt succeeds.
    InvoicePaymentSucceededEvent Invoice
  | -- | Occurs whenever an invoice email is sent out.
    InvoiceSentEvent Invoice
  | -- | Occurs X number of days before a subscription is scheduled to create an invoice that is automatically charged—where X is determined by your subscriptions settings. Note: The received Invoice object will not have an invoice ID.
    InvoiceUpcomingEvent Invoice
  | -- | Occurs whenever an invoice changes (e.g., the invoice amount).
    InvoiceUpdatedEvent Invoice
  | -- | Occurs whenever an invoice is voided.
    InvoiceVoidedEvent Invoice
  | -- | Occurs whenever an invoice item is created.
    InvoiceitemCreatedEvent Invoiceitem
  | -- | Occurs whenever an invoice item is deleted.
    InvoiceitemDeletedEvent Invoiceitem
  | -- | Occurs whenever an invoice item is updated.
    InvoiceitemUpdatedEvent Invoiceitem
  | -- | Occurs whenever an authorization is created.
    IssuingAuthorizationCreatedEvent Issuing'authorization
  | -- | Represents a synchronous request for authorization, see Using your integration to handle authorization requests. You must create a webhook endpoint which explicitly subscribes to this event type to access it. Webhook endpoints which subscribe to all events will not include this event type.
    IssuingAuthorizationRequestEvent Issuing'authorization
  | -- | Occurs whenever an authorization is updated.
    IssuingAuthorizationUpdatedEvent Issuing'authorization
  | -- | Occurs whenever a card is created.
    IssuingCardCreatedEvent Issuing'card
  | -- | Occurs whenever a card is updated.
    IssuingCardUpdatedEvent Issuing'card
  | -- | Occurs whenever a cardholder is created.
    IssuingCardholderCreatedEvent Issuing'cardholder
  | -- | Occurs whenever a cardholder is updated.
    IssuingCardholderUpdatedEvent Issuing'cardholder
  | -- | Occurs whenever a dispute is won, lost or expired.
    IssuingDisputeClosedEvent Issuing'dispute
  | -- | Occurs whenever a dispute is created.
    IssuingDisputeCreatedEvent Issuing'dispute
  | -- | Occurs whenever funds are reinstated to your account for an Issuing dispute.
    IssuingDisputeFundsReinstatedEvent Issuing'dispute
  | -- | Occurs whenever a dispute is submitted.
    IssuingDisputeSubmittedEvent Issuing'dispute
  | -- | Occurs whenever a dispute is updated.
    IssuingDisputeUpdatedEvent Issuing'dispute
  | -- | Occurs whenever an issuing transaction is created.
    IssuingTransactionCreatedEvent Issuing'transaction
  | -- | Occurs whenever an issuing transaction is updated.
    IssuingTransactionUpdatedEvent Issuing'transaction
  | -- | Occurs whenever a Mandate is updated.
    MandateUpdatedEvent Mandate
  | -- | Occurs whenever an order is created.
    OrderCreatedEvent Order
  | -- | Occurs whenever an order payment attempt fails.
    OrderPaymentFailedEvent Order
  | -- | Occurs whenever an order payment attempt succeeds.
    OrderPaymentSucceededEvent Order
  | -- | Occurs whenever an order is updated.
    OrderUpdatedEvent Order
  | -- | Occurs whenever an order return is created.
    OrderReturnCreatedEvent Aeson.Object
  | -- | Occurs when a PaymentIntent has funds to be captured. Check the amount_capturable property on the PaymentIntent to determine the amount that can be captured. You may capture the PaymentIntent with an amount_to_capture value up to the specified amount. Learn more about capturing PaymentIntents.
    PaymentIntentAmountCapturableUpdatedEvent PaymentIntent
  | -- | Occurs when a PaymentIntent is canceled.
    PaymentIntentCanceledEvent PaymentIntent
  | -- | Occurs when a new PaymentIntent is created.
    PaymentIntentCreatedEvent PaymentIntent
  | -- | Occurs when funds are applied to a customer_balance PaymentIntent and the ‘amount_remaining’ changes.
    PaymentIntentPartiallyFundedEvent PaymentIntent
  | -- | Occurs when a PaymentIntent has failed the attempt to create a payment method or a payment.
    PaymentIntentPaymentFailedEvent PaymentIntent
  | -- | Occurs when a PaymentIntent has started processing.
    PaymentIntentProcessingEvent PaymentIntent
  | -- | Occurs when a PaymentIntent transitions to requires_action state
    PaymentIntentRequiresActionEvent PaymentIntent
  | -- | Occurs when a PaymentIntent has successfully completed payment.
    PaymentIntentSucceededEvent PaymentIntent
  | -- | Occurs when a payment link is created.
    PaymentLinkCreatedEvent PaymentLink
  | -- | Occurs when a payment link is updated.
    PaymentLinkUpdatedEvent PaymentLink
  | -- | Occurs whenever a new payment method is attached to a customer.
    PaymentMethodAttachedEvent PaymentMethod
  | -- | Occurs whenever a payment method’s details are automatically updated by the network.
    PaymentMethodAutomaticallyUpdatedEvent PaymentMethod
  | -- | Occurs whenever a payment method is detached from a customer.
    PaymentMethodDetachedEvent PaymentMethod
  | -- | Occurs whenever a payment method is updated via the PaymentMethod update API.
    PaymentMethodUpdatedEvent PaymentMethod
  | -- | Occurs whenever a payout is canceled.
    PayoutCanceledEvent Payout
  | -- | Occurs whenever a payout is created.
    PayoutCreatedEvent Payout
  | -- | Occurs whenever a payout attempt fails.
    PayoutFailedEvent Payout
  | -- | Occurs whenever a payout is expected to be available in the destination account. If the payout fails, a payout.failed notification is also sent, at a later time.
    PayoutPaidEvent Payout
  | -- | Occurs whenever a payout is updated.
    PayoutUpdatedEvent Payout
  | -- | Occurs whenever a person associated with an account is created.
    PersonCreatedEvent Person
  | -- | Occurs whenever a person associated with an account is deleted.
    PersonDeletedEvent Person
  | -- | Occurs whenever a person associated with an account is updated.
    PersonUpdatedEvent Person
  | -- | Occurs whenever a plan is created.
    PlanCreatedEvent Plan
  | -- | Occurs whenever a plan is deleted.
    PlanDeletedEvent Plan
  | -- | Occurs whenever a plan is updated.
    PlanUpdatedEvent Plan
  | -- | Occurs whenever a price is created.
    PriceCreatedEvent Price
  | -- | Occurs whenever a price is deleted.
    PriceDeletedEvent Price
  | -- | Occurs whenever a price is updated.
    PriceUpdatedEvent Price
  | -- | Occurs whenever a product is created.
    ProductCreatedEvent Product
  | -- | Occurs whenever a product is deleted.
    ProductDeletedEvent Product
  | -- | Occurs whenever a product is updated.
    ProductUpdatedEvent Product
  | -- | Occurs whenever a promotion code is created.
    PromotionCodeCreatedEvent PromotionCode
  | -- | Occurs whenever a promotion code is updated.
    PromotionCodeUpdatedEvent PromotionCode
  | -- | Occurs whenever a quote is accepted.
    QuoteAcceptedEvent Quote
  | -- | Occurs whenever a quote is canceled.
    QuoteCanceledEvent Quote
  | -- | Occurs whenever a quote is created.
    QuoteCreatedEvent Quote
  | -- | Occurs whenever a quote is finalized.
    QuoteFinalizedEvent Quote
  | -- | Occurs whenever an early fraud warning is created.
    RadarEarlyFraudWarningCreatedEvent Radar'earlyFraudWarning
  | -- | Occurs whenever an early fraud warning is updated.
    RadarEarlyFraudWarningUpdatedEvent Radar'earlyFraudWarning
  | -- | Occurs whenever a recipient is created.
    RecipientCreatedEvent Recipient
  | -- | Occurs whenever a recipient is deleted.
    RecipientDeletedEvent Recipient
  | -- | Occurs whenever a recipient is updated.
    RecipientUpdatedEvent Recipient
  | -- | Occurs whenever a requested ReportRun failed to complete.
    ReportingReportRunFailedEvent Reporting'reportRun
  | -- | Occurs whenever a requested ReportRun completed succesfully.
    ReportingReportRunSucceededEvent Reporting'reportRun
  | -- | Occurs whenever a ReportType is updated (typically to indicate that a new day’s data has come available). You must create a webhook endpoint which explicitly subscribes to this event type to access it. Webhook endpoints which subscribe to all events will not include this event type.
    ReportingReportTypeUpdatedEvent Reporting'reportType
  | -- | Occurs whenever a review is closed. The review’s reason field indicates why: approved, disputed, refunded, or refunded_as_fraud.
    ReviewClosedEvent Review
  | -- | Occurs whenever a review is opened.
    ReviewOpenedEvent Review
  | -- | Occurs when a SetupIntent is canceled.
    SetupIntentCanceledEvent SetupIntent
  | -- | Occurs when a new SetupIntent is created.
    SetupIntentCreatedEvent SetupIntent
  | -- | Occurs when a SetupIntent is in requires_action state.
    SetupIntentRequiresActionEvent SetupIntent
  | -- | Occurs when a SetupIntent has failed the attempt to setup a payment method.
    SetupIntentSetupFailedEvent SetupIntent
  | -- | Occurs when an SetupIntent has successfully setup a payment method.
    SetupIntentSucceededEvent SetupIntent
  | -- | Occurs whenever a Sigma scheduled query run finishes.
    SigmaScheduledQueryRunCreatedEvent ScheduledQueryRun
  | -- | Occurs whenever a SKU is created.
    SkuCreatedEvent Sku
  | -- | Occurs whenever a SKU is deleted.
    SkuDeletedEvent Sku
  | -- | Occurs whenever a SKU is updated.
    SkuUpdatedEvent Sku
  | -- | Occurs whenever a source is canceled.
    SourceCanceledEvent Source
  | -- | Occurs whenever a source transitions to chargeable.
    SourceChargeableEvent Source
  | -- | Occurs whenever a source fails.
    SourceFailedEvent Source
  | -- | Occurs whenever a source mandate notification method is set to manual.
    SourceMandateNotificationEvent Source
  | -- | Occurs whenever the refund attributes are required on a receiver source to process a refund or a mispayment.
    SourceRefundAttributesRequiredEvent Source
  | -- | Occurs whenever a source transaction is created.
    SourceTransactionCreatedEvent SourceTransaction
  | -- | Occurs whenever a source transaction is updated.
    SourceTransactionUpdatedEvent SourceTransaction
  | -- | Occurs whenever a subscription schedule is canceled due to the underlying subscription being canceled because of delinquency.
    SubscriptionScheduleAbortedEvent SubscriptionSchedule
  | -- | Occurs whenever a subscription schedule is canceled.
    SubscriptionScheduleCanceledEvent SubscriptionSchedule
  | -- | Occurs whenever a new subscription schedule is completed.
    SubscriptionScheduleCompletedEvent SubscriptionSchedule
  | -- | Occurs whenever a new subscription schedule is created.
    SubscriptionScheduleCreatedEvent SubscriptionSchedule
  | -- | Occurs 7 days before a subscription schedule will expire.
    SubscriptionScheduleExpiringEvent SubscriptionSchedule
  | -- | Occurs whenever a new subscription schedule is released.
    SubscriptionScheduleReleasedEvent SubscriptionSchedule
  | -- | Occurs whenever a subscription schedule is updated.
    SubscriptionScheduleUpdatedEvent SubscriptionSchedule
  | -- | Occurs whenever a new tax rate is created.
    TaxRateCreatedEvent TaxRate
  | -- | Occurs whenever a tax rate is updated.
    TaxRateUpdatedEvent TaxRate
  | -- | Occurs whenever an action sent to a Terminal reader failed.
    TerminalReaderActionFailedEvent Terminal'reader
  | -- | Occurs whenever an action sent to a Terminal reader was successful.
    TerminalReaderActionSucceededEvent Terminal'reader
  | -- | Occurs whenever a test clock starts advancing.
    TestHelpersTestClockAdvancingEvent TestHelpers'testClock
  | -- | Occurs whenever a test clock is created.
    TestHelpersTestClockCreatedEvent TestHelpers'testClock
  | -- | Occurs whenever a test clock is deleted.
    TestHelpersTestClockDeletedEvent TestHelpers'testClock
  | -- | Occurs whenever a test clock fails to advance its frozen time.
    TestHelpersTestClockInternalFailureEvent TestHelpers'testClock
  | -- | Occurs whenever a test clock transitions to a ready status.
    TestHelpersTestClockReadyEvent TestHelpers'testClock
  | -- | Occurs whenever a top-up is canceled.
    TopupCanceledEvent Topup
  | -- | Occurs whenever a top-up is created.
    TopupCreatedEvent Topup
  | -- | Occurs whenever a top-up fails.
    TopupFailedEvent Topup
  | -- | Occurs whenever a top-up is reversed.
    TopupReversedEvent Topup
  | -- | Occurs whenever a top-up succeeds.
    TopupSucceededEvent Topup
  | -- | Occurs whenever a transfer is created.
    TransferCreatedEvent Transfer
  | -- | Occurs whenever a transfer failed.
    TransferFailedEvent Transfer
  | -- | Occurs after a transfer is paid. For Instant Payouts, the event will typically be sent within 30 minutes.
    TransferPaidEvent Transfer
  | -- | Occurs whenever a transfer is reversed, including partial reversals.
    TransferReversedEvent Transfer
  | -- | Occurs whenever a transfer’s description or metadata is updated.
    TransferUpdatedEvent Transfer
  | UnknownEvent Text
