import { useViewportScroll, useTransform, useSpring, useAnimation } from "framer-motion"

export const useViewportScrollImpl = useViewportScroll
export const useTransformImpl = useTransform
export const useTransformMapImpl = (value, fn) => useTransform(value, fn)
export const useSpringImpl = useSpring
export const useAnimationImpl = useAnimation