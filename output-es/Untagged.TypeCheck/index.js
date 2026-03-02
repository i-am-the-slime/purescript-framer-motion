import * as Data$dMaybe from "../Data.Maybe/index.js";
import * as Foreign from "../Foreign/index.js";
import * as Foreign$dObject from "../Foreign.Object/index.js";
import * as Type$dProxy from "../Type.Proxy/index.js";
import {getProperty, isInt} from "./foreign.js";
const hasRuntimeTypeRecordRLNil = {hasRuntimeTypeRecRL: v => v1 => true};
const hasRuntimeTypeRecRL = dict => dict.hasRuntimeTypeRecRL;
const hasRuntimeTypeNull = {hasRuntimeType: v => Foreign.isNull};
const hasRuntimeTypeInt = {hasRuntimeType: v => isInt};
const hasRuntimeTypeForeign = {hasRuntimeType: v => v1 => true};
const hasRuntimeType = dict => dict.hasRuntimeType;
const hasRuntimeTypeRecordRLCons = dictHasRuntimeTypeRecordRL => dictHasRuntimeType => dictIsSymbol => (
  {
    hasRuntimeTypeRecRL: v => x => dictHasRuntimeType.hasRuntimeType(Type$dProxy.Proxy)(getProperty(dictIsSymbol.reflectSymbol(Type$dProxy.Proxy))(x)) && dictHasRuntimeTypeRecordRL.hasRuntimeTypeRecRL(Type$dProxy.Proxy)(x)
  }
);
const newtypeHasRuntimeType = () => dictHasRuntimeType => v => dictHasRuntimeType.hasRuntimeType(Type$dProxy.Proxy);
const hasJsType = name => x => Foreign.typeOf(x) === name;
const hasRuntimeTypeBoolean = {hasRuntimeType: v => hasJsType("boolean")};
const hasRuntimeTypeNumber = {hasRuntimeType: v => hasJsType("number")};
const hasRuntimeTypeObject = dictHasRuntimeType => (
  {
    hasRuntimeType: v => x => {
      const hasRuntimeTypeE = dictHasRuntimeType.hasRuntimeType(Type$dProxy.Proxy);
      return Foreign.typeOf(x) === "object" && Foreign$dObject.all(v1 => hasRuntimeTypeE)(x);
    }
  }
);
const hasRuntimeTypeRecord = () => dictHasRuntimeTypeRecordRL => (
  {hasRuntimeType: v => x => Foreign.typeOf(x) === "object" && dictHasRuntimeTypeRecordRL.hasRuntimeTypeRecRL(Type$dProxy.Proxy)(x)}
);
const hasRuntimeTypeString = {hasRuntimeType: v => hasJsType("string")};
const hasRuntimeTypeUndefined = {hasRuntimeType: v => hasJsType("undefined")};
const cast = dictHasRuntimeType => x => {
  if (dictHasRuntimeType.hasRuntimeType(Type$dProxy.Proxy)(x)) { return Data$dMaybe.$Maybe("Just", x); }
  return Data$dMaybe.Nothing;
};
export {
  cast,
  hasJsType,
  hasRuntimeType,
  hasRuntimeTypeBoolean,
  hasRuntimeTypeForeign,
  hasRuntimeTypeInt,
  hasRuntimeTypeNull,
  hasRuntimeTypeNumber,
  hasRuntimeTypeObject,
  hasRuntimeTypeRecRL,
  hasRuntimeTypeRecord,
  hasRuntimeTypeRecordRLCons,
  hasRuntimeTypeRecordRLNil,
  hasRuntimeTypeString,
  hasRuntimeTypeUndefined,
  newtypeHasRuntimeType
};
export * from "./foreign.js";
