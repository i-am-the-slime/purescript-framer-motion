module Test.LayoutIdSpec where

import Prelude

import Effect.Class (liftEffect)
import Motion (layoutId)
import Motion.Element as Motion
import React.TestingLibrary (render)
import Test.Spec (Spec, describe, it)

spec :: Spec Unit
spec = do
  describe "layoutId" do
    it "renders an element with layoutId" do
      let jsx = Motion.div { layoutId: layoutId "test-key", "data-testid": "laid-out" } "Hello"
      result <- liftEffect $ render jsx
      _ <- result.findByTestId "laid-out"
      pure unit
