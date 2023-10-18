module Framer.Motion.Types where

import Prelude

import Data.Nullable (Nullable)
import Data.Symbol (class IsSymbol, reflectSymbol)
import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2, mkEffectFn1, mkEffectFn2, runEffectFn1)
import Foreign (Foreign, unsafeToForeign)
import Foreign.Object (Object)
import Heterogeneous.Mapping (class HMapWithIndex, class MappingWithIndex, hmapWithIndex)
import Literals.Undefined (Undefined)
import React.Basic (JSX)
import React.Basic.DOM (CSS, css)
import React.Basic.Hooks (Ref)
import Type.Proxy (Proxy)
import Unsafe.Coerce (unsafeCoerce)
import Untagged.Castable (class Castable, cast)
import Untagged.Union (type (|+|))
import Web.DOM (Node)
import Web.Event.Internal.Types (Event)
import Web.UIEvent.MouseEvent (MouseEvent)
import Effect.Aff (Aff)
import Control.Promise (toAffE)

type Id :: forall k. k -> k
type Id a = a

type MotionPropsF :: (Type -> Type) -> Row Type -> Row Type
type MotionPropsF f r =
  ( animate ∷ f Animate
  , custom ∷ f Foreign
  , drag ∷ f Drag
  , dragConstraints ∷ f DragConstraints
  , dragElastic ∷ f DragElastic
  , dragMomentum ∷ f DragMomentum
  , dragPropagation ∷ f DragPropagation
  , exit ∷ f Exit
  , initial ∷ f Initial
  , layout ∷ f Layout
  , layoutId ∷ f LayoutId
  , onAnimationComplete ∷ f OnAnimationComplete
  , onAnimationStart ∷ f OnAnimationStart
  , onDrag ∷ f OnDrag
  , onDragEnd ∷ f OnDragEnd
  , onDragStart ∷ f OnDragStart
  , pan :: f Pan
  , onPan ∷ f OnPan
  , onPanEnd ∷ f OnPanEnd
  , onPanStart ∷ f OnPanStart
  , onHoverEnd ∷ f OnHoverEnd
  , onHoverStart ∷ f OnHoverStart
  , onLayoutAnimationComplete ∷ f OnLayoutAnimationComplete
  , onTap ∷ f OnTap
  , onTapCancel ∷ f OnTapCancel
  , onTapEnd ∷ f OnTapEnd
  , onTapStart ∷ f OnTapStart
  , onViewportBoxUpdate ∷ f OnViewportBoxUpdate
  , transition ∷ f Transition
  , variants ∷ f Variants
  , whileHover ∷ f WhileHover
  , whileDrag ∷ f WhileDrag
  , whileTap ∷ f WhileTap
  | r
  )

type Drag = Boolean |+| String |+| Undefined

type Pan = Boolean |+| String |+| Undefined

type MotionProps :: Row Type -> Row Type
type MotionProps r =
  MotionPropsF Id r

type Transition =
  CSS |+| Undefined

newtype VariantLabel = VariantLabel String

data Target = Target

type Exit =
  CSS |+| VariantLabel |+| Array VariantLabel |+| Undefined

foreign import data AnimationControls ∷ Type

prop ∷ ∀ a b. Castable a b => a -> b
prop = cast

type Animate =
  CSS
    |+| VariantLabel
    |+| Array VariantLabel
    |+| AnimationControls
    |+| Undefined

type Initial =
  Boolean |+| CSS |+| VariantLabel |+| Array VariantLabel |+| Undefined

type Layout =
  Boolean |+| Undefined

type Variants =
  CSS |+| Undefined

type LayoutTransition =
  Boolean |+| Undefined

-- type Drag =
--   Boolean |+| String |+| Undefined

type DragMomentum =
  Boolean |+| Undefined

dragMomentum ∷ ∀ c. Castable c DragMomentum => c -> DragMomentum
dragMomentum = cast

type DragConstraints =
  Ref (Nullable Node) |+| BoundingBox2D |+| Undefined

type DragElastic = Boolean |+| Number |+| BoundingBox2D |+| Undefined

dragElastic ∷ ∀ c. Castable c DragElastic => c -> DragElastic
dragElastic = cast

dragElasticBoundingBox ∷ ∀ a. Castable a BoundingBox2D => a -> DragElastic
dragElasticBoundingBox x = cast ((cast x) ∷ BoundingBox2D)

type BoundingBox2D =
  { left ∷ Int |+| Number |+| Undefined
  , right ∷ Int |+| Number |+| Undefined
  , top ∷ Int |+| Number |+| Undefined
  , bottom ∷ Int |+| Number |+| Undefined
  }

