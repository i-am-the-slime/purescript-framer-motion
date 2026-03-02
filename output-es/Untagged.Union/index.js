import * as $runtime from "../runtime.js";
import * as Data$dEither from "../Data.Either/index.js";
import * as Data$dFunction from "../Data.Function/index.js";
import * as Data$dMaybe from "../Data.Maybe/index.js";
import * as Foreign from "../Foreign/index.js";
import * as Literals$dUndefined from "../Literals.Undefined/index.js";
import * as Type$dProxy from "../Type.Proxy/index.js";
import * as Unsafe$dCoerce from "../Unsafe.Coerce/index.js";
const toEither1 = dictHasRuntimeType => o => {
  if (dictHasRuntimeType.hasRuntimeType(Type$dProxy.Proxy)(o)) { return Data$dEither.$Either("Left", o); }
  return Data$dEither.$Either("Right", o);
};
const reduceA = {reduce: Data$dFunction.apply};
const reduce = dict => dict.reduce;
const reduceOneOf = dictReducible => dictHasRuntimeType => (
  {
    reduce: v => o => {
      if (dictHasRuntimeType.hasRuntimeType(Type$dProxy.Proxy)(o)) { return v._1(o); }
      return dictReducible.reduce(v._2)(o);
    }
  }
);
const oneOfEq = dictEq => dictEq1 => dictHasRuntimeType => (
  {
    eq: o => o$p => {
      if (dictHasRuntimeType.hasRuntimeType(Type$dProxy.Proxy)(o$p)) { return dictHasRuntimeType.hasRuntimeType(Type$dProxy.Proxy)(o) && dictEq.eq(o)(o$p); }
      if (dictHasRuntimeType.hasRuntimeType(Type$dProxy.Proxy)(o)) { return false; }
      return dictEq1.eq(o)(o$p);
    }
  }
);
const inOneOfTail = () => ({});
const inOneOfLast = {};
const inOneOfHead = {};
const hasRuntimeTypeOneOf = dictHasRuntimeType => dictHasRuntimeType1 => (
  {hasRuntimeType: v => x => dictHasRuntimeType.hasRuntimeType(Type$dProxy.Proxy)(x) || dictHasRuntimeType1.hasRuntimeType(Type$dProxy.Proxy)(x)}
);
const getRight$p = dictHasRuntimeType => o => {
  if (dictHasRuntimeType.hasRuntimeType(Type$dProxy.Proxy)(o)) { return Data$dMaybe.Nothing; }
  return Data$dMaybe.$Maybe("Just", o);
};
const uorToMaybe = o => {
  if (Foreign.typeOf(o) === "undefined") { return Data$dMaybe.Nothing; }
  return Data$dMaybe.$Maybe("Just", o);
};
const getRight = dictHasRuntimeType => o => {
  if (dictHasRuntimeType.hasRuntimeType(Type$dProxy.Proxy)(o)) { return Data$dMaybe.$Maybe("Just", o); }
  return Data$dMaybe.Nothing;
};
const getLeft$p = dictHasRuntimeType => o => {
  if (dictHasRuntimeType.hasRuntimeType(Type$dProxy.Proxy)(o)) { return Data$dMaybe.Nothing; }
  return Data$dMaybe.$Maybe("Just", o);
};
const getLeft = dictHasRuntimeType => o => {
  if (dictHasRuntimeType.hasRuntimeType(Type$dProxy.Proxy)(o)) { return Data$dMaybe.$Maybe("Just", o); }
  return Data$dMaybe.Nothing;
};
const fromUndefinedOr = a => x => {
  if (Foreign.typeOf(x) === "undefined") { return a; }
  return x;
};
const fromOneOf = () => dictHasRuntimeType => f => {
  if (dictHasRuntimeType.hasRuntimeType(Type$dProxy.Proxy)(f)) { return Data$dMaybe.$Maybe("Just", f); }
  return Data$dMaybe.Nothing;
};
const defined = Unsafe$dCoerce.unsafeCoerce;
const coercibleOneOf = () => ({});
const maybeToUor = v => {
  if (v.tag === "Just") { return v._1; }
  if (v.tag === "Nothing") { return Literals$dUndefined._undefined; }
  $runtime.fail();
};
const withUor = f => o => {
  if (Foreign.typeOf(o) === "undefined") { return Literals$dUndefined._undefined; }
  return f(o);
};
const asOneOf = () => Unsafe$dCoerce.unsafeCoerce;
export {
  asOneOf,
  coercibleOneOf,
  defined,
  fromOneOf,
  fromUndefinedOr,
  getLeft,
  getLeft$p,
  getRight,
  getRight$p,
  hasRuntimeTypeOneOf,
  inOneOfHead,
  inOneOfLast,
  inOneOfTail,
  maybeToUor,
  oneOfEq,
  reduce,
  reduceA,
  reduceOneOf,
  toEither1,
  uorToMaybe,
  withUor
};
