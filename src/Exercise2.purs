module Exercise2 where

import Prelude

import Data.Maybe (Maybe(..))
import Effect (Effect)
import Effect.Console (logShow)

main :: Effect Unit
main = do
  logShow $ map (\x -> x + 2) (Just 3)
  logShow $ map (_ + 2)       (Just 6)
