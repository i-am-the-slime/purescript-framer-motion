module Framer.Motion.Hook
  ( useViewportScroll
  , useAnimation
  , UseAnimation
  , UseViewportScroll
  , useTransform
  , useTransformMap
  , useTransformMapE
  , useTransformEffect
  , useSpringWithMotionValue
  , useSpringWithNumber
  , UseSpring
  , SpringProps
  , UseTransform
  , ViewportScrollValues
  , TransformOptions
  , Ease
  , useInView
  , UseInView
  , InViewOptions
  , useAnimate
  , UseAnimate
  , AnimateFunction
  , useDragControls
  , UseDragControls
  , useMotionValueEvent
  , UseMotionValueEvent
  , useVelocity
  , UseVelocity
  , useTime
  , UseTime
  , useAnimationFrame
  , UseAnimationFrame
  , useReducedMotion
  , UseReducedMotion
  , useWillChange
  , UseWillChange
  , useScroll
  , UseScroll
  ) where

import Prelude
import Data.Array as Array
import Data.Maybe (Maybe(..))
import Data.Nullable (Nullable)
import Data.Tuple.Nested ((/\), type (/\))
import Data.TwoOrMore (TwoOrMore)
import Data.TwoOrMore as TwoOrMore
import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2, EffectFn3, EffectFn4, mkEffectFn1, runEffectFn1, runEffectFn2, runEffectFn3, runEffectFn4)
import Framer.Motion.Types (AnimationControls, DragControls, WillChange, UseScrollOptions)
import Literals.Undefined (Undefined, undefined)
import MotionValue (MotionValue)
import Prim.Row (class Union)
import React.Basic.Hooks (Hook, Ref, unsafeHook)
import Untagged.Castable (class Castable, cast)
import Untagged.Union (type (|+|), UndefinedOr, maybeToUor)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM (Node)

-- UseViewportScroll
type ViewportScrollValues =
  { scrollX ∷ MotionValue Number
  , scrollY ∷ MotionValue Number
  , scrollXProgress ∷ MotionValue Number
  , scrollYProgress ∷ MotionValue Number
  }

foreign import data UseViewportScroll ∷ Type -> Type

foreign import useViewportScrollImpl ∷ Effect ViewportScrollValues

useViewportScroll ∷ Hook UseViewportScroll ViewportScrollValues
useViewportScroll = unsafeHook useViewportScrollImpl

data Ease
  = EaseFn (Number -> Number)
  | EaseFns (Array (Number -> Number))

-- UseTransform
type TransformOptionsImpl :: forall k. k -> Type
type TransformOptionsImpl a =
  { clamp ∷ UndefinedOr Boolean
  , ease ∷ UndefinedOr ((Number -> Number) |+| (Array (Number -> Number)))
  }

type TransformOptions :: forall k. k -> Type
type TransformOptions a =
  { clamp ∷ Maybe Boolean
  , ease ∷ Maybe Ease
  }

transformOptionsToTransformOptionsImpl ∷ ∀ a. TransformOptions a -> TransformOptionsImpl a
transformOptionsToTransformOptionsImpl { clamp, ease } =
  { clamp: maybeToUor clamp
  , ease:
      case ease of
        Just (EaseFn fn) -> cast fn
        Just (EaseFns fns) -> cast fns
        Nothing -> cast undefined
  }

foreign import data UseTransform ∷ Type -> Type -> Type

foreign import useTransformImpl
  ∷ ∀ a
  . EffectFn4
      (MotionValue a)
      (Array Number)
      (Array a)
      (UndefinedOr (TransformOptionsImpl a))
      (MotionValue a)

useTransform
  ∷ ∀ a. MotionValue a -> TwoOrMore (Number /\ a) -> Maybe (TransformOptions a) -> Hook (UseTransform a) (MotionValue a)
useTransform motionValue mapping options =
  unsafeHook do
    runEffectFn4
      useTransformImpl
      motionValue
      numbers
      as
      (maybeToUor $ transformOptionsToTransformOptionsImpl <$> options)
  where
  numbers /\ as = TwoOrMore.toArray mapping # Array.unzip

foreign import useTransformMapImpl
  ∷ ∀ a b
  . EffectFn2
      (MotionValue a)
      (a -> b)
      (MotionValue b)

useTransformMap :: forall a b. MotionValue a -> (a -> b) -> Hook (UseTransform a) (MotionValue b)
useTransformMap mv fn = unsafeHook do
  runEffectFn2 useTransformMapImpl mv fn

-- UseSpring
type SpringProps =
  { from ∷ Number |+| Int |+| Undefined
  , to ∷ Number |+| Int |+| Undefined
  , stiffness ∷ Number |+| Int |+| Undefined
  , damping ∷ Number |+| Int |+| Undefined
  , mass ∷ Number |+| Int |+| Undefined
  , velocity ∷ Number |+| Int |+| Undefined
  , restSpeed ∷ Number |+| Int |+| Undefined
  , restDelta ∷ Number |+| Int |+| Undefined
  }

foreign import data UseSpring ∷ Type -> Type -> Type

foreign import useSpringImpl
  ∷ ∀ a b
  . EffectFn2
      (MotionValue a |+| Number)
      SpringProps
      b

useSpringWithMotionValue
  ∷ ∀ a opts. Castable opts SpringProps => MotionValue a -> opts -> Hook (UseSpring (MotionValue a)) (MotionValue a)
