{-# LANGUAGE OverloadedStrings #-}

module StripeHandling where

import qualified Control.Monad.IO.Class as MIO
import qualified Data.ByteString.Char8 as B8
import qualified Data.Either as Either
import qualified Data.Maybe as Maybe
import qualified Data.Text as T
import qualified Network.HTTP.Simple as HS
import qualified StripeAPI as Stripe

stripeAPIKey :: T.Text
stripeAPIKey = "sk_test_XXXXXXXXXX" -- Insert your API key here

paymentIntentRequestBody =
  Stripe.mkPostPaymentIntentsRequestBody 1000 "CHF"

checkoutLineItem =
  (Stripe.mkPostCheckoutSessionsRequestBodyLineItems' 4)
    { Stripe.postCheckoutSessionsRequestBodyLineItems'Amount = Just 1000,
      Stripe.postCheckoutSessionsRequestBodyLineItems'Currency = Just "CHF",
      Stripe.postCheckoutSessionsRequestBodyLineItems'Description = Just "algebrai&c data types",
      Stripe.postCheckoutSessionsRequestBodyLineItems'Name = Just "static types"
    }

checkoutLineItem2 =
  (Stripe.mkPostCheckoutSessionsRequestBodyLineItems' 2)
    { Stripe.postCheckoutSessionsRequestBodyLineItems'Amount = Just 5000,
      Stripe.postCheckoutSessionsRequestBodyLineItems'Currency = Just "CHF",
      Stripe.postCheckoutSessionsRequestBodyLineItems'Description = Just "lambda calculus",
      Stripe.postCheckoutSessionsRequestBodyLineItems'Name = Just "Haskell"
    }

checkoutSession =
  ( Stripe.mkPostCheckoutSessionsRequestBody
      "https://localhost:8080/payments/index.html?success=false&sessionId={CHECKOUT_SESSION_ID}"
      [Stripe.PostCheckoutSessionsRequestBodyPaymentMethodTypes'EnumCard]
      "https://localhost:8080/payments/index.html?success=true&sessionId={CHECKOUT_SESSION_ID}"
  )
    { Stripe.postCheckoutSessionsRequestBodyLineItems = Just [checkoutLineItem, checkoutLineItem2]
    }

testCustomer =
  Stripe.mkPostCustomersRequestBody
    { Stripe.postCustomersRequestBodyName = Just "Tester for OpenAPI Code Generator"
    }

defaultConf = Stripe.defaultConfiguration

config =
  Stripe.basicAuthenticationSecurityScheme
    Stripe.BasicAuthenticationData
      { Stripe.basicAuthenticationDataUsername = stripeAPIKey,
        Stripe.basicAuthenticationDataPassword = ""
      }

conf = defaultConf {Stripe.configSecurityScheme = config}

getCheckoutSessionId :: IO String
getCheckoutSessionId = do
  putStrLn "getCheckoutSessionId"
  resp <- Stripe.runWithConfiguration conf $ Stripe.postCheckoutSessions checkoutSession
  print resp
  pure $ T.unpack $ case HS.getResponseBody resp of
    Stripe.PostCheckoutSessionsResponse200 session ->
      Stripe.checkout'sessionId session
    _ -> "wrong type of response"

readSession :: String -> IO (Either String Stripe.Checkout'session)
readSession sessionId = Stripe.runWithConfiguration conf $ do
  MIO.liftIO $ putStrLn $ "readSession " <> sessionId
  resp <-
    Stripe.getCheckoutSessionsSession
      $ Stripe.mkGetCheckoutSessionsSessionParameters
      $ T.pack sessionId
  MIO.liftIO $ print resp
  case HS.getResponseBody resp of
    Stripe.GetCheckoutSessionsSessionResponse200 session ->
      let variants = Stripe.checkout'sessionPaymentIntent session
       in case variants of
            Just (Stripe.Checkout'sessionPaymentIntent'Text paymentIntentId) -> do
              paymentIntent <-
                Stripe.getPaymentIntentsIntent
                  (Stripe.mkGetPaymentIntentsIntentParameters paymentIntentId)
              case HS.getResponseBody paymentIntent of
                Stripe.GetPaymentIntentsIntentResponse200 paymentIntent ->
                  pure $ Right (session {Stripe.checkout'sessionPaymentIntent = Just $ Stripe.Checkout'sessionPaymentIntent'PaymentIntent paymentIntent})
                _ -> pure $ Right session
            _ -> pure $ Right session
    _ -> pure $ Left "wrong type of response"

makePaymentIntentCall :: IO String
makePaymentIntentCall = do
  putStrLn "makePaymentIntentCall"
  resp <- Stripe.runWithConfiguration conf $ Stripe.postPaymentIntents paymentIntentRequestBody
  print resp
  pure $ show $ HS.getResponseBody resp

getPaymentIntentCallSecret :: IO String
getPaymentIntentCallSecret =
  let trans response = T.unpack $ case HS.getResponseBody response of
        Stripe.PostPaymentIntentsResponse200 paymentIntent ->
          Maybe.fromMaybe "no secret given" (Stripe.paymentIntentClientSecret paymentIntent)
        _ -> "invalid response"
   in do
        putStrLn "getPaymentIntentCallSecret"
        resp <- Stripe.runWithConfiguration conf $ Stripe.postPaymentIntents paymentIntentRequestBody
        print resp
        pure $ trans resp

-- for SEPA. A customer has to be created
getPaymentIntentSepaCallSecret :: IO String
getPaymentIntentSepaCallSecret =
  let trans response = T.unpack $ case HS.getResponseBody response of
        Stripe.PostPaymentIntentsResponse200 paymentIntent ->
          Maybe.fromMaybe "no secret given" (Stripe.paymentIntentClientSecret paymentIntent)
        Stripe.PostPaymentIntentsResponseDefault error -> Maybe.fromMaybe "payment intent failed, no error message available" $ Stripe.apiErrorsMessage $ Stripe.errorError error
        Stripe.PostPaymentIntentsResponseError error -> T.pack error
   in Stripe.runWithConfiguration conf $ do
        MIO.liftIO $ putStrLn "getPaymentIntentCallSecret"
        respCustomer <- Stripe.postCustomers (Just testCustomer)
        MIO.liftIO $ print respCustomer
        case HS.getResponseBody respCustomer of
          Stripe.PostCustomersResponse200 customer -> do
            resp <-
              Stripe.postPaymentIntents
                paymentIntentRequestBody
                  { Stripe.postPaymentIntentsRequestBodyCustomer = Just $ Stripe.customerId customer,
                    Stripe.postPaymentIntentsRequestBodyPaymentMethodTypes = Just ["card", "sepa_debit"],
                    Stripe.postPaymentIntentsRequestBodyCurrency = "EUR",
                    Stripe.postPaymentIntentsRequestBodySetupFutureUsage = Just Stripe.PostPaymentIntentsRequestBodySetupFutureUsage'EnumOffSession
                  }
            MIO.liftIO $ print resp
            pure $ trans resp
          _ -> pure "response was not a success"
