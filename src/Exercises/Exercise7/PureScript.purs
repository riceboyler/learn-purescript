module Exercises.Exercise7.PureScript where

import Internal

import Data.Maybe (Maybe(..))
import Exercises.Exercise7.JavaScript as JavaScript

plus :: Int -> Int -> Int
plus x y = x + y

-- 2 `plus` 3 is the same as plus 2 3

-- TODO: Implement `maybeAdd2` to do the same as the JavaScript implementation using add2
-- in `JavaScript.js` file:
addXY :: Maybe Int -> Maybe Int -> Maybe Int
addXY mx my = do
  x <- mx
  y <- my
  Just (x + y)

main :: Effect Unit
main = quickCheck \mx my ->
  assertEqual (addXY mx my) (JavaScript.addXY mx my) {mx, my}
