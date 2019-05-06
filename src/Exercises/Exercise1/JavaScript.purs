module Exercises.Exercise1.JavaScript where

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe, toNullable)


add2 :: Maybe Int -> Maybe Int
add2 x = toMaybe (add2_ (toNullable x))

foreign import add2_ :: Nullable Int -> Nullable Int
