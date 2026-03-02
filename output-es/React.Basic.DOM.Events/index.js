// | This module defines safe DOM event function and property accessors.
import * as Data$dMaybe from "../Data.Maybe/index.js";
import * as Data$dNullable from "../Data.Nullable/index.js";
import {propagateThis} from "./foreign.js";
const identity = x => x;
const type_ = e => e.type;
const timeStamp = e => e.timeStamp;
const targetValue = e => Data$dNullable.nullable(e.target.value, Data$dMaybe.Nothing, Data$dMaybe.Just);
const targetFiles = e => Data$dNullable.nullable(e.target.files, Data$dMaybe.Nothing, Data$dMaybe.Just);
const targetChecked = e => Data$dNullable.nullable(e.target.checked, Data$dMaybe.Nothing, Data$dMaybe.Just);
const target = e => e.target;
const stopPropagation = e => (() => {
  const $0 = propagateThis(e.stopPropagation)(e);
  return () => {
    $0();
    return e;
  };
})()();
const shiftKey = e => Data$dNullable.nullable(e.shiftKey, Data$dMaybe.Nothing, Data$dMaybe.Just);
const screenY = e => Data$dNullable.nullable(e.screenY, Data$dMaybe.Nothing, Data$dMaybe.Just);
const screenX = e => Data$dNullable.nullable(e.screenX, Data$dMaybe.Nothing, Data$dMaybe.Just);
const repeat = e => Data$dNullable.nullable(e.repeat, Data$dMaybe.Nothing, Data$dMaybe.Just);
const relatedTarget = e => Data$dNullable.nullable(e.relatedTarget, Data$dMaybe.Nothing, Data$dMaybe.Just);
const preventDefault = e => (() => {
  const $0 = propagateThis(e.preventDefault)(e);
  return () => {
    $0();
    return e;
  };
})()();
const nativeEvent = e => e.nativeEvent;
const metaKey = e => Data$dNullable.nullable(e.metaKey, Data$dMaybe.Nothing, Data$dMaybe.Just);
const location = e => Data$dNullable.nullable(e.location, Data$dMaybe.Nothing, Data$dMaybe.Just);
const locale = e => Data$dNullable.nullable(e.locale, Data$dMaybe.Nothing, Data$dMaybe.Just);
const key = e => Data$dNullable.nullable(e.key, Data$dMaybe.Nothing, Data$dMaybe.Just);
const isTrusted = e => e.isTrusted;
const isPropagationStopped = e => e.isPropagationStopped();
const isDefaultPrevented = e => e.isDefaultPrevented();
const eventPhaseNone = 0;
const eventPhaseCapturing = 1;
const eventPhaseBubbling = 3;
const eventPhaseAtTarget = 2;
const eventPhase = e => e.eventPhase;
const detail = e => Data$dNullable.nullable(e.detail, Data$dMaybe.Nothing, Data$dMaybe.Just);
const dataTransfer = e => Data$dNullable.nullable(e.dataTransfer, Data$dMaybe.Nothing, Data$dMaybe.Just);
const currentTarget = e => e.currentTarget;
const ctrlKey = e => Data$dNullable.nullable(e.ctrlKey, Data$dMaybe.Nothing, Data$dMaybe.Just);
const compositionData = e => Data$dNullable.nullable(e.data, Data$dMaybe.Nothing, Data$dMaybe.Just);
const code = e => Data$dNullable.nullable(e.code, Data$dMaybe.Nothing, Data$dMaybe.Just);
const clipboardData = e => Data$dNullable.nullable(e.clipboardData, Data$dMaybe.Nothing, Data$dMaybe.Just);
const clientY = e => Data$dNullable.nullable(e.clientY, Data$dMaybe.Nothing, Data$dMaybe.Just);
const clientX = e => Data$dNullable.nullable(e.clientX, Data$dMaybe.Nothing, Data$dMaybe.Just);
const $$char = e => Data$dNullable.nullable(e.char, Data$dMaybe.Nothing, Data$dMaybe.Just);
const capture = eventFn => cb => x => cb((() => {
  const $0 = (() => {
    const $0 = propagateThis(x.preventDefault)(x);
    return () => {
      $0();
      return x;
    };
  })()();
  return eventFn((() => {
    const $1 = propagateThis($0.stopPropagation)($0);
    return () => {
      $1();
      return $0;
    };
  })()());
})())();
const capture_ = cb => capture(identity)(v => cb);
const cancelable = e => e.cancelable;
const buttons = e => Data$dNullable.nullable(e.buttons, Data$dMaybe.Nothing, Data$dMaybe.Just);
const button = e => Data$dNullable.nullable(e.button, Data$dMaybe.Nothing, Data$dMaybe.Just);
const bubbles = e => e.bubbles;
const altKey = e => Data$dNullable.nullable(e.altKey, Data$dMaybe.Nothing, Data$dMaybe.Just);
export {
  altKey,
  bubbles,
  button,
  buttons,
  cancelable,
  capture,
  capture_,
  $$char as char,
  clientX,
  clientY,
  clipboardData,
  code,
  compositionData,
  ctrlKey,
  currentTarget,
  dataTransfer,
  detail,
  eventPhase,
  eventPhaseAtTarget,
  eventPhaseBubbling,
  eventPhaseCapturing,
  eventPhaseNone,
  identity,
  isDefaultPrevented,
  isPropagationStopped,
  isTrusted,
  key,
  locale,
  location,
  metaKey,
  nativeEvent,
  preventDefault,
  relatedTarget,
  repeat,
  screenX,
  screenY,
  shiftKey,
  stopPropagation,
  target,
  targetChecked,
  targetFiles,
  targetValue,
  timeStamp,
  type_
};
export * from "./foreign.js";
