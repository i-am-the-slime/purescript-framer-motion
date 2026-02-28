module Test.SimpleSpec where

import Prelude

import Data.Maybe (isJust, isNothing)
import Effect.Class (liftEffect)
import Framer.Motion.MotionComponent as Motion
import React.TestingLibrary (render)
import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual)

spec :: Spec Unit
spec = do
  describe "MotionComponent" do
    it "renders motion.div" do
      let jsx = Motion.div { "data-testid": "test-div" } "Hello"
      result <- liftEffect $ render jsx
      _ <- result.findByTestId "test-div"
      pure unit

    it "renders motion.button" do
      let jsx = Motion.button { "data-testid": "test-button" } "Click"
      result <- liftEffect $ render jsx
      _ <- result.findByTestId "test-button"
      pure unit

    it "renders motion.span" do
      let jsx = Motion.span { "data-testid": "test-span" } "Span"
      result <- liftEffect $ render jsx
      _ <- result.findByTestId "test-span"
      pure unit

    it "renders motion.input" do
      let jsx = Motion.input { "data-testid": "test-input" }
      result <- liftEffect $ render jsx
      _ <- result.findByTestId "test-input"
      pure unit

    it "renders motion.li" do
      let jsx = Motion.li { "data-testid": "test-li" } "Item"
      result <- liftEffect $ render jsx
      _ <- result.findByTestId "test-li"
      pure unit

  describe "SVG Components" do
    it "renders motion.svg" do
      let jsx = Motion.svg { "data-testid": "test-svg" } ([] :: Array _)
      result <- liftEffect $ render jsx
      _ <- result.findByTestId "test-svg"
      pure unit

    it "renders motion.path inside svg" do
      let
        jsx = Motion.svg {}
          [ Motion.path_ { "data-testid": "test-path" }
          ]
      result <- liftEffect $ render jsx
      _ <- result.findByTestId "test-path"
      pure unit

    it "renders motion.g inside svg" do
      let
        jsx = Motion.svg {}
          [ Motion.g { "data-testid": "test-g" } ([] :: Array _)
          ]
      result <- liftEffect $ render jsx
      _ <- result.findByTestId "test-g"
      pure unit

  describe "Query functions" do
    it "queryByTestId returns Just for existing element" do
      let jsx = Motion.div { "data-testid": "exists" } ([] :: Array _)
      result <- liftEffect $ render jsx
      let maybeEl = result.queryByTestId "exists"
      isJust maybeEl `shouldEqual` true

    it "queryByTestId returns Nothing for non-existing element" do
      let jsx = Motion.div { "data-testid": "exists" } ([] :: Array _)
      result <- liftEffect $ render jsx
      let maybeEl = result.queryByTestId "does-not-exist"
      isNothing maybeEl `shouldEqual` true
