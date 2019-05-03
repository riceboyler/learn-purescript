module Internal.Runner
  ( main

  , runJavaScript
  , runPureScript
  ) where

import Prelude

import Data.Array (drop, length, mapWithIndex, (!!))
import Data.Either (Either(..))
import Data.Foldable (sequence_)
import Data.Int as Int
import Data.Maybe (Maybe(..))
import Data.String (joinWith)
import Effect (Effect)
import Effect.Console (log)
import Node.Process as Process

---

runSingle :: forall a. Show a => String -> a -> Effect Unit
runSingle label output = do
  log $ "========> " <> label <> ": " <> show output

runJavaScript :: forall a. Show a => a -> Effect Unit
runJavaScript = runSingle "JavaScript"

runPureScript :: forall a. Show a => a -> Effect Unit
runPureScript = runSingle "PureScript"

---

data Exercise
  = Specific Int
  | All

main :: Array (Effect Unit) -> Effect Unit
main allExercises = do
  args <- Process.argv
  let exercise = case args of
                    [_, _, ex] ->
                      case Int.fromString ex of
                        Just i | i >= 1 && i <= length allExercises ->
                          Right $ Specific i
                        _ ->
                          Left ex

                    [_, _] ->
                      Right All
                    x ->
                      Left $ joinWith " " $ drop 2 x

  case exercise of
    Right ex@(Specific i) ->
      case allExercises !! (i - 1) of
        Just e ->
          runExercise ex e
        Nothing ->
          log $ "FATAL: Invalid index"

    Right All ->
      sequence_ $ mapWithIndex (\i -> runExercise (Specific $ i + 1)) allExercises

    Left msg ->
      log $ "Unknown exercise: " <> msg

  where
    runExercise :: Exercise -> Effect Unit -> Effect Unit
    runExercise exercise action = do
      log "------------------------------------------------------------------------------"
      log $ message exercise
      log "------------------------------------------------------------------------------"
      action
      log ""

      where
        message (Specific i) = "Exercise " <> (show i)
        message All = "All exercises"