useSpringWithMotionValue motionValue springProps =
  unsafeHook do
    runEffectFn2
      useSpringImpl
      (cast motionValue ∷ MotionValue a |+| Number)
      (cast springProps)

useSpringWithNumber
  ∷ ∀ opts. Castable opts SpringProps => Number -> opts -> Hook (UseSpring (MotionValue Number)) (MotionValue Number)
useSpringWithNumber number springProps =
  unsafeHook do
    runEffectFn2
      useSpringImpl
      (cast number ∷ MotionValue Number |+| Number)
      (cast springProps)

foreign import data UseAnimation ∷ Type -> Type

foreign import useAnimationImpl ∷ Effect AnimationControls

useAnimation ∷ Hook UseAnimation AnimationControls
useAnimation = unsafeHook useAnimationImpl

foreign import useTransformMapEImpl ∷ ∀ a b. EffectFn2 (MotionValue a) (EffectFn1 a b) (MotionValue b)

useTransformMapE ∷ ∀ a b. (a → Effect b) → MotionValue a → Hook (UseTransform b) (MotionValue b)
useTransformMapE fn val = unsafeHook $ runEffectFn2 useTransformMapEImpl val (mkEffectFn1 fn)

foreign import useTransformEffectImpl :: forall a. EffectFn1 (Effect a) (MotionValue a)

useTransformEffect :: forall a. (Effect a) -> Hook (UseTransform a) (MotionValue a)
useTransformEffect = unsafeHook <<< runEffectFn1 useTransformEffectImpl

-- UseInView
foreign import data InViewOptions ∷ Type

foreign import data UseInView ∷ Type -> Type

foreign import useInViewImpl ∷ EffectFn2 (Ref (Nullable Node)) InViewOptions Boolean

useInView ∷ Ref (Nullable Node) -> Maybe InViewOptions -> Hook (UseInView) Boolean
useInView ref options =
  unsafeHook do
    runEffectFn2 useInViewImpl ref
      ( case options of
          Nothing -> unsafeCoerce {}
          Just opts -> opts
      )

-- UseAnimate
foreign import data AnimateFunction ∷ Type

foreign import data UseAnimate ∷ Type -> Type

foreign import useAnimateImpl ∷ Effect { scope ∷ Ref (Nullable Node), animate ∷ AnimateFunction }

useAnimate ∷ Hook (UseAnimate) { scope ∷ Ref (Nullable Node), animate ∷ AnimateFunction }
useAnimate = unsafeHook useAnimateImpl

-- UseDragControls
foreign import data UseDragControls ∷ Type -> Type

foreign import useDragControlsImpl ∷ Effect DragControls

useDragControls ∷ Hook UseDragControls DragControls
useDragControls = unsafeHook useDragControlsImpl

-- UseMotionValueEvent
foreign import data UseMotionValueEvent ∷ Type -> Type

foreign import useMotionValueEventImpl ∷ ∀ a. EffectFn3 (MotionValue a) String (EffectFn1 a Unit) Unit

useMotionValueEvent ∷ ∀ a. MotionValue a → String → (a → Effect Unit) → Hook UseMotionValueEvent Unit
useMotionValueEvent mv eventName callback =
  unsafeHook do
    runEffectFn3 useMotionValueEventImpl mv eventName (mkEffectFn1 callback)

-- UseVelocity
foreign import data UseVelocity ∷ Type -> Type

foreign import useVelocityImpl ∷ EffectFn1 (MotionValue Number) (MotionValue Number)

useVelocity ∷ MotionValue Number → Hook UseVelocity (MotionValue Number)
useVelocity = unsafeHook <<< runEffectFn1 useVelocityImpl

-- UseTime
foreign import data UseTime ∷ Type -> Type

foreign import useTimeImpl ∷ Effect (MotionValue Number)

useTime ∷ Hook UseTime (MotionValue Number)
useTime = unsafeHook useTimeImpl

-- UseAnimationFrame
foreign import data UseAnimationFrame ∷ Type -> Type

foreign import useAnimationFrameImpl ∷ EffectFn1 (Number → Number → Effect Unit) Unit

useAnimationFrame ∷ (Number → Number → Effect Unit) → Hook UseAnimationFrame Unit
useAnimationFrame callback =
  unsafeHook do
    runEffectFn1 useAnimationFrameImpl callback

-- UseReducedMotion
foreign import data UseReducedMotion ∷ Type -> Type

foreign import useReducedMotionImpl ∷ Effect (Nullable Boolean)

useReducedMotion ∷ Hook UseReducedMotion (Nullable Boolean)
useReducedMotion = unsafeHook useReducedMotionImpl

-- UseWillChange
foreign import data UseWillChange ∷ Type -> Type

foreign import useWillChangeImpl ∷ Effect WillChange

useWillChange ∷ Hook UseWillChange WillChange
useWillChange = unsafeHook useWillChangeImpl

-- UseScroll (with options)
foreign import data UseScroll ∷ Type -> Type

foreign import useScrollWithOptionsImpl ∷ ∀ attrs. EffectFn1 { | attrs } ViewportScrollValues

useScroll ∷ ∀ attrs attrs_. Union attrs attrs_ UseScrollOptions => { | attrs } → Hook UseScroll ViewportScrollValues
useScroll options = unsafeHook do
  runEffectFn1 useScrollWithOptionsImpl options
