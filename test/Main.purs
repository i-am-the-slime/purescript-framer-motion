module Test.Main where

import Prelude

import Effect (Effect)
import Effect.Aff (launchAff_)
import Effect.Class.Console (log)
import Test.Spec.Reporter.Console (consoleReporter)
import Test.Spec.Runner (runSpec)
import Test.LayoutIdSpec as LayoutIdSpec
import Test.SimpleSpec as SimpleSpec

main :: Effect Unit
main = do
  log "🧪 Starting PureScript Motion Tests..."
  launchAff_ do
    runSpec [ consoleReporter ] do
      SimpleSpec.spec
      LayoutIdSpec.spec
    log "✅ All tests complete!"
