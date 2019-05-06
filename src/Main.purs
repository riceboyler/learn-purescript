module Main where

import Internal
import Internal (main) as Runner

import Exercises.Exercise1.PureScript as Exercise1
import Exercises.Exercise2.PureScript as Exercise2
import Exercises.Exercise3.PureScript as Exercise3
import Exercises.Exercise4.PureScript as Exercise4
import Exercises.Exercise5.PureScript as Exercise5
import Exercises.Exercise6.PureScript as Exercise6
import Exercises.Exercise7.PureScript as Exercise7

allExercises :: Array (Effect Unit)
allExercises =
  [ Exercise1.main
  , Exercise2.main
  , Exercise3.main
  , Exercise4.main
  , Exercise5.main
  , Exercise6.main
  , Exercise7.main
  ]

main :: Effect Unit
main = Runner.main allExercises
