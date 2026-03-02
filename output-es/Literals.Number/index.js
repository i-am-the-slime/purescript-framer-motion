import * as $runtime from "../runtime.js";
import * as Data$dMaybe from "../Data.Maybe/index.js";
import * as Data$dNumber from "../Data.Number/index.js";
import * as Type$dProxy from "../Type.Proxy/index.js";
const signPartEmpty = () => ({});
const signPart = () => () => ({});
const pointIntegerPart = () => () => ({});
const numberLit = dictIsSymbol => () => {
  const $0 = Data$dNumber.fromStringImpl(dictIsSymbol.reflectSymbol(Type$dProxy.Proxy), Data$dNumber.isFinite, Data$dMaybe.Just, Data$dMaybe.Nothing);
  if ($0.tag === "Just") { return $0._1; }
  $runtime.fail();
};
const numberInstance = () => () => ({});
const lastFractionalPart = () => ({});
const digitIntegerPart = () => () => () => ({});
const digitFractionalPart = () => () => () => ({});
export {digitFractionalPart, digitIntegerPart, lastFractionalPart, numberInstance, numberLit, pointIntegerPart, signPart, signPartEmpty};
