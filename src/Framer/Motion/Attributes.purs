module Framer.Motion.Attributes where

import Prelude

import Framer.Motion.Types (Id, MotionPropsF)
import React.Basic.Events (EventHandler)
import Effect.Uncurried (EffectFn1)
import Type.Row (type (+))
import Yoga.React.DOM.Attributes (ReactAttributesF, BaseHTMLAttributesF, ARIA_AttributesF)
import Yoga.React.DOM.Event (TouchEvent)

-- | Like `BaseHTMLHandlersF` from yoga-react-dom but without the 4 fields
-- | that conflict with `MotionPropsF`:
-- |   onAnimationStart — motion uses `Effect Unit |+| Undefined`
-- |   onDrag           — motion uses `EffectFn2 Event PanInfo Unit |+| Undefined`
-- |   onDragEnd        — same
-- |   onDragStart      — same
type MotionCompatibleHandlersF :: forall k. (Type -> k) -> Row k -> Row k
type MotionCompatibleHandlersF f r =
  ( onAnimationEnd :: f EventHandler
  , onAnimationEndCapture :: f EventHandler
  , onAnimationIterationCapture :: f EventHandler
  , onAnimationIteration :: f EventHandler
  , onAnimationStartCapture :: f EventHandler
  , onAuxClick :: f EventHandler
  , onAuxClickCapture :: f EventHandler
  , onBeforeInput :: f EventHandler
  , onBeforeInputCapture :: f EventHandler
  , onBlur :: f EventHandler
  , onBlurCapture :: f EventHandler
  , onClick :: f EventHandler
  , onClickCapture :: f EventHandler
  , onCompositionEnd :: f EventHandler
  , onCompositionEndCapture :: f EventHandler
  , onCompositionStart :: f EventHandler
  , onCompositionStartCapture :: f EventHandler
  , onCompositionUpdate :: f EventHandler
  , onCompositionUpdateCapture :: f EventHandler
  , onContextMenu :: f EventHandler
  , onContextMenuCapture :: f EventHandler
  , onCopy :: f EventHandler
  , onCopyCapture :: f EventHandler
  , onCut :: f EventHandler
  , onCutCapture :: f EventHandler
  , onDoubleClick :: f EventHandler
  , onDoubleClickCapture :: f EventHandler
  -- onDrag omitted (conflict with MotionPropsF)
  , onDragCapture :: f EventHandler
  -- onDragEnd omitted (conflict with MotionPropsF)
  , onDragEndCapture :: f EventHandler
  , onDragEnter :: f EventHandler
  , onDragEnterCapture :: f EventHandler
  -- onDragStart omitted (conflict with MotionPropsF)
  , onDragStartCapture :: f EventHandler
  , onDrop :: f EventHandler
  , onDropCapture :: f EventHandler
  , onFocus :: f EventHandler
  , onFocusCapture :: f EventHandler
  , onGotPointerCapture :: f EventHandler
  , onGotPointerCaptureCapture :: f EventHandler
  , onMouseDown :: f EventHandler
  , onMouseDownCapture :: f EventHandler
  , onMouseEnter :: f EventHandler
  , onMouseEnterCapture :: f EventHandler
  , onMouseLeave :: f EventHandler
  , onMouseLeaveCapture :: f EventHandler
  , onMouseMove :: f EventHandler
  , onMouseMoveCapture :: f EventHandler
  , onMouseOut :: f EventHandler
  , onMouseOutCapture :: f EventHandler
  , onMouseUp :: f EventHandler
  , onMouseUpCapture :: f EventHandler
  , onPointerCancel :: f EventHandler
  , onPointerCancelCapture :: f EventHandler
  , onPointerDown :: f EventHandler
  , onPointerDownCapture :: f EventHandler
  , onPointerEnter :: f EventHandler
  , onPointerEnterCapture :: f EventHandler
  , onPointerLeave :: f EventHandler
  , onPointerLeaveCapture :: f EventHandler
  , onPointerMove :: f EventHandler
  , onPointerMoveCapture :: f EventHandler
  , onPointerOut :: f EventHandler
  , onPointerOutCapture :: f EventHandler
  , onPointerUp :: f EventHandler
  , onPointerUpCapture :: f EventHandler
  , onPaste :: f EventHandler
  , onPasteCapture :: f EventHandler
  , onScroll :: f EventHandler
  , onScrollCapture :: f EventHandler
  , onSelect :: f EventHandler
  , onSelectCapture :: f EventHandler
  , onTouchCancel :: f EventHandler
  , onTouchCancelCapture :: f EventHandler
  , onTouchEnd :: f (EffectFn1 TouchEvent Unit)
  , onTouchEndCapture :: f (EffectFn1 TouchEvent Unit)
  , onTouchMove :: f EventHandler
  , onTouchMoveCapture :: f EventHandler
  , onTouchStart :: f EventHandler
  , onTouchStartCapture :: f EventHandler
  , onTransitionEnd :: f EventHandler
  , onTransitionEndCapture :: f EventHandler
  , onWheel :: f EventHandler
  , onWheelCapture :: f EventHandler
  | r
  )

type MotionBaseAttributesR :: Row Type -> Row Type
type MotionBaseAttributesR r =
  ReactAttributesF Id
    + BaseHTMLAttributesF Id
    + MotionCompatibleHandlersF Id
    + ARIA_AttributesF Id
    + MotionPropsF Id
    + r

type MotionBaseAttributes = MotionBaseAttributesR ()
