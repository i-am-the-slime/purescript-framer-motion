import { useViewportScroll, useTransform, useSpring, useAnimation } from "framer-motion"
import {useTransformMap} from "../../../output/Framer.Motion.Hook";

export const useViewportScrollImpl = useViewportScroll
export const useTransformImpl = useTransform
export const useTransformMapImpl = (value, fn) => useTransform(value, fn)
export const useTransformMapEImpl = useTransformMapImpl
export const useSpringImpl = useSpring
export const useAnimationImpl = useAnimation