import { useMotionValue, animate } from "framer-motion"

export const useMotionValueImpl = useMotionValue
export function get(mv) { return () => { return mv.get() }}
export function setImpl(v) { return render => mv => () => {
    mv.set(v, render)
}}
export function isAnimating(mv) { return () => { return mv.isAnimating() }}
export function stop(mv) { return () => { return mv.stop() }}
export function onChangeImpl(callback) { return mv => { return () => mv.onChange(callback); }}
export const animateImpl = animate
export function stopAnimation(playbackControls) { return playbackControls.stop}