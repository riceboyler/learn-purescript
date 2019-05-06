module Exercises.Exercise5.PureScript where

import Internal

import Data.Maybe (Maybe(..))
import Exercises.Exercise5.JavaScript as JavaScript

andThen :: Maybe Int -> (Int -> Maybe Int) -> Maybe Int
andThen Nothing callback = Nothing
andThen (Just n) callback = callback n

-- plus :: Int -> Int -> Int
-- plus x y = x + y

-- 2 `plus` 3 is the same as plus 2 3

-- TODO: Implement `maybeAdd2` to do the same as the JavaScript implementation using add2
-- in `JavaScript.js` file:
addXY :: Maybe Int -> Maybe Int -> Maybe Int
addXY mx my =
  mx `andThen` -- (Just 488249) =>
    \x -> my `andThen`
      \y -> Just (x + y)

main :: Effect Unit
main = quickCheck \mx my ->
  assertEqual (addXY mx my) (JavaScript.addXY mx my) {mx, my}
