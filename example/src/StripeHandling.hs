{-# LANGUAGE LambdaCase #-}
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
  Stripe.mkPostCheckoutSessionsRequestBodyLineItems'
    { Stripe.postCheckoutSessionsRequestBodyLineItems'Quantity = Just 2,
      Stripe.postCheckoutSessionsRequestBodyLineItems'PriceData =
        Just $
          (Stripe.mkPostCheckoutSessionsRequestBodyLineItems'PriceData' "CHF")
            { Stripe.postCheckoutSessionsRequestBodyLineItems'PriceData'Product = Just "static types",
              Stripe.postCheckoutSessionsRequestBodyLineItems'PriceData'UnitAmount = Just 1000
            }
    }

checkoutLineItem2 =
  Stripe.mkPostCheckoutSessionsRequestBodyLineItems'
    { Stripe.postCheckoutSessionsRequestBodyLineItems'Quantity = Just 2,
      Stripe.postCheckoutSessionsRequestBodyLineItems'PriceData =
        Just $
          (Stripe.mkPostCheckoutSessionsRequestBodyLineItems'PriceData' "CHF")
            { Stripe.postCheckoutSessionsRequestBodyLineItems'PriceData'Product = Just "haskell",
              Stripe.postCheckoutSessionsRequestBodyLineItems'PriceData'UnitAmount = Just 5000
            }
    }

checkoutSession =
  Stripe.mkPostCheckoutSessionsRequestBody
    { Stripe.postCheckoutSessionsRequestBodySuccessUrl = Just "https://localhost:8080/payments/index.html?success=false&sessionId={CHECKOUT_SESSION_ID}",
      Stripe.postCheckoutSessionsRequestBodyCancelUrl = Just "https://localhost:8080/payments/index.html?success=true&sessionId={CHECKOUT_SESSION_ID}",
      Stripe.postCheckoutSessionsRequestBodyLineItems = Just [checkoutLineItem, checkoutLineItem2],
      Stripe.postCheckoutSessionsRequestBodyPaymentMethodTypes = Just [Stripe.PostCheckoutSessionsRequestBodyPaymentMethodTypes'EnumCard]
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
  resp <- Stripe.runWithConfiguration conf $ Stripe.postCheckoutSessions $ Just checkoutSession
  print resp
  pure $
    T.unpack $ case HS.getResponseBody resp of
      Stripe.PostCheckoutSessionsResponse200 session ->
        Stripe.checkout'sessionId session
      _ -> "wrong type of response"

readSession :: String -> IO (Either String Stripe.Checkout'session)
readSession sessionId = Stripe.runWithConfiguration conf $ do
  MIO.liftIO $ putStrLn $ "readSession " <> sessionId
  resp <-
    Stripe.getCheckoutSessionsSession $
      Stripe.mkGetCheckoutSessionsSessionParameters $
        T.pack sessionId
  MIO.liftIO $ print resp
  case HS.getResponseBody resp of
    Stripe.GetCheckoutSessionsSessionResponse200 session ->
      let variants = Stripe.checkout'sessionPaymentIntent session
       in case variants of
            Just (Stripe.NonNull (Stripe.Checkout'sessionPaymentIntent'NonNullableText paymentIntentId)) -> do
              paymentIntent <-
                Stripe.getPaymentIntentsIntent
                  (Stripe.mkGetPaymentIntentsIntentParameters paymentIntentId)
              case HS.getResponseBody paymentIntent of
                Stripe.GetPaymentIntentsIntentResponse200 paymentIntent ->
                  pure $ Right (session {Stripe.checkout'sessionPaymentIntent = Just $ Stripe.NonNull $ Stripe.Checkout'sessionPaymentIntent'NonNullablePaymentIntent paymentIntent})
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
          case Stripe.paymentIntentClientSecret paymentIntent of
            Just (Stripe.NonNull x) -> x
            Just Stripe.Null -> "no secret given"
            Nothing -> "no secret given"
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
          case Stripe.paymentIntentClientSecret paymentIntent of
            Just (Stripe.NonNull x) -> x
            Just Stripe.Null -> "no secret given"
            Nothing -> "no secret given"
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
