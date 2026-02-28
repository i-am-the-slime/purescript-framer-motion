module Test.Demo where

import Prelude

import Data.Array (mapWithIndex, (..))
import Data.Maybe (Maybe(..))
import Data.Nullable (null)
import Effect (Effect)
import Effect.Class.Console as Console
import Effect.Uncurried as Effect.Uncurried
import Effect.Uncurried (mkEffectFn1)
import Foreign (unsafeToForeign)
import Framer.Motion as M
import Framer.Motion.Hook as Hook
import Framer.Motion.MotionComponent as Motion
import Framer.Motion.Types as Types
import Literals.Undefined (undefined)
import MotionValue as MV
import React.Basic (JSX)
import React.Basic.DOM as R
import React.Basic.DOM.Client (createRoot, renderRoot)
import React.Basic.Hooks (Hook, component, element, unsafeHook, (/\))
import React.Basic.Hooks as React
import Untagged.Castable (cast)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.NonElementParentNode (getElementById)
import Web.HTML (window)
import Web.HTML.HTMLDocument as HTMLDocument
import Web.HTML.Window (document)
import Yoga.React.DOM.Internal (CSS, css) as Yoga

main ∷ Effect Unit
main = do
  app <- mkApp
  parent <- window >>= document <#> HTMLDocument.toNonElementParentNode
  elem <- getElementById "app" parent
  case elem of
    Just e -> do
      root <- createRoot e
      renderRoot root (app unit)
    Nothing -> Console.error "Could not find #app element"

mkApp ∷ Effect (Unit → JSX)
mkApp = do
  d1 <- useTimeDemo_
  d2 <- useVelocityDemo_
  d3 <- useDragControlsDemo_
  d4 <- useMotionValueEventDemo_
  d5 <- useAnimationFrameDemo_
  d6 <- useReducedMotionDemo_
  d7 <- useWillChangeDemo_
  d8 <- useScrollDemo_
  d10 <- layoutGroupDemo_
  d11 <- motionConfigDemo_
  d12 <- reorderDemo_
  d13 <- onAnimationCancelDemoSafe_
  component "App" \_ -> React.do
    pure $ R.div
      { style: R.css
          { fontFamily: "'Inter', system-ui, sans-serif"
          , maxWidth: "800px"
          , margin: "0 auto"
          , padding: "24px"
          , color: "#1a1a2e"
          }
      , children:
          [ R.h1_ [ R.text "purescript-react-motion demos" ]
          , R.p_ [ R.text "Each section exercises a new hook or component from the motion/react bindings." ]
          , demoSection "1. useTime + useTransform" "Continuous rotation driven by useTime" (d1 unit)
          , demoSection "2. useVelocity" "Drag the box — velocity is chained to get acceleration" (d2 unit)
          , demoSection "3. useDragControls" "Click the handle to start dragging the box" (d3 unit)
          , demoSection "4. useMotionValueEvent" "Drag the box — events are logged to the console" (d4 unit)
          , demoSection "5. useAnimationFrame" "Frame counter using useAnimationFrame" (d5 unit)
          , demoSection "6. useReducedMotion" "Detects prefers-reduced-motion setting" (d6 unit)
          , demoSection "7. useWillChange" "Hover to scale — willChange optimizes rendering" (d7 unit)
          , demoSection "8. useScroll" "Scroll progress bar (fixed at top)" (d8 unit)
          , demoSection "9. LazyMotion" "Wraps children with lazy-loaded features" (lazyMotionDemo unit)
          , demoSection "10. LayoutGroup" "Shared layout animations between siblings" (d10 unit)
          , demoSection "11. MotionConfig" "Spring transition applied to all children" (d11 unit)
          , demoSection "12. Reorder" "Drag to reorder the list" (d12 unit)
          , demoSection "13. onAnimationCancel" "MotionValue event for cancelled animations" (d13 unit)
          , spacer
          ]
      }

