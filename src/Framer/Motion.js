import { AnimatePresence, LazyMotion, LayoutGroup, MotionConfig, Reorder } from "motion/react"

export const animatePresenceImpl = AnimatePresence

export const startImpl = args => controls => () => controls.start(args)
export const stopImpl = controls  => () => controls.stop()

export const lazyMotionImpl = LazyMotion
export const layoutGroupImpl = LayoutGroup
export const motionConfigImpl = MotionConfig
export const reorderGroupImpl = Reorder.Group
export const reorderItemImpl = Reorder.Item
