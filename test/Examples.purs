-- | Compile-time examples ported from the Motion docs source code.
-- | These verify that the PureScript bindings type-check against
-- | the real API patterns found in motiondivision/motion.
module Test.Examples where

import Prelude

import Data.Nullable (null)
import Effect (Effect)
import Effect.Class.Console as Console
import Effect.Uncurried (mkEffectFn1)
import Foreign (unsafeToForeign)
import Framer.Motion as M
import Framer.Motion.Hook as Hook
import Framer.Motion.MotionComponent as Motion
import Framer.Motion.Types as Types
import MotionValue as MV
import React.Basic (JSX)
import React.Basic.DOM as R
import React.Basic.Hooks (component, element, (/\))
import React.Basic.Hooks as React
import Untagged.Castable (cast)
import Unsafe.Coerce (unsafeCoerce)
import Literals.Undefined (undefined)
import Yoga.React.DOM.Internal (css) as Yoga

------------------------------------------------------------------------
-- useDragControls
-- Source: packages/framer-motion/src/gestures/drag/use-drag-controls.ts
--
-- ```jsx
-- const dragControls = useDragControls()
--
-- function startDrag(event) {
--   dragControls.start(event, { snapToCursor: true })
-- }
--
-- return (
--   <>
--     <div onPointerDown={startDrag} />
--     <motion.div drag="x" dragControls={dragControls} />
--   </>
-- )
-- ```
------------------------------------------------------------------------
mkDragControlsExample ∷ Effect (Unit → JSX)
mkDragControlsExample = component "DragControlsExample" \_ -> React.do
  controls <- Hook.useDragControls
  pure $ R.div_
    [ R.div
        { onPointerDown: mkEffectFn1 \e ->
            Types.dragControlsStart controls (unsafeCoerce e)
        }
    , Motion.div { drag: M.drag "x" } ([] ∷ Array JSX)
    ]

-- Also test cancel and stop
mkDragControlsCancelStopExample ∷ Effect (Unit → JSX)
mkDragControlsCancelStopExample = component "DragControlsCancelStop" \_ -> React.do
  controls <- Hook.useDragControls
  pure $ R.div_
    [ R.div
        { onClick: mkEffectFn1 \_ -> Types.dragControlsCancel controls
        }
    , R.div
        { onClick: mkEffectFn1 \_ -> Types.dragControlsStop controls
        }
    , Motion.div { drag: M.drag true } ([] ∷ Array JSX)
    ]

------------------------------------------------------------------------
-- useMotionValueEvent
-- Source: packages/framer-motion/src/utils/use-motion-value-event.ts
--
-- ```jsx
-- useMotionValueEvent(value, "change", (latest) => {
--   console.log("Latest value:", latest)
-- })
-- useMotionValueEvent(value, "animationStart", () => { ... })
-- useMotionValueEvent(value, "animationComplete", () => { ... })
-- useMotionValueEvent(value, "animationCancel", () => { ... })
-- ```
------------------------------------------------------------------------
mkMotionValueEventExample ∷ Effect (Unit → JSX)
mkMotionValueEventExample = component "MotionValueEventExample" \_ -> React.do
  x <- MV.useMotionValue 0.0
  -- Listen to change events
  Hook.useMotionValueEvent x "change" \latest ->
    Console.log ("x changed to " <> show (latest ∷ Number))
  pure $ Motion.div
    { style: Yoga.css { x }
    , drag: M.drag "x"
    }
    ([] ∷ Array JSX)

-- Listen to animation lifecycle events
mkMotionValueAnimationEventsExample ∷ Effect (Unit → JSX)
mkMotionValueAnimationEventsExample = component "MVAnimEvents" \_ -> React.do
  x <- MV.useMotionValue 0.0
  Hook.useMotionValueEvent x "animationStart" \(_ ∷ Number) ->
    Console.log "animation started"
  Hook.useMotionValueEvent x "animationComplete" \(_ ∷ Number) ->
    Console.log "animation completed"
  Hook.useMotionValueEvent x "animationCancel" \(_ ∷ Number) ->
    Console.log "animation cancelled"
  pure $ Motion.div
    { style: Yoga.css { x }
    , animate: M.animate $ Yoga.css { x: 100.0 }
    }
    ([] ∷ Array JSX)

------------------------------------------------------------------------
-- useVelocity
-- Source: packages/framer-motion/src/value/use-velocity.ts
--
-- ```jsx
-- const x = useMotionValue(0)
-- const xVelocity = useVelocity(x)
-- const xAcceleration = useVelocity(xVelocity)
-- ```
------------------------------------------------------------------------
mkVelocityExample ∷ Effect (Unit → JSX)
mkVelocityExample = component "VelocityExample" \_ -> React.do
  x <- MV.useMotionValue 0.0
  xVelocity <- Hook.useVelocity x
  -- Chain to get acceleration (from the docstring)
  _xAcceleration <- Hook.useVelocity xVelocity
  pure $ Motion.div
    { style: Yoga.css { x }
    , drag: M.drag "x"
    }
    ([] ∷ Array JSX)

