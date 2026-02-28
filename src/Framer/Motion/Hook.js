import {
  useScroll,
  useTransform,
  useSpring,
  useAnimationControls,
  useInView,
  useAnimate,
  useDragControls,
  useMotionValueEvent,
  useVelocity,
  useTime,
  useAnimationFrame,
  useReducedMotion,
  useWillChange,
} from "motion/react";

// useViewportScroll is now just useScroll() with no arguments
export const useViewportScrollImpl = useScroll;
export const useTransformImpl = useTransform;
export const useTransformMapImpl = (value, fn) => useTransform(value, fn);
export const useTransformMapEImpl = (value, fnE) => useTransform
export const useTransformEffectImpl = useTransform
export const useSpringImpl = useSpring;
// useAnimation is now useAnimationControls
export const useAnimationImpl = useAnimationControls;

// New Motion hooks
export const useInViewImpl = (ref, options) => useInView(ref, options);
export const useAnimateImpl = () => {
  const [scope, animate] = useAnimate();
  return { scope, animate };
};

// New hooks
export const useDragControlsImpl = useDragControls;

export const useMotionValueEventImpl = (mv, eventName, callback) => {
  useMotionValueEvent(mv, eventName, (v) => callback(v));
};

export const useVelocityImpl = useVelocity;

export const useTimeImpl = useTime;

export const useAnimationFrameImpl = (callback) => {
  useAnimationFrame((t, d) => callback(t)(d)());
};

export const useReducedMotionImpl = useReducedMotion;

export const useWillChangeImpl = useWillChange;

export const useScrollWithOptionsImpl = (options) => useScroll(options);
