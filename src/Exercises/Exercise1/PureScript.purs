module Exercises.Exercise1.PureScript where

import Internal
import Exercises.Exercise1.JavaScript as JavaScript

-- TODO: Add imports required (if any) for exercise here:
import Data.Maybe (Maybe(..))


-- TODO: Implement `add2` to do the same as the JavaScript implementation
-- in `JavaScript.js` file:
add2 :: Maybe Int -> Maybe Int
add2 _ = Nothing


main :: Effect Unit
main = quickCheck \n ->
  assertEqual (add2 n) (JavaScript.add2 n) n