------------------------------------------------------------------------
-- useTime
-- Source: packages/framer-motion/src/value/use-time.ts
--
-- ```jsx
-- function Component() {
--   const time = useTime()
--   const rotate = useTransform(time, [0, 4000], [0, 360], { clamp: false })
--   return <motion.div style={{ rotate }} />
-- }
-- ```
------------------------------------------------------------------------
mkTimeExample ∷ Effect (Unit → JSX)
mkTimeExample = component "TimeExample" \_ -> React.do
  time <- Hook.useTime
  -- Continuous rotation: map time to degrees
  rotate <- Hook.useTransformMap time \t -> t / 4000.0 * 360.0
  pure $ Motion.div
    { style: Yoga.css { rotate, width: "100px", height: "100px", background: "#60f" }
    }
    ([] ∷ Array JSX)

------------------------------------------------------------------------
-- useAnimationFrame
-- Source: packages/framer-motion/src/utils/use-animation-frame.ts
--
-- ```jsx
-- useAnimationFrame((time, delta) => {
--   // time = ms since mount, delta = ms since last frame
--   ref.current.style.transform = `rotateY(${time}deg)`
-- })
-- ```
------------------------------------------------------------------------
mkAnimationFrameExample ∷ Effect (Unit → JSX)
mkAnimationFrameExample = component "AnimationFrameExample" \_ -> React.do
  Hook.useAnimationFrame \time delta -> do
    Console.log ("frame: time=" <> show time <> " delta=" <> show delta)
  pure $ R.div_ [ R.text "Running animation frame loop" ]

------------------------------------------------------------------------
-- useReducedMotion
-- Source: packages/framer-motion/src/utils/reduced-motion/use-reduced-motion.ts
--
-- ```jsx
-- function Component() {
--   const shouldReduceMotion = useReducedMotion()
--   return <motion.div animate={shouldReduceMotion ? {} : { x: 100 }} />
-- }
-- ```
------------------------------------------------------------------------
mkReducedMotionExample ∷ Effect (Unit → JSX)
mkReducedMotionExample = component "ReducedMotionExample" \_ -> React.do
  _prefersReducedMotion <- Hook.useReducedMotion
  -- The nullable boolean can be inspected with Data.Nullable.toMaybe
  pure $ Motion.div
    { animate: M.animate $ Yoga.css { x: 100.0 }
    }
    ([] ∷ Array JSX)

------------------------------------------------------------------------
-- useWillChange
-- Source: packages/framer-motion/src/value/use-will-change/index.ts
--
-- ```jsx
-- function Component() {
--   const willChange = useWillChange()
--   return <motion.div style={{ willChange }} whileHover={{ scale: 1.2 }} />
-- }
-- ```
------------------------------------------------------------------------
mkWillChangeExample ∷ Effect (Unit → JSX)
mkWillChangeExample = component "WillChangeExample" \_ -> React.do
  willChange <- Hook.useWillChange
  -- Test willChangeAdd method
  React.useEffectOnce do
    Types.willChangeAdd willChange "transform"
    pure (pure unit)
  pure $ Motion.div
    { style: Yoga.css { willChange }
    , whileHover: M.whileHover $ Yoga.css { scale: 1.2 }
    }
    ([] ∷ Array JSX)

------------------------------------------------------------------------
-- useScroll
-- Source: packages/framer-motion/src/value/use-scroll.ts
--
-- No-args (page scroll):
-- ```jsx
-- const { scrollYProgress } = useScroll()
-- return <motion.div style={{ scaleX: scrollYProgress }} />
-- ```
--
-- With target:
-- ```jsx
-- const ref = useRef(null)
-- const { scrollYProgress } = useScroll({ target: ref })
-- ```
--
-- With container:
-- ```jsx
-- const ref = useRef(null)
-- const { scrollXProgress } = useScroll({ container: ref })
-- ```
--
-- With offset:
-- ```jsx
-- const { scrollYProgress } = useScroll({
--   target: ref,
--   offset: ["start end", "end start"]
-- })
-- ```
------------------------------------------------------------------------

-- Page scroll progress bar
mkScrollProgressBarExample ∷ Effect (Unit → JSX)
mkScrollProgressBarExample = component "ScrollProgressBar" \_ -> React.do
  { scrollYProgress } <- Hook.useScroll {}
  pure $ Motion.div
    { style: Yoga.css
        { scaleX: scrollYProgress
        , transformOrigin: "left"
        , position: "fixed"
        , top: "0"
        , left: "0"
        , right: "0"
        , height: "4px"
        , background: "#60f"
        }
    }
    ([] ∷ Array JSX)