demoSection ∷ String → String → JSX → JSX
demoSection title description demo =
  R.div
    { style: R.css
        { marginBottom: "40px"
        , padding: "20px"
        , borderRadius: "12px"
        , background: "#f8f8fc"
        , border: "1px solid #e0e0e8"
        }
    , children:
        [ R.h2
            { style: R.css { margin: "0 0 4px 0", fontSize: "18px" }
            , children: [ R.text title ]
            }
        , R.p
            { style: R.css { margin: "0 0 16px 0", fontSize: "14px", color: "#666" }
            , children: [ R.text description ]
            }
        , demo
        ]
    }

spacer ∷ JSX
spacer = R.div { style: R.css { height: "200px" }, children: [] }

-- box style helper
boxStyle ∷ ∀ r. { | r } → Yoga.CSS
boxStyle extra = Yoga.css (unsafeCoerce merged)
  where
  base = unsafeToForeign
    { width: "80px"
    , height: "80px"
    , borderRadius: "12px"
    , background: "linear-gradient(135deg, #667eea, #764ba2)"
    , cursor: "grab"
    }
  merged = unsafeCoerce (merge2 base (unsafeToForeign extra))

foreign import merge2 ∷ ∀ a b. a → b → a

------------------------------------------------------------------------
-- 1. useTime
------------------------------------------------------------------------
useTimeDemo ∷ Unit → JSX
useTimeDemo = unsafeCoerce useTimeDemo_

useTimeDemo_ ∷ Effect (Unit → JSX)
useTimeDemo_ = component "UseTimeDemo" \_ -> React.do
  time <- Hook.useTime
  rotate <- Hook.useTransformMap time \t -> t / 20.0
  pure $ Motion.div
    { style: Yoga.css
        { width: "80px"
        , height: "80px"
        , borderRadius: "12px"
        , background: "linear-gradient(135deg, #667eea, #764ba2)"
        , rotate
        }
    }
    ([] ∷ Array JSX)

------------------------------------------------------------------------
-- 2. useVelocity (chained for acceleration)
------------------------------------------------------------------------
useVelocityDemo ∷ Unit → JSX
useVelocityDemo = unsafeCoerce useVelocityDemo_

useVelocityDemo_ ∷ Effect (Unit → JSX)
useVelocityDemo_ = component "UseVelocityDemo" \_ -> React.do
  x <- MV.useMotionValue 0.0
  xVelocity <- Hook.useVelocity x
  -- Map velocity to background color intensity
  bg <- Hook.useTransformMap xVelocity \v ->
    let clamped = max 0.0 (min 1.0 ((if v < 0.0 then negate v else v) / 1000.0))
    in "hsl(" <> show (280.0 - clamped * 120.0) <> ", 80%, 60%)"
  pure $ R.div_
    [ Motion.div
        { style: Yoga.css
            { x
            , width: "80px"
            , height: "80px"
            , borderRadius: "12px"
            , background: bg
            , cursor: "grab"
            }
        , drag: M.drag "x"
        , dragElastic: M.dragElastic 0.2
        }
        [ R.div
            { style: R.css { color: "white", fontSize: "11px", padding: "8px", textAlign: "center" }
            , children: [ R.text "drag me" ]
            }
        ]
    ]

------------------------------------------------------------------------
-- 3. useDragControls
------------------------------------------------------------------------
useDragControlsDemo ∷ Unit → JSX
useDragControlsDemo = unsafeCoerce useDragControlsDemo_

useDragControlsDemo_ ∷ Effect (Unit → JSX)
useDragControlsDemo_ = component "UseDragControlsDemo" \_ -> React.do
  controls <- Hook.useDragControls
  -- The handle is INSIDE the draggable element.
  -- dragListener: false prevents dragging from the box body;
  -- only the handle's onPointerDown triggers the drag.
  pure $ motionDivWithDragControls controls
    [ R.div
        { style: R.css { display: "flex", alignItems: "center", gap: "12px", padding: "12px" }
        , children:
            [ R.div
                { style: R.css
                    { width: "32px"
                    , height: "32px"
                    , borderRadius: "6px"
                    , background: "rgba(255,255,255,0.3)"
                    , display: "flex"
                    , alignItems: "center"
                    , justifyContent: "center"
                    , cursor: "grab"
                    , fontSize: "18px"
                    , userSelect: "none"
                    , flexShrink: "0"
                    }
                , onPointerDown: mkEffectFn1 \e -> Types.dragControlsStart controls (unsafeCoerce e)
                , children: [ R.text "⠿" ]
                }
            , R.span
                { style: R.css { color: "white", fontSize: "13px" }
                , children: [ R.text "drag via handle" ]
                }
            ]
        }
    ]

