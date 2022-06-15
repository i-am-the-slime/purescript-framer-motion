module Main where

import Prelude

import Data.Maybe (Maybe(..))
import Effect (Effect)
import Effect.Class.Console as Console
import Framer.Motion as M
import MotionValue (useMotionValue)
import React.Basic (JSX)
import React.Basic.DOM as R
import React.Basic.DOM as ReactDom
import React.Basic.Hooks as React
import Web.DOM.NonElementParentNode (getElementById)
import Web.HTML (window)
import Web.HTML.HTMLDocument as HTMLDocument
import Web.HTML.Window (document)

main :: Effect Unit
main = do
  exampleComponent <- mkExampleComponent
  let jsx = exampleComponent unit
  injectJSX "app" jsx

mkExampleComponent ∷ Effect (Unit → JSX)
mkExampleComponent = React.component "FramerMotionExample" \_ -> React.do
  mv <- useMotionValue 0

  let
    box = React.element M.div
      { style: R.css
          { width: "100px"
          , height: "100px"
          , background: "rgb(30, 60, 200)"
          }
      , initial: M.initial $ R.css { borderRadius: "10%" }
      , animate: M.animate $ R.css { borderRadius: "25%" }
      }

  let
    text =
      React.element M.div
        { initial: M.initial $ R.css { color: "rgb(200,50,140)" }
        , animate: M.animate $ R.css { color: "rgb(140,50,200)" }
        , children: [ R.text "Framer Motion Example" ]
        }

  pure $ R.div_ [ box, text ]

injectJSX ∷ String -> JSX → Effect Unit
injectJSX id jsx = do
  parent <- window >>= document <#> HTMLDocument.toNonElementParentNode
  elem <- getElementById id parent
  case elem of
    Just e -> ReactDom.render jsx e
    Nothing -> Console.error $ "Could not find element with id '" <> id <> "'"