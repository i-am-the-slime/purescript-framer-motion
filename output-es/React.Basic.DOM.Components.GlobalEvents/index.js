// | These helper components register and unregister event callbacks
// | using React's the lifecycle callbacks. They're useful for
// | declaratively defining global behavior which is associated with
// | a particular component being mounted without having to wire
// | all that lifecycle logic up manually.
// |
// | For example:
// |
// | ```purs
// | render self =
// |   R.div
// |     { className: "dropdown-wrapper"
// |     , children:
// |         [ dropdownButton
// |         , guard showDropdown $
// |             windowEvent
// |               { eventType: EventType "click"
// |               , options: defaultOptions
// |               , handler: \_ -> send self CloseDropdown
// |               }
// |               dropdownMenu
// |         ]
// |     }
// | ```
import * as Data$dFoldable from "../Data.Foldable/index.js";
import * as React$dBasic from "../React.Basic/index.js";
import {_passiveSupported, globalEvent_, unsafeWindowEventTarget} from "./foreign.js";
const globalEvent = target => v => child => React$dBasic.element(globalEvent_)({target, eventType: v.eventType, handler: v.handler, options: v.options, child});
const globalEvents = target => {
  const $0 = Data$dFoldable.foldrArray(globalEvent(target));
  return b => a => $0(a)(b);
};
const windowEvents = /* #__PURE__ */ (() => {
  const $0 = Data$dFoldable.foldrArray(globalEvent(unsafeWindowEventTarget));
  return b => a => $0(a)(b);
})();
const windowEvent = x => windowEvents([x]);
const defaultOptions = {capture: false, once: false, passive: false};
export {defaultOptions, globalEvent, globalEvents, windowEvent, windowEvents};
export * from "./foreign.js";
