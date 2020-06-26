{-# LANGUAGE OverloadedStrings #-}

module StripeHandling where

import qualified Control.Monad.IO.Class as MIO
import qualified Data.ByteString.Char8 as B8
import qualified Data.Either as Either
import qualified Data.Maybe as Maybe
import qualified Data.Text as T
import qualified Network.HTTP.Simple as HS
import qualified StripeAPI.Common as Common
import qualified StripeAPI.Configuration as Config
import qualified StripeAPI.Operations.GetCheckoutSessionsSession as OpGetCheckout
import qualified StripeAPI.Operations.GetPaymentIntentsIntent as OpGetPaymentIntent
import qualified StripeAPI.Operations.PostCheckoutSessions as OpCheckout
import qualified StripeAPI.Operations.PostCustomers as OpCustomer
import qualified StripeAPI.Operations.PostPaymentIntents as OpPaymentIntent
import qualified StripeAPI.SecuritySchemes as Security
import qualified StripeAPI.Types as Types

stripeAPIKey :: T.Text
stripeAPIKey = "sk_test_XXXXXXXXXX" -- Insert your API key here

paymentIntentRequestBody :: OpPaymentIntent.PostPaymentIntentsRequestBody
paymentIntentRequestBody =
  OpPaymentIntent.PostPaymentIntentsRequestBody
    { OpPaymentIntent.postPaymentIntentsRequestBodyAmount = 1000,
      OpPaymentIntent.postPaymentIntentsRequestBodyApplicationFeeAmount = Nothing,
      OpPaymentIntent.postPaymentIntentsRequestBodyCaptureMethod = Nothing,
      OpPaymentIntent.postPaymentIntentsRequestBodyConfirm = Nothing,
      OpPaymentIntent.postPaymentIntentsRequestBodyConfirmationMethod = Nothing,
      OpPaymentIntent.postPaymentIntentsRequestBodyCurrency = "CHF",
      OpPaymentIntent.postPaymentIntentsRequestBodyCustomer = Nothing,
      OpPaymentIntent.postPaymentIntentsRequestBodyDescription = Nothing,
      OpPaymentIntent.postPaymentIntentsRequestBodyErrorOnRequiresAction = Nothing,
      OpPaymentIntent.postPaymentIntentsRequestBodyExpand = Nothing,
      OpPaymentIntent.postPaymentIntentsRequestBodyMandate = Nothing,
      OpPaymentIntent.postPaymentIntentsRequestBodyMandateData = Nothing,
      OpPaymentIntent.postPaymentIntentsRequestBodyMetadata = Nothing,
      OpPaymentIntent.postPaymentIntentsRequestBodyOffSession = Nothing,
      OpPaymentIntent.postPaymentIntentsRequestBodyOnBehalfOf = Nothing,
      OpPaymentIntent.postPaymentIntentsRequestBodyPaymentMethod = Nothing,
      OpPaymentIntent.postPaymentIntentsRequestBodyPaymentMethodOptions = Nothing,
      OpPaymentIntent.postPaymentIntentsRequestBodyPaymentMethodTypes = Nothing,
      OpPaymentIntent.postPaymentIntentsRequestBodyReceiptEmail = Nothing,
      OpPaymentIntent.postPaymentIntentsRequestBodyReturnUrl = Nothing,
      OpPaymentIntent.postPaymentIntentsRequestBodySavePaymentMethod = Nothing,
      OpPaymentIntent.postPaymentIntentsRequestBodySetupFutureUsage = Nothing,
      OpPaymentIntent.postPaymentIntentsRequestBodyShipping = Nothing,
      OpPaymentIntent.postPaymentIntentsRequestBodyStatementDescriptor = Nothing,
      OpPaymentIntent.postPaymentIntentsRequestBodyStatementDescriptorSuffix = Nothing,
      OpPaymentIntent.postPaymentIntentsRequestBodyTransferData = Nothing,
      OpPaymentIntent.postPaymentIntentsRequestBodyTransferGroup = Nothing,
      OpPaymentIntent.postPaymentIntentsRequestBodyUseStripeSdk = Nothing
    }

checkoutLineItem =
  OpCheckout.PostCheckoutSessionsRequestBodyLineItems'
    { OpCheckout.postCheckoutSessionsRequestBodyLineItems'Amount = Just 1000,
      OpCheckout.postCheckoutSessionsRequestBodyLineItems'Currency = Just "CHF",
      OpCheckout.postCheckoutSessionsRequestBodyLineItems'Description = Just "algebraic data types",
      OpCheckout.postCheckoutSessionsRequestBodyLineItems'Images = Nothing,
      OpCheckout.postCheckoutSessionsRequestBodyLineItems'Name = Just "static types",
      OpCheckout.postCheckoutSessionsRequestBodyLineItems'Quantity = 4,
      OpCheckout.postCheckoutSessionsRequestBodyLineItems'TaxRates = Nothing
    }

checkoutLineItem2 =
  OpCheckout.PostCheckoutSessionsRequestBodyLineItems'
    { OpCheckout.postCheckoutSessionsRequestBodyLineItems'Amount = Just 5000,
      OpCheckout.postCheckoutSessionsRequestBodyLineItems'Currency = Just "CHF",
      OpCheckout.postCheckoutSessionsRequestBodyLineItems'Description = Just "lambda calculus",
      OpCheckout.postCheckoutSessionsRequestBodyLineItems'Images = Nothing,
      OpCheckout.postCheckoutSessionsRequestBodyLineItems'Name = Just "Haskell",
      OpCheckout.postCheckoutSessionsRequestBodyLineItems'Quantity = 2,
      OpCheckout.postCheckoutSessionsRequestBodyLineItems'TaxRates = Nothing
    }

checkoutSession =
  OpCheckout.PostCheckoutSessionsRequestBody
    { OpCheckout.postCheckoutSessionsRequestBodyBillingAddressCollection = Nothing,
      OpCheckout.postCheckoutSessionsRequestBodyCancelUrl = "https://localhost:8080/payments/index.html?success=false&sessionId={CHECKOUT_SESSION_ID}",
      OpCheckout.postCheckoutSessionsRequestBodyClientReferenceId = Nothing,
      OpCheckout.postCheckoutSessionsRequestBodyCustomer = Nothing,
      OpCheckout.postCheckoutSessionsRequestBodyCustomerEmail = Nothing,
      OpCheckout.postCheckoutSessionsRequestBodyExpand = Nothing,
      OpCheckout.postCheckoutSessionsRequestBodyLineItems = Just [checkoutLineItem, checkoutLineItem2],
      OpCheckout.postCheckoutSessionsRequestBodyLocale = Nothing,
      OpCheckout.postCheckoutSessionsRequestBodyMetadata = Nothing,
      OpCheckout.postCheckoutSessionsRequestBodyMode = Nothing,
      OpCheckout.postCheckoutSessionsRequestBodyPaymentIntentData = Nothing,
      OpCheckout.postCheckoutSessionsRequestBodyPaymentMethodTypes = [OpCheckout.PostCheckoutSessionsRequestBodyPaymentMethodTypes'EnumStringCard],
      OpCheckout.postCheckoutSessionsRequestBodySetupIntentData = Nothing,
      OpCheckout.postCheckoutSessionsRequestBodySubmitType = Nothing,
      OpCheckout.postCheckoutSessionsRequestBodySubscriptionData = Nothing,
      OpCheckout.postCheckoutSessionsRequestBodySuccessUrl = "https://localhost:8080/payments/index.html?success=true&sessionId={CHECKOUT_SESSION_ID}"
    }

testCustomer =
  OpCustomer.PostCustomersRequestBody
    { OpCustomer.postCustomersRequestBodyAddress = Nothing,
      OpCustomer.postCustomersRequestBodyBalance = Nothing,
      OpCustomer.postCustomersRequestBodyCoupon = Nothing,
      OpCustomer.postCustomersRequestBodyDescription = Nothing,
      OpCustomer.postCustomersRequestBodyEmail = Nothing,
      OpCustomer.postCustomersRequestBodyExpand = Nothing,
      OpCustomer.postCustomersRequestBodyInvoicePrefix = Nothing,
      OpCustomer.postCustomersRequestBodyInvoiceSettings = Nothing,
      OpCustomer.postCustomersRequestBodyMetadata = Nothing,
      OpCustomer.postCustomersRequestBodyName = Just "Tester for OpenAPI Code Generator",
      OpCustomer.postCustomersRequestBodyNextInvoiceSequence = Nothing,
      OpCustomer.postCustomersRequestBodyPaymentMethod = Nothing,
      OpCustomer.postCustomersRequestBodyPhone = Nothing,
      OpCustomer.postCustomersRequestBodyPreferredLocales = Nothing,
      OpCustomer.postCustomersRequestBodyShipping = Nothing,
      OpCustomer.postCustomersRequestBodySource = Nothing,
      OpCustomer.postCustomersRequestBodyTaxExempt = Nothing,
      OpCustomer.postCustomersRequestBodyTaxIdData = Nothing
    }

defaultConf = Config.defaultConfiguration

security =
  Security.basicAuthenticationSecurityScheme
    Security.BasicAuthenticationData
      { Security.basicAuthenticationDataUsername = stripeAPIKey,
        Security.basicAuthenticationDataPassword = ""
      }

conf = defaultConf {Common.configSecurityScheme = security}

getCheckoutSessionId :: IO String
getCheckoutSessionId = do
  putStrLn "getCheckoutSessionId"
  resp <- Common.runWithConfiguration conf $ OpCheckout.postCheckoutSessions checkoutSession
  print resp
  pure $ T.unpack $ case HS.getResponseBody resp of
    OpCheckout.PostCheckoutSessionsResponse200 session ->
      Types.checkout'sessionId session
    _ -> "wrong type of response"

readSession :: String -> IO (Either String Types.Checkout'session)
readSession sessionId = Common.runWithConfiguration conf $ do
  MIO.liftIO $ putStrLn $ "readSession " <> sessionId
  resp <-
    OpGetCheckout.getCheckoutSessionsSession
      OpGetCheckout.GetCheckoutSessionsSessionParameters
        { OpGetCheckout.getCheckoutSessionsSessionParametersPathSession = T.pack sessionId,
          OpGetCheckout.getCheckoutSessionsSessionParametersQueryExpand = Nothing
        }
  MIO.liftIO $ print resp
  case HS.getResponseBody resp of
    OpGetCheckout.GetCheckoutSessionsSessionResponse200 session ->
      let variants = Types.checkout'sessionPaymentIntent session
       in case variants of
            Just (Types.Checkout'sessionPaymentIntent'Text paymentIntentId) -> do
              paymentIntent <-
                OpGetPaymentIntent.getPaymentIntentsIntent
                  OpGetPaymentIntent.GetPaymentIntentsIntentParameters
                    { OpGetPaymentIntent.getPaymentIntentsIntentParametersPathIntent = paymentIntentId,
                      OpGetPaymentIntent.getPaymentIntentsIntentParametersQueryClientSecret = Nothing,
                      OpGetPaymentIntent.getPaymentIntentsIntentParametersQueryExpand = Nothing
                    }
              case HS.getResponseBody paymentIntent of
                OpGetPaymentIntent.GetPaymentIntentsIntentResponse200 paymentIntent ->
                  pure $ Right (session {Types.checkout'sessionPaymentIntent = Just $ Types.Checkout'sessionPaymentIntent'PaymentIntent paymentIntent})
                _ -> pure $ Right session
            _ -> pure $ Right session
    _ -> pure $ Left "wrong type of response"

makePaymentIntentCall :: IO String
makePaymentIntentCall = do
  putStrLn "makePaymentIntentCall"
  resp <- Common.runWithConfiguration conf $ OpPaymentIntent.postPaymentIntents paymentIntentRequestBody
  print resp
  pure $ show $ HS.getResponseBody resp

getPaymentIntentCallSecret :: IO String
getPaymentIntentCallSecret =
  let trans response = T.unpack $ case HS.getResponseBody response of
        OpPaymentIntent.PostPaymentIntentsResponse200 paymentIntent ->
          Maybe.fromMaybe "no secret given" (Types.paymentIntentClientSecret paymentIntent)
        _ -> "invalid response"
   in do
        putStrLn "getPaymentIntentCallSecret"
        resp <- Common.runWithConfiguration conf $ OpPaymentIntent.postPaymentIntents paymentIntentRequestBody
        print resp
        pure $ trans resp

-- for SEPA. A customer has to be created
getPaymentIntentSepaCallSecret :: IO String
getPaymentIntentSepaCallSecret =
  let trans response = T.unpack $ case HS.getResponseBody response of
        OpPaymentIntent.PostPaymentIntentsResponse200 paymentIntent ->
          Maybe.fromMaybe "no secret given" (Types.paymentIntentClientSecret paymentIntent)
        OpPaymentIntent.PostPaymentIntentsResponseDefault error -> Maybe.fromMaybe "payment intent failed, no error message available" $ Types.apiErrorsMessage $ Types.errorError error
        OpPaymentIntent.PostPaymentIntentsResponseError error -> T.pack error
   in Common.runWithConfiguration conf $ do
        MIO.liftIO $ putStrLn "getPaymentIntentCallSecret"
        respCustomer <- OpCustomer.postCustomers (Just testCustomer)
        MIO.liftIO $ print respCustomer
        case HS.getResponseBody respCustomer of
          OpCustomer.PostCustomersResponse200 customer -> do
            resp <-
              OpPaymentIntent.postPaymentIntents
                paymentIntentRequestBody
                  { OpPaymentIntent.postPaymentIntentsRequestBodyCustomer = Just $ Types.customerId customer,
                    OpPaymentIntent.postPaymentIntentsRequestBodyPaymentMethodTypes = Just ["card", "sepa_debit"],
                    OpPaymentIntent.postPaymentIntentsRequestBodyCurrency = "EUR",
                    OpPaymentIntent.postPaymentIntentsRequestBodySetupFutureUsage = Just OpPaymentIntent.PostPaymentIntentsRequestBodySetupFutureUsage'EnumStringOffSession
                  }
            MIO.liftIO $ print resp
            pure $ trans resp
          _ -> pure "response was not a success"
