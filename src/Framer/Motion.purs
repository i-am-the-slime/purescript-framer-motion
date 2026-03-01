module Framer.Motion
  ( motion
  , withMotion
  , animatePresence
  , lazyMotion
  , layoutGroup
  , motionConfig
  , reorderGroup
  , reorderItem
  , module Framer.Motion.Types
  , module Framer.Motion.MotionComponent
  , module Framer.Motion.Hook
  , startAnimation
  , startAnimationDynamic
  , startAnimationVariant
  , stopAnimation
  ) where

import Framer.Motion.Types
import Framer.Motion.Hook
import Control.Promise (Promise)
import Control.Promise as Promise
import Effect (Effect)
import Effect.Aff (Aff)
import Framer.Motion.MotionComponent (a, a_, abbr, address, area, article, aside, audio, b, blockquote, br, button, button_, canvas, caption, cite, code, col, colgroup, custom, datalist, dd, del, details, dfn, dialog, div, div_, dl, dt, em, embed, fieldset, figcaption, figure, footer, form, g, g_, h1, h2, h3, h4, h5, h6, header, hgroup, hr, i, iframe, img, input, ins, kbd, label, legend, li, li_, line, linearGradient, main, mark, marker, mask, menu, meter, nav, ol, optgroup, option, output, p, path, path_, picture, polygon, polyline, pre, progress, q, radialGradient, rect, rp, rt, ruby, s, samp, section, select, small, source, span, span_, stop, strong, sub, summary, sup, svg, svg_, table, tbody, td, text, textPath, textarea, tfoot, th, thead, time, tr, tspan, u, ul, use, video, circle, clipPath, defs, ellipse, foreignObject, image)
import Prelude (Unit, flip)
import Prim.Row (class Nub, class Union)
import React.Basic (JSX)
import Yoga.React.DOM.Internal (CSS, class IsJSX)
import Record (disjointUnion)
import Untagged.Castable (class Castable, cast)

withMotion
  ∷ ∀ result baseProps motionSubset
   . Union baseProps (MotionProps ()) result
  => Nub result result
  => Castable motionSubset { | MotionProps () }
  => Record baseProps
  -> motionSubset
  -> Record result
withMotion old new = disjointUnion old ((cast new) ∷ { | MotionProps () })

motion
  ∷ ∀ result baseProps motionSubset
   . Union baseProps (MotionProps ()) result
  => Nub result result
  => Castable motionSubset { | MotionProps () }
  => motionSubset
  -> Record baseProps
  -> Record result
motion = flip withMotion

foreign import animatePresenceImpl ∷ ∀ props kids. props -> kids -> JSX

animatePresence
  ∷ ∀ attrs attrs_ kids
   . Union attrs attrs_ AnimatePresenceProps
  => IsJSX kids
  => { | attrs } -> kids -> JSX
animatePresence = animatePresenceImpl

foreign import startImpl ∷ ∀ arg. arg -> AnimationControls -> Effect (Promise Unit)

foreign import stopImpl ∷ AnimationControls -> Effect Unit

startAnimation ∷ CSS -> AnimationControls -> Aff Unit
startAnimation arg controls = Promise.toAffE (startImpl arg controls)

startAnimationDynamic ∷ ∀ arg. (arg -> CSS) -> AnimationControls -> Aff Unit
startAnimationDynamic arg controls = Promise.toAffE (startImpl arg controls)

startAnimationVariant ∷ VariantLabel -> AnimationControls -> Aff Unit
startAnimationVariant arg controls = Promise.toAffE (startImpl arg controls)

stopAnimation ∷ AnimationControls -> Effect Unit
stopAnimation = stopImpl

-- LazyMotion
foreign import lazyMotionImpl ∷ ∀ props kids. props -> kids -> JSX

lazyMotion
  ∷ ∀ attrs attrs_ kids
   . Union attrs attrs_ LazyMotionProps
  => IsJSX kids
  => { | attrs } -> kids -> JSX
lazyMotion = lazyMotionImpl

-- LayoutGroup
foreign import layoutGroupImpl ∷ ∀ props kids. props -> kids -> JSX

layoutGroup
  ∷ ∀ attrs attrs_ kids
   . Union attrs attrs_ LayoutGroupProps
  => IsJSX kids
  => { | attrs } -> kids -> JSX
layoutGroup = layoutGroupImpl

-- MotionConfig
foreign import motionConfigImpl ∷ ∀ props kids. props -> kids -> JSX

motionConfig
  ∷ ∀ attrs attrs_ kids
   . Union attrs attrs_ MotionConfigProps
  => IsJSX kids
  => { | attrs } -> kids -> JSX
motionConfig = motionConfigImpl

-- Reorder.Group
foreign import reorderGroupImpl ∷ ∀ props kids. props -> kids -> JSX

reorderGroup
  ∷ ∀ attrs attrs_ kids
   . Union attrs attrs_ ReorderGroupProps
  => IsJSX kids
  => { | attrs } -> kids -> JSX
reorderGroup = reorderGroupImpl

-- Reorder.Item
foreign import reorderItemImpl ∷ ∀ props kids. props -> kids -> JSX

reorderItem
  ∷ ∀ attrs attrs_ kids
   . Union attrs attrs_ ReorderItemProps
  => IsJSX kids
  => { | attrs } -> kids -> JSX
reorderItem = reorderItemImpl