boundingBox2D ∷ ∀ c. Castable c BoundingBox2D => c -> BoundingBox2D
boundingBox2D = cast

type Point2D =
  { x ∷ Number, y ∷ Number }

type PanInfo =
  { point ∷ Point2D, delta ∷ Point2D, offset ∷ Point2D, velocity ∷ Point2D }

type OnDragStart =
  (EffectFn2 Event PanInfo Unit |+| Undefined)

type OnDragEnd =
  (EffectFn2 Event PanInfo Unit |+| Undefined)

type OnDrag =
  (EffectFn2 Event PanInfo Unit |+| Undefined)

type OnPanStart =
  (EffectFn2 Event PanInfo Unit |+| Undefined)

type OnPanEnd =
  (EffectFn2 Event PanInfo Unit |+| Undefined)

type OnPan =
  (EffectFn2 Event PanInfo Unit |+| Undefined)

type WhileTap =
  TargetAndTransition |+| String |+| Undefined

type OnTap =
  (EffectFn2 Event TapInfo Unit |+| Undefined)

type OnTapStart =
  (EffectFn2 Event TapInfo Unit |+| Undefined)

type OnTapEnd =
  (EffectFn2 Event TapInfo Unit |+| Undefined)

type OnTapCancel =
  (EffectFn2 Event TapInfo Unit |+| Undefined)

onTapStart ∷ (Event -> TapInfo -> Effect Unit) -> OnTapStart
onTapStart = cast <<< toEffectFn

onTapEnd ∷ (Event -> TapInfo -> Effect Unit) -> OnTapEnd
onTapEnd = cast <<< toEffectFn

onTap ∷ (Event -> TapInfo -> Effect Unit) -> OnTap
onTap fn2 = cast (mkEffectFn2 fn2)

onTapCancel ∷ (Event -> TapInfo -> Effect Unit) -> OnTap
onTapCancel fn2 = cast (mkEffectFn2 fn2)

type Axis =
  { min ∷ Number, max ∷ Number }

type AxisBox2D =
  { x ∷ Axis
  , y ∷ Axis
  }

type EventInfo =
  { point ∷ { x ∷ Number, y ∷ Number }
  }

type AxisDelta =
  { translate ∷ Number
  , scale ∷ Number
  , origin ∷ Number
  , originPoint ∷ Number
  }

type BoxDelta =
  { x ∷ AxisDelta
  , y ∷ AxisDelta
  }

-- [TODO]: Fix this eventually?
type AnimationDefinition = Foreign -- VariantLabel |+| TargetAndTransition |+| TargetResolver

type OnAnimationComplete =
  (EffectFn1 AnimationDefinition Unit |+| Undefined)

onAnimationComplete :: (AnimationDefinition -> Effect Unit) -> OnAnimationComplete
onAnimationComplete = cast <<< toEffectFn

type OnAnimationStart =
  (Effect Unit |+| Undefined)

onAnimationStart :: (Effect Unit) -> OnAnimationStart
onAnimationStart = cast

type OnHoverStart =
  (EffectFn2 MouseEvent EventInfo Unit |+| Undefined)

onHoverStart ∷ (MouseEvent -> EventInfo -> Effect Unit) -> OnHoverStart
onHoverStart = cast <<< toEffectFn

type OnHoverEnd =
  (EffectFn2 MouseEvent EventInfo Unit |+| Undefined)

onHoverEnd ∷ (MouseEvent -> EventInfo -> Effect Unit) -> OnHoverEnd
onHoverEnd = cast <<< toEffectFn

type WhileHover =
  (EffectFn2 MouseEvent EventInfo Unit |+| CSS |+| Undefined)

whileHover ∷ ∀ c. Castable c WhileHover => c -> WhileHover
whileHover = cast

type WhileDrag =
  ( EffectFn2 MouseEvent EventInfo Unit
      |+| EffectFn2 MouseEvent EventInfo CSS
      |+| Undefined
  )

whileDrag ∷ ∀ c. Castable c WhileDrag => c -> WhileDrag
whileDrag = cast

type OnLayoutAnimationComplete =
  (Effect Unit |+| Undefined)

onLayoutAnimationComplete ∷ Effect Unit -> OnLayoutAnimationComplete
onLayoutAnimationComplete = cast

type OnViewportBoxUpdate =
  (EffectFn2 AxisBox2D BoxDelta Unit |+| Undefined)

onViewportBoxUpdate ∷ (AxisBox2D -> BoxDelta -> Effect Unit) -> OnViewportBoxUpdate
onViewportBoxUpdate = cast <<< toEffectFn

