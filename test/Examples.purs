-- | Compile-time examples that exercise all new hooks and components.
-- | Ported from the Motion docs to ensure the PureScript bindings type-check.
module Test.Examples where

import Prelude

import Data.Nullable (null)
import Effect (Effect)
import Effect.Class.Console as Console
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
import Effect.Uncurried (mkEffectFn1)
import Untagged.Castable (cast)
import Unsafe.Coerce (unsafeCoerce)
import Yoga.React.DOM.Internal (css) as Yoga

-- | useDragControls example
-- | From: https://motion.dev/docs/react-use-drag-controls
-- | ```jsx
-- | const controls = useDragControls()
-- | <div onPointerDown={(e) => controls.start(e)} />
-- | <motion.div drag dragControls={controls} />
-- | ```
mkDragControlsExample ∷ Effect (Unit → JSX)
mkDragControlsExample = component "DragControlsExample" \_ -> React.do
  controls <- Hook.useDragControls
  pure $ R.div_
    [ R.div { onPointerDown: mkEffectFn1 \e -> Types.dragControlsStart controls (unsafeCoerce e) }
    , Motion.div
        { drag: M.drag true
        }
        ([] ∷ Array JSX)
    ]

-- | useMotionValueEvent example
-- | From: https://motion.dev/docs/react-use-motion-value-event
-- | ```jsx
-- | const x = useMotionValue(0)
-- | useMotionValueEvent(x, "change", (latest) => console.log(latest))
-- | ```
mkMotionValueEventExample ∷ Effect (Unit → JSX)
mkMotionValueEventExample = component "MotionValueEventExample" \_ -> React.do
  x <- MV.useMotionValue 0.0
  Hook.useMotionValueEvent x "change" \latest ->
    Console.log ("x changed to " <> show (latest ∷ Number))
  pure $ Motion.div
    { style: Yoga.css { x }
    , drag: M.drag "x"
    }
    ([] ∷ Array JSX)

-- | useVelocity example
-- | From: https://motion.dev/docs/react-use-velocity
-- | ```jsx
-- | const x = useMotionValue(0)
-- | const xVelocity = useVelocity(x)
-- | ```
mkVelocityExample ∷ Effect (Unit → JSX)
mkVelocityExample = component "VelocityExample" \_ -> React.do
  x <- MV.useMotionValue 0.0
  _xVelocity <- Hook.useVelocity x
  pure $ Motion.div
    { style: Yoga.css { x }
    , drag: M.drag "x"
    }
    ([] ∷ Array JSX)

-- | useTime example
-- | From: https://motion.dev/docs/react-use-time
-- | ```jsx
-- | const time = useTime()
-- | const rotate = useTransform(time, [0, 4000], [0, 360], { clamp: false })
-- | ```
mkTimeExample ∷ Effect (Unit → JSX)
mkTimeExample = component "TimeExample" \_ -> React.do
  time <- Hook.useTime
  rotate <- Hook.useTransformMap time \t -> t / 4000.0 * 360.0
  pure $ Motion.div { style: Yoga.css { rotate } } ([] ∷ Array JSX)

-- | useAnimationFrame example
-- | From: https://motion.dev/docs/react-use-animation-frame
-- | ```jsx
-- | useAnimationFrame((time, delta) => console.log(time, delta))
-- | ```
mkAnimationFrameExample ∷ Effect (Unit → JSX)
mkAnimationFrameExample = component "AnimationFrameExample" \_ -> React.do
  Hook.useAnimationFrame \time delta ->
    Console.log ("time: " <> show time <> " delta: " <> show delta)
  pure $ R.div_ [ R.text "Animating" ]

-- | useReducedMotion example
-- | From: https://motion.dev/docs/react-use-reduced-motion
-- | ```jsx
-- | const prefersReducedMotion = useReducedMotion()
-- | ```
mkReducedMotionExample ∷ Effect (Unit → JSX)
mkReducedMotionExample = component "ReducedMotionExample" \_ -> React.do
  _prefersReducedMotion <- Hook.useReducedMotion
  pure $ Motion.div
    { animate: M.animate $ Yoga.css { x: 100.0 } }
    ([] ∷ Array JSX)