------------------------------------------------------------------------
-- 4. useMotionValueEvent
------------------------------------------------------------------------
useMotionValueEventDemo ∷ Unit → JSX
useMotionValueEventDemo = unsafeCoerce useMotionValueEventDemo_

useMotionValueEventDemo_ ∷ Effect (Unit → JSX)
useMotionValueEventDemo_ = component "UseMotionValueEventDemo" \_ -> React.do
  x <- MV.useMotionValue 0.0
  eventLog /\ setEventLog <- React.useState' ""
  Hook.useMotionValueEvent x "change" \(latest ∷ Number) ->
    setEventLog ("x = " <> show latest)
  pure $ R.div_
    [ Motion.div
        { style: Yoga.css
            { x
            , width: "80px"
            , height: "80px"
            , borderRadius: "12px"
            , background: "linear-gradient(135deg, #a18cd1, #fbc2eb)"
            , cursor: "grab"
            }
        , drag: M.drag "x"
        }
        [ R.div
            { style: R.css { color: "white", fontSize: "11px", padding: "8px", textAlign: "center" }
            , children: [ R.text "drag me" ]
            }
        ]
    , R.div
        { style: R.css { marginTop: "8px", fontSize: "13px", fontFamily: "monospace", color: "#888" }
        , children: [ R.text eventLog ]
        }
    ]

foreign import jsRound ∷ Number → Number

------------------------------------------------------------------------
-- 5. useAnimationFrame
------------------------------------------------------------------------
useAnimationFrameDemo ∷ Unit → JSX
useAnimationFrameDemo = unsafeCoerce useAnimationFrameDemo_

useAnimationFrameDemo_ ∷ Effect (Unit → JSX)
useAnimationFrameDemo_ = component "UseAnimationFrameDemo" \_ -> React.do
  nodeRef ← React.useRef null
  Hook.useAnimationFrame \time _delta -> do
    let seconds = show (unsafeCoerce (jsRound (time / 1000.0)) ∷ Int)
    -- Direct DOM update to avoid re-renders
    setTextContent nodeRef ("elapsed: " <> seconds <> "s")
  pure $ R.div
    { ref: nodeRef
    , style: R.css { fontSize: "14px", fontFamily: "monospace" }
    , children: [ R.text "elapsed: 0s" ]
    }

foreign import setTextContent ∷ ∀ a. React.Ref a → String → Effect Unit

------------------------------------------------------------------------
-- 6. useReducedMotion
------------------------------------------------------------------------
useReducedMotionDemo ∷ Unit → JSX
useReducedMotionDemo = unsafeCoerce useReducedMotionDemo_

useReducedMotionDemo_ ∷ Effect (Unit → JSX)
useReducedMotionDemo_ = component "UseReducedMotionDemo" \_ -> React.do
  prefersReduced <- Hook.useReducedMotion
  let
    reduced = (unsafeCoerce prefersReduced) == true
    label = if reduced then "reduced motion: ON — animation would be disabled"
            else "reduced motion: OFF — animations play normally"
  pure $ R.div_
    [ R.div
        { style: R.css { fontSize: "14px", marginBottom: "12px", fontFamily: "monospace" }
        , children: [ R.text label ]
        }
    , if reduced
        then R.div
          { style: R.css
              { width: "80px"
              , height: "80px"
              , borderRadius: "12px"
              , background: "linear-gradient(135deg, #43e97b, #38f9d7)"
              , display: "flex"
              , alignItems: "center"
              , justifyContent: "center"
              , fontSize: "11px"
              , color: "#333"
              }
          , children: [ R.text "static" ]
          }
        else Motion.div
          { style: Yoga.css
              { width: "80px"
              , height: "80px"
              , borderRadius: "12px"
              , background: "linear-gradient(135deg, #43e97b, #38f9d7)"
              }
          , animate: M.animate $ Yoga.css { x: 200.0 }
          , transition: M.transition { type: "spring", repeat: unsafeToForeign M.infinity, repeatType: "reverse" }
          }
          ([] ∷ Array JSX)
    ]

