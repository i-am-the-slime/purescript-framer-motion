module Framer.Motion
  ( motion
  , withMotion
  , animatePresence
  , animateSharedLayout
  , module Framer.Motion.Types
  , module Framer.Motion.MotionComponent
  , startAnimation
  , startAnimationDynamic
  , startAnimationVariant
  , stopAnimation
  ) where

import Framer.Motion.Types
import Control.Promise (Promise)
import Control.Promise as Promise
import Effect (Effect)
import Effect.Aff (Aff)
-- import Framer.Motion.MotionComponent (_data, abbr, address, area, article, aside, audio, b, base, bdi, bdo, blockquote, body, br, button, canvas, caption, circle, cite, clipPath, code, col, colgroup, custom, datalist, dd, defs, del, desc, details, dfn, dialog, div, ,  dl, dt, ellipse, em, embed, feBlend, feColorMatrix, feComponentTransfer, feComposite, feConvolveMatrix, feDiffuseLighting, feDisplacementMap, feDistantLight, feDropShadow, feFlood, feFuncA, feFuncB, feFuncG, feFuncR, feGaussianBlur, feImage, feMerge, feMergeNode, feMorphology, feOffset, fePointLight, feSpecularLighting, feSpotLight, feTile, feTurbulence, fieldset, figcaption, figure, filter, footer, foreignObject, form, g, h1, h2, h3, h4, h5, h6, head, header, hgroup, hr, html, i, iframe, image, img, input, ins, kbd, keygen, label, legend, li, line, linearGradient, link, main, map, mark, marker, mask, menu, menuitem, meta, metadata, meter, mkMotionComponentImpl, nav, noscript, object, ol, optgroup, option, output, p, param, path, pattern, picture, polygon, polyline, pre, progress, q, radialGradient, rect, rp, rt, ruby, s, samp, script, section, select, small, source, span, stop, strong, style, sub, summary, sup, svg, svgAnimate, svgSwitch, symbol, table, tbody, td, text, textPath, textarea, tfoot, th, thead, time, title, tr, track, tspan, u, ul, use, var, video, view, wbr)
import Framer.Motion.MotionComponent (div, divImpl, custom, span, spanImpl, button, buttonImpl, liImpl, li, input, inputImpl, path, pathImpl, svgImpl, svg)
import Prelude (Unit, flip)
import Prim.Row (class Nub, class Union)
import React.Basic (ReactComponent)
import React.Basic.DOM (CSS)
import Record (disjointUnion)
import Untagged.Castable (class Castable, cast)

withMotion ∷
  ∀ result baseProps motionSubset.
  Union baseProps (MotionProps ()) result => Nub result result => Castable motionSubset { | MotionProps () } => Record baseProps -> motionSubset -> Record result
withMotion old new = disjointUnion old ((cast new) ∷ { | MotionProps () })

motion ∷
  ∀ result baseProps motionSubset.
  Union baseProps (MotionProps ()) result => Nub result result => Castable motionSubset { | MotionProps () } => motionSubset -> Record baseProps -> Record result
motion = flip withMotion

foreign import animatePresenceImpl ∷ ∀ attrs. ReactComponent { | attrs }

animatePresence ∷
  ∀ attrs attrs_.
  Union attrs attrs_ AnimatePresenceProps =>
  ReactComponent { | attrs }
animatePresence = animatePresenceImpl

foreign import animateSharedLayoutImpl ∷ ∀ attrs. ReactComponent { | attrs }

animateSharedLayout ∷
  ∀ attrs attrs_.
  Union attrs attrs_ AnimateSharedLayoutProps =>
  ReactComponent { | attrs }
animateSharedLayout = animateSharedLayoutImpl

foreign import startImpl ∷ ∀ arg. arg -> AnimationControls -> Promise Unit

foreign import stopImpl ∷ AnimationControls -> Effect Unit

startAnimation ∷ CSS -> AnimationControls -> Aff Unit
startAnimation arg controls = Promise.toAff (startImpl arg controls)

startAnimationDynamic ∷ ∀ arg. (arg -> CSS) -> AnimationControls -> Aff Unit
startAnimationDynamic arg controls = Promise.toAff (startImpl arg controls)

startAnimationVariant ∷ VariantLabel -> AnimationControls -> Aff Unit
startAnimationVariant arg controls = Promise.toAff (startImpl arg controls)

stopAnimation ∷ AnimationControls -> Effect Unit
stopAnimation = stopImpl
