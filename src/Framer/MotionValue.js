import { useMotionValue, animate, transform, MotionValue } from "framer-motion"

export const newMotionValue = (v) => () => new MotionValue(v)
export const destroy = (mv) => () => mv.destroy()
export const useMotionValueImpl = useMotionValue
export function get(mv) { return () => { return mv.get() }}
export function setImpl(v) { return render => mv => () => {
    mv.set(v, render)
}}
export function isAnimating(mv) { return () => { return mv.isAnimating() }}
export function stop(mv) { return () => { return mv.stop() }}
export const onChange = callback => mv => () => mv.on("change", e => callback(e)())
export const onAnimationStart = callback => mv => () => mv.on("animationStart", e => callback(e)())
export const onAnimationCancel = callback => mv => () => mv.on("animationCancel", e => callback(e)())
export const onAnimationComplete = callback => mv => () => mv.on("animationComplete", e => callback(e)())
export const animateImpl = animate
export function stopAnimation(playbackControls) { return playbackControls.stop}