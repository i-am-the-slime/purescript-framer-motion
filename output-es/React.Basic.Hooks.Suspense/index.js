import * as $runtime from "../runtime.js";
import * as Control$dPromise from "../Control.Promise/index.js";
import * as Effect$dAff from "../Effect.Aff/index.js";
import * as Effect$dException from "../Effect.Exception/index.js";
import * as React$dBasic from "../React.Basic/index.js";
import {suspense_} from "./foreign.js";
const $SuspenseResult = (tag, _1) => ({tag, _1});
const InProgress = value0 => $SuspenseResult("InProgress", value0);
const Failed = value0 => $SuspenseResult("Failed", value0);
const Complete = value0 => $SuspenseResult("Complete", value0);
const Suspended = x => x;
const suspense = /* #__PURE__ */ React$dBasic.element(suspense_);
const suspend = v => () => {
  const result = v();
  if (result.tag === "InProgress") {
    const $0 = Control$dPromise.fromAff(Effect$dAff.joinFiber(result._1))();
    return Effect$dException.throwException($0)();
  }
  if (result.tag === "Failed") { return Effect$dException.throwException(result._1)(); }
  if (result.tag === "Complete") { return result._1; }
  $runtime.fail();
};
export {$SuspenseResult, Complete, Failed, InProgress, Suspended, suspend, suspense};
export * from "./foreign.js";
