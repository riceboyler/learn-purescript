module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import Node.Process as Process
import Global as Global
import Data.Int as Int

main :: Effect Unit
main = do
  args <- Process.argv
  let exercise = case args of
                    [_, _, ex] ->
                      Int.floor $ Global.readInt 10 ex
                    _ ->
                      0
  log $ "Run exercise " <> show exercise
