module Exercise1 where

import Prelude

-- INTERNAL IMPORTS: PLEASE IGNORE
import Data.Nullable (Nullable, toMaybe, toNullable)
import Effect (Effect)
import Test.QuickCheck ((===), quickCheck)

-- Imports for exercise:
import Data.Maybe (Maybe(..))


-- TODO: Implement `maybAdd2` to do the same as the JavaScript implementation
-- in `Exercise1.js` file:
maybeAdd2 :: Maybe Int -> Maybe Int
maybeAdd2 _ = Nothing


main :: Effect Unit
main = quickCheck \n ->
  maybeAdd2 n === maybeAdd2JS n





















































-- INTERNAL: PLEASE IGNORE
-- JavaScript implementation
maybeAdd2JS :: Maybe Int -> Maybe Int
maybeAdd2JS x = toMaybe (maybeAdd2JS_ (toNullable x))

foreign import maybeAdd2JS_ :: Nullable Int -> Nullable Int
