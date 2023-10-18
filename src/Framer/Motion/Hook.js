import { useViewportScroll, useTransform, useSpring, useAnimation } from "framer-motion"
import {useTransformMap} from "../../../output/Framer.Motion.Hook";

export const useViewportScrollImpl = useViewportScroll
export const useTransformImpl = useTransform
export const useTransformMapImpl = (value, fn) => useTransform(value, fn)
export const useTransformMapEImpl = (value, fnE) => useTransformMapImpl(value, fnE)
export const useSpringImpl = useSpring
export const useAnimationImpl = useAnimation