-- | useWillChange example
-- | From: https://motion.dev/docs/react-will-change
-- | ```jsx
-- | const willChange = useWillChange()
-- | <motion.div style={{ willChange }} whileHover={{ scale: 1.2 }} />
-- | ```
mkWillChangeExample ∷ Effect (Unit → JSX)
mkWillChangeExample = component "WillChangeExample" \_ -> React.do
  willChange <- Hook.useWillChange
  pure $ Motion.div
    { style: Yoga.css { willChange }
    , whileHover: M.whileHover $ Yoga.css { scale: 1.2 }
    }
    ([] ∷ Array JSX)

-- | useScroll with target example
-- | From: https://motion.dev/docs/react-use-scroll
-- | ```jsx
-- | const ref = useRef(null)
-- | const { scrollYProgress } = useScroll({ target: ref })
-- | ```
mkScrollExample ∷ Effect (Unit → JSX)
mkScrollExample = component "ScrollExample" \_ -> React.do
  ref ← React.useRef null
  { scrollYProgress: _scrollYProgress } <- Hook.useScroll { target: cast ref }
  pure $ R.div { ref, children: [ R.text "Scroll target" ] }

-- | LazyMotion example
-- | From: https://motion.dev/docs/react-lazy-motion
-- | ```jsx
-- | <LazyMotion features={domAnimation}>...</LazyMotion>
-- | ```
mkLazyMotionExample ∷ Effect (Unit → JSX)
mkLazyMotionExample = component "LazyMotionExample" \_ -> React.do
  pure $ element M.lazyMotion
    { features: unsafeToForeign {}
    , children: [ R.text "Lazy loaded" ]
    }

-- | LayoutGroup example
-- | From: https://motion.dev/docs/react-layout-group
-- | ```jsx
-- | <LayoutGroup id="tabs">...</LayoutGroup>
-- | ```
mkLayoutGroupExample ∷ Effect (Unit → JSX)
mkLayoutGroupExample = component "LayoutGroupExample" \_ -> React.do
  pure $ element M.layoutGroup
    { id: cast "tabs"
    , children:
        [ Motion.div { layout: M.layout true, layoutId: M.layoutId "tab1" } ([] ∷ Array JSX)
        , Motion.div { layout: M.layout true, layoutId: M.layoutId "tab2" } ([] ∷ Array JSX)
        ]
    }

-- | MotionConfig example
-- | From: https://motion.dev/docs/react-motion-config
-- | ```jsx
-- | <MotionConfig transition={{ duration: 0.5 }} reducedMotion="user">
-- |   <motion.div animate={{ x: 100 }} />
-- | </MotionConfig>
-- | ```
mkMotionConfigExample ∷ Effect (Unit → JSX)
mkMotionConfigExample = component "MotionConfigExample" \_ -> React.do
  pure $ element M.motionConfig
    { transition: M.transition { duration: 0.5 }
    , children:
        [ Motion.div { animate: M.animate $ Yoga.css { x: 100.0 } } ([] ∷ Array JSX)
        ]
    }

-- | Reorder.Group + Reorder.Item example
-- | From: https://motion.dev/docs/react-reorder
-- | ```jsx
-- | const [items, setItems] = useState([1, 2, 3])
-- | <Reorder.Group axis="y" values={items} onReorder={setItems}>
-- |   {items.map(item => <Reorder.Item key={item} value={item}>{item}</Reorder.Item>)}
-- | </Reorder.Group>
-- | ```
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
          , children: [ R.text item ]
          }
    }

-- | MotionValue.onAnimationCancel example
-- | ```jsx
-- | const x = useMotionValue(0)
-- | x.on("animationCancel", () => console.log("cancelled"))
-- | ```
mkOnAnimationCancelExample ∷ Effect (Unit → JSX)
mkOnAnimationCancelExample = component "OnAnimationCancelExample" \_ -> React.do
  x <- MV.useMotionValue 0.0
  React.useEffectOnce do
    unsub <- MV.onAnimationCancel (\(_ ∷ Number) -> Console.log "cancelled") x
    pure unsub
  pure $ Motion.div { style: Yoga.css { x } } ([] ∷ Array JSX)
