module Main where

import Internal
import Internal (main) as Runner

import Exercises.Exercise1.PureScript as Exercise1


allExercises :: Array (Effect Unit)
allExercises =
  [ Exercise1.main
  ]

main :: Effect Unit
main = Runner.main allExercises