-- Scroll with target ref
mkScrollTargetExample ∷ Effect (Unit → JSX)
mkScrollTargetExample = component "ScrollTargetExample" \_ -> React.do
  ref ← React.useRef null
  { scrollYProgress: _scrollYProgress } <- Hook.useScroll { target: cast ref }
  pure $ R.div { ref, children: [ R.text "Scroll target element" ] }

-- Scroll with container ref
mkScrollContainerExample ∷ Effect (Unit → JSX)
mkScrollContainerExample = component "ScrollContainerExample" \_ -> React.do
  containerRef ← React.useRef null
  { scrollXProgress: _scrollXProgress } <- Hook.useScroll
    { container: cast containerRef
    , axis: cast "x"
    }
  pure $ R.div { ref: containerRef, children: [ R.text "Scrollable container" ] }

-- Scroll with offset
mkScrollOffsetExample ∷ Effect (Unit → JSX)
mkScrollOffsetExample = component "ScrollOffsetExample" \_ -> React.do
  ref ← React.useRef null
  { scrollYProgress: _scrollYProgress } <- Hook.useScroll
    { target: cast ref
    , offset: cast [ "start end", "end start" ]
    }
  pure $ R.div { ref, children: [ R.text "Offset scroll target" ] }

------------------------------------------------------------------------
-- LazyMotion
-- Source: packages/framer-motion/src/components/LazyMotion/index.tsx
--
-- Synchronous:
-- ```jsx
-- import { LazyMotion, m, domAnimation } from "framer-motion"
-- function App() {
--   return (
--     <LazyMotion features={domAnimation}>
--       <m.div animate={{ scale: 2 }} />
--     </LazyMotion>
--   )
-- }
-- ```
--
-- With strict mode:
-- ```jsx
-- <LazyMotion features={domAnimation} strict>
--   <m.div animate={{ scale: 2 }} />
-- </LazyMotion>
-- ```
------------------------------------------------------------------------
mkLazyMotionExample ∷ Effect (Unit → JSX)
mkLazyMotionExample = component "LazyMotionExample" \_ -> React.do
  pure $ element M.lazyMotion
    { features: unsafeToForeign {}  -- domAnimation would be imported from motion/react
    , children: [ R.text "Lazy loaded features" ]
    }

mkLazyMotionStrictExample ∷ Effect (Unit → JSX)
mkLazyMotionStrictExample = component "LazyMotionStrict" \_ -> React.do
  pure $ element M.lazyMotion
    { features: unsafeToForeign {}
    , strict: cast true
    , children: [ R.text "Strict lazy motion" ]
    }

------------------------------------------------------------------------
-- LayoutGroup
-- Source: packages/framer-motion/src/components/LayoutGroup/index.tsx
--
-- ```jsx
-- <LayoutGroup id="tabs">
--   <TabItem />
--   <TabItem />
-- </LayoutGroup>
-- ```
--
-- With inherit:
-- ```jsx
-- <LayoutGroup id="outer">
--   <LayoutGroup id="inner" inherit="id">
--     <motion.div layout />
--   </LayoutGroup>
-- </LayoutGroup>
-- ```
------------------------------------------------------------------------
mkLayoutGroupExample ∷ Effect (Unit → JSX)
mkLayoutGroupExample = component "LayoutGroupExample" \_ -> React.do
  pure $ element M.layoutGroup
    { id: cast "tabs"
    , children:
        [ Motion.div { layout: M.layout true, layoutId: M.layoutId "tab1" } ([] ∷ Array JSX)
        , Motion.div { layout: M.layout true, layoutId: M.layoutId "tab2" } ([] ∷ Array JSX)
        ]
    }

mkLayoutGroupInheritExample ∷ Effect (Unit → JSX)
mkLayoutGroupInheritExample = component "LayoutGroupInherit" \_ -> React.do
  pure $ element M.layoutGroup
    { id: cast "outer"
    , children:
        [ element M.layoutGroup
            { id: cast "inner"
            , inherit: cast "id"
            , children:
                [ Motion.div { layout: M.layout true } ([] ∷ Array JSX)
                ]
            }
        ]
    }

------------------------------------------------------------------------
-- MotionConfig
-- Source: packages/framer-motion/src/components/MotionConfig/index.tsx
--
-- ```jsx
-- import { motion, MotionConfig } from "framer-motion"
--
-- export function App() {
--   return (
--     <MotionConfig transition={{ type: "spring" }}>
--       <motion.div animate={{ x: 100 }} />
--     </MotionConfig>
--   )
-- }
-- ```
------------------------------------------------------------------------
mkMotionConfigExample ∷ Effect (Unit → JSX)
mkMotionConfigExample = component "MotionConfigExample" \_ -> React.do
  pure $ element M.motionConfig
    { transition: M.transition { type: "spring" }
    , children:
        [ Motion.div { animate: M.animate $ Yoga.css { x: 100.0 } } ([] ∷ Array JSX)
        ]
    }

