import * as Unsafe$dCoerce from "../Unsafe.Coerce/index.js";
import * as Web$dInternal$dFFI from "../Web.Internal.FFI/index.js";
import {altKey, changedTouches, ctrlKey, metaKey, shiftKey, targetTouches, touches} from "./foreign.js";
const toUIEvent = Unsafe$dCoerce.unsafeCoerce;
const toEvent = Unsafe$dCoerce.unsafeCoerce;
const fromUIEvent = /* #__PURE__ */ Web$dInternal$dFFI.unsafeReadProtoTagged("TouchEvent");
const fromEvent = /* #__PURE__ */ Web$dInternal$dFFI.unsafeReadProtoTagged("TouchEvent");
export {fromEvent, fromUIEvent, toEvent, toUIEvent};
export * from "./foreign.js";
