import * as $runtime from "../runtime.js";
import * as Data$dInt from "../Data.Int/index.js";
import * as Type$dProxy from "../Type.Proxy/index.js";
const signPartEmpty = () => ({});
const signPart = () => () => ({});
const lastIntegerPart = () => ({});
const intLit = dictIsSymbol => () => {
  const $0 = Data$dInt.fromString(dictIsSymbol.reflectSymbol(Type$dProxy.Proxy));
  if ($0.tag === "Just") { return $0._1; }
  $runtime.fail();
};
const intInstance = () => () => ({});
const digitIntegerPart = () => () => () => ({});
const digit9 = {};
const digit8 = {};
const digit7 = {};
const digit6 = {};
const digit5 = {};
const digit4 = {};
const digit3 = {};
const digit2 = {};
const digit1 = {};
const digit0 = {};
export {digit0, digit1, digit2, digit3, digit4, digit5, digit6, digit7, digit8, digit9, digitIntegerPart, intInstance, intLit, lastIntegerPart, signPart, signPartEmpty};
