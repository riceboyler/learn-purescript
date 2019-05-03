module Exercise1 where

import Prelude

import Data.Maybe (Maybe(..))
import Effect (Effect)
import Effect.Console (logShow)

main :: Effect Unit
main = do
  logShow $ map (\x -> x + 2) (Just 2)
  logShow $ map (_ + 2)       (Just 2)
