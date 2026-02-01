import {
  useScroll,
  useTransform,
  useSpring,
  useAnimationControls,
  useInView,
  useAnimate,
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
