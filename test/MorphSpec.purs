module Test.MorphSpec where

import Prelude

import Data.Tuple.Nested ((/\))
import Effect.Class (liftEffect)
import Motion (morph, toMorphKey)
import Motion.Element as Motion
import React.TestingLibrary (render)
import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual)
import Type.Proxy (Proxy(..))

spec :: Spec Unit
spec = do
  describe "MorphKey" do
    it "converts String" do
      toMorphKey "hello" `shouldEqual` "hello"

    it "converts Int" do
      toMorphKey 42 `shouldEqual` "42"

    it "converts Tuple" do
      let key = "item" /\ 1
      toMorphKey key `shouldEqual` "item-1"

    it "converts Proxy symbol" do
      let key = Proxy ∷ Proxy "image"
      toMorphKey key `shouldEqual` "image"

    it "converts nested Tuples" do
      let key = "gallery" /\ 5 /\ (Proxy ∷ Proxy "thumb")
      toMorphKey key `shouldEqual` "gallery-5-thumb"

  describe "morph" do
    it "renders an element with layoutId" do
      let jsx = Motion.div { layoutId: morph "test-key", "data-testid": "morphed" } "Hello"
      result <- liftEffect $ render jsx
      _ <- result.findByTestId "morphed"
      pure unit