------------------------------------------------------------------------
-- 7. useWillChange
------------------------------------------------------------------------
useWillChangeDemo ∷ Unit → JSX
useWillChangeDemo = unsafeCoerce useWillChangeDemo_

useWillChangeDemo_ ∷ Effect (Unit → JSX)
useWillChangeDemo_ = component "UseWillChangeDemo" \_ -> React.do
  willChange <- Hook.useWillChange
  pure $ Motion.div
    { style: Yoga.css
        { width: "80px"
        , height: "80px"
        , borderRadius: "12px"
        , background: "linear-gradient(135deg, #fa709a, #fee140)"
        , willChange
        }
    , whileHover: M.whileHover $ Yoga.css { scale: 1.3 }
    , whileTap: M.whileTap $ Yoga.css { scale: 0.95 }
    , transition: M.transition { type: "spring", stiffness: 300, damping: 15 }
    }
    [ R.div
        { style: R.css { color: "white", fontSize: "11px", padding: "8px", textAlign: "center", lineHeight: "1.3" }
        , children: [ R.text "hover / tap me" ]
        }
    ]

------------------------------------------------------------------------
-- 8. useScroll (progress bar)
------------------------------------------------------------------------
useScrollDemo ∷ Unit → JSX
useScrollDemo = unsafeCoerce useScrollDemo_

useScrollDemo_ ∷ Effect (Unit → JSX)
useScrollDemo_ = component "UseScrollDemo" \_ -> React.do
  containerRef ← React.useRef null
  { scrollYProgress } <- unsafeUseScroll { container: containerRef }
  -- Map 0..1 progress to percentage string for width
  widthPct <- Hook.useTransformMap scrollYProgress \p ->
    show (max 2.0 (p * 100.0)) <> "%"
  pure $ R.div_
    [ -- Progress bar (background track)
      R.div
        { style: R.css
            { height: "6px"
            , borderRadius: "3px"
            , background: "#e0e0e8"
            , marginBottom: "12px"
            , overflow: "hidden"
            }
        , children:
            [ -- Fill bar driven by scroll
              Motion.div
                { style: Yoga.css
                    { width: widthPct
                    , height: "6px"
                    , borderRadius: "3px"
                    , background: "linear-gradient(90deg, #667eea, #764ba2)"
                    }
                }
                ([] ∷ Array JSX)
            ]
        }
    -- Scrollable container
    , R.div
        { ref: containerRef
        , style: R.css
            { height: "200px"
            , overflowY: "scroll"
            , borderRadius: "8px"
            , border: "1px solid #e0e0e8"
            , padding: "16px"
            }
        , children: (1 .. 20) <#> \i ->
            R.div
              { key: show i
              , style: R.css { padding: "12px 0", borderBottom: "1px solid #f0f0f4" }
              , children: [ R.text ("Scroll item " <> show i) ]
              }
        }
    , R.div
        { style: R.css { fontSize: "13px", color: "#888", marginTop: "8px" }
        , children: [ R.text "Scroll the container above — the purple bar tracks progress" ]
        }
    ]

------------------------------------------------------------------------
-- 9. LazyMotion
------------------------------------------------------------------------
lazyMotionDemo ∷ Unit → JSX
lazyMotionDemo _ = element M.lazyMotion
  { features: unsafeToForeign domAnimation
  , children:
      [ R.div
          { style: R.css { fontSize: "14px", fontFamily: "monospace" }
          , children: [ R.text "Wrapped in <LazyMotion features={domAnimation}>" ]
          }
      ]
  }

