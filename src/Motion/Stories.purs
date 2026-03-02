module Motion.Stories where

import Prelude

import Effect (Effect)
import Effect.Uncurried (mkEffectFn1)
import Foreign (unsafeToForeign)
import Motion as M
import Motion.Element as Motion
import Motion.Hook as Hook
import Motion.Value as MV
import React.Basic (JSX)
import React.Basic.DOM as R
import React.Basic.Hooks (component, (/\))
import React.Basic.Hooks as React
import Type.Proxy (Proxy(..))
import Untagged.Castable (cast)
import Unsafe.Coerce (unsafeCoerce)
import Yoga.React.DOM.Internal (css) as Yoga

morphBasic ∷ JSX
morphBasic = unsafeCoerce morphBasic_

morphBasic_ ∷ Effect (Unit → JSX)
morphBasic_ = component "MorphBasic" \_ -> React.do
  selected /\ setSelected <- React.useState' 0
  pure $ M.layoutGroup { id: cast "morph-basic" }
    [ R.div
        { style: R.css { display: "flex", gap: "24px", alignItems: "flex-start" }
        , children: ([ 0, 1, 2 ] ∷ Array Int) <#> \i ->
            R.div
              { key: show i
              , onClick: mkEffectFn1 \_ -> setSelected i
              , style: R.css
                  { padding: "16px 24px"
                  , borderRadius: "12px"
                  , cursor: "pointer"
                  , position: "relative"
                  , background: if i == selected then "#f0f0ff" else "#f8f8fc"
                  , border: "1px solid " <> if i == selected then "#667eea" else "#e0e0e8"
                  , minWidth: "80px"
                  , textAlign: "center"
                  }
              , children:
                  [ R.text ("Tab " <> show (i + 1))
                  ] <>
                    if i == selected then
                      [ M.morph "underline" $ Motion.div
                          { style: Yoga.css
                              { position: "absolute"
                              , bottom: "0"
                              , left: "0"
                              , right: "0"
                              , height: "3px"
                              , background: "linear-gradient(90deg, #667eea, #764ba2)"
                              , borderRadius: "0 0 12px 12px"
                              }
                          }
                          ([] ∷ Array JSX)
                      ]
                    else []
              }
        }
    ]

morphComposedKeys ∷ JSX
morphComposedKeys = unsafeCoerce morphComposedKeys_

morphComposedKeys_ ∷ Effect (Unit → JSX)
morphComposedKeys_ = component "MorphComposedKeys" \_ -> React.do
  expanded /\ setExpanded <- React.useState' false
  pure $ M.layoutGroup { id: cast "morph-composed" }
    [ R.div
        { onClick: mkEffectFn1 \_ -> setExpanded (not expanded)
        , style: R.css { cursor: "pointer", userSelect: "none" }
        , children:
            if expanded then
              [ M.morph "card" $ Motion.div
                  { style: Yoga.css
                      { padding: "24px"
                      , borderRadius: "16px"
                      , background: "linear-gradient(135deg, #667eea, #764ba2)"
                      , color: "white"
                      , width: "300px"
                      }
                  }
                  [ M.morph ("card" /\ (Proxy ∷ Proxy "title")) $ Motion.div
                      { style: Yoga.css { fontSize: "24px", fontWeight: "bold", marginBottom: "8px" } }
                      [ R.text "Expanded" ]
                  , M.morph ("card" /\ (Proxy ∷ Proxy "body")) $ Motion.div
                      { style: Yoga.css { fontSize: "14px", opacity: "0.8" } }
                      [ R.text "Click to collapse. The title and body morph independently within the card." ]
                  ]
              ]
            else
              [ M.morph "card" $ Motion.div
                  { style: Yoga.css
                      { padding: "12px 16px"
                      , borderRadius: "8px"
                      , background: "linear-gradient(135deg, #667eea, #764ba2)"
                      , color: "white"
                      , width: "160px"
                      }
                  }
                  [ M.morph ("card" /\ (Proxy ∷ Proxy "title")) $ Motion.div
                      { style: Yoga.css { fontSize: "14px", fontWeight: "bold" } }
                      [ R.text "Collapsed" ]
                  , M.morph ("card" /\ (Proxy ∷ Proxy "body")) $ Motion.div
                      { style: Yoga.css { fontSize: "11px", opacity: "0.7" } }
                      [ R.text "Click to expand" ]
                  ]
              ]
        }
    ]

