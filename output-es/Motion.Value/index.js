import * as Effect$dUncurried from "../Effect.Uncurried/index.js";
import {
  get as $$get,
  animateImpl,
  destroy,
  isAnimating,
  newMotionValue,
  onAnimationCancel,
  onAnimationComplete,
  onAnimationStart,
  onChange,
  setImpl,
  stop,
  stopAnimation,
  useMotionValueImpl
} from "./foreign.js";
const useMotionValue = /* #__PURE__ */ Effect$dUncurried.runEffectFn1(useMotionValueImpl);
const setButDoNotRender = v => setImpl(v)(false);
const $$set = v => setImpl(v)(true);
const jump = setButDoNotRender;
const animate = target => opts => value => () => animateImpl(value, target, opts);
export {animate, jump, $$set as set, setButDoNotRender, useMotionValue};
export * from "./foreign.js";
