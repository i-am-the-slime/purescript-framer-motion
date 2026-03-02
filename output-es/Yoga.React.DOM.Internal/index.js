import * as React$dBasic from "../React.Basic/index.js";
import * as Unsafe$dCoerce from "../Unsafe.Coerce/index.js";
import {createElementImpl, createElementNoKidsImpl, mergeStyles, modifyIfDefinedImpl, unsafeWithChildrenImpl} from "./foreign.js";
const withoutDataPropsRecordRec = () => () => () => ({unsafeHideDataProps: Unsafe$dCoerce.unsafeCoerce});
const withoutDataPropsRLNilNil = {};
const withoutDataPropsRLCons = () => () => ({});
const maybeWithoutDataPropRLTru = () => ({});
const maybeWithoutDataPropRLFal = () => ({});
const isJSXString = {};
const isJSXJSX = {};
const isJSXArray = dictTypeEquals => ({});
const doesStartWithCharFalse = {};
const doesStartWithChar = () => ({});
const doesStartWith$x34$x34True = {};
const doesStartWith$x34$x34False = {};
const doesStartWith = () => () => () => ({});
const coerceReactPropsRecordRec = dictWithoutDataProps => () => ({});
const unsafeWithChildren = $0 => $1 => unsafeWithChildrenImpl($0, $1);
const unsafeHideDataProps = dict => dict.unsafeHideDataProps;
const text = Unsafe$dCoerce.unsafeCoerce;
const semigroupCSS = {append: a => b => mergeStyles([b, a])};
const noJSX = React$dBasic.empty;
const modifyIfDefined = $0 => $1 => $2 => modifyIfDefinedImpl($0, $1, $2);
const css = Unsafe$dCoerce.unsafeCoerce;
const monoidCSS = {mempty: {}, Semigroup0: () => semigroupCSS};
const createElement_ = $0 => $1 => createElementNoKidsImpl($0, $1);
const createElement = () => () => $0 => $1 => $2 => createElementImpl($0, $1, $2);
const createBuiltinElement_ = props => $0 => createElementNoKidsImpl(props, $0);
const createBuiltinElement = $0 => $1 => $2 => createElementImpl($0, $1, $2);
const coerceReactProps = () => Unsafe$dCoerce.unsafeCoerce;
const appendIsJSX = () => () => a => b => React$dBasic.fragment([a, b]);
export {
  appendIsJSX,
  coerceReactProps,
  coerceReactPropsRecordRec,
  createBuiltinElement,
  createBuiltinElement_,
  createElement,
  createElement_,
  css,
  doesStartWith,
  doesStartWith$x34$x34False,
  doesStartWith$x34$x34True,
  doesStartWithChar,
  doesStartWithCharFalse,
  isJSXArray,
  isJSXJSX,
  isJSXString,
  maybeWithoutDataPropRLFal,
  maybeWithoutDataPropRLTru,
  modifyIfDefined,
  monoidCSS,
  noJSX,
  semigroupCSS,
  text,
  unsafeHideDataProps,
  unsafeWithChildren,
  withoutDataPropsRLCons,
  withoutDataPropsRLNilNil,
  withoutDataPropsRecordRec
};
export * from "./foreign.js";
