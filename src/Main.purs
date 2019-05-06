module Main where

import Internal
import Internal (main) as Runner

import Exercises.Exercise1.PureScript as Exercise1
import Exercises.Exercise2.PureScript as Exercise2
import Exercises.Exercise3.PureScript as Exercise3


allExercises :: Array (Effect Unit)
allExercises =
  [ Exercise1.main
  , Exercise2.main
  , Exercise3.main
  ]

main :: Effect Unit
main = Runner.main allExercises
