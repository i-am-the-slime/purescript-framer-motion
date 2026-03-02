import * as Data$dMaybe from "../Data.Maybe/index.js";
import * as Data$dNullable from "../Data.Nullable/index.js";
import * as Data$dTuple from "../Data.Tuple/index.js";
import * as Effect$dUncurried from "../Effect.Uncurried/index.js";
import * as React$dBasic from "../React.Basic/index.js";
import * as Unsafe$dCoerce from "../Unsafe.Coerce/index.js";
import * as Unsafe$dReference from "../Unsafe.Reference/index.js";
import {
  displayName,
  memoEq_,
  memo_,
  reactChildrenToArray,
  readRef_,
  unsafeSetDisplayName,
  useContext_,
  useDebugValue_,
  useDeferredValue_,
  useEffectAlways_,
  useEffect_,
  useEqCache_,
  useId_,
  useInsertionEffectAlways_,
  useInsertionEffect_,
  useLayoutEffectAlways_,
  useLayoutEffect_,
  useMemo_,
  useReducer_,
  useRef_,
  useState_,
  useSyncExternalStore2_,
  useSyncExternalStore3_,
  useTransition_,
  writeRef_
} from "./foreign.js";
const UnsafeReference = x => x;
const writeRef = /* #__PURE__ */ Effect$dUncurried.runEffectFn2(writeRef_);
const useTransition = () => useTransition_(($0, $1) => Data$dTuple.$Tuple($0, $1));
const useSyncExternalStore$p = subscribe => getSnapshot => () => useSyncExternalStore2_($0 => subscribe($0)(), getSnapshot);
const useSyncExternalStore = subscribe => getSnapshot => getServerSnapshot => () => useSyncExternalStore3_($0 => subscribe($0)(), getSnapshot, getServerSnapshot);
const useState = initialState => () => useState_(($0, $1) => Data$dTuple.$Tuple($0, $1), initialState);
const useState$p = initialState => () => {
  const a$p = useState_(($0, $1) => Data$dTuple.$Tuple($0, $1), initialState);
  return Data$dTuple.$Tuple(a$p._1, x => a$p._2(v => x));
};
const useRef = initialValue => () => useRef_(initialValue);
const useReducer = initialState => v => () => useReducer_(($0, $1) => Data$dTuple.$Tuple($0, $1), v, initialState);
const useMemo = dictEq => deps => computeA => () => useMemo_(($0, $1) => dictEq.eq($0)($1), deps, computeA);
const useLayoutEffectOnce = effect => () => useLayoutEffect_((v, v1) => true, undefined, effect);
const useLayoutEffectAlways = effect => () => useLayoutEffectAlways_(effect);
const useLayoutEffect = dictEq => deps => effect => () => useLayoutEffect_(($0, $1) => dictEq.eq($0)($1), deps, effect);
const useInsertionEffectOnce = effect => () => useInsertionEffect_((v, v1) => true, undefined, effect);
const useInsertionEffectAlways = effect => () => useInsertionEffectAlways_(effect);
const useInsertionEffect = dictEq => deps => effect => () => useInsertionEffect_(($0, $1) => dictEq.eq($0)($1), deps, effect);
const useId = useId_;
const useEqCache = dictEq => a => () => useEqCache_(($0, $1) => dictEq.eq($0)($1), a);
const useEffectOnce = effect => () => useEffect_((v, v1) => true, undefined, effect);
const useEffectAlways = effect => () => useEffectAlways_(effect);
const useEffect = dictEq => deps => effect => () => useEffect_(($0, $1) => dictEq.eq($0)($1), deps, effect);
const useDeferredValue = a => () => useDeferredValue_(a);
const useDebugValue = debugValue => display => () => useDebugValue_(debugValue, display);
const useContext = context => () => useContext_(context);
const unsafeReactComponent = () => () => name => renderFn => () => unsafeSetDisplayName(name, props => renderFn(props)());
const runReducer = v => $0 => $1 => v($0, $1);
const readRef = /* #__PURE__ */ Effect$dUncurried.runEffectFn1(readRef_);
const readRefMaybe = a => {
  const $0 = readRef(a);
  return () => {
    const a$p = $0();
    return Data$dNullable.nullable(a$p, Data$dMaybe.Nothing, Data$dMaybe.Just);
  };
};
const reactComponentWithChildren = () => () => unsafeReactComponent()();
const reactComponent = () => () => () => unsafeReactComponent()();
const reactComponentFromHook = () => () => () => name => propsToHook => () => unsafeSetDisplayName(
  name,
  props => {
    const $0 = propsToHook(props);
    const a$p = $0();
    return props.render(a$p);
  }
);
const reactChildrenFromArray = Unsafe$dCoerce.unsafeCoerce;
const newtypeUnsafeReference = {Coercible0: () => {}};
const mkReducer = x => () => ($0, $1) => x($0)($1);
const memo$p = arePropsEqual => comp => () => {
  const c = comp();
  return memoEq_(c, ($0, $1) => arePropsEqual($0)($1));
};
const memo = /* #__PURE__ */ (() => {
  const $0 = Effect$dUncurried.runEffectFn1(memo_);
  return a => () => {
    const $1 = a();
    return $0($1)();
  };
})();
const eqUnsafeReference = {eq: Unsafe$dReference.reallyUnsafeRefEq};
const component = name => renderFn => () => {
  const c = unsafeSetDisplayName(name, props => renderFn(props.nested)());
  const $0 = React$dBasic.element(c);
  return x => $0({nested: x});
};
export {
  UnsafeReference,
  component,
  eqUnsafeReference,
  memo,
  memo$p,
  mkReducer,
  newtypeUnsafeReference,
  reactChildrenFromArray,
  reactComponent,
  reactComponentFromHook,
  reactComponentWithChildren,
  readRef,
  readRefMaybe,
  runReducer,
  unsafeReactComponent,
  useContext,
  useDebugValue,
  useDeferredValue,
  useEffect,
  useEffectAlways,
  useEffectOnce,
  useEqCache,
  useId,
  useInsertionEffect,
  useInsertionEffectAlways,
  useInsertionEffectOnce,
  useLayoutEffect,
  useLayoutEffectAlways,
  useLayoutEffectOnce,
  useMemo,
  useReducer,
  useRef,
  useState,
  useState$p,
  useSyncExternalStore,
  useSyncExternalStore$p,
  useTransition,
  writeRef
};
export * from "./foreign.js";