dragAndSpring ∷ JSX
dragAndSpring = unsafeCoerce dragAndSpring_

dragAndSpring_ ∷ Effect (Unit → JSX)
dragAndSpring_ = component "DragAndSpring" \_ -> React.do
  x <- MV.useMotionValue 0.0
  xVelocity <- Hook.useVelocity x
  bg <- Hook.useTransformMap xVelocity \v ->
    do
      let clamped = max 0.0 (min 1.0 ((if v < 0.0 then negate v else v) / 1000.0))
      "hsl(" <> show (280.0 - clamped * 120.0) <> ", 80%, 60%)"
  pure $ Motion.div
    { style: Yoga.css
        { x
        , width: "80px"
        , height: "80px"
        , borderRadius: "16px"
        , background: bg
        , cursor: "grab"
        , display: "flex"
        , alignItems: "center"
        , justifyContent: "center"
        }
    , drag: M.drag "x"
    , dragElastic: M.dragElastic 0.2
    , whileTap: M.whileTap $ Yoga.css { scale: 0.95 }
    }
    [ R.div
        { style: R.css { color: "white", fontSize: "11px", textAlign: "center" }
        , children: [ R.text "drag me" ]
        }
    ]

spinningBox ∷ JSX
spinningBox = unsafeCoerce spinningBox_

spinningBox_ ∷ Effect (Unit → JSX)
spinningBox_ = component "SpinningBox" \_ -> React.do
  time <- Hook.useTime
  rotate <- Hook.useTransformMap time \t -> t / 20.0
  pure $ Motion.div
    { style: Yoga.css
        { width: "80px"
        , height: "80px"
        , borderRadius: "16px"
        , background: "linear-gradient(135deg, #667eea, #764ba2)"
        , rotate
        }
    }
    ([] ∷ Array JSX)

reorder ∷ JSX
reorder = unsafeCoerce reorder_

reorder_ ∷ Effect (Unit → JSX)
reorder_ = component "ReorderStory" \_ -> React.do
  items /\ setItems <- React.useState' [ "Apples", "Bananas", "Cherries", "Dates", "Elderberries" ]
  pure $ M.reorderGroup
    { axis: "y"
    , values: unsafeToForeign <$> items
    , onReorder: mkEffectFn1 \newItems -> setItems (unsafeCoerce newItems)
    }
    ( items <#> \item ->
        M.reorderItem { key: item, value: unsafeToForeign item }
          $ R.div
              { style: R.css
                  { padding: "12px 16px"
                  , marginBottom: "4px"
                  , borderRadius: "8px"
                  , background: "white"
                  , border: "1px solid #e0e0e8"
                  , cursor: "grab"
                  , display: "flex"
                  , alignItems: "center"
                  , gap: "8px"
                  , userSelect: "none"
                  }
              , children:
                  [ R.span { style: R.css { color: "#aaa" }, children: [ R.text "⠿" ] }
                  , R.text item
                  ]
              }
    )

hoverAndTap ∷ JSX
hoverAndTap = unsafeCoerce hoverAndTap_

hoverAndTap_ ∷ Effect (Unit → JSX)
hoverAndTap_ = component "HoverAndTap" \_ -> React.do
  willChange <- Hook.useWillChange
  pure $ Motion.div
    { style: Yoga.css
        { width: "80px"
        , height: "80px"
        , borderRadius: "16px"
        , background: "linear-gradient(135deg, #fa709a, #fee140)"
        , willChange
        , cursor: "pointer"
        , display: "flex"
        , alignItems: "center"
        , justifyContent: "center"
        }
    , whileHover: M.whileHover $ Yoga.css { scale: 1.3 }
    , whileTap: M.whileTap $ Yoga.css { scale: 0.95 }
    , transition: M.transition { type: "spring", stiffness: 300, damping: 15 }
    }
    [ R.div
        { style: R.css { color: "white", fontSize: "11px", textAlign: "center", lineHeight: "1.3" }
        , children: [ R.text "hover / tap" ]
        }
    ]
