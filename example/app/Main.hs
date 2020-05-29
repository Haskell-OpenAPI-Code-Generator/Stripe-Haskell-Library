module Main where

import StripeHandling

main :: IO ()
main = do
    result <- getCheckoutSessionIdRaw
    putStrLn result
