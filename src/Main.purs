module Main where

import Prelude

import Effect (Effect)
import Internal.Runner as Runner

import Exercises.Exercise1.PureScript as Exercise1
import Exercise2 as Exercise2


allExercises :: Array (Effect Unit)
allExercises =
  [ Exercise1.main
  , Exercise2.main
  ]

main :: Effect Unit
main = Runner.main allExercises