foreign import motionDivWithDragControls ∷ Types.DragControls → Array JSX → JSX

-- Bypass Union constraint for demo — calls useScroll FFI directly
foreign import useScrollRawImpl ∷ ∀ opts. Effect.Uncurried.EffectFn1 opts Hook.ViewportScrollValues

unsafeUseScroll ∷ ∀ opts. opts → Hook (Hook.UseScroll) (Hook.ViewportScrollValues)
unsafeUseScroll opts = unsafeHook (Effect.Uncurried.runEffectFn1 useScrollRawImpl opts)

foreign import domAnimation ∷ ∀ a. a

------------------------------------------------------------------------
-- 10. LayoutGroup
------------------------------------------------------------------------
layoutGroupDemo ∷ Unit → JSX
layoutGroupDemo = unsafeCoerce layoutGroupDemo_

layoutGroupDemo_ ∷ Effect (Unit → JSX)
layoutGroupDemo_ = component "LayoutGroupDemo" \_ -> React.do
  selected /\ setSelected <- React.useState' 0
  pure $ element M.layoutGroup
    { id: cast "tabs-demo"
    , children:
        [ R.div
            { style: R.css { display: "flex", gap: "8px" }
            , children: (0 .. 2) <#> \i ->
                R.div
                  { style: R.css
                      { padding: "8px 16px"
                      , borderRadius: "8px"
                      , cursor: "pointer"
                      , position: "relative"
                      , background: if i == selected then "#f0f0ff" else "transparent"
                      }
                  , onClick: mkEffectFn1 \_ -> setSelected i
                  , key: show i
                  , children:
                      [ R.text ("Tab " <> show (i + 1))
                      ] <> (if i == selected
                            then [ Motion.div
                                    { layoutId: M.layoutId "underline"
                                    , style: Yoga.css
                                        { position: "absolute"
                                        , bottom: "0"
                                        , left: "0"
                                        , right: "0"
                                        , height: "2px"
                                        , background: "#667eea"
                                        , borderRadius: "1px"
                                        }
                                    }
                                    ([] ∷ Array JSX)
                                 ]
                            else [])
                  }
            }
        ]
    }

------------------------------------------------------------------------
-- 11. MotionConfig
------------------------------------------------------------------------
motionConfigDemo ∷ Unit → JSX
motionConfigDemo = unsafeCoerce motionConfigDemo_

motionConfigDemo_ ∷ Effect (Unit → JSX)
motionConfigDemo_ = component "MotionConfigDemo" \_ -> React.do
  toggled /\ setToggled <- React.useState' false
  pure $ element M.motionConfig
    { transition: M.transition { type: "spring", stiffness: 50, damping: 10 }
    , children:
        [ R.div
            { style: R.css { display: "flex", gap: "12px", alignItems: "center" }
            , children:
                [ R.button
                    { onClick: mkEffectFn1 \_ -> setToggled (not toggled)
                    , style: R.css { padding: "8px 16px", borderRadius: "8px", border: "1px solid #ccc", cursor: "pointer" }
                    , children: [ R.text "Toggle" ]
                    }
                , Motion.div
                    { style: Yoga.css
                        { width: "60px"
                        , height: "60px"
                        , borderRadius: "12px"
                        , background: "linear-gradient(135deg, #667eea, #764ba2)"
                        }
                    , animate: M.animate $ Yoga.css { x: if toggled then 120.0 else 0.0, rotate: if toggled then 180.0 else 0.0 }
                    }
                    ([] ∷ Array JSX)
                , Motion.div
                    { style: Yoga.css
                        { width: "40px"
                        , height: "40px"
                        , borderRadius: "50%"
                        , background: "linear-gradient(135deg, #f093fb, #f5576c)"
                        }
                    , animate: M.animate $ Yoga.css { y: if toggled then (-30.0) else 0.0, scale: if toggled then 1.3 else 1.0 }
                    }
                    ([] ∷ Array JSX)
                ]
            }
        , R.p
            { style: R.css { fontSize: "13px", color: "#888", marginTop: "8px" }
            , children: [ R.text "Both shapes share the same slow spring from MotionConfig" ]
            }
        ]
    }

