import { AnimatePresence, LazyMotion, LayoutGroup, MotionConfig, Reorder } from "motion/react"
import React from "react"

const mkComponent = C => props => children => {
  if (!Array.isArray(children)) return React.createElement(C, props, children)
  return React.createElement(C, props, ...children)
}

export const animatePresenceImpl = mkComponent(AnimatePresence)

export const startImpl = args => controls => () => controls.start(args)
export const stopImpl = controls  => () => controls.stop()

export const lazyMotionImpl = mkComponent(LazyMotion)
export const layoutGroupImpl = mkComponent(LayoutGroup)
export const motionConfigImpl = mkComponent(MotionConfig)
export const reorderGroupImpl = mkComponent(Reorder.Group)
export const reorderItemImpl = mkComponent(Reorder.Item)

