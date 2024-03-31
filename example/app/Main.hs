module Main where

import qualified Data.Text as T
import StripeHandling

main :: IO ()
main = do
  result <- getCheckoutSessionId
  putStrLn result
