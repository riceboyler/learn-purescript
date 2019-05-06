module Exercises.Exercise1.PureScript where

import Internal

import Data.Maybe (Maybe(..))
import Exercises.Exercise1.JavaScript as JavaScript

-- data Maybe a = Nothing | Just a
--      ^^^^^
--      type name
--                ^^^^^^^^
--                first constructor
--                          ^^^^^^^^
--                          second constructor

-- TODO: Implement `add2` to do the same as the JavaScript implementation
-- in `JavaScript.js` file:
add2 :: Maybe Int -> Maybe Int
add2 (Just number) = Just (number + 2)
add2 Nothing = Nothing

main :: Effect Unit
main = quickCheck \n ->
  assertEqual (add2 n) (JavaScript.add2 n) n
