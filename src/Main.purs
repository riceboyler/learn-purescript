module Main where

import Prelude

import Data.Array (mapWithIndex)
import Data.Foldable (sequence_)
import Data.Formatter.Internal (repeat)
import Data.String as String
import Effect (Effect)
import Effect.Console (log)
import Node.Process as Process

import Exercise1 as Exercise1
import Exercise2 as Exercise2


allExercises :: Array (Effect Unit)
allExercises =
  [ Exercise1.main
  , Exercise2.main
  ]

main :: Effect Unit
main = do
  args <- Process.argv
  let exercise = case args of
                    [_, _, ex] ->
                      ex
                    _ ->
                      "all"

  case exercise of
    "1" ->
      run exercise Exercise1.main
    "all" ->
      sequence_ $ mapWithIndex (\i -> run $ show $ i + 1) allExercises
    _ ->
      log $ "Unknown exercise: " <> exercise

  where
    run exercise action = do
      let msg = "Run exercise: " <> exercise
      log msg
      log $ repeat "-" (String.length msg)
      action
      log ""