------------------------------------------------------------------------
-- Reorder.Group + Reorder.Item
-- Source: packages/framer-motion/src/components/Reorder/Group.tsx
--         packages/framer-motion/src/components/Reorder/Item.tsx
--
-- ```jsx
-- function Component() {
--   const [items, setItems] = useState([0, 1, 2])
--   return (
--     <Reorder.Group values={items} onReorder={setItems}>
--       {items.map((item) => (
--         <Reorder.Item key={item} value={item}>
--           {item}
--         </Reorder.Item>
--       ))}
--     </Reorder.Group>
--   )
-- }
-- ```
------------------------------------------------------------------------
mkReorderExample ∷ Effect (Unit → JSX)
mkReorderExample = component "ReorderExample" \_ -> React.do
  items /\ setItems <- React.useState' [ "a", "b", "c" ]
  pure $ element M.reorderGroup
    { axis: "y"
    , values: unsafeToForeign <$> items
    , onReorder: mkEffectFn1 \newItems -> setItems (unsafeCoerce newItems)
    , children: items <#> \item ->
        element M.reorderItem
          { value: unsafeToForeign item
          , children: R.text item
          }
    }

-- Horizontal reorder
mkReorderHorizontalExample ∷ Effect (Unit → JSX)
mkReorderHorizontalExample = component "ReorderHorizontal" \_ -> React.do
  items /\ setItems <- React.useState' [ 1, 2, 3, 4 ]
  pure $ element M.reorderGroup
    { axis: "x"
    , values: unsafeToForeign <$> items
    , onReorder: mkEffectFn1 \newItems -> setItems (unsafeCoerce newItems)
    , children: items <#> \item ->
        element M.reorderItem
          { value: unsafeToForeign item
          , children: R.text (show item)
          }
    }

------------------------------------------------------------------------
-- MotionValue.onAnimationCancel
--
-- ```jsx
-- const x = useMotionValue(0)
-- useEffect(() => {
--   return x.on("animationCancel", () => console.log("cancelled"))
-- }, [])
-- ```
------------------------------------------------------------------------
mkOnAnimationCancelExample ∷ Effect (Unit → JSX)
mkOnAnimationCancelExample = component "OnAnimationCancelExample" \_ -> React.do
  x <- MV.useMotionValue 0.0
  React.useEffectOnce do
    unsub <- MV.onAnimationCancel (\(_ ∷ Number) -> Console.log "cancelled") x
    pure unsub
  pure $ Motion.div { style: Yoga.css { x } } ([] ∷ Array JSX)

------------------------------------------------------------------------
-- Combined: useTime + useVelocity + useTransform
-- Spinning box that shows velocity
------------------------------------------------------------------------
mkCombinedTimeVelocityExample ∷ Effect (Unit → JSX)
mkCombinedTimeVelocityExample = component "CombinedTimeVelocity" \_ -> React.do
  time <- Hook.useTime
  rotate <- Hook.useTransformMap time \t -> t / 10.0
  rotateVelocity <- Hook.useVelocity rotate
  -- Map velocity to scale (faster spin = bigger)
  let clamp x = if x < 0.0 then negate x else x
  scale <- Hook.useTransformMap rotateVelocity \v -> 1.0 + (min (clamp v) 100.0) / 100.0
  pure $ Motion.div
    { style: Yoga.css
        { rotate
        , scale
        , width: "100px"
        , height: "100px"
        , background: "linear-gradient(135deg, #60f, #f06)"
        , borderRadius: "16px"
        }
    }
    ([] ∷ Array JSX)

------------------------------------------------------------------------
-- Combined: useScroll + useSpring (scroll-linked spring progress)
------------------------------------------------------------------------
mkScrollSpringExample ∷ Effect (Unit → JSX)
mkScrollSpringExample = component "ScrollSpringExample" \_ -> React.do
  { scrollYProgress } <- Hook.useScroll {}
  let
    springOpts ∷ Hook.SpringProps
    springOpts =
      { stiffness: cast 100
      , damping: cast 30
      , restDelta: cast 0.001
      , from: cast undefined
      , to: cast undefined
      , mass: cast undefined
      , velocity: cast undefined
      , restSpeed: cast undefined
      }
  scaleX <- Hook.useSpringWithMotionValue scrollYProgress springOpts
  pure $ Motion.div
    { style: Yoga.css
        { scaleX
        , transformOrigin: "left"
        , position: "fixed"
        , top: "0"
        , left: "0"
        , right: "0"
        , height: "4px"
        , background: "#60f"
        }
    }
    ([] ∷ Array JSX)
