module Exercises.Exercise2.PureScript where

import Internal

import Data.Maybe (Maybe)
import Exercises.Exercise2.JavaScript as JavaScript


add2 :: Int -> Int
add2 number = number + 2

-- TODO: Implement `maybeAdd2` to do the same as the JavaScript implementation using add2
-- in `JavaScript.js` file:
maybeAdd2 :: Maybe Int -> Maybe Int
maybeAdd2 mNumber = map add2 mNumber

main :: Effect Unit
main = quickCheck \n ->
  assertEqual (maybeAdd2 n) (JavaScript.add2 n) n
