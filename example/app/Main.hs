module Main where

import StripeHandling

main :: IO ()
main = do
  result <- getCheckoutSessionId
  putStrLn result
