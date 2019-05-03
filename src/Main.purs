module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log, logShow)

main :: Effect Unit
main = do
  log "Hello World"
  logShow { hello: "world" }