type TapInfo =
  { x ∷ Number, y ∷ Number }

-- Can contain "transition" and "transitionEnd"
type TargetAndTransition =
  CSS

type DragPropagation =
  Boolean |+| Undefined

whileTap ∷ ∀ c. Castable c WhileTap => c -> WhileTap
whileTap = cast

class EffectFnMaker fn effectFn | fn -> effectFn where
  toEffectFn ∷ fn -> effectFn

instance callbackableEffectFn2 ∷ EffectFnMaker (a -> b -> Effect c) (EffectFn2 a b c) where
  toEffectFn = mkEffectFn2

instance callbackableEffectFn1 ∷ EffectFnMaker (a -> Effect b) (EffectFn1 a b) where
  toEffectFn = mkEffectFn1

callback ∷ ∀ a c f. Castable c a => EffectFnMaker f c => f -> a
callback = cast <<< toEffectFn

onDragStart ∷ (Event -> PanInfo -> Effect Unit) -> OnDragStart
onDragStart = cast <<< toEffectFn

onDragEnd ∷ (Event -> PanInfo -> Effect Unit) -> OnDragEnd
onDragEnd = cast <<< toEffectFn

onDrag ∷ (Event -> PanInfo -> Effect Unit) -> OnDrag
onDrag fn2 = cast (mkEffectFn2 fn2)

pan ∷ ∀ a. Castable a Pan => a -> Pan
pan = cast

onPanStart ∷ (Event -> PanInfo -> Effect Unit) -> OnPanStart
onPanStart = cast <<< toEffectFn

onPanEnd ∷ (Event -> PanInfo -> Effect Unit) -> OnPanEnd
onPanEnd = cast <<< toEffectFn

onPan ∷ (Event -> PanInfo -> Effect Unit) -> OnPan
onPan fn2 = cast (mkEffectFn2 fn2)

customProp ∷ ∀ a. a -> Foreign
customProp = unsafeToForeign

type LayoutId =
  String |+| Undefined

layoutId ∷ ∀ a. Castable a LayoutId => a -> LayoutId
layoutId = cast

animate ∷ ∀ a. Castable a Animate => a -> Animate
animate = cast

initial ∷ ∀ a. Castable a Initial => a -> Initial
initial = cast

transition ∷ ∀ r. { | r } -> Transition
transition = cast <<< css

drag ∷ ∀ a. Castable a Drag => a -> Drag
drag = cast

dragConstraints ∷ ∀ a. Castable a DragConstraints => a -> DragConstraints
dragConstraints = cast

dragConstraintsBoundingBox ∷ ∀ a. Castable a BoundingBox2D => a -> DragConstraints
dragConstraintsBoundingBox x = cast ((cast x) ∷ BoundingBox2D)

dragPropagation ∷ ∀ a. Castable a DragPropagation => a -> DragPropagation
dragPropagation = cast

exit ∷ ∀ a. Castable a Exit => a -> Exit
exit = cast

variants ∷ ∀ r. { | r } -> Variants
variants = cast <<< css

variantsFromObject ∷ ∀ o. Object o -> Variants
variantsFromObject = cast <<< (unsafeCoerce ∷ _ -> CSS)

layout ∷ ∀ a. Castable a Layout => a -> Layout
layout = cast

data MakeVariantLabel = MakeVariantLabel

instance makeVariantLabels' ∷
  ( IsSymbol sym
  ) =>
  MappingWithIndex MakeVariantLabel (Proxy sym) a VariantLabel where
  mappingWithIndex MakeVariantLabel prop' _ = VariantLabel (reflectSymbol prop')

makeVariantLabels ∷ ∀ a b. HMapWithIndex MakeVariantLabel a b => a -> b
makeVariantLabels = hmapWithIndex MakeVariantLabel

foreign import data Infinity ∷ Type

foreign import infinity ∷ Infinity

type AnimatePresenceProps =
  ( initial ∷ Boolean
  , custom ∷ ∀ a. a
  , exitBeforeEnter ∷ Boolean
  , onExitComplete ∷ Effect Unit
  , children ∷ Array JSX
  )

type AnimateSharedLayoutProps =
  ( type ∷ AnimateSharedLayoutType
  , children ∷ Array JSX
  )

newtype AnimateSharedLayoutType = AnimateSharedLayoutType String

switch ∷ AnimateSharedLayoutType
switch = AnimateSharedLayoutType "switch"

crossfade ∷ AnimateSharedLayoutType
crossfade = AnimateSharedLayoutType "crossfade"

foreign import data AnimationPlaybackControls ∷ Type