------------------------------------------------------------------------
-- 12. Reorder
------------------------------------------------------------------------
reorderDemo ∷ Unit → JSX
reorderDemo = unsafeCoerce reorderDemo_

reorderDemo_ ∷ Effect (Unit → JSX)
reorderDemo_ = component "ReorderDemo" \_ -> React.do
  items /\ setItems <- React.useState' [ "Apples", "Bananas", "Cherries", "Dates", "Elderberries" ]
  pure $ reorderList
    { items
    , onReorder: mkEffectFn1 \newItems -> setItems (unsafeCoerce newItems)
    }

foreign import reorderList ∷ ∀ r. r → JSX

------------------------------------------------------------------------
-- 13. onAnimationCancel
------------------------------------------------------------------------
onAnimationCancelDemo ∷ Unit → JSX
onAnimationCancelDemo = unsafeCoerce onAnimationCancelDemo_

onAnimationCancelDemoSafe_ ∷ Effect (Unit → JSX)
onAnimationCancelDemoSafe_ = component "OnAnimationCancelDemoSafe" \_ -> React.do
  x <- MV.useMotionValue 0.0
  status /\ setStatus <- React.useState' "idle"
  Hook.useMotionValueEvent x "animationStart" \(_ ∷ Number) ->
    setStatus "animating"
  Hook.useMotionValueEvent x "animationComplete" \(_ ∷ Number) ->
    setStatus "complete"
  Hook.useMotionValueEvent x "animationCancel" \(_ ∷ Number) ->
    setStatus "cancelled!"
  pure $ R.div_
    [ Motion.div
        { style: Yoga.css
            { x
            , width: "80px"
            , height: "80px"
            , borderRadius: "12px"
            , background: "linear-gradient(135deg, #ffecd2, #fcb69f)"
            , cursor: "grab"
            }
        , drag: M.drag "x"
        , animate: M.animate $ Yoga.css { x: 200.0 }
        , transition: M.transition { duration: 3.0 }
        }
        [ R.div
            { style: R.css { fontSize: "11px", padding: "8px", textAlign: "center", color: "#666" }
            , children: [ R.text "drag to cancel" ]
            }
        ]
    , R.div
        { style: R.css { marginTop: "8px", fontSize: "13px", fontFamily: "monospace", color: "#888" }
        , children: [ R.text ("status: " <> status) ]
        }
    ]

onAnimationCancelDemo_ ∷ Effect (Unit → JSX)
onAnimationCancelDemo_ = component "OnAnimationCancelDemo" \_ -> React.do
  x <- MV.useMotionValue 0.0
  status /\ setStatus <- React.useState' "idle"
  React.useEffectOnce do
    u1 <- MV.onAnimationStart (\(_ ∷ Number) -> setStatus "animating") x
    u2 <- MV.onAnimationComplete (\(_ ∷ Number) -> setStatus "complete") x
    u3 <- MV.onAnimationCancel (\(_ ∷ Number) -> setStatus "cancelled!") x
    pure (u1 *> u2 *> u3)
  pure $ R.div_
    [ Motion.div
        { style: Yoga.css
            { x
            , width: "80px"
            , height: "80px"
            , borderRadius: "12px"
            , background: "linear-gradient(135deg, #ffecd2, #fcb69f)"
            , cursor: "grab"
            }
        , drag: M.drag "x"
        , animate: M.animate $ Yoga.css { x: 200.0 }
        , transition: M.transition { duration: 3.0 }
        }
        [ R.div
            { style: R.css { fontSize: "11px", padding: "8px", textAlign: "center", color: "#666" }
            , children: [ R.text "drag to cancel" ]
            }
        ]
    , R.div
        { style: R.css { marginTop: "8px", fontSize: "13px", fontFamily: "monospace", color: "#888" }
        , children: [ R.text ("status: " <> status) ]
        }
    ]
