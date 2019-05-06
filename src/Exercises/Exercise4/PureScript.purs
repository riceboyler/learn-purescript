module Exercises.Exercise4.PureScript where

import Internal

import Data.Maybe (Maybe(..))
import Exercises.Exercise4.JavaScript as JavaScript

-- TODO: Implement `maybeAdd2` to do the same as the JavaScript implementation using add2
-- in `JavaScript.js` file:
addXY :: Maybe Int -> Maybe Int -> Maybe Int
addXY mx my =
  case mx of
    Nothing ->
      Nothing
    Just x ->
      case my of
        Nothing ->
          Nothing
        Just y ->
          Just (x + y)

main :: Effect Unit
main = quickCheck \x y ->
  assertEqual (JavaScript.addXY x y) (addXY x y) {x, y}
