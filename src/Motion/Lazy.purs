module Motion.Lazy
  ( lazyMotion
  , domAnimation
  ) where

import Foreign (Foreign)
import Motion.Types (LazyMotionProps)
import Prim.Row (class Union)
import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)

-- `LazyMotion` and its feature bundles live in their own module + foreign so
-- importing them pulls only `LazyMotion` (and the chosen feature set) from
-- motion/react — not AnimatePresence / LayoutGroup / Reorder / MotionConfig.
-- That isolation is what lets a consumer keep the eager motion bundle small:
-- import from here, never from the aggregate `Motion`, which drags every
-- provider in through a single foreign module.
foreign import lazyMotionImpl ∷ ∀ props kids. props -> kids -> JSX

lazyMotion
  ∷ ∀ attrs attrs_ kids
   . Union attrs attrs_ LazyMotionProps
  => IsJSX kids
  => { | attrs } -> kids -> JSX
lazyMotion = lazyMotionImpl

-- Feature bundle for `lazyMotion`'s `features`: `domAnimation` is the light set
-- — animations, variants, exit, whileInView (no layout/drag) — imported
-- statically so it pairs with the `m` components with no async round-trip.
-- (domMax — layout + drag — is intentionally omitted: a dynamic import of it
-- pulls the whole framer bundle into an async chunk even when unused.)
foreign import domAnimation ∷ Foreign
