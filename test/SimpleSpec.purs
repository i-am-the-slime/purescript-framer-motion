module Test.SimpleSpec where

import Prelude

import Data.Maybe (Maybe(..), isJust, isNothing)
import Effect.Class (liftEffect)
import Framer.Motion.MotionComponent as Motion
import Framer.Motion.Types (animate, initial)
import React.Basic.DOM as R
import React.Basic.Hooks (element)
import React.TestingLibrary (render)
import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual)

spec :: Spec Unit
spec = do
  describe "MotionComponent" do
    it "renders motion.div" do
      let jsx = element Motion.divImpl { "data-testid": "test-div", children: [ R.text "Hello" ] }
      result <- liftEffect $ render jsx
      el <- result.findByTestId "test-div"
      pure unit -- Test passes if we found the element

    it "renders motion.button" do
      let jsx = element Motion.buttonImpl { "data-testid": "test-button", children: [ R.text "Click" ] }
      result <- liftEffect $ render jsx
      el <- result.findByTestId "test-button"
      pure unit

    it "renders motion.span" do
      let jsx = element Motion.spanImpl { "data-testid": "test-span", children: [ R.text "Span" ] }
      result <- liftEffect $ render jsx
      el <- result.findByTestId "test-span"
      pure unit

    it "renders motion.input" do
      let jsx = element Motion.inputImpl { "data-testid": "test-input", "type": "text" }
      result <- liftEffect $ render jsx
      el <- result.findByTestId "test-input"
      pure unit

    it "renders motion.li" do
      let jsx = element Motion.liImpl { "data-testid": "test-li", children: [ R.text "Item" ] }
      result <- liftEffect $ render jsx
      el <- result.findByTestId "test-li"
      pure unit

  describe "SVG Components" do
    it "renders motion.svg" do
      let jsx = element Motion.svgImpl { "data-testid": "test-svg", children: [] }
      result <- liftEffect $ render jsx
      el <- result.findByTestId "test-svg"
      pure unit

    it "renders motion.path inside svg" do
      let
        jsx = element Motion.svgImpl
          { children:
              [ element Motion.pathImpl
                  { "data-testid": "test-path"
                  , d: "M 0 0 L 100 100"
                  }
              ]
          }
      result <- liftEffect $ render jsx
      el <- result.findByTestId "test-path"
      pure unit

    it "renders motion.g inside svg" do
      let
        jsx = element Motion.svgImpl
          { children:
              [ element Motion.gImpl
                  { "data-testid": "test-g"
                  , children: []
                  }
              ]
          }
      result <- liftEffect $ render jsx
      el <- result.findByTestId "test-g"
      pure unit

  describe "Query functions" do
    it "queryByTestId returns Just for existing element" do
      let jsx = element Motion.divImpl { "data-testid": "exists", children: [] }
      result <- liftEffect $ render jsx
      let maybeEl = result.queryByTestId "exists"
      isJust maybeEl `shouldEqual` true

    it "queryByTestId returns Nothing for non-existing element" do
      let jsx = element Motion.divImpl { "data-testid": "exists", children: [] }
      result <- liftEffect $ render jsx
      let maybeEl = result.queryByTestId "does-not-exist"
      isNothing maybeEl `shouldEqual` true
