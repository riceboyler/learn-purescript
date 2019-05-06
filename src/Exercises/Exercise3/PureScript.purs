module Exercises.Exercise3.PureScript where

import Internal

import Data.Maybe (Maybe(..))
import Exercises.Exercise3.JavaScript as JavaScript

-- TODO: Implement `maybeAdd2` to do the same as the JavaScript implementation using add2
-- in `JavaScript.js` file:
addXY :: Maybe Int -> Maybe Int -> Maybe Int
addXY (Just x) (Just y) = Just (x + y)
addXY _ _ = Nothing

main :: Effect Unit
main = quickCheck \x y ->
  assertEqual (JavaScript.addXY x y) (addXY x y) {x, y}
