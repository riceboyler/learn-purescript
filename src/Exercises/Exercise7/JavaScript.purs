module Exercises.Exercise7.JavaScript where

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe, toNullable)
import Data.Function.Uncurried (Fn2, runFn2)


addXY :: Maybe Int -> Maybe Int -> Maybe Int
addXY x y = toMaybe (runFn2 addXY_ (toNullable x) (toNullable y))

foreign import addXY_ :: Fn2 (Nullable Int) (Nullable Int) (Nullable Int)
