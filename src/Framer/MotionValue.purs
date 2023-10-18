module MotionValue where

import Prelude
import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn3, mkEffectFn1, runEffectFn1, runEffectFn3)
import Framer.Motion.Types (AnimationPlaybackControls)
import React.Basic.Hooks (Hook, unsafeHook)

foreign import data MotionValue ∷ Type -> Type

foreign import data UseMotionValue ∷ Type -> Type -> Type

foreign import newMotionValue :: ∀ a. a -> Effect (MotionValue a)

foreign import destroy :: ∀ a. MotionValue a -> Effect Unit

foreign import useMotionValueImpl ∷ ∀ a. EffectFn1 a (MotionValue a)

foreign import get ∷ ∀ a. (MotionValue a) -> Effect a

foreign import setImpl ∷ ∀ a. a -> Boolean -> (MotionValue a) -> Effect Unit

setButDoNotRender ∷ ∀ a. a -> MotionValue a -> Effect Unit
setButDoNotRender v = setImpl v false

jump ∷ ∀ a. a -> MotionValue a -> Effect Unit
jump = setButDoNotRender

set ∷ ∀ a. a -> MotionValue a -> Effect Unit
set v = setImpl v true

foreign import isAnimating ∷ ∀ a. MotionValue a -> Effect Boolean

foreign import stop ∷ ∀ a. MotionValue a -> Effect Unit

foreign import onChange ∷ ∀ a. (a -> Effect Unit) -> MotionValue a -> Effect (Effect Unit)

foreign import onAnimationComplete ∷ ∀ a. (a -> Effect Unit) -> MotionValue a -> Effect (Effect Unit)

foreign import onAnimationStart ∷ ∀ a. (a -> Effect Unit) -> MotionValue a -> Effect (Effect Unit)

useMotionValue ∷ ∀ a. a -> Hook (UseMotionValue a) (MotionValue a)
useMotionValue = unsafeHook <<< runEffectFn1 useMotionValueImpl

foreign import animateImpl ∷ ∀ a options. EffectFn3 (MotionValue a) a { | options } AnimationPlaybackControls

animate ∷ ∀ a options. a -> Record options -> MotionValue a -> Effect AnimationPlaybackControls
animate target opts value = runEffectFn3 animateImpl value target opts

foreign import stopAnimation ∷ AnimationPlaybackControls -> Effect Unit
