module Main where

import qualified Data.Text as T
import StripeHandling

main :: IO ()
main = do
  result <- getCheckoutSessionEvents
  either (putStrLn . T.unpack) (mapM_ (putStrLn . T.unpack)) result
