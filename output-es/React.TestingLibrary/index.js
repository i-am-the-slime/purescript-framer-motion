import * as Control$dMonad$dFork$dClass from "../Control.Monad.Fork.Class/index.js";
import * as Control$dPromise from "../Control.Promise/index.js";
import * as Data$dEither from "../Data.Either/index.js";
import * as Data$dIdentity from "../Data.Identity/index.js";
import * as Data$dMaybe from "../Data.Maybe/index.js";
import * as Data$dTuple from "../Data.Tuple/index.js";
import * as Effect$dAff from "../Effect.Aff/index.js";
import * as Effect$dUncurried from "../Effect.Uncurried/index.js";
import * as React$dBasic from "../React.Basic/index.js";
import * as Test$dSpec from "../Test.Spec/index.js";
import * as Test$dSpec$dTree from "../Test.Spec.Tree/index.js";
import {
  cleanupImpl,
  findByTextImpl,
  fireEventAbortImpl,
  fireEventAnimationEndImpl,
  fireEventAnimationIterationImpl,
  fireEventAnimationStartImpl,
  fireEventBlurImpl,
  fireEventCanPlayImpl,
  fireEventCanPlayThroughImpl,
  fireEventChangeImpl,
  fireEventClickImpl,
  fireEventCompositionEndImpl,
  fireEventCompositionStartImpl,
  fireEventCompositionUpdateImpl,
  fireEventContextMenuImpl,
  fireEventCopyImpl,
  fireEventCutImpl,
  fireEventDblClickImpl,
  fireEventDoubleClickImpl,
  fireEventDragEndImpl,
  fireEventDragEnterImpl,
  fireEventDragExitImpl,
  fireEventDragImpl,
  fireEventDragLeaveImpl,
  fireEventDragOverImpl,
  fireEventDragStartImpl,
  fireEventDropImpl,
  fireEventDurationChangeImpl,
  fireEventEmptiedImpl,
  fireEventEncryptedImpl,
  fireEventEndedImpl,
  fireEventErrorImpl,
  fireEventFocusImpl,
  fireEventFocusInImpl,
  fireEventFocusOutImpl,
  fireEventGotPointerCaptureImpl,
  fireEventImpl,
  fireEventInputImpl,
  fireEventInvalidImpl,
  fireEventKeyDownImpl,
  fireEventKeyPressImpl,
  fireEventKeyUpImpl,
  fireEventLoadImpl,
  fireEventLoadStartImpl,
  fireEventLoadedDataImpl,
  fireEventLoadedMetadataImpl,
  fireEventLostPointerCaptureImpl,
  fireEventMouseDownImpl,
  fireEventMouseEnterImpl,
  fireEventMouseLeaveImpl,
  fireEventMouseMoveImpl,
  fireEventMouseOutImpl,
  fireEventMouseOverImpl,
  fireEventMouseUpImpl,
  fireEventPasteImpl,
  fireEventPauseImpl,
  fireEventPlayImpl,
  fireEventPlayingImpl,
  fireEventPointerCancelImpl,
  fireEventPointerDownImpl,
  fireEventPointerEnterImpl,
  fireEventPointerLeaveImpl,
  fireEventPointerMoveImpl,
  fireEventPointerOutImpl,
  fireEventPointerOverImpl,
  fireEventPointerUpImpl,
  fireEventProgressImpl,
  fireEventRateChangeImpl,
  fireEventScrollImpl,
  fireEventSeekedImpl,
  fireEventSeekingImpl,
  fireEventSelectImpl,
  fireEventStalledImpl,
  fireEventSubmitImpl,
  fireEventSuspendImpl,
  fireEventTimeUpdateImpl,
  fireEventTouchCancelImpl,
  fireEventTouchEndImpl,
  fireEventTouchMoveImpl,
  fireEventTouchStartImpl,
  fireEventTransitionEndImpl,
  fireEventVolumeChangeImpl,
  fireEventWaitingImpl,
  fireEventWheelImpl,
  queryImpl,
  renderImpl,
  typeImpl
} from "./foreign.js";
const after_ = /* #__PURE__ */ Test$dSpec.after_(Data$dIdentity.monadIdentity)(Control$dMonad$dFork$dClass.monadBracketAff);
const before = /* #__PURE__ */ Test$dSpec.before(Data$dIdentity.monadIdentity)(Effect$dAff.monadAff);
const typeText = text => el => Effect$dAff._bind(Effect$dAff._liftEffect(typeImpl(el, text, {})))(Control$dPromise.toAff$p(Control$dPromise.coerce));
const tmString = {};
const tmRegex = {};
const tmInvalidType = undefined;
const tmFn = {};
const runToAff1 = x => x$1 => Control$dPromise.toAff$p(Control$dPromise.coerce)(x(x$1));
const query = /* #__PURE__ */ queryImpl(Data$dMaybe.Just)(Data$dMaybe.Nothing);
const liftRunEffectFn2 = dictMonadEffect => x => {
  const $0 = Effect$dUncurried.runEffectFn2(x);
  return x$1 => {
    const $1 = $0(x$1);
    return x$2 => dictMonadEffect.liftEffect($1(x$2));
  };
};
const toRenderQueries = rq => (
  {
    findByLabelText: () => runToAff1(rq.findByLabelText),
    findAllByLabelText: () => runToAff1(rq.findAllByLabelText),
    findByTestId: () => runToAff1(rq.findByTestId),
    findAllByTestId: () => runToAff1(rq.findAllByTestId),
    findByAltText: () => runToAff1(rq.findByAltText),
    findAllByAltText: () => runToAff1(rq.findAllByAltText),
    findByText: () => runToAff1(rq.findByText),
    findAllByText: () => runToAff1(rq.findAllByText),
    findByTitle: () => runToAff1(rq.findByTitle),
    findAllByTitle: () => runToAff1(rq.findAllByTitle),
    findByDisplayValue: () => runToAff1(rq.findByDisplayValue),
    findAllByDisplayValue: () => runToAff1(rq.findAllByDisplayValue),
    findByRole: () => runToAff1(rq.findByRole),
    findAllByRole: () => runToAff1(rq.findAllByRole),
    findByPlaceholderText: () => runToAff1(rq.findByPlaceholderText),
    findAllByPlaceholderText: () => runToAff1(rq.findAllByPlaceholderText),
    queryByLabelText: () => {
      const $0 = query(rq.queryByLabelText);
      return $1 => $0($1);
    },
    queryAllByLabelText: () => {
      const $0 = query(rq.queryAllByLabelText);
      return $1 => $0($1);
    },
    queryByTestId: () => {
      const $0 = query(rq.queryByTestId);
      return $1 => $0($1);
    },
    queryAllByTestId: () => {
      const $0 = query(rq.queryAllByTestId);
      return $1 => $0($1);
    },
    queryByAltText: () => {
      const $0 = query(rq.queryByAltText);
      return $1 => $0($1);
    },
    queryAllByAltText: () => {
      const $0 = query(rq.queryAllByAltText);
      return $1 => $0($1);
    },
    queryByText: () => {
      const $0 = query(rq.queryByText);
      return $1 => $0($1);
    },
    queryAllByText: () => {
      const $0 = query(rq.queryAllByText);
      return $1 => $0($1);
    },
    queryByTitle: () => {
      const $0 = query(rq.queryByTitle);
      return $1 => $0($1);
    },
    queryAllByTitle: () => {
      const $0 = query(rq.queryAllByTitle);
      return $1 => $0($1);
    },
    queryByDisplayValue: () => {
      const $0 = query(rq.queryByDisplayValue);
      return $1 => $0($1);
    },
    queryAllByDisplayValue: () => {
      const $0 = query(rq.queryAllByDisplayValue);
      return $1 => $0($1);
    },
    queryByRole: () => {
      const $0 = query(rq.queryByRole);
      return $1 => $0($1);
    },
    queryAllByRole: () => {
      const $0 = query(rq.queryAllByRole);
      return $1 => $0($1);
    },
    queryByPlaceholderText: () => {
      const $0 = query(rq.queryByPlaceholderText);
      return $1 => $0($1);
    },
    queryAllByPlaceholderText: () => {
      const $0 = query(rq.queryAllByPlaceholderText);
      return $1 => $0($1);
    },
    rerender: dictMonadEffect => {
      const $0 = Effect$dUncurried.runEffectFn1(rq.rerender);
      return x => dictMonadEffect.liftEffect($0(x));
    }
  }
);
const render = dictMonadEffect => {
  const $0 = dictMonadEffect.Monad0().Bind1().Apply0().Functor0();
  return jsx => $0.map(toRenderQueries)(dictMonadEffect.liftEffect(() => renderImpl(jsx)));
};
const renderComponent = dictMonadEffect => {
  const render1 = render(dictMonadEffect);
  return component => props => render1(React$dBasic.element(component)(props));
};
const fireEventWheel = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventWheelImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventWaiting = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventWaitingImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventVolumeChange = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventVolumeChangeImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventTransitionEnd = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventTransitionEndImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventTouchStart = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventTouchStartImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventTouchMove = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventTouchMoveImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventTouchEnd = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventTouchEndImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventTouchCancel = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventTouchCancelImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventTimeUpdate = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventTimeUpdateImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventSuspend = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventSuspendImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventSubmit = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventSubmitImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventStalled = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventStalledImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventSelect = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventSelectImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventSeeking = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventSeekingImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventSeeked = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventSeekedImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventScroll = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventScrollImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventRateChange = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventRateChangeImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventProgress = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventProgressImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventPointerUp = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventPointerUpImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventPointerOver = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventPointerOverImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventPointerOut = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventPointerOutImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventPointerMove = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventPointerMoveImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventPointerLeave = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventPointerLeaveImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventPointerEnter = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventPointerEnterImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventPointerDown = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventPointerDownImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventPointerCancel = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventPointerCancelImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventPlaying = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventPlayingImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventPlay = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventPlayImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventPause = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventPauseImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventPaste = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventPasteImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventMouseUp = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventMouseUpImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventMouseOver = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventMouseOverImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventMouseOut = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventMouseOutImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventMouseMove = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventMouseMoveImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventMouseLeave = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventMouseLeaveImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventMouseEnter = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventMouseEnterImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventMouseDown = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventMouseDownImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventLostPointerCapture = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventLostPointerCaptureImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventLoadedMetadata = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventLoadedMetadataImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventLoadedData = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventLoadedDataImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventLoadStart = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventLoadStartImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventLoad = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventLoadImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventKeyUp = dictMonadEffect => {
  const $0 = liftRunEffectFn2(dictMonadEffect)(fireEventKeyUpImpl);
  return b => a => $0(a)(b);
};
const fireEventKeyPress = dictMonadEffect => {
  const $0 = liftRunEffectFn2(dictMonadEffect)(fireEventKeyDownImpl);
  return b => a => $0(a)(b);
};
const fireEventKeyDown = dictMonadEffect => {
  const $0 = liftRunEffectFn2(dictMonadEffect)(fireEventKeyDownImpl);
  return b => a => $0(a)(b);
};
const fireEventInvalid = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventInvalidImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventInput = dictMonadEffect => el => value => liftRunEffectFn2(dictMonadEffect)(fireEventInputImpl)(el)({target: {value}});
const fireEventGotPointerCapture = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventGotPointerCaptureImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventFocusOut = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventFocusOutImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventFocusIn = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventFocusInImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventFocus = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventFocusImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventError = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventErrorImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventEnded = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventEndedImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventEncrypted = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventEncryptedImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventEmptied = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventEmptiedImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventDurationChange = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventDurationChangeImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventDrop = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventDropImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventDragStart = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventDragStartImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventDragOver = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventDragOverImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventDragLeave = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventDragLeaveImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventDragExit = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventDragExitImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventDragEnter = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventDragEnterImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventDragEnd = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventDragEndImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventDrag = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventDragImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventDoubleClick = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventDoubleClickImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventDblClick = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventDblClickImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventCut = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventCutImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventCopy = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventCopyImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventContextMenu = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventContextMenuImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventCompositionUpdate = dictMonadEffect => str => el => liftRunEffectFn2(dictMonadEffect)(fireEventCompositionUpdateImpl)(el)({data: str});
const fireEventCompositionStart = dictMonadEffect => str => el => liftRunEffectFn2(dictMonadEffect)(fireEventCompositionStartImpl)(el)({data: str});
const fireEventCompositionEnd = dictMonadEffect => str => el => liftRunEffectFn2(dictMonadEffect)(fireEventCompositionEndImpl)(el)({data: str});
const fireEventClick = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventClickImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventChange = dictMonadEffect => ev => {
  const $0 = liftRunEffectFn2(dictMonadEffect)(fireEventChangeImpl);
  return a => $0(a)(ev);
};
const fireEventCanPlayThrough = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventCanPlayThroughImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventCanPlay = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventCanPlayImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventBlur = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventBlurImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventAnimationStart = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventAnimationStartImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventAnimationIteration = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventAnimationIterationImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventAnimationEnd = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventAnimationEndImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEventAbort = dictMonadEffect => {
  const $0 = Effect$dUncurried.runEffectFn1(fireEventAbortImpl);
  return x => dictMonadEffect.liftEffect($0(x));
};
const fireEvent = dictMonadEffect => liftRunEffectFn2(dictMonadEffect)(fireEventImpl);
const findByText = el => str => Effect$dAff._bind(Effect$dAff._liftEffect(() => findByTextImpl(el, str)))(Control$dPromise.toAff$p(Control$dPromise.coerce));
const defaultKeyboardEvent = {altKey: false, charCode: 0, ctrlKey: false, key: " ", keyCode: 0, location: 0.0, which: 0, metaKey: false, repeat: false, shiftKey: false};
const cleanup = /* #__PURE__ */ Effect$dAff._liftEffect(cleanupImpl);
const describeComponent = setup => description => test => after_(cleanup)(before(Effect$dAff._liftEffect(setup))(Data$dTuple.$Tuple(
  test._1,
  [Test$dSpec$dTree.$Tree("Node", Data$dEither.$Either("Left", description), test._2)]
)));
export {
  after_,
  before,
  cleanup,
  defaultKeyboardEvent,
  describeComponent,
  findByText,
  fireEvent,
  fireEventAbort,
  fireEventAnimationEnd,
  fireEventAnimationIteration,
  fireEventAnimationStart,
  fireEventBlur,
  fireEventCanPlay,
  fireEventCanPlayThrough,
  fireEventChange,
  fireEventClick,
  fireEventCompositionEnd,
  fireEventCompositionStart,
  fireEventCompositionUpdate,
  fireEventContextMenu,
  fireEventCopy,
  fireEventCut,
  fireEventDblClick,
  fireEventDoubleClick,
  fireEventDrag,
  fireEventDragEnd,
  fireEventDragEnter,
  fireEventDragExit,
  fireEventDragLeave,
  fireEventDragOver,
  fireEventDragStart,
  fireEventDrop,
  fireEventDurationChange,
  fireEventEmptied,
  fireEventEncrypted,
  fireEventEnded,
  fireEventError,
  fireEventFocus,
  fireEventFocusIn,
  fireEventFocusOut,
  fireEventGotPointerCapture,
  fireEventInput,
  fireEventInvalid,
  fireEventKeyDown,
  fireEventKeyPress,
  fireEventKeyUp,
  fireEventLoad,
  fireEventLoadStart,
  fireEventLoadedData,
  fireEventLoadedMetadata,
  fireEventLostPointerCapture,
  fireEventMouseDown,
  fireEventMouseEnter,
  fireEventMouseLeave,
  fireEventMouseMove,
  fireEventMouseOut,
  fireEventMouseOver,
  fireEventMouseUp,
  fireEventPaste,
  fireEventPause,
  fireEventPlay,
  fireEventPlaying,
  fireEventPointerCancel,
  fireEventPointerDown,
  fireEventPointerEnter,
  fireEventPointerLeave,
  fireEventPointerMove,
  fireEventPointerOut,
  fireEventPointerOver,
  fireEventPointerUp,
  fireEventProgress,
  fireEventRateChange,
  fireEventScroll,
  fireEventSeeked,
  fireEventSeeking,
  fireEventSelect,
  fireEventStalled,
  fireEventSubmit,
  fireEventSuspend,
  fireEventTimeUpdate,
  fireEventTouchCancel,
  fireEventTouchEnd,
  fireEventTouchMove,
  fireEventTouchStart,
  fireEventTransitionEnd,
  fireEventVolumeChange,
  fireEventWaiting,
  fireEventWheel,
  liftRunEffectFn2,
  query,
  render,
  renderComponent,
  runToAff1,
  tmFn,
  tmInvalidType,
  tmRegex,
  tmString,
  toRenderQueries,
  typeText
};
export * from "./foreign.js";
