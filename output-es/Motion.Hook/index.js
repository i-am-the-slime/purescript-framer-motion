import * as $runtime from "../runtime.js";
import * as Data$dArray from "../Data.Array/index.js";
import * as Effect$dUncurried from "../Effect.Uncurried/index.js";
import * as Literals$dUndefined from "../Literals.Undefined/index.js";
import {
  useAnimateImpl,
  useAnimationFrameImpl,
  useAnimationImpl,
  useDragControlsImpl,
  useInViewImpl,
  useMotionValueEventImpl,
  useReducedMotionImpl,
  useScrollWithOptionsImpl,
  useSpringImpl,
  useTimeImpl,
  useTransformEffectImpl,
  useTransformImpl,
  useTransformMapEImpl,
  useTransformMapImpl,
  useVelocityImpl,
  useViewportScrollImpl,
  useWillChangeImpl
} from "./foreign.js";
const $Ease = (tag, _1) => ({tag, _1});
const EaseFn = value0 => $Ease("EaseFn", value0);
const EaseFns = value0 => $Ease("EaseFns", value0);
const useWillChange = useWillChangeImpl;
const useViewportScroll = useViewportScrollImpl;
const useVelocity = /* #__PURE__ */ Effect$dUncurried.runEffectFn1(useVelocityImpl);
const useTransformMapE = fn => val => () => useTransformMapEImpl(val, $0 => fn($0)());
const useTransformMap = mv => fn => () => useTransformMapImpl(mv, fn);
const useTransformEffect = /* #__PURE__ */ Effect$dUncurried.runEffectFn1(useTransformEffectImpl);
const useTime = useTimeImpl;
const useSpringWithNumber = () => number => springProps => () => useSpringImpl(number, springProps);
const useSpringWithMotionValue = () => motionValue => springProps => () => useSpringImpl(motionValue, springProps);
const useScroll = () => options => () => useScrollWithOptionsImpl(options);
const useReducedMotion = useReducedMotionImpl;
const useMotionValueEvent = mv => eventName => callback => () => useMotionValueEventImpl(mv, eventName, $0 => callback($0)());
const useInView = ref => options => {
  const $0 = (() => {
    if (options.tag === "Nothing") { return {}; }
    if (options.tag === "Just") { return options._1; }
    $runtime.fail();
  })();
  return () => useInViewImpl(ref, $0);
};
const useDragControls = useDragControlsImpl;
const useAnimationFrame = callback => () => useAnimationFrameImpl(callback);
const useAnimation = useAnimationImpl;
const useAnimate = useAnimateImpl;
const transformOptionsToTransformOptionsImpl = v => (
  {
    clamp: (() => {
      if (v.clamp.tag === "Just") { return v.clamp._1; }
      if (v.clamp.tag === "Nothing") { return Literals$dUndefined._undefined; }
      $runtime.fail();
    })(),
    ease: (() => {
      if (v.ease.tag === "Just") {
        if (v.ease._1.tag === "EaseFn") { return v.ease._1._1; }
        if (v.ease._1.tag === "EaseFns") { return v.ease._1._1; }
        $runtime.fail();
      }
      if (v.ease.tag === "Nothing") { return Literals$dUndefined._undefined; }
      $runtime.fail();
    })()
  }
);
const useTransform = motionValue => mapping => options => {
  const v = Data$dArray.unzip(mapping);
  if (options.tag === "Just") {
    const $0 = transformOptionsToTransformOptionsImpl(options._1);
    return () => useTransformImpl(motionValue, v._1, v._2, $0);
  }
  return () => useTransformImpl(motionValue, v._1, v._2, Literals$dUndefined._undefined);
};
export {
  $Ease,
  EaseFn,
  EaseFns,
  transformOptionsToTransformOptionsImpl,
  useAnimate,
  useAnimation,
  useAnimationFrame,
  useDragControls,
  useInView,
  useMotionValueEvent,
  useReducedMotion,
  useScroll,
  useSpringWithMotionValue,
  useSpringWithNumber,
  useTime,
  useTransform,
  useTransformEffect,
  useTransformMap,
  useTransformMapE,
  useVelocity,
  useViewportScroll,
  useWillChange
};
export * from "./foreign.js";